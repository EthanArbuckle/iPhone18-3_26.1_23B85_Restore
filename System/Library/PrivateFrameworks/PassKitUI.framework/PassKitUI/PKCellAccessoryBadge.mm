@interface PKCellAccessoryBadge
+ (id)accessoryBadgeWithTitle:(id)title;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCellAccessoryBadge)initWithFrame:(CGRect)frame title:(id)title;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKCellAccessoryBadge

+ (id)accessoryBadgeWithTitle:(id)title
{
  titleCopy = title;
  v4 = [PKCellAccessoryBadge alloc];
  v5 = [(PKCellAccessoryBadge *)v4 initWithFrame:titleCopy title:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  v6 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v5 placement:1];

  return v6;
}

- (PKCellAccessoryBadge)initWithFrame:(CGRect)frame title:(id)title
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  titleCopy = title;
  v19.receiver = self;
  v19.super_class = PKCellAccessoryBadge;
  height = [(PKCellAccessoryBadge *)&v19 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = height->_titleLabel;
    height->_titleLabel = v11;

    v13 = height->_titleLabel;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v13 setTextColor:whiteColor];

    v15 = height->_titleLabel;
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC90]);
    [(UILabel *)v15 setFont:v16];

    [(UILabel *)height->_titleLabel setNumberOfLines:1];
    [(UILabel *)height->_titleLabel setTextAlignment:1];
    [(UILabel *)height->_titleLabel setText:titleCopy];
    [(PKCellAccessoryBadge *)height addSubview:height->_titleLabel];
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [(PKCellAccessoryBadge *)height setBackgroundColor:systemRedColor];
  }

  return height;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_titleLabel sizeThatFits:fits.width, fits.height];
  v5 = v4 + 10.0;
  v6 = fmax(v5, v3 + 10.0);
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  [(PKCellAccessoryBadge *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_titleLabel sizeThatFits:v3, v5];
  [(UILabel *)self->_titleLabel setFrame:(v4 - v7) * 0.5, 5.0, v7, v8];
  layer = [(PKCellAccessoryBadge *)self layer];
  v11 = layer;
  v10 = v6 * 0.5;
  if (v6 != v4)
  {
    v10 = 5.0;
  }

  [layer setCornerRadius:v10];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = PKCellAccessoryBadge;
  [(PKCellAccessoryBadge *)&v6 traitCollectionDidChange:change];
  titleLabel = self->_titleLabel;
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC90]);
  [(UILabel *)titleLabel setFont:v5];
}

@end