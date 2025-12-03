@interface CHChannelButton
- (OZChannelButton)ozChannel;
- (id)callback;
- (void)performCallback;
- (void)setButtonTitle:(id)title;
- (void)setCallback:(id)callback;
- (void)setSelector:(SEL)selector andTarget:(id)target;
@end

@implementation CHChannelButton

- (OZChannelButton)ozChannel
{
  result = self->super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (void)setSelector:(SEL)selector andTarget:(id)target
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = NSStringFromSelector(selector);
  v10.var0 = 0;
  PCString::set(&v10, v8);
  v9.var0 = &v10;
  OZChannelButton::setCallbackSelectorAsString(v7, v9, target);
  PCString::~PCString(&v10);
}

- (id)callback
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  return OZChannelButton::getCallbackBlock(pOZChannel);
}

- (void)setCallback:(id)callback
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelButton::setCallbackBlock(pOZChannel, callback);
}

- (void)setButtonTitle:(id)title
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  v6.var0 = 0;
  PCString::set(&v6, title);
  PCString::set(v5 + 22, &v6);
  PCString::~PCString(&v6);
}

- (void)performCallback
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
    v2 = vars8;
  }

  OZChannelButton::callCallback(pOZChannel);
}

@end