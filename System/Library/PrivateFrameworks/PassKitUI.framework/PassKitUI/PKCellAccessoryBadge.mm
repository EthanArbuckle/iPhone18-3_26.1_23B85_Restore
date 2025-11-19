@interface PKCellAccessoryBadge
+ (id)accessoryBadgeWithTitle:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCellAccessoryBadge)initWithFrame:(CGRect)a3 title:(id)a4;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKCellAccessoryBadge

+ (id)accessoryBadgeWithTitle:(id)a3
{
  v3 = a3;
  v4 = [PKCellAccessoryBadge alloc];
  v5 = [(PKCellAccessoryBadge *)v4 initWithFrame:v3 title:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  v6 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v5 placement:1];

  return v6;
}

- (PKCellAccessoryBadge)initWithFrame:(CGRect)a3 title:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = PKCellAccessoryBadge;
  v10 = [(PKCellAccessoryBadge *)&v19 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v11;

    v13 = v10->_titleLabel;
    v14 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)v13 setTextColor:v14];

    v15 = v10->_titleLabel;
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC90]);
    [(UILabel *)v15 setFont:v16];

    [(UILabel *)v10->_titleLabel setNumberOfLines:1];
    [(UILabel *)v10->_titleLabel setTextAlignment:1];
    [(UILabel *)v10->_titleLabel setText:v9];
    [(PKCellAccessoryBadge *)v10 addSubview:v10->_titleLabel];
    v17 = [MEMORY[0x1E69DC888] systemRedColor];
    [(PKCellAccessoryBadge *)v10 setBackgroundColor:v17];
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_titleLabel sizeThatFits:a3.width, a3.height];
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
  v9 = [(PKCellAccessoryBadge *)self layer];
  v11 = v9;
  v10 = v6 * 0.5;
  if (v6 != v4)
  {
    v10 = 5.0;
  }

  [v9 setCornerRadius:v10];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKCellAccessoryBadge;
  [(PKCellAccessoryBadge *)&v6 traitCollectionDidChange:a3];
  titleLabel = self->_titleLabel;
  v5 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC90]);
  [(UILabel *)titleLabel setFont:v5];
}

@end