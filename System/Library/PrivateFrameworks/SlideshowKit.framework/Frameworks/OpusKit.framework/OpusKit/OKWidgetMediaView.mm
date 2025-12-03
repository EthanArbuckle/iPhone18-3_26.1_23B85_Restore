@interface OKWidgetMediaView
- (id)videoActivityIndicator;
- (void)dealloc;
- (void)showVideoActivityIndicator:(BOOL)indicator;
@end

@implementation OKWidgetMediaView

- (void)dealloc
{
  videoActivityIndicator = self->_videoActivityIndicator;
  if (videoActivityIndicator)
  {

    self->_videoActivityIndicator = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetMediaView;
  [(OKWidgetMediaViewProxy *)&v4 dealloc];
}

- (id)videoActivityIndicator
{
  result = self->_videoActivityIndicator;
  if (!result)
  {
    [(OFUIView *)[(OKWidgetViewProxy *)self contentView] bounds];
    v5 = v4;
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:0];
    self->_videoActivityIndicator = v8;
    [(UIActivityIndicatorView *)v8 frame];
    v10 = (v5 - v9) * 0.5;
    [(UIActivityIndicatorView *)self->_videoActivityIndicator frame];
    v12 = (v7 - v11) * 0.5;
    [(UIActivityIndicatorView *)self->_videoActivityIndicator frame];
    v14 = v13;
    [(UIActivityIndicatorView *)self->_videoActivityIndicator frame];
    [(UIActivityIndicatorView *)self->_videoActivityIndicator setFrame:v10, v12, v14];
    [(UIActivityIndicatorView *)self->_videoActivityIndicator setAutoresizingMask:45];
    [(OKWidgetMediaView *)self addSubview:self->_videoActivityIndicator];
    [(UIActivityIndicatorView *)self->_videoActivityIndicator setHidden:1];
    return self->_videoActivityIndicator;
  }

  return result;
}

- (void)showVideoActivityIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  if (indicator)
  {
    videoActivityIndicator = [(OKWidgetMediaView *)self videoActivityIndicator];
    [videoActivityIndicator startAnimating];
  }

  else
  {
    if (!self->_videoActivityIndicator)
    {
      return;
    }

    videoActivityIndicator = [(OKWidgetMediaView *)self videoActivityIndicator];
    [videoActivityIndicator stopAnimating];
  }

  [videoActivityIndicator setHidden:!indicatorCopy];
}

@end