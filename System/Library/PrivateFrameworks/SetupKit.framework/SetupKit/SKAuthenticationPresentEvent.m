@interface SKAuthenticationPresentEvent
- (SKAuthenticationPresentEvent)initWithPasswordType:(int)a3 password:(id)a4;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation SKAuthenticationPresentEvent

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

  passwordType = self->_passwordType;
  if (passwordType)
  {
    v6 = passwordType + 1;
    if (v6 <= 0xA)
    {
      v7 = off_279BB8218[v6];
    }

    CUAppendF();
    v8 = v4;

    v4 = v8;
  }

  password = self->_password;
  CUAppendF();
  v9 = v4;

  v10 = &stru_2877689A8;
  if (v9)
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

- (SKAuthenticationPresentEvent)initWithPasswordType:(int)a3 password:(id)a4
{
  v6 = a4;
  v7 = [(SKEvent *)self initWithEventType:110];
  if (v7)
  {
    v8 = [v6 copy];
    password = v7->_password;
    v7->_password = v8;

    v7->_passwordType = a3;
    v10 = v7;
  }

  return v7;
}

@end