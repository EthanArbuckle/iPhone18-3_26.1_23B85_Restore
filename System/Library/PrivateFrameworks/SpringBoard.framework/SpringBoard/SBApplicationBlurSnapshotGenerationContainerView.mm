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
  v13 = [(SBApplicationBlurSnapshotGenerationContainerView *)self wallpaperView];
  v11 = [(SBApplicationBlurSnapshotGenerationContainerView *)self realSnapshotView];
  v12 = [(SBApplicationBlurSnapshotGenerationContainerView *)self liveBlurView];
  [v13 setFrame:{v4, v6, v8, v10}];
  [v11 setFrame:{v4, v6, v8, v10}];
  [v12 setFrame:{v4, v6, v8, v10}];
}

@end