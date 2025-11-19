@interface STLocationStatusDomain
- (void)observeData:(id)a3;
@end

@implementation STLocationStatusDomain

- (void)observeData:(id)a3
{
  v3.receiver = self;
  v3.super_class = STLocationStatusDomain;
  [(STStatusDomain *)&v3 observeData:a3];
}

@end