@interface _REContextRegistration
- (_REContextRegistration)initWithQuery:(id)query;
- (void)_evaluateQueryWithRegistration:(BOOL)registration;
- (void)dealloc;
- (void)deregisterWithContext;
- (void)registerWithContext;
@end

@implementation _REContextRegistration

- (_REContextRegistration)initWithQuery:(id)query
{
  queryCopy = query;
  v10.receiver = self;
  v10.super_class = _REContextRegistration;
  v6 = [(_REContextRegistration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, query);
    registrations = v7->_registrations;
    v7->_registrations = MEMORY[0x277CBEBF8];

    v7->_registered = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(_REContextRegistration *)self deregisterWithContext];
  v3.receiver = self;
  v3.super_class = _REContextRegistration;
  [(_REContextRegistration *)&v3 dealloc];
}

- (void)registerWithContext
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_context)
  {
    os_unfair_lock_lock(&REContextRegistrationLock);
    if (!self->_registered)
    {
      self->_registered = 1;
      objc_initWeak(&location, self);
      query = self->_query;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __45___REContextRegistration_registerWithContext__block_invoke;
      v15[3] = &unk_2785F9A90;
      objc_copyWeak(&v16, &location);
      v4 = [(REDuetContextQuery *)query createRegistrationsWithCallback:v15];
      registrations = self->_registrations;
      self->_registrations = v4;

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = self->_registrations;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v18 count:16];
      if (v7)
      {
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v6);
            }

            [(_CDUserContext *)self->_context registerCallback:*(*(&v11 + 1) + 8 * v9++), v11];
          }

          while (v7 != v9);
          v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v18 count:16];
        }

        while (v7);
      }

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock(&REContextRegistrationLock);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deregisterWithContext
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_context)
  {
    os_unfair_lock_lock(&REContextRegistrationLock);
    if (self->_registered)
    {
      self->_registered = 0;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v3 = self->_registrations;
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v11;
        do
        {
          v7 = 0;
          do
          {
            if (*v11 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [(_CDUserContext *)self->_context deregisterCallback:*(*(&v10 + 1) + 8 * v7++), v10];
          }

          while (v5 != v7);
          v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v5);
      }

      registrations = self->_registrations;
      self->_registrations = MEMORY[0x277CBEBF8];
    }

    os_unfair_lock_unlock(&REContextRegistrationLock);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateQueryWithRegistration:(BOOL)registration
{
  if (self->_callback)
  {
    registrationCopy = registration;
    if (self->_context)
    {
      v5 = [(REDuetContextQuery *)self->_query valueFromUserContext:?];
      query = self->_query;
      v7 = v5;
      (*(self->_callback + 2))();
      if (registrationCopy)
      {
        [(_REContextRegistration *)self deregisterWithContext];
        [(_REContextRegistration *)self registerWithContext];
      }
    }
  }
}

@end