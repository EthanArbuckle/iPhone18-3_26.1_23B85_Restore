@interface SXContentScaleManager
- (SXContentScaleManager)initWithContentScale:(int64_t)scale;
- (SXContentScaleManagerDelegate)delegate;
- (void)decrease;
- (void)increase;
- (void)setContentScale:(int64_t)scale;
@end

@implementation SXContentScaleManager

- (SXContentScaleManager)initWithContentScale:(int64_t)scale
{
  v6.receiver = self;
  v6.super_class = SXContentScaleManager;
  result = [(SXContentScaleManager *)&v6 init];
  if (result)
  {
    result->_contentScale = scale;
    v5 = 1.0;
    if ((scale - 1) <= 0xA)
    {
      v5 = dbl_1D8392120[scale - 1];
    }

    result->_contentScaleFactor = v5;
  }

  return result;
}

- (void)increase
{
  contentScale = self->_contentScale;
  if (contentScale >= 10)
  {
    contentScale = 10;
  }

  [(SXContentScaleManager *)self setContentScale:contentScale + 1];
}

- (void)decrease
{
  contentScale = self->_contentScale;
  if (contentScale <= 2)
  {
    contentScale = 2;
  }

  [(SXContentScaleManager *)self setContentScale:contentScale - 1];
}

- (void)setContentScale:(int64_t)scale
{
  if (self->_contentScale != scale)
  {
    self->_contentScale = scale;
    v4 = 1.0;
    if ((scale - 1) <= 0xA)
    {
      v4 = dbl_1D8392120[scale - 1];
    }

    self->_contentScaleFactor = v4;
    delegate = [(SXContentScaleManager *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(SXContentScaleManager *)self delegate];
      [delegate2 contentScaleManagerDidChangeContentScaleFactor:self];
    }
  }
}

- (SXContentScaleManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end