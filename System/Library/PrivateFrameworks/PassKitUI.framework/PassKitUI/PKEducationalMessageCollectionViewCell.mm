@interface PKEducationalMessageCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)configure:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKEducationalMessageCollectionViewCell

- (void)configure:(id)a3
{
  v4 = a3;
  educationalView = self->_educationalView;
  v9 = v4;
  if (!educationalView)
  {
    v6 = objc_alloc_init(PKEducationalMessageView);
    v7 = self->_educationalView;
    self->_educationalView = v6;

    v8 = [(PKEducationalMessageCollectionViewCell *)self contentView];
    [v8 addSubview:self->_educationalView];

    v4 = v9;
    educationalView = self->_educationalView;
  }

  [(PKEducationalMessageView *)educationalView configure:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKEducationalMessageView *)self->_educationalView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKEducationalMessageCollectionViewCell;
  [(PKEducationalMessageCollectionViewCell *)&v4 layoutSubviews];
  educationalView = self->_educationalView;
  [(PKEducationalMessageCollectionViewCell *)self bounds];
  [(PKEducationalMessageView *)educationalView setFrame:?];
}

@end