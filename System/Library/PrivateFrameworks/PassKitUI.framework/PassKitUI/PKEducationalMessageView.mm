@interface PKEducationalMessageView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKEducationalMessageView)initWithConfiguration:(id)configuration;
- (void)layoutSubviews;
@end

@implementation PKEducationalMessageView

- (PKEducationalMessageView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PKEducationalMessageView;
  v5 = [(PKEducationalMessageView *)&v9 init];
  if (v5)
  {
    v6 = [[_PKEducationalMessageView alloc] initWithConfiguration:configurationCopy];
    internalView = v5->_internalView;
    v5->_internalView = v6;

    [(PKEducationalMessageView *)v5 addSubview:v5->_internalView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKEducationalMessageView;
  [(PKEducationalMessageView *)&v4 layoutSubviews];
  internalView = self->_internalView;
  [(PKEducationalMessageView *)self bounds];
  [(_PKEducationalMessageView *)internalView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_PKEducationalMessageView *)self->_internalView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end