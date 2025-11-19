@interface BRCShareAcceptWaiterInfo
- (BRCShareAcceptWaiterInfo)init;
@end

@implementation BRCShareAcceptWaiterInfo

- (BRCShareAcceptWaiterInfo)init
{
  v6.receiver = self;
  v6.super_class = BRCShareAcceptWaiterInfo;
  v2 = [(BRCShareAcceptWaiterInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    waiterBlocks = v2->_waiterBlocks;
    v2->_waiterBlocks = v3;
  }

  return v2;
}

@end