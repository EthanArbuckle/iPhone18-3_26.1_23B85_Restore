@interface SKDEventLogger
- (SKDEventLogger)initWithDomain:(id)a3;
@end

@implementation SKDEventLogger

- (SKDEventLogger)initWithDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKDEventLogger;
  v6 = [(SKDEventLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, a3);
  }

  return v7;
}

@end