@interface PXVideoOverlayButtonConfiguration
- (PXVideoOverlayButtonConfiguration)init;
@end

@implementation PXVideoOverlayButtonConfiguration

- (PXVideoOverlayButtonConfiguration)init
{
  v6.receiver = self;
  v6.super_class = PXVideoOverlayButtonConfiguration;
  v2 = [(PXVideoOverlayButtonConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    localizedTitle = v2->_localizedTitle;
    v2->_style = 0;
    v2->_localizedTitle = 0;
    v2->_allowBackdropStatisticsSupression = 1;
  }

  return v3;
}

@end