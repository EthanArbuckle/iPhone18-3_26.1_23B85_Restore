@interface ErrorHandlerSession
- (BOOL)isEqual:(id)a3;
- (ErrorHandlerSession)init;
- (id)valueForSessionProperty:(id)a3;
- (void)dealloc;
- (void)setValue:(id)a3 forSessionProperty:(id)a4;
@end

@implementation ErrorHandlerSession

- (ErrorHandlerSession)init
{
  v5.receiver = self;
  v5.super_class = ErrorHandlerSession;
  v2 = [(ErrorHandlerSession *)&v5 init];
  if (v2)
  {
    v3 = CFUUIDCreate(0);
    v2->_sessionID = *&CFUUIDGetUUIDBytes(v3);
    CFRelease(v3);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ErrorHandlerSession;
  [(ErrorHandlerSession *)&v3 dealloc];
}

- (void)setValue:(id)a3 forSessionProperty:(id)a4
{
  sessionProperties = self->_sessionProperties;
  if (a3)
  {
    if (!sessionProperties)
    {
      sessionProperties = objc_alloc_init(NSMutableDictionary);
      self->_sessionProperties = sessionProperties;
    }

    [(NSMutableDictionary *)sessionProperties setObject:a3 forKey:a4];
  }

  else
  {

    [(NSMutableDictionary *)sessionProperties removeObjectForKey:a4];
  }
}

- (id)valueForSessionProperty:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sessionProperties objectForKey:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v7 = [(ErrorHandlerSession *)self sessionIdentifier];
  return v7 == [a3 sessionIdentifier];
}

@end