@interface SBRecordingIndicatorContainerView
- (SBRecordingIndicatorContainerView)initWithContentView:(id)a3;
- (void)setContentView:(id)a3;
@end

@implementation SBRecordingIndicatorContainerView

- (SBRecordingIndicatorContainerView)initWithContentView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBRecordingIndicatorContainerView;
  v5 = [(SBRecordingIndicatorContainerView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBRecordingIndicatorContainerView *)v5 setContentView:v4];
  }

  return v6;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(SBRecordingIndicatorView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(SBRecordingIndicatorContainerView *)self addSubview:v7];
    v5 = v7;
  }
}

@end