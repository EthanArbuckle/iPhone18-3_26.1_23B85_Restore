@interface SBSVolumeEventMonitor
- (SBSVolumeEventMonitor)initWithTarget:(id)target;
@end

@implementation SBSVolumeEventMonitor

- (SBSVolumeEventMonitor)initWithTarget:(id)target
{
  targetCopy = target;
  v9.receiver = self;
  v9.super_class = SBSVolumeEventMonitor;
  v5 = [(SBSVolumeEventMonitor *)&v9 init];
  if (v5)
  {
    if ([targetCopy isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:0 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:targetCopy];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end