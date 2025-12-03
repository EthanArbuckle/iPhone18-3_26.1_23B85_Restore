@interface PKEducationalMessageCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)configure:(id)configure;
- (void)layoutSubviews;
@end

@implementation PKEducationalMessageCollectionViewCell

- (void)configure:(id)configure
{
  configureCopy = configure;
  educationalView = self->_educationalView;
  v9 = configureCopy;
  if (!educationalView)
  {
    v6 = objc_alloc_init(PKEducationalMessageView);
    v7 = self->_educationalView;
    self->_educationalView = v6;

    contentView = [(PKEducationalMessageCollectionViewCell *)self contentView];
    [contentView addSubview:self->_educationalView];

    configureCopy = v9;
    educationalView = self->_educationalView;
  }

  [(PKEducationalMessageView *)educationalView configure:configureCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKEducationalMessageView *)self->_educationalView sizeThatFits:fits.width, fits.height];
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