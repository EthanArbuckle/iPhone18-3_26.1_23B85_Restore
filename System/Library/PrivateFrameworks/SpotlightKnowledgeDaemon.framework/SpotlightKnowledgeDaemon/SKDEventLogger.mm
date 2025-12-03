@interface SKDEventLogger
- (SKDEventLogger)initWithDomain:(id)domain;
@end

@implementation SKDEventLogger

- (SKDEventLogger)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = SKDEventLogger;
  v6 = [(SKDEventLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, domain);
  }

  return v7;
}

@end