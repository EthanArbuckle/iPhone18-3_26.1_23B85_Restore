@interface SUCoreXPCActivity
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)init:(id)init options:(id)options handler:(id)handler;
@end

@implementation SUCoreXPCActivity

- (id)init:(id)init options:(id)options handler:(id)handler
{
  initCopy = init;
  optionsCopy = options;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = SUCoreXPCActivity;
  v12 = [(SUCoreXPCActivity *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityName, init);
    v14 = MEMORY[0x2383746D0](handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;

    objc_storeStrong(&v13->_activityOptions, options);
    v13->_isRegisteredWithXPC = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activityName = [(SUCoreXPCActivity *)equalCopy activityName];
      v6 = [activityName isEqualToString:self->_activityName];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v2 = @"YES";
  if (self->_handler)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (!self->_isRegisteredWithXPC)
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"Name: %@ Options: {%@} HandlerSet: %@ RegisteredWithXPC: %@", self->_activityName, self->_activityOptions, v3, v2];
}

@end