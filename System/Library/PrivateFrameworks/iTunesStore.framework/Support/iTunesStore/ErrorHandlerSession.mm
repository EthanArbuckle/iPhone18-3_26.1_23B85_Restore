@interface ErrorHandlerSession
- (BOOL)isEqual:(id)equal;
- (ErrorHandlerSession)init;
- (id)valueForSessionProperty:(id)property;
- (void)dealloc;
- (void)setValue:(id)value forSessionProperty:(id)property;
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

- (void)setValue:(id)value forSessionProperty:(id)property
{
  sessionProperties = self->_sessionProperties;
  if (value)
  {
    if (!sessionProperties)
    {
      sessionProperties = objc_alloc_init(NSMutableDictionary);
      self->_sessionProperties = sessionProperties;
    }

    [(NSMutableDictionary *)sessionProperties setObject:value forKey:property];
  }

  else
  {

    [(NSMutableDictionary *)sessionProperties removeObjectForKey:property];
  }
}

- (id)valueForSessionProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_sessionProperties objectForKey:property];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  sessionIdentifier = [(ErrorHandlerSession *)self sessionIdentifier];
  return sessionIdentifier == [equal sessionIdentifier];
}

@end