@interface PKAvatarView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplate:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKAvatarView)init;
- (void)layoutSubviews;
- (void)setContact:(id)a3;
- (void)setPlaceholderImage:(id)a3;
- (void)setPlaceholderName:(id)a3;
- (void)setShowsName:(BOOL)a3;
@end

@implementation PKAvatarView

- (PKAvatarView)init
{
  v11.receiver = self;
  v11.super_class = PKAvatarView;
  v2 = [(PKAvatarView *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695D0C8]);
    avatarViewController = v2->_avatarViewController;
    v2->_avatarViewController = v3;

    v5 = [(CNAvatarViewController *)v2->_avatarViewController view];
    [(PKAvatarView *)v2 addSubview:v5];

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    contactNameLabel = v2->_contactNameLabel;
    v2->_contactNameLabel = v6;

    v8 = v2->_contactNameLabel;
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC58], *MEMORY[0x1E69DB980]);
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)v2->_contactNameLabel setHidden:1];
    [(PKAvatarView *)v2 addSubview:v2->_contactNameLabel];
    v2->_diameter = 35.0;
  }

  return v2;
}

- (void)setContact:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_contact, a3);
  avatarViewController = self->_avatarViewController;
  v15[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(CNAvatarViewController *)avatarViewController setContacts:v7];

  v8 = [(CNAvatarViewController *)self->_avatarViewController view];
  [v8 setHidden:0];

  v9 = [(CNAvatarViewController *)self->_avatarViewController view];
  [(PKAvatarView *)self bringSubviewToFront:v9];

  v10 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v14 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v12 = [v5 areKeysAvailable:v11];

  if (v12)
  {
    v13 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];
    [(UILabel *)self->_contactNameLabel setText:v13];
  }
}

- (void)setPlaceholderName:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CF18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setGivenName:v5];

  avatarViewController = self->_avatarViewController;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(CNAvatarViewController *)avatarViewController setContacts:v8];

  v9 = [(CNAvatarViewController *)self->_avatarViewController view];
  [v9 setHidden:0];

  v10 = [(CNAvatarViewController *)self->_avatarViewController view];
  [(PKAvatarView *)self bringSubviewToFront:v10];
}

- (void)setPlaceholderImage:(id)a3
{
  v4 = a3;
  placeholderImageView = self->_placeholderImageView;
  v9 = v4;
  if (!placeholderImageView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v7 = self->_placeholderImageView;
    self->_placeholderImageView = v6;

    [(UIImageView *)self->_placeholderImageView setContentMode:1];
    [(PKAvatarView *)self addSubview:self->_placeholderImageView];
    v4 = v9;
    placeholderImageView = self->_placeholderImageView;
  }

  [(UIImageView *)placeholderImageView setImage:v4];
  [(PKAvatarView *)self bringSubviewToFront:self->_placeholderImageView];
  v8 = [(CNAvatarViewController *)self->_avatarViewController view];
  [v8 setHidden:1];
}

- (void)setShowsName:(BOOL)a3
{
  if (self->_showsName != a3)
  {
    self->_showsName = a3;
    [(UILabel *)self->_contactNameLabel setHidden:!a3];

    [(PKAvatarView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKAvatarView *)self _layoutWithBounds:1 isTemplate:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAvatarView;
  [(PKAvatarView *)&v3 layoutSubviews];
  [(PKAvatarView *)self bounds];
  [(PKAvatarView *)self _layoutWithBounds:0 isTemplate:?];
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplate:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(PKAvatarView *)self _shouldReverseLayoutDirection])
  {
    v10 = CGRectMaxXEdge;
  }

  else
  {
    v10 = CGRectMinXEdge;
  }

  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = width;
  remainder.size.height = height;
  v11 = *(MEMORY[0x1E695F058] + 16);
  v29.origin = *MEMORY[0x1E695F058];
  v29.size = v11;
  v12 = [(CNAvatarViewController *)self->_avatarViewController view];
  [v12 frame];

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectDivide(v32, &v29, &remainder, self->_diameter, v10);
  PKRectCenteredIntegralRect();
  v16 = v15;
  v18 = v17;
  if (!a4)
  {
    v19 = v13;
    v20 = v14;
    v21 = [(CNAvatarViewController *)self->_avatarViewController view];
    [v21 setFrame:{v19, v20, v16, v18}];

    [(UIImageView *)self->_placeholderImageView setFrame:v19, v20, v16, v18];
  }

  v22 = v16 + 0.0;
  if (self->_showsName)
  {
    CGRectDivide(remainder, &v29, &remainder, 8.0, v10);
    v22 = v22 + v29.size.width;
    if (self->_showsName)
    {
      [(UILabel *)self->_contactNameLabel sizeThatFits:remainder.size.width, remainder.size.height];
      v24 = v23;
      CGRectDivide(remainder, &v29, &remainder, v25, v10);
      if (!a4)
      {
        contactNameLabel = self->_contactNameLabel;
        PKRectCenteredIntegralRect();
        [(UILabel *)contactNameLabel setFrame:?];
      }

      v22 = v22 + v29.size.width;
      v18 = fmax(v18, v24);
    }
  }

  v27 = v22;
  v28 = v18;
  result.height = v28;
  result.width = v27;
  return result;
}

@end