@interface PUShazamEventsController
- (PUAssetViewModel)assetViewModel;
- (PUBrowsingViewModel)browsingViewModel;
- (void)invalidateAssetViewModel;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)setNeedsUpdate;
- (void)updateAssetViewModel;
- (void)updateCurrentEvent;
@end

@implementation PUShazamEventsController

- (void)setIsEnabled:(BOOL)a3
{
  v4 = self;
  sub_1B37FABF0(a3);
}

- (PUAssetViewModel)assetViewModel
{
  v2 = sub_1B37FAD3C();

  return v2;
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B37FADC8(a3);
}

- (PUBrowsingViewModel)browsingViewModel
{
  v2 = sub_1B37FAE08();

  return v2;
}

- (void)setBrowsingViewModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B37FAE74(v4);
}

- (void)setNeedsUpdate
{
  v2 = self;
  sub_1B37FC634();
}

- (void)updateAssetViewModel
{
  v2 = self;
  sub_1B37FC724();
}

- (void)updateCurrentEvent
{
  v2 = self;
  sub_1B37FC978();
}

- (void)invalidateAssetViewModel
{
  v2 = self;
  sub_1B37FD1C4();
}

@end