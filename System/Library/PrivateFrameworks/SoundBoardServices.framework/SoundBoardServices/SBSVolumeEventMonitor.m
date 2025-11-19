@interface SBSVolumeEventMonitor
- (SBSVolumeEventMonitor)initWithTarget:(id)a3;
@end

@implementation SBSVolumeEventMonitor

- (SBSVolumeEventMonitor)initWithTarget:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSVolumeEventMonitor;
  v5 = [(SBSVolumeEventMonitor *)&v9 init];
  if (v5)
  {
    if ([v4 isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:0 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:v4];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end