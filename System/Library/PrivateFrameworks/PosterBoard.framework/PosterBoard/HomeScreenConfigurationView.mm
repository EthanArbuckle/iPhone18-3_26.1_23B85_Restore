@interface HomeScreenConfigurationView
- (int64_t)pbf_layoutOrientation;
- (void)didSelectControl:(id)control;
- (void)posterPairDidUpdateConfiguredProperties:(id)properties;
- (void)posterPairDidUpdateHomePosterAppearance:(id)appearance;
- (void)posterPairDidUpdateLockPosterSnapshots:(void *)snapshots;
- (void)reloadLockPosterSnapshot;
- (void)toggleLegibilityBlur:(id)blur;
@end

@implementation HomeScreenConfigurationView

- (void)posterPairDidUpdateLockPosterSnapshots:(void *)snapshots
{
  snapshotsCopy = snapshots;
  sub_21B6344B4();
}

- (void)posterPairDidUpdateConfiguredProperties:(id)properties
{
  propertiesCopy = properties;
  selfCopy = self;
  sub_21B6342D4(propertiesCopy);
}

- (void)posterPairDidUpdateHomePosterAppearance:(id)appearance
{
  selfCopy = self;
  sub_21B6348F0();
}

- (void)reloadLockPosterSnapshot
{
  selfCopy = self;
  sub_21B6344B4();
}

- (void)didSelectControl:(id)control
{
  controlCopy = control;
  selfCopy = self;
  sub_21B636734(controlCopy);
}

- (int64_t)pbf_layoutOrientation
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    layoutOrientationProviderForView_ = [Strong layoutOrientationProviderForView_];
    swift_unknownObjectRelease();
    return layoutOrientationProviderForView_;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for HomeScreenConfigurationView();
    return [(UIView *)&v6 pbf_layoutOrientation];
  }
}

- (void)toggleLegibilityBlur:(id)blur
{
  blurCopy = blur;
  selfCopy = self;
  sub_21B636F80();
}

@end