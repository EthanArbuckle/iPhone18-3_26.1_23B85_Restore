@interface SKAuthenticationResponseEvent
- (SKAuthenticationResponseEvent)initWithPassword:(id)a3;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation SKAuthenticationResponseEvent

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v9 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  self->_password;
  CUAppendF();
  v5 = v4;

  v6 = &stru_2877689A8;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (SKAuthenticationResponseEvent)initWithPassword:(id)a3
{
  v4 = a3;
  v5 = [(SKEvent *)self initWithEventType:130];
  if (v5)
  {
    v6 = [v4 copy];
    password = v5->_password;
    v5->_password = v6;

    v8 = v5;
  }

  return v5;
}

@end