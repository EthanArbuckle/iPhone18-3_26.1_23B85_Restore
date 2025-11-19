@interface SAAssertion
- (NSArray)_descriptionConstituents;
- (NSString)description;
- (SAAssertion)init;
- (void)addInvalidationBlock:(id)a3;
- (void)dealloc;
- (void)invalidateWithReason:(id)a3;
@end

@implementation SAAssertion

- (SAAssertion)init
{
  v7.receiver = self;
  v7.super_class = SAAssertion;
  v2 = [(SAAssertion *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_valid = 1;
    v4 = [MEMORY[0x277CBEAA8] now];
    creationDate = v3->_creationDate;
    v3->_creationDate = v4;
  }

  return v3;
}

- (NSString)description
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [(SAAssertion *)self _descriptionConstituents];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v18 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v19 + 1) + 8 * j);
              v14 = [v8 objectForKey:v13];
              [v3 appendFormat:@"; %@: %@", v13, v14];
            }

            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  [v3 appendString:@">"];

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)_descriptionConstituents
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(SAAssertion *)self isValid];
  v5 = NSStringFromBOOL();
  [v3 setObject:v5 forKey:@"isValid"];

  if (!v4)
  {
    invalidationReason = self->_invalidationReason;
    if (invalidationReason)
    {
      [v3 setObject:invalidationReason forKey:@"invalidation reason"];
    }
  }

  v10[0] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)dealloc
{
  if ([(SAAssertion *)self isValid])
  {
    [(SAAssertion *)self invalidateWithReason:@"deallocation"];
  }

  v3.receiver = self;
  v3.super_class = SAAssertion;
  [(SAAssertion *)&v3 dealloc];
}

- (void)addInvalidationBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = self;
    objc_sync_enter(v5);
    invalidationBlocks = v5->_invalidationBlocks;
    if (!invalidationBlocks)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v8 = v5->_invalidationBlocks;
      v5->_invalidationBlocks = v7;

      invalidationBlocks = v5->_invalidationBlocks;
    }

    v9 = MEMORY[0x26D6A1BA0](v10);
    [(NSMutableOrderedSet *)invalidationBlocks addObject:v9];

    objc_sync_exit(v5);
    v4 = v10;
  }
}

- (void)invalidateWithReason:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 length])
  {
    [(SAAssertion *)a2 invalidateWithReason:?];
  }

  if ([(SAAssertion *)self isValid])
  {
    v6 = self;
    objc_sync_enter(v6);
    v6->_valid = 0;
    v7 = [v5 copy];
    invalidationReason = v6->_invalidationReason;
    v6->_invalidationReason = v7;

    v9 = SALogElement;
    if (os_log_type_enabled(SALogElement, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&dword_26C47D000, v9, OS_LOG_TYPE_DEFAULT, "Assertion did invalidate: %{public}@", buf, 0xCu);
    }

    v10 = v6;
    objc_sync_enter(v10);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v10[1];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v18 + 1) + 8 * v14) + 16))(*(*(&v18 + 1) + 8 * v14));
          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v15 = v10[1];
    v10[1] = 0;

    objc_sync_exit(v10);
    objc_sync_exit(v10);
  }

  else
  {
    v16 = SALogSystem;
    if (os_log_type_enabled(SALogSystem, OS_LOG_TYPE_ERROR))
    {
      [(SAAssertion *)self invalidateWithReason:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)invalidateWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SAAssertion.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"[reason length] > 0"}];
}

- (void)invalidateWithReason:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26C47D000, a2, OS_LOG_TYPE_ERROR, "Attempt to invalidate invalid assertion: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end