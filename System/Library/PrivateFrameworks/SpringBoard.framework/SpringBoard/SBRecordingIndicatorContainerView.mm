@interface SBRecordingIndicatorContainerView
- (SBRecordingIndicatorContainerView)initWithContentView:(id)view;
- (void)setContentView:(id)view;
@end

@implementation SBRecordingIndicatorContainerView

- (SBRecordingIndicatorContainerView)initWithContentView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = SBRecordingIndicatorContainerView;
  v5 = [(SBRecordingIndicatorContainerView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBRecordingIndicatorContainerView *)v5 setContentView:viewCopy];
  }

  return v6;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    [(SBRecordingIndicatorView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(SBRecordingIndicatorContainerView *)self addSubview:v7];
    viewCopy = v7;
  }
}

@end