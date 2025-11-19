@interface PKAvatarHeaderView
- (CGSize)_layoutWithBounds:(CGRect)a3 applyLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKAvatarHeaderView)initWithContact:(id)a3 counterpartHandle:(id)a4;
- (void)configureForContact;
- (void)layoutSubviews;
- (void)setContact:(id)a3;
- (void)setCounterpartHandle:(id)a3;
@end

@implementation PKAvatarHeaderView

- (PKAvatarHeaderView)initWithContact:(id)a3 counterpartHandle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = PKAvatarHeaderView;
  v9 = [(PKAvatarHeaderView *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_counterpartHandle, a4);
    objc_storeStrong(&v10->_contact, a3);
    v11 = objc_alloc_init(getCNAvatarViewClass_1[0]());
    avatarView = v10->_avatarView;
    v10->_avatarView = v11;

    [(PKAvatarHeaderView *)v10 addSubview:v10->_avatarView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v10->_primaryLabel;
    v10->_primaryLabel = v13;

    v15 = v10->_primaryLabel;
    v16 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:v16];

    [(UILabel *)v10->_primaryLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v10->_primaryLabel setNumberOfLines:1];
    v17 = v10->_primaryLabel;
    v18 = *MEMORY[0x1E69DDC58];
    v19 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC58], 2, 0);
    [(UILabel *)v17 setFont:v19];

    [(UILabel *)v10->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKAvatarHeaderView *)v10 addSubview:v10->_primaryLabel];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v10->_secondaryLabel;
    v10->_secondaryLabel = v20;

    [(UILabel *)v10->_secondaryLabel setNumberOfLines:1];
    v22 = v10->_secondaryLabel;
    v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v22 setTextColor:v23];

    v24 = v10->_secondaryLabel;
    v25 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v18);
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v10->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKAvatarHeaderView *)v10 addSubview:v10->_secondaryLabel];
    v26 = [MEMORY[0x1E69DC888] clearColor];
    [(PKAvatarHeaderView *)v10 setBackgroundColor:v26];

    if (v10->_contact || v10->_counterpartHandle)
    {
      [(PKAvatarHeaderView *)v10 configureForContact];
    }
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKAvatarHeaderView *)self _layoutWithBounds:0 applyLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAvatarHeaderView;
  [(PKAvatarHeaderView *)&v3 layoutSubviews];
  [(PKAvatarHeaderView *)self bounds];
  [(PKAvatarHeaderView *)self _layoutWithBounds:1 applyLayout:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.origin.x = a3.origin.x + 14.0;
  v22.origin.y = a3.origin.y + 14.0;
  v22.size.width = a3.size.width + -28.0;
  v22.size.height = a3.size.height + -14.0;
  remainder = v22;
  memset(&v19, 0, sizeof(v19));
  CGRectDivide(v22, &v19, &remainder, 100.0, CGRectMinYEdge);
  if (v4)
  {
    avatarView = self->_avatarView;
    PKSizeAlignedInRect();
    [(CNAvatarView *)avatarView setFrame:?];
  }

  CGRectDivide(remainder, &v19, &remainder, 14.0, CGRectMinYEdge);
  [(UILabel *)self->_primaryLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &v19, &remainder, v11, CGRectMinYEdge);
  if (v4)
  {
    primaryLabel = self->_primaryLabel;
    PKSizeAlignedInRect();
    [(UILabel *)primaryLabel setFrame:?];
  }

  [(UILabel *)self->_secondaryLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v14 = v13;
  if (v13 > 0.0)
  {
    CGRectDivide(remainder, &v19, &remainder, 3.0, CGRectMinYEdge);
  }

  CGRectDivide(remainder, &v19, &remainder, v14, CGRectMinYEdge);
  if (v4)
  {
    secondaryLabel = self->_secondaryLabel;
    PKSizeAlignedInRect();
    [(UILabel *)secondaryLabel setFrame:?];
  }

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v16 = CGRectGetWidth(v23);
  MaxY = CGRectGetMaxY(v19);
  v18 = v16;
  result.height = MaxY;
  result.width = v18;
  return result;
}

- (void)configureForContact
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_contact)
  {
    v10[0] = self->_contact;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v4 setContactType:0];
    v9 = v4;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  }

  [(CNAvatarView *)self->_avatarView setContacts:v3];
  secondaryLabel = self->_secondaryLabel;
  v6 = [(CNContact *)self->_contact organizationName];
  [(UILabel *)secondaryLabel setText:v6];

  primaryLabel = self->_primaryLabel;
  v8 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:self->_counterpartHandle contact:self->_contact];
  [(UILabel *)primaryLabel setText:v8];

  [(PKAvatarHeaderView *)self setNeedsLayout];
}

- (void)setContact:(id)a3
{
  v5 = a3;
  if (self->_contact != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contact, a3);
    [(PKAvatarHeaderView *)self configureForContact];
    v5 = v6;
  }
}

- (void)setCounterpartHandle:(id)a3
{
  v5 = a3;
  if (self->_counterpartHandle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_counterpartHandle, a3);
    [(PKAvatarHeaderView *)self configureForContact];
    v5 = v6;
  }
}

@end