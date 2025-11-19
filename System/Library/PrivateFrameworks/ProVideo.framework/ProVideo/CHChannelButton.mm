@interface CHChannelButton
- (OZChannelButton)ozChannel;
- (id)callback;
- (void)performCallback;
- (void)setButtonTitle:(id)a3;
- (void)setCallback:(id)a3;
- (void)setSelector:(SEL)a3 andTarget:(id)a4;
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

- (void)setSelector:(SEL)a3 andTarget:(id)a4
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  v8 = NSStringFromSelector(a3);
  v10.var0 = 0;
  PCString::set(&v10, v8);
  v9.var0 = &v10;
  OZChannelButton::setCallbackSelectorAsString(v7, v9, a4);
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

- (void)setCallback:(id)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelButton::setCallbackBlock(pOZChannel, a3);
}

- (void)setButtonTitle:(id)a3
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
  PCString::set(&v6, a3);
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