@interface VUIAppSpinnerView
- (void)layoutSubviews;
@end

@implementation VUIAppSpinnerView

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = VUIAppSpinnerView;
  [(VUIAppSpinnerView *)&v12 layoutSubviews];
  if (!self->_didLayout)
  {
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIAppSpinnerView *)self setBackgroundColor:vui_primaryDynamicBackgroundColor];

    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v4;

    [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
    [(VUIAppSpinnerView *)self addSubview:self->_spinner];
    centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
    centerXAnchor2 = [(VUIAppSpinnerView *)self centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v8 setActive:1];

    centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
    centerYAnchor2 = [(VUIAppSpinnerView *)self centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v11 setActive:1];

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    self->_didLayout = 1;
  }
}

@end