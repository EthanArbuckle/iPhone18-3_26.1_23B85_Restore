@interface SBApplicationBlurSnapshotGenerationContainerView
- (void)layoutSubviews;
@end

@implementation SBApplicationBlurSnapshotGenerationContainerView

- (void)layoutSubviews
{
  [(SBApplicationBlurSnapshotGenerationContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  wallpaperView = [(SBApplicationBlurSnapshotGenerationContainerView *)self wallpaperView];
  realSnapshotView = [(SBApplicationBlurSnapshotGenerationContainerView *)self realSnapshotView];
  liveBlurView = [(SBApplicationBlurSnapshotGenerationContainerView *)self liveBlurView];
  [wallpaperView setFrame:{v4, v6, v8, v10}];
  [realSnapshotView setFrame:{v4, v6, v8, v10}];
  [liveBlurView setFrame:{v4, v6, v8, v10}];
}

@end