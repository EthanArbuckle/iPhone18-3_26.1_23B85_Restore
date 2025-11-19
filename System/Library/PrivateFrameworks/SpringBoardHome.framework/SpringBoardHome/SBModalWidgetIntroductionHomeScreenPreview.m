@interface SBModalWidgetIntroductionHomeScreenPreview
- (SBModalWidgetIntroductionHomeScreenPreview)initWithPreview:(id)a3 withSnapshot:(id)a4;
@end

@implementation SBModalWidgetIntroductionHomeScreenPreview

- (SBModalWidgetIntroductionHomeScreenPreview)initWithPreview:(id)a3 withSnapshot:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBModalWidgetIntroductionHomeScreenPreview;
  v9 = [(SBModalWidgetIntroductionHomeScreenPreview *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_liveView, a3);
    objc_storeStrong(&v10->_snapshot, a4);
  }

  return v10;
}

@end