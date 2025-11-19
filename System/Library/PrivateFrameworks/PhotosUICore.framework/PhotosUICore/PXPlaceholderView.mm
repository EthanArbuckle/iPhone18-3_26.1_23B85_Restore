@interface PXPlaceholderView
- (void)_updateSubviews;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShouldShowIndicatorView:(BOOL)a3;
@end

@implementation PXPlaceholderView

- (void)_updateSubviews
{
  if (self->_shouldShowIndicatorView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    indicator = self->_indicator;
    self->_indicator = v3;

    v5 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIActivityIndicatorView *)self->_indicator setColor:v5];

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

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  v5 = [a4 viewSpec];
  [(UIView *)self px_setSpec:v5];
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

- (void)setShouldShowIndicatorView:(BOOL)a3
{
  if (self->_shouldShowIndicatorView != a3)
  {
    self->_shouldShowIndicatorView = a3;
    [(PXPlaceholderView *)self _updateSubviews];
  }
}

@end