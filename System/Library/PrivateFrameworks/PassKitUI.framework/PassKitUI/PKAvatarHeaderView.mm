@interface PKAvatarHeaderView
- (CGSize)_layoutWithBounds:(CGRect)bounds applyLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAvatarHeaderView)initWithContact:(id)contact counterpartHandle:(id)handle;
- (void)configureForContact;
- (void)layoutSubviews;
- (void)setContact:(id)contact;
- (void)setCounterpartHandle:(id)handle;
@end

@implementation PKAvatarHeaderView

- (PKAvatarHeaderView)initWithContact:(id)contact counterpartHandle:(id)handle
{
  contactCopy = contact;
  handleCopy = handle;
  v28.receiver = self;
  v28.super_class = PKAvatarHeaderView;
  v9 = [(PKAvatarHeaderView *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_counterpartHandle, handle);
    objc_storeStrong(&v10->_contact, contact);
    v11 = objc_alloc_init(getCNAvatarViewClass_1[0]());
    avatarView = v10->_avatarView;
    v10->_avatarView = v11;

    [(PKAvatarHeaderView *)v10 addSubview:v10->_avatarView];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v10->_primaryLabel;
    v10->_primaryLabel = v13;

    v15 = v10->_primaryLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v15 setTextColor:labelColor];

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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v22 setTextColor:secondaryLabelColor];

    v24 = v10->_secondaryLabel;
    v25 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v18);
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)v10->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKAvatarHeaderView *)v10 addSubview:v10->_secondaryLabel];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKAvatarHeaderView *)v10 setBackgroundColor:clearColor];

    if (v10->_contact || v10->_counterpartHandle)
    {
      [(PKAvatarHeaderView *)v10 configureForContact];
    }
  }

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKAvatarHeaderView *)self _layoutWithBounds:0 applyLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 1.79769313e308];
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

- (CGSize)_layoutWithBounds:(CGRect)bounds applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v22.origin.x = bounds.origin.x + 14.0;
  v22.origin.y = bounds.origin.y + 14.0;
  v22.size.width = bounds.size.width + -28.0;
  v22.size.height = bounds.size.height + -14.0;
  remainder = v22;
  memset(&v19, 0, sizeof(v19));
  CGRectDivide(v22, &v19, &remainder, 100.0, CGRectMinYEdge);
  if (layoutCopy)
  {
    avatarView = self->_avatarView;
    PKSizeAlignedInRect();
    [(CNAvatarView *)avatarView setFrame:?];
  }

  CGRectDivide(remainder, &v19, &remainder, 14.0, CGRectMinYEdge);
  [(UILabel *)self->_primaryLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &v19, &remainder, v11, CGRectMinYEdge);
  if (layoutCopy)
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
  if (layoutCopy)
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
  organizationName = [(CNContact *)self->_contact organizationName];
  [(UILabel *)secondaryLabel setText:organizationName];

  primaryLabel = self->_primaryLabel;
  v8 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:self->_counterpartHandle contact:self->_contact];
  [(UILabel *)primaryLabel setText:v8];

  [(PKAvatarHeaderView *)self setNeedsLayout];
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (self->_contact != contactCopy)
  {
    v6 = contactCopy;
    objc_storeStrong(&self->_contact, contact);
    [(PKAvatarHeaderView *)self configureForContact];
    contactCopy = v6;
  }
}

- (void)setCounterpartHandle:(id)handle
{
  handleCopy = handle;
  if (self->_counterpartHandle != handleCopy)
  {
    v6 = handleCopy;
    objc_storeStrong(&self->_counterpartHandle, handle);
    [(PKAvatarHeaderView *)self configureForContact];
    handleCopy = v6;
  }
}

@end