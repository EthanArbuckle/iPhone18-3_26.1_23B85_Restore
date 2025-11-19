@interface UIScreen(SBSnapshotExtensions)
- (id)sb_snapshotViewImmediatelyFramedForPortrait;
@end

@implementation UIScreen(SBSnapshotExtensions)

- (id)sb_snapshotViewImmediatelyFramedForPortrait
{
  [SBApp pushTransientActiveInterfaceOrientation:1 forReason:@"SBPortraitFramedSnapshot"];
  v2 = [a1 snapshotViewAfterScreenUpdates:0];
  [SBApp popTransientActiveInterfaceOrientationForReason:@"SBPortraitFramedSnapshot"];

  return v2;
}

@end