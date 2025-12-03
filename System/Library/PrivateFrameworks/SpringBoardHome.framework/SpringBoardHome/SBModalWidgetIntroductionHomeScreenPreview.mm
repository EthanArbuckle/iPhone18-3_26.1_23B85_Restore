@interface SBModalWidgetIntroductionHomeScreenPreview
- (SBModalWidgetIntroductionHomeScreenPreview)initWithPreview:(id)preview withSnapshot:(id)snapshot;
@end

@implementation SBModalWidgetIntroductionHomeScreenPreview

- (SBModalWidgetIntroductionHomeScreenPreview)initWithPreview:(id)preview withSnapshot:(id)snapshot
{
  previewCopy = preview;
  snapshotCopy = snapshot;
  v12.receiver = self;
  v12.super_class = SBModalWidgetIntroductionHomeScreenPreview;
  v9 = [(SBModalWidgetIntroductionHomeScreenPreview *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_liveView, preview);
    objc_storeStrong(&v10->_snapshot, snapshot);
  }

  return v10;
}

@end