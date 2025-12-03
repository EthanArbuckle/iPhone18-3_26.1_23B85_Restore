@interface SBRecordingIndicatorPortalView
- (SBRecordingIndicatorPortalView)initWithFrame:(CGRect)frame containerView:(id)view;
- (double)blurRadius;
- (void)setBlurRadius:(double)radius;
@end

@implementation SBRecordingIndicatorPortalView

- (SBRecordingIndicatorPortalView)initWithFrame:(CGRect)frame containerView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = SBRecordingIndicatorPortalView;
  height = [(_UIPortalView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_containerView, viewCopy);
    [(_UIPortalView *)v11 setSourceView:viewCopy];
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

- (void)setBlurRadius:(double)radius
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);
  [WeakRetained setBlurRadius:radius];
}

@end