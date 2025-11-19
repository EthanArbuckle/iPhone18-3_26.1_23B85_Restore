@interface UIMenuElement
- (BOOL)_canBeHighlighted;
- (BOOL)_isInlineGroup;
- (BOOL)_isVisible;
- (BOOL)_omitsInlineTitle;
- (UIImage)image;
- (UIMenuElement)initWithCoder:(NSCoder *)coder;
- (UIMenuElement)initWithTitle:(id)a3 image:(id)a4 imageName:(id)a5;
- (id)_customContentView;
- (id)_safeCopy;
- (void)_setImage:(id)a3;
- (void)_setSubtitle:(id)a3;
- (void)_setTitle:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIMenuElement

- (UIImage)image
{
  p_imageOrName = &self->__imageOrName;
  v3 = [(_UIMenuImageOrName *)self->__imageOrName _asMenuElementImageName];
  if (v3)
  {
    v4 = [UIImage _systemImageNamed:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = _UIImageWithName(v3);
    }

    v7 = v6;

    objc_storeStrong(p_imageOrName, v7);
  }

  else
  {
    v7 = [(_UIMenuImageOrName *)*p_imageOrName _asMenuElementImage];
  }

  return v7;
}

- (BOOL)_isVisible
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(UIMenuElement *)self _isLeaf])
  {
    return ([(UIMenuElement *)self attributes]& 4) == 0;
  }

  v4 = self;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(UIMenuElement *)v4 children];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) _isVisible])
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(UIMenuElement *)v4 headerView];
  v3 = v5 != 0;
LABEL_13:

  return v3;
}

- (BOOL)_isInlineGroup
{
  if ([(UIMenuElement *)self _isLeaf])
  {
    return 0;
  }

  else
  {
    return [(UIMenuElement *)self options]& 1;
  }
}

- (BOOL)_omitsInlineTitle
{
  v3 = [(UIMenuElement *)self _isInlineGroup];
  if (v3)
  {
    LOBYTE(v3) = [(UIMenuElement *)self behaviorOptions]& 1;
  }

  return v3;
}

- (id)_customContentView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIMenuElement *)self contentView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_canBeHighlighted
{
  if (![(UIMenuElement *)self _isLeaf])
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return ([(UIMenuElement *)self attributes]& 1) == 0;
  }

  v3 = [(UIMenuElement *)self primaryActionHandler];
  v4 = v3 != 0;

  return v4;
}

- (UIMenuElement)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v26.receiver = self;
  v26.super_class = UIMenuElement;
  v5 = [(UIMenuElement *)&v26 init];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    objc_storeStrong(&v5->_title, v8);

    v9 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedTitle"];
    attributedTitle = v5->_attributedTitle;
    v5->_attributedTitle = v9;

    v11 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v11;

    v13 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    }

    imageOrName = v5->__imageOrName;
    v5->__imageOrName = v15;

    v17 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityIdentifier"];
    accessibilityIdentifier = v5->_accessibilityIdentifier;
    v5->_accessibilityIdentifier = v17;

    v5->__preferredDisplayMode = [(NSCoder *)v4 decodeIntegerForKey:@"preferredDisplayMode"];
    v19 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"internalIdentifier"];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      internalIdentifier = v5->__internalIdentifier;
      v5->__internalIdentifier = v21;
    }

    else
    {
      internalIdentifier = [MEMORY[0x1E696AFB0] UUID];
      v23 = [internalIdentifier UUIDString];
      v24 = v5->__internalIdentifier;
      v5->__internalIdentifier = v23;
    }
  }

  return v5;
}

- (UIMenuElement)initWithTitle:(id)a3 image:(id)a4 imageName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = UIMenuElement;
  v11 = [(UIMenuElement *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v10 copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v9;
    }

    objc_storeStrong(&v11->__imageOrName, v16);

    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];
    internalIdentifier = v11->__internalIdentifier;
    v11->__internalIdentifier = v18;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  [v12 encodeObject:self->_title forKey:@"title"];
  attributedTitle = self->_attributedTitle;
  if (attributedTitle)
  {
    [v12 encodeObject:attributedTitle forKey:@"attributedTitle"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v12 encodeObject:subtitle forKey:@"subtitle"];
  }

  v6 = [(_UIMenuImageOrName *)self->__imageOrName _asMenuElementImageName];
  v7 = [(_UIMenuImageOrName *)self->__imageOrName _asMenuElementImage];
  if (v6)
  {
    v8 = @"imageName";
    v9 = v12;
    v10 = v6;
  }

  else
  {
    v11 = v12;
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = @"image";
    v9 = v12;
    v10 = v7;
  }

  [v9 encodeObject:v10 forKey:v8];
  v11 = v12;
LABEL_10:
  [v11 encodeObject:self->_accessibilityIdentifier forKey:@"accessibilityIdentifier"];
  [v12 encodeInteger:self->__preferredDisplayMode forKey:@"preferredDisplayMode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v12 encodeObject:self->__internalIdentifier forKey:@"internalIdentifier"];
  }
}

- (void)_setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v5 = [a3 copy];
    title = self->_title;
    self->_title = v5;
  }
}

- (void)_setSubtitle:(id)a3
{
  if (self->_subtitle != a3)
  {
    v5 = [a3 copy];
    subtitle = self->_subtitle;
    self->_subtitle = v5;
  }
}

- (void)_setImage:(id)a3
{
  v5 = a3;
  imageOrName = self->__imageOrName;
  p_imageOrName = &self->__imageOrName;
  if (imageOrName != v5)
  {
    v8 = v5;
    objc_storeStrong(p_imageOrName, a3);
    v5 = v8;
  }
}

- (id)_safeCopy
{
  v2 = [(UIMenuElement *)self copy];

  return v2;
}

@end