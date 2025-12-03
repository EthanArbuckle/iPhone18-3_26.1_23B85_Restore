@interface STStatusItemsStatusDomain
- (void)observeData:(id)data;
@end

@implementation STStatusItemsStatusDomain

- (void)observeData:(id)data
{
  v3.receiver = self;
  v3.super_class = STStatusItemsStatusDomain;
  [(STStatusDomain *)&v3 observeData:data];
}

@end