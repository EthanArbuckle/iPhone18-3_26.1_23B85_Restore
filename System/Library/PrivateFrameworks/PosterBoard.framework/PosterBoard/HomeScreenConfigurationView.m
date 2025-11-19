@interface HomeScreenConfigurationView
- (int64_t)pbf_layoutOrientation;
- (void)didSelectControl:(id)a3;
- (void)posterPairDidUpdateConfiguredProperties:(id)a3;
- (void)posterPairDidUpdateHomePosterAppearance:(id)a3;
- (void)posterPairDidUpdateLockPosterSnapshots:(void *)a1;
- (void)reloadLockPosterSnapshot;
- (void)toggleLegibilityBlur:(id)a3;
@end

@implementation HomeScreenConfigurationView

- (void)posterPairDidUpdateLockPosterSnapshots:(void *)a1
{
  v1 = a1;
  sub_21B6344B4();
}

- (void)posterPairDidUpdateConfiguredProperties:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B6342D4(v4);
}

- (void)posterPairDidUpdateHomePosterAppearance:(id)a3
{
  v3 = self;
  sub_21B6348F0();
}

- (void)reloadLockPosterSnapshot
{
  v2 = self;
  sub_21B6344B4();
}

- (void)didSelectControl:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B636734(v4);
}

- (int64_t)pbf_layoutOrientation
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong layoutOrientationProviderForView_];
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for HomeScreenConfigurationView();
    return [(UIView *)&v6 pbf_layoutOrientation];
  }
}

- (void)toggleLegibilityBlur:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21B636F80();
}

@end