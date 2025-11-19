@interface SKAuthenticationRequestEvent
- (SKAuthenticationRequestEvent)initWithPasswordType:(int)a3 pairingFlags:(unsigned int)a4 throttleSeconds:(int)a5;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation SKAuthenticationRequestEvent

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
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

- (SKAuthenticationRequestEvent)initWithPasswordType:(int)a3 pairingFlags:(unsigned int)a4 throttleSeconds:(int)a5
{
  v8 = [(SKEvent *)self initWithEventType:120];
  v9 = v8;
  if (v8)
  {
    v8->_passwordType = a3;
    v8->_pairingFlags = a4;
    v8->_throttleSeconds = a5;
    v10 = v8;
  }

  return v9;
}

@end