@interface VUILibraryBannerCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUILibraryBannerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation VUILibraryBannerCollectionViewCell

- (VUILibraryBannerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = VUILibraryBannerCollectionViewCell;
  v3 = [(VUILibraryBannerCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v4 setFontSize:13.0];
    [(VUITextLayout *)v4 setFontWeight:7];
    [(VUITextLayout *)v4 setAlignment:1];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(VUITextLayout *)v4 setColor:whiteColor];

    [(VUITextLayout *)v4 setMargin:6.0, 0.0, 7.0, 0.0];
    v6 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:v4 existingLabel:0];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    contentView = [(VUILibraryBannerCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];

    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [(VUILibraryBannerCollectionViewCell *)v3 setBackgroundColor:systemGrayColor];

    [(VUILibraryBannerCollectionViewCell *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [MEMORY[0x1E69DD2E8] vui_padding];
  [(VUILabel *)self->_titleLabel sizeThatFits:width - v5 - v6, 1.79769313e308];
  v8 = v7;
  textLayout = [(VUILabel *)self->_titleLabel textLayout];
  [textLayout margin];
  v11 = v8 + v10;

  textLayout2 = [(VUILabel *)self->_titleLabel textLayout];
  [textLayout2 margin];
  v14 = v11 + v13;

  v15 = width;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = VUILibraryBannerCollectionViewCell;
  [(VUILibraryBannerCollectionViewCell *)&v13 layoutSubviews];
  [(VUILibraryBannerCollectionViewCell *)self bounds];
  Width = CGRectGetWidth(v14);
  [MEMORY[0x1E69DD2E8] vui_padding];
  v5 = v4;
  v7 = Width - v4 - v6;
  [(VUILabel *)self->_titleLabel sizeThatFits:v7, 1.79769313e308];
  v9 = v8;
  titleLabel = self->_titleLabel;
  textLayout = [(VUILabel *)titleLabel textLayout];
  [textLayout margin];
  [(VUILabel *)titleLabel setFrame:v5, v12, v7, v9];
}

@end