@interface TVPlaybackCustomEventUserInfo
- (BOOL)respondsToSelector:(SEL)selector;
- (TVPlaybackCustomEventUserInfo)initWithProperties:(id)properties expectsReturnValue:(BOOL)value;
- (void)processReturnJSValue:(id)value inContext:(id)context;
@end

@implementation TVPlaybackCustomEventUserInfo

- (TVPlaybackCustomEventUserInfo)initWithProperties:(id)properties expectsReturnValue:(BOOL)value
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = TVPlaybackCustomEventUserInfo;
  v7 = [(TVPlaybackCustomEventUserInfo *)&v11 init];
  if (v7)
  {
    v8 = [propertiesCopy copy];
    properties = v7->_properties;
    v7->_properties = v8;

    v7->_expectsReturnValue = value;
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_processReturnJSValue_inContext_ == selector)
  {
    return self->_expectsReturnValue;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = TVPlaybackCustomEventUserInfo;
    return [(TVPlaybackCustomEventUserInfo *)&v7 respondsToSelector:?];
  }
}

- (void)processReturnJSValue:(id)value inContext:(id)context
{
  toObject = [value toObject];
  returnValue = self->_returnValue;
  self->_returnValue = toObject;

  MEMORY[0x2821F96F8](toObject, returnValue);
}

@end