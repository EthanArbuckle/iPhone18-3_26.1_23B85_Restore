@interface PKRewardsTierTableViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKRewardsTierTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (PKRewardsTierTableViewCellDelegate)delegate;
- (void)layoutSubviews;
- (void)linkAction;
- (void)setLink:(id)link;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PKRewardsTierTableViewCell

- (PKRewardsTierTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30.receiver = self;
  v30.super_class = PKRewardsTierTableViewCell;
  v4 = [(PKRewardsTierTableViewCell *)&v30 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PKRewardsTierTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    tierIcon = v5->_tierIcon;
    v5->_tierIcon = v7;

    [(UIImageView *)v5->_tierIcon setContentMode:1];
    layer = [(UIImageView *)v5->_tierIcon layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer setCornerRadius:6.0];
    [layer setMasksToBounds:1];
    [contentView addSubview:v5->_tierIcon];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v10;

    v12 = v5->_titleLabel;
    v13 = *MEMORY[0x1E69DDD80];
    v14 = *MEMORY[0x1E69DDC30];
    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC30], *MEMORY[0x1E69DB958]);
    [(UILabel *)v12 setFont:v15];

    [(UILabel *)v5->_titleLabel setNumberOfLines:0];
    [contentView addSubview:v5->_titleLabel];
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v5->_subtitleLabel;
    v5->_subtitleLabel = v16;

    v18 = v5->_subtitleLabel;
    v19 = PKFontForDefaultDesign(v13, v14);
    [(UILabel *)v18 setFont:v19];

    [(UILabel *)v5->_subtitleLabel setNumberOfLines:0];
    v20 = v5->_subtitleLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v20 setTextColor:secondaryLabelColor];

    [contentView addSubview:v5->_subtitleLabel];
    v22 = objc_alloc_init(MEMORY[0x1E69DC738]);
    linkButton = v5->_linkButton;
    v5->_linkButton = v22;

    titleLabel = [(UIButton *)v5->_linkButton titleLabel];
    [titleLabel setNumberOfLines:0];

    [(UIButton *)v5->_linkButton setContentHorizontalAlignment:1];
    titleLabel2 = [(UIButton *)v5->_linkButton titleLabel];
    v26 = PKFontForDefaultDesign(v13, v14);
    [titleLabel2 setFont:v26];

    v27 = v5->_linkButton;
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIButton *)v27 setTitleColor:systemBlueColor forState:0];

    [(UIButton *)v5->_linkButton addTarget:v5 action:sel_linkAction forControlEvents:64];
    [contentView addSubview:v5->_linkButton];
  }

  return v5;
}

- (void)linkAction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didPressLinkInCell:self];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  v10 = titleCopy;
  titleCopy2 = title;
  if (titleCopy2 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !titleCopy2)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:titleCopy2];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_title;
    self->_title = v8;

    [(UILabel *)self->_titleLabel setText:self->_title];
    [(PKRewardsTierTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = self->_subtitle;
  v10 = subtitleCopy;
  subtitleCopy2 = subtitle;
  if (subtitleCopy2 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !subtitleCopy2)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:subtitleCopy2];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_subtitle;
    self->_subtitle = v8;

    [(UILabel *)self->_subtitleLabel setText:self->_subtitle];
    [(PKRewardsTierTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setLink:(id)link
{
  linkCopy = link;
  link = self->_link;
  v10 = linkCopy;
  linkCopy2 = link;
  if (linkCopy2 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !linkCopy2)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:linkCopy2];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_link;
    self->_link = v8;

    [(UIButton *)self->_linkButton setTitle:self->_link forState:0];
    [(PKRewardsTierTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKRewardsTierTableViewCell;
  [(PKRewardsTierTableViewCell *)&v3 layoutSubviews];
  [(PKRewardsTierTableViewCell *)self bounds];
  [(PKRewardsTierTableViewCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKRewardsTierTableViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(PKRewardsTierTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v8 = CGRectMaxXEdge;
  }

  else
  {
    v8 = CGRectMinXEdge;
  }

  memset(&slice, 0, sizeof(slice));
  v28.origin.x = x + 16.0;
  v28.origin.y = y + 16.0;
  v28.size.width = width + -32.0;
  remainder.origin.x = x + 16.0;
  remainder.origin.y = y + 16.0;
  v28.size.height = height + -32.0;
  remainder.size.width = width + -32.0;
  remainder.size.height = height + -32.0;
  CGRectDivide(v28, &slice, &remainder, 40.0, v8);
  if (!self->_isTemplateLayout)
  {
    memset(&v24, 0, sizeof(v24));
    CGRectDivide(slice, &v24, &slice, 10.0, CGRectMinYEdge);
    tierIcon = self->_tierIcon;
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    [(UIImageView *)tierIcon setFrame:?];
  }

  CGRectDivide(remainder, &slice, &remainder, 16.0, v8);
  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v11 = v10;
  CGRectDivide(remainder, &slice, &remainder, v10, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_titleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  CGRectDivide(remainder, &slice, &remainder, 4.0, CGRectMinYEdge);
  v12 = v11 + 16.0 + 4.0;
  [(UILabel *)self->_subtitleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v14 = v13;
  CGRectDivide(remainder, &slice, &remainder, v13, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    [(UILabel *)self->_subtitleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

  v15 = v12 + v14;
  titleLabel = [(UIButton *)self->_linkButton titleLabel];
  text = [titleLabel text];
  v18 = [text length];

  if (v18)
  {
    CGRectDivide(remainder, &slice, &remainder, 11.0, CGRectMinYEdge);
    v19 = v15 + 11.0;
    [(UIButton *)self->_linkButton sizeThatFits:remainder.size.width, remainder.size.height];
    v21 = v20;
    CGRectDivide(remainder, &slice, &remainder, v20, CGRectMinYEdge);
    if (!self->_isTemplateLayout)
    {
      [(UIButton *)self->_linkButton setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    }

    v15 = v19 + v21;
  }

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v22 = CGRectGetWidth(v29);
  v23 = v15 + 16.0;
  result.height = v23;
  result.width = v22;
  return result;
}

- (PKRewardsTierTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end