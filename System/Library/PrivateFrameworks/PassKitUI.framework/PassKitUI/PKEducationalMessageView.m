@interface PKEducationalMessageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKEducationalMessageView)initWithConfiguration:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKEducationalMessageView

- (PKEducationalMessageView)initWithConfiguration:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKEducationalMessageView;
  v5 = [(PKEducationalMessageView *)&v9 init];
  if (v5)
  {
    v6 = [[_PKEducationalMessageView alloc] initWithConfiguration:v4];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_PKEducationalMessageView *)self->_internalView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end