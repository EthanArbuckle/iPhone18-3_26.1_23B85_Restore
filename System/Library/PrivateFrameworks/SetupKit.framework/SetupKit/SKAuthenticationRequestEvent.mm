@interface SKAuthenticationRequestEvent
- (SKAuthenticationRequestEvent)initWithPasswordType:(int)type pairingFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (id)descriptionWithLevel:(int)level;
@end

@implementation SKAuthenticationRequestEvent

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v13 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  v5 = self->_passwordType + 1;
  if (v5 <= 0xA)
  {
    v6 = off_279BB8270[v5];
  }

  CUAppendF();
  v7 = v4;

  if (self->_pairingFlags)
  {
    v14 = CUPrintFlags32();
    CUAppendF();
    v8 = v7;

    v7 = v8;
  }

  if (self->_throttleSeconds >= 1)
  {
    throttleSeconds = self->_throttleSeconds;
    CUAppendF();
    v9 = v7;

    v7 = v9;
  }

  v10 = &stru_2877689A8;
  if (v7)
  {
    v10 = v7;
  }

  v11 = v10;

  return v11;
}

- (SKAuthenticationRequestEvent)initWithPasswordType:(int)type pairingFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  v8 = [(SKEvent *)self initWithEventType:120];
  v9 = v8;
  if (v8)
  {
    v8->_passwordType = type;
    v8->_pairingFlags = flags;
    v8->_throttleSeconds = seconds;
    v10 = v8;
  }

  return v9;
}

@end