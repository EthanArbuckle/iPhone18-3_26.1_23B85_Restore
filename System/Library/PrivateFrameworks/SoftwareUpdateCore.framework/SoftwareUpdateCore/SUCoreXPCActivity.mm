@interface SUCoreXPCActivity
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)init:(id)a3 options:(id)a4 handler:(id)a5;
@end

@implementation SUCoreXPCActivity

- (id)init:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SUCoreXPCActivity;
  v12 = [(SUCoreXPCActivity *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityName, a3);
    v14 = MEMORY[0x2383746D0](v11);
    handler = v13->_handler;
    v13->_handler = v14;

    objc_storeStrong(&v13->_activityOptions, a4);
    v13->_isRegisteredWithXPC = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SUCoreXPCActivity *)v4 activityName];
      v6 = [v5 isEqualToString:self->_activityName];
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