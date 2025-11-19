@interface SBButtonConsumerRegistration
- (BOOL)isEqual:(id)a3;
- (SBButtonConsumerClient)client;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBButtonConsumerRegistration

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v5 = [v3 appendObject:WeakRetained withName:@"client"];

  v6 = NSStringFromSBSHardwareButtonKind();
  v7 = [v3 appendObject:v6 withName:@"buttonKind"];

  v8 = [v3 appendUInt64:self->_eventMask withName:@"eventMask"];
  v9 = [v3 appendInteger:self->_eventPriority withName:@"eventPriority"];
  v10 = [v3 build];

  return v10;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_eventMask];
  v3 = [v2 hash];

  return v3;
}

- (SBButtonConsumerClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      WeakRetained = objc_loadWeakRetained(&self->_client);
      v7 = [(SBButtonConsumerRegistration *)v5 client];
      if (WeakRetained == v7 && (buttonKind = self->_buttonKind, buttonKind == [(SBButtonConsumerRegistration *)v5 buttonKind]) && (eventMask = self->_eventMask, eventMask == [(SBButtonConsumerRegistration *)v5 eventMask]))
      {
        eventPriority = self->_eventPriority;
        v11 = eventPriority == [(SBButtonConsumerRegistration *)v5 eventPriority];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end