@interface PUFilmstripTileTransitionCoordinator
- (id)finalLayoutInfoForDisappearingTileController:(id)controller fromLayoutInfo:(id)info;
- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type;
@end

@implementation PUFilmstripTileTransitionCoordinator

- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type
{
  tileKind = [info tileKind];
  v7 = [tileKind isEqualToString:@"PUTileKindItemContentFilmStripIndicator"];

  v8 = 0;
  if (type == 3 && v7)
  {
    v8 = objc_alloc_init(PUTileAnimationOptions);
    [(PUTileAnimationOptions *)v8 setDuration:0.5];
  }

  return v8;
}

- (id)finalLayoutInfoForDisappearingTileController:(id)controller fromLayoutInfo:(id)info
{
  infoCopy = info;
  tileKind = [infoCopy tileKind];
  v6 = [tileKind isEqualToString:@"PUTileKindItemContentFilmStripIndicator"];

  v7 = infoCopy;
  if (v6)
  {
    v8 = [infoCopy layoutInfoWithAlpha:0.0];
    v7 = [v8 layoutInfoWithZPosition:10.0];
  }

  return v7;
}

@end