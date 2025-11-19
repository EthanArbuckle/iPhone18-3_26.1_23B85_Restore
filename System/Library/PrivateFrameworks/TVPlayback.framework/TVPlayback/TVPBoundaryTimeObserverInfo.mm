@interface TVPBoundaryTimeObserverInfo
- (TVPBoundaryTimeObserverInfo)init;
@end

@implementation TVPBoundaryTimeObserverInfo

- (TVPBoundaryTimeObserverInfo)init
{
  v6.receiver = self;
  v6.super_class = TVPBoundaryTimeObserverInfo;
  v2 = [(TVPBoundaryTimeObserverInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    tokensFromIntegratedTimeline = v2->_tokensFromIntegratedTimeline;
    v2->_tokensFromIntegratedTimeline = v3;
  }

  return v2;
}

@end