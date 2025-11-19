@interface TVPlaybackCustomEventUserInfo
- (BOOL)respondsToSelector:(SEL)a3;
- (TVPlaybackCustomEventUserInfo)initWithProperties:(id)a3 expectsReturnValue:(BOOL)a4;
- (void)processReturnJSValue:(id)a3 inContext:(id)a4;
@end

@implementation TVPlaybackCustomEventUserInfo

- (TVPlaybackCustomEventUserInfo)initWithProperties:(id)a3 expectsReturnValue:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = TVPlaybackCustomEventUserInfo;
  v7 = [(TVPlaybackCustomEventUserInfo *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    properties = v7->_properties;
    v7->_properties = v8;

    v7->_expectsReturnValue = a4;
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_processReturnJSValue_inContext_ == a3)
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

- (void)processReturnJSValue:(id)a3 inContext:(id)a4
{
  v5 = [a3 toObject];
  returnValue = self->_returnValue;
  self->_returnValue = v5;

  MEMORY[0x2821F96F8](v5, returnValue);
}

@end