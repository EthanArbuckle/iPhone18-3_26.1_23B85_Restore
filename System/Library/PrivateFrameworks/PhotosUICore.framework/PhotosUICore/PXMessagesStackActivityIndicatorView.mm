@interface PXMessagesStackActivityIndicatorView
- (CGRect)clippingRect;
- (PXMessagesStackActivityIndicatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
@end

@implementation PXMessagesStackActivityIndicatorView

- (CGRect)clippingRect
{
  x = self->clippingRect.origin.x;
  y = self->clippingRect.origin.y;
  width = self->clippingRect.size.width;
  height = self->clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  userData = self->_userData;
  if (userData != dataCopy)
  {
    v9 = dataCopy;
    v6 = [(PXMessagesStackActivityIndicatorViewUserData *)userData isEqual:dataCopy];
    dataCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PXMessagesStackActivityIndicatorViewUserData *)v9 copyWithZone:0];
      v8 = self->_userData;
      self->_userData = v7;

      dataCopy = v9;
      if (self->_userData)
      {
        [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
        dataCopy = v9;
      }
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackActivityIndicatorView;
  [(PXMessagesStackActivityIndicatorView *)&v3 layoutSubviews];
  [(UIActivityIndicatorView *)self->_activityIndicatorView sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  PXSizeAdd();
}

- (PXMessagesStackActivityIndicatorView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PXMessagesStackActivityIndicatorView;
  v3 = [(PXMessagesStackActivityIndicatorView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
    visualEffectView = v3->_visualEffectView;
    v3->_visualEffectView = v5;

    [(UIVisualEffectView *)v3->_visualEffectView _setContinuousCornerRadius:5.0];
    [(UIVisualEffectView *)v3->_visualEffectView setClipsToBounds:1];
    [(PXMessagesStackActivityIndicatorView *)v3 addSubview:v3->_visualEffectView];
    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    activityIndicatorView = v3->_activityIndicatorView;
    v3->_activityIndicatorView = v7;

    [(UIActivityIndicatorView *)v3->_activityIndicatorView setHidesWhenStopped:0];
    [(UIActivityIndicatorView *)v3->_activityIndicatorView startAnimating];
    contentView = [(UIVisualEffectView *)v3->_visualEffectView contentView];
    [contentView addSubview:v3->_activityIndicatorView];
  }

  return v3;
}

@end