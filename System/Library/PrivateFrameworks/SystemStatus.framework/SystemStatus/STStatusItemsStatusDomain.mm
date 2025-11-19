@interface STStatusItemsStatusDomain
- (void)observeData:(id)a3;
@end

@implementation STStatusItemsStatusDomain

- (void)observeData:(id)a3
{
  v3.receiver = self;
  v3.super_class = STStatusItemsStatusDomain;
  [(STStatusDomain *)&v3 observeData:a3];
}

@end