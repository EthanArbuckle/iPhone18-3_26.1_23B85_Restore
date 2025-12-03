@interface PXPhotosGridPromptHeaderView
+ (CGSize)_instanceLayoutSubviews:(id)subviews forTitle:(id)title inBounds:(CGRect)bounds;
+ (CGSize)sizeThatFits:(CGSize)fits forTitle:(id)title;
+ (id)_newTitleLabel;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXPhotosGridPromptHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTitle:(id)title;
@end

@implementation PXPhotosGridPromptHeaderView

- (void)layoutSubviews
{
  title = [(PXPhotosGridPromptHeaderView *)self title];
  [(PXPhotosGridPromptHeaderView *)self bounds];
  [objc_opt_class() _instanceLayoutSubviews:self forTitle:title inBounds:{v3, v4, v5, v6}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = objc_opt_class();
  title = [(PXPhotosGridPromptHeaderView *)self title];
  [v6 sizeThatFits:title forTitle:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setTitle:(id)title
{
  if (self->_title != title)
  {
    titleCopy = title;
    v5 = [titleCopy copy];
    title = self->_title;
    self->_title = v5;

    [(UILabel *)self->_titleLabel setText:titleCopy];

    [(PXPhotosGridPromptHeaderView *)self setNeedsLayout];
  }
}

- (PXPhotosGridPromptHeaderView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = PXPhotosGridPromptHeaderView;
  v3 = [(PXPhotosGridPromptHeaderView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    _newTitleLabel = [objc_opt_class() _newTitleLabel];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = _newTitleLabel;

    [(PXPhotosGridPromptHeaderView *)v3 addSubview:v3->_titleLabel];
    traitCollection = [(PXPhotosGridPromptHeaderView *)v3 traitCollection];
    [traitCollection displayScale];
    v8 = 1.0 / v7;

    [(PXPhotosGridPromptHeaderView *)v3 bounds];
    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v10, v9 - v8, v11, v8}];
    [(UIView *)v12 setAutoresizingMask:10];
    separatorView = v3->_separatorView;
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)separatorView setBackgroundColor:separatorColor];

    v15 = v3->_separatorView;
    v3->_separatorView = v12;
    v16 = v12;

    [(PXPhotosGridPromptHeaderView *)v3 addSubview:v16];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];

    [(PXPhotosGridPromptHeaderView *)v3 setBackgroundColor:secondarySystemBackgroundColor];
  }

  return v3;
}

+ (CGSize)sizeThatFits:(CGSize)fits forTitle:(id)title
{
  [self _instanceLayoutSubviews:0 forTitle:title inBounds:{0.0, 0.0, fits.width, fits.height}];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)_instanceLayoutSubviews:(id)subviews forTitle:(id)title inBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  subviewsCopy = subviews;
  titleCopy = title;
  if (subviewsCopy)
  {
    _newTitleLabel = subviewsCopy[62];
  }

  else
  {
    _newTitleLabel = [self _newTitleLabel];
    [_newTitleLabel setText:titleCopy];
  }

  [_newTitleLabel sizeThatFits:{fmax(width + -22.0, 0.0), height}];
  v13 = v12;
  v15 = v14 + 28.0;
  if (subviewsCopy)
  {
    [_newTitleLabel frame];
    v19.origin.x = (width - v13) * 0.5;
    v19.origin.y = (height - v15) * 0.5;
    v19.size.width = v13;
    v19.size.height = v15;
    v20 = CGRectIntegral(v19);
    [_newTitleLabel setFrame:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
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

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v2 setTextColor:secondaryLabelColor];

  [v2 setNumberOfLines:0];
  return v2;
}

@end