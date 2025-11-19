@interface SBRecordingIndicatorPortalView
- (SBRecordingIndicatorPortalView)initWithFrame:(CGRect)a3 containerView:(id)a4;
- (double)blurRadius;
- (void)setBlurRadius:(double)a3;
@end

@implementation SBRecordingIndicatorPortalView

- (SBRecordingIndicatorPortalView)initWithFrame:(CGRect)a3 containerView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SBRecordingIndicatorPortalView;
  v10 = [(_UIPortalView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_containerView, v9);
    [(_UIPortalView *)v11 setSourceView:v9];
  }

  return v11;
}

- (double)blurRadius
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  [WeakRetained blurRadius];
  v4 = v3;

  return v4;
}

- (void)setBlurRadius:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  [WeakRetained setBlurRadius:a3];
}

@end