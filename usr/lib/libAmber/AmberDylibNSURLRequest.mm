@interface AmberDylibNSURLRequest
- (AmberDylibNSURLRequest)initWithURL:(id)l amberRequest:(void *)request;
@end

@implementation AmberDylibNSURLRequest

- (AmberDylibNSURLRequest)initWithURL:(id)l amberRequest:(void *)request
{
  v9.receiver = self;
  v9.super_class = AmberDylibNSURLRequest;
  v5 = [(AmberDylibNSURLRequest *)&v9 initWithURL:l];
  v6 = v5;
  if (v5)
  {
    v5->_amberRequest = request;
    v7 = v5;
  }

  return v6;
}

@end