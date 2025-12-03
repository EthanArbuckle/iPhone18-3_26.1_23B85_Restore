@interface AmberDylibNSURLInputStream
- (AmberDylibNSURLInputStream)initWithAmberRequest:(void *)request;
- (unint64_t)streamStatus;
@end

@implementation AmberDylibNSURLInputStream

- (AmberDylibNSURLInputStream)initWithAmberRequest:(void *)request
{
  v8.receiver = self;
  v8.super_class = AmberDylibNSURLInputStream;
  v4 = [(AmberDylibNSURLInputStream *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_amberRequest = request;
    v4->_status = 0;
    v6 = v4;
  }

  return v5;
}

- (unint64_t)streamStatus
{
  status = self->_status;
  if (status == 2)
  {
    if (*(self->_amberRequest + 6))
    {
      return 2;
    }

    else
    {
      status = 5;
      self->_status = 5;
    }
  }

  return status;
}

@end