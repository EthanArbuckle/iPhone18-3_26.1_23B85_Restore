@interface AmberDylibNSURLRequest
- (AmberDylibNSURLRequest)initWithURL:(id)a3 amberRequest:(void *)a4;
@end

@implementation AmberDylibNSURLRequest

- (AmberDylibNSURLRequest)initWithURL:(id)a3 amberRequest:(void *)a4
{
  v9.receiver = self;
  v9.super_class = AmberDylibNSURLRequest;
  v5 = [(AmberDylibNSURLRequest *)&v9 initWithURL:a3];
  v6 = v5;
  if (v5)
  {
    v5->_amberRequest = a4;
    v7 = v5;
  }

  return v6;
}

@end