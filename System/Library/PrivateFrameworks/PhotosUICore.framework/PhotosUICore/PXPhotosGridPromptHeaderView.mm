@interface PXPhotosGridPromptHeaderView
+ (CGSize)_instanceLayoutSubviews:(id)a3 forTitle:(id)a4 inBounds:(CGRect)a5;
+ (CGSize)sizeThatFits:(CGSize)a3 forTitle:(id)a4;
+ (id)_newTitleLabel;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXPhotosGridPromptHeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTitle:(id)a3;
@end

@implementation PXPhotosGridPromptHeaderView

- (void)layoutSubviews
{
  v7 = [(PXPhotosGridPromptHeaderView *)self title];
  [(PXPhotosGridPromptHeaderView *)self bounds];
  [objc_opt_class() _instanceLayoutSubviews:self forTitle:v7 inBounds:{v3, v4, v5, v6}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_opt_class();
  v7 = [(PXPhotosGridPromptHeaderView *)self title];
  [v6 sizeThatFits:v7 forTitle:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    title = self->_title;
    self->_title = v5;

    [(UILabel *)self->_titleLabel setText:v4];

    [(PXPhotosGridPromptHeaderView *)self setNeedsLayout];
  }
}

- (PXPhotosGridPromptHeaderView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = PXPhotosGridPromptHeaderView;
  v3 = [(PXPhotosGridPromptHeaderView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() _newTitleLabel];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(PXPhotosGridPromptHeaderView *)v3 addSubview:v3->_titleLabel];
    v6 = [(PXPhotosGridPromptHeaderView *)v3 traitCollection];
    [v6 displayScale];
    v8 = 1.0 / v7;

    [(PXPhotosGridPromptHeaderView *)v3 bounds];
    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v10, v9 - v8, v11, v8}];
    [(UIView *)v12 setAutoresizingMask:10];
    separatorView = v3->_separatorView;
    v14 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)separatorView setBackgroundColor:v14];

    v15 = v3->_separatorView;
    v3->_separatorView = v12;
    v16 = v12;

    [(PXPhotosGridPromptHeaderView *)v3 addSubview:v16];
    v17 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];

    [(PXPhotosGridPromptHeaderView *)v3 setBackgroundColor:v17];
  }

  return v3;
}

+ (CGSize)sizeThatFits:(CGSize)a3 forTitle:(id)a4
{
  [a1 _instanceLayoutSubviews:0 forTitle:a4 inBounds:{0.0, 0.0, a3.width, a3.height}];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)_instanceLayoutSubviews:(id)a3 forTitle:(id)a4 inBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = v9[62];
  }

  else
  {
    v11 = [a1 _newTitleLabel];
    [v11 setText:v10];
  }

  [v11 sizeThatFits:{fmax(width + -22.0, 0.0), height}];
  v13 = v12;
  v15 = v14 + 28.0;
  if (v9)
  {
    [v11 frame];
    v19.origin.x = (width - v13) * 0.5;
    v19.origin.y = (height - v15) * 0.5;
    v19.size.width = v13;
    v19.size.height = v15;
    v20 = CGRectIntegral(v19);
    [v11 setFrame:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
  }

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (id)_newTitleLabel
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v2 setFont:v3];

  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v2 setTextColor:v4];

  [v2 setNumberOfLines:0];
  return v2;
}

@end