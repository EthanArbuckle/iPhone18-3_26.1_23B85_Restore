@interface PUShazamEventsController
- (PUAssetViewModel)assetViewModel;
- (PUBrowsingViewModel)browsingViewModel;
- (void)invalidateAssetViewModel;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setNeedsUpdate;
- (void)updateAssetViewModel;
- (void)updateCurrentEvent;
@end

@implementation PUShazamEventsController

- (void)setIsEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1B37FABF0(enabled);
}

- (PUAssetViewModel)assetViewModel
{
  v2 = sub_1B37FAD3C();

  return v2;
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_1B37FADC8(model);
}

- (PUBrowsingViewModel)browsingViewModel
{
  v2 = sub_1B37FAE08();

  return v2;
}

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_1B37FAE74(modelCopy);
}

- (void)setNeedsUpdate
{
  selfCopy = self;
  sub_1B37FC634();
}

- (void)updateAssetViewModel
{
  selfCopy = self;
  sub_1B37FC724();
}

- (void)updateCurrentEvent
{
  selfCopy = self;
  sub_1B37FC978();
}

- (void)invalidateAssetViewModel
{
  selfCopy = self;
  sub_1B37FD1C4();
}

@end