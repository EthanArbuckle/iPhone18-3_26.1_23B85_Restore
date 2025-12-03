@interface STLocationStatusDomain
- (void)observeData:(id)data;
@end

@implementation STLocationStatusDomain

- (void)observeData:(id)data
{
  v3.receiver = self;
  v3.super_class = STLocationStatusDomain;
  [(STStatusDomain *)&v3 observeData:data];
}

@end