@interface PXPlaceholderView
- (void)_updateSubviews;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShouldShowIndicatorView:(BOOL)view;
@end

@implementation PXPlaceholderView

- (void)_updateSubviews
{
  if (self->_shouldShowIndicatorView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    indicator = self->_indicator;
    self->_indicator = v3;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)self->_indicator setColor:whiteColor];

    [(PXPlaceholderView *)self addSubview:self->_indicator];
    v6 = self->_indicator;

    [(UIActivityIndicatorView *)v6 startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self->_indicator removeFromSuperview];
    v7 = self->_indicator;
    self->_indicator = 0;
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  viewSpec = [data viewSpec];
  [(UIView *)self px_setSpec:viewSpec];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXPlaceholderView;
  [(PXPlaceholderView *)&v3 layoutSubviews];
  [(UIActivityIndicatorView *)self->_indicator sizeToFit];
  [(PXPlaceholderView *)self bounds];
  PXRectGetCenter();
}

- (void)becomeReusable
{
  [(PXPlaceholderView *)self setHidden:1];
  indicator = self->_indicator;

  [(UIActivityIndicatorView *)indicator stopAnimating];
}

- (void)prepareForReuse
{
  [(PXPlaceholderView *)self setHidden:0];
  [(UIActivityIndicatorView *)self->_indicator startAnimating];
  indicator = self->_indicator;

  [(UIActivityIndicatorView *)indicator setHidden:0];
}

- (void)setShouldShowIndicatorView:(BOOL)view
{
  if (self->_shouldShowIndicatorView != view)
  {
    self->_shouldShowIndicatorView = view;
    [(PXPlaceholderView *)self _updateSubviews];
  }
}

@end