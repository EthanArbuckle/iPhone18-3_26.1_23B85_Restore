@interface PKAvatarView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplate:(BOOL)template;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAvatarView)init;
- (void)layoutSubviews;
- (void)setContact:(id)contact;
- (void)setPlaceholderImage:(id)image;
- (void)setPlaceholderName:(id)name;
- (void)setShowsName:(BOOL)name;
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

    view = [(CNAvatarViewController *)v2->_avatarViewController view];
    [(PKAvatarView *)v2 addSubview:view];

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

- (void)setContact:(id)contact
{
  v15[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  objc_storeStrong(&self->_contact, contact);
  avatarViewController = self->_avatarViewController;
  v15[0] = contactCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(CNAvatarViewController *)avatarViewController setContacts:v7];

  view = [(CNAvatarViewController *)self->_avatarViewController view];
  [view setHidden:0];

  view2 = [(CNAvatarViewController *)self->_avatarViewController view];
  [(PKAvatarView *)self bringSubviewToFront:view2];

  v10 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v14 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v12 = [contactCopy areKeysAvailable:v11];

  if (v12)
  {
    v13 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
    [(UILabel *)self->_contactNameLabel setText:v13];
  }
}

- (void)setPlaceholderName:(id)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CF18];
  nameCopy = name;
  v6 = objc_alloc_init(v4);
  [v6 setGivenName:nameCopy];

  avatarViewController = self->_avatarViewController;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(CNAvatarViewController *)avatarViewController setContacts:v8];

  view = [(CNAvatarViewController *)self->_avatarViewController view];
  [view setHidden:0];

  view2 = [(CNAvatarViewController *)self->_avatarViewController view];
  [(PKAvatarView *)self bringSubviewToFront:view2];
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  placeholderImageView = self->_placeholderImageView;
  v9 = imageCopy;
  if (!placeholderImageView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v7 = self->_placeholderImageView;
    self->_placeholderImageView = v6;

    [(UIImageView *)self->_placeholderImageView setContentMode:1];
    [(PKAvatarView *)self addSubview:self->_placeholderImageView];
    imageCopy = v9;
    placeholderImageView = self->_placeholderImageView;
  }

  [(UIImageView *)placeholderImageView setImage:imageCopy];
  [(PKAvatarView *)self bringSubviewToFront:self->_placeholderImageView];
  view = [(CNAvatarViewController *)self->_avatarViewController view];
  [view setHidden:1];
}

- (void)setShowsName:(BOOL)name
{
  if (self->_showsName != name)
  {
    self->_showsName = name;
    [(UILabel *)self->_contactNameLabel setHidden:!name];

    [(PKAvatarView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKAvatarView *)self _layoutWithBounds:1 isTemplate:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
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

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplate:(BOOL)template
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
  view = [(CNAvatarViewController *)self->_avatarViewController view];
  [view frame];

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectDivide(v32, &v29, &remainder, self->_diameter, v10);
  PKRectCenteredIntegralRect();
  v16 = v15;
  v18 = v17;
  if (!template)
  {
    v19 = v13;
    v20 = v14;
    view2 = [(CNAvatarViewController *)self->_avatarViewController view];
    [view2 setFrame:{v19, v20, v16, v18}];

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
      if (!template)
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