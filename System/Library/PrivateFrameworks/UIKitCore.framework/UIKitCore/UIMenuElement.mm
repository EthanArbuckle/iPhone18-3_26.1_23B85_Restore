@interface UIMenuElement
- (BOOL)_canBeHighlighted;
- (BOOL)_isInlineGroup;
- (BOOL)_isVisible;
- (BOOL)_omitsInlineTitle;
- (UIImage)image;
- (UIMenuElement)initWithCoder:(NSCoder *)coder;
- (UIMenuElement)initWithTitle:(id)title image:(id)image imageName:(id)name;
- (id)_customContentView;
- (id)_safeCopy;
- (void)_setImage:(id)image;
- (void)_setSubtitle:(id)subtitle;
- (void)_setTitle:(id)title;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIMenuElement

- (UIImage)image
{
  p_imageOrName = &self->__imageOrName;
  _asMenuElementImageName = [(_UIMenuImageOrName *)self->__imageOrName _asMenuElementImageName];
  if (_asMenuElementImageName)
  {
    v4 = [UIImage _systemImageNamed:_asMenuElementImageName];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = _UIImageWithName(_asMenuElementImageName);
    }

    _asMenuElementImage = v6;

    objc_storeStrong(p_imageOrName, _asMenuElementImage);
  }

  else
  {
    _asMenuElementImage = [(_UIMenuImageOrName *)*p_imageOrName _asMenuElementImage];
  }

  return _asMenuElementImage;
}

- (BOOL)_isVisible
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(UIMenuElement *)self _isLeaf])
  {
    return ([(UIMenuElement *)self attributes]& 4) == 0;
  }

  selfCopy = self;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(UIMenuElement *)selfCopy children];
  v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(children);
        }

        if ([*(*(&v11 + 1) + 8 * i) _isVisible])
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v7 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  children = [(UIMenuElement *)selfCopy headerView];
  v3 = children != 0;
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
  _isInlineGroup = [(UIMenuElement *)self _isInlineGroup];
  if (_isInlineGroup)
  {
    LOBYTE(_isInlineGroup) = [(UIMenuElement *)self behaviorOptions]& 1;
  }

  return _isInlineGroup;
}

- (id)_customContentView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView = [(UIMenuElement *)self contentView];
  }

  else
  {
    contentView = 0;
  }

  return contentView;
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

  primaryActionHandler = [(UIMenuElement *)self primaryActionHandler];
  v4 = primaryActionHandler != 0;

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
      uUIDString = [internalIdentifier UUIDString];
      v24 = v5->__internalIdentifier;
      v5->__internalIdentifier = uUIDString;
    }
  }

  return v5;
}

- (UIMenuElement)initWithTitle:(id)title image:(id)image imageName:(id)name
{
  titleCopy = title;
  imageCopy = image;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = UIMenuElement;
  v11 = [(UIMenuElement *)&v21 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [nameCopy copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = imageCopy;
    }

    objc_storeStrong(&v11->__imageOrName, v16);

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    internalIdentifier = v11->__internalIdentifier;
    v11->__internalIdentifier = uUIDString;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_title forKey:@"title"];
  attributedTitle = self->_attributedTitle;
  if (attributedTitle)
  {
    [coderCopy encodeObject:attributedTitle forKey:@"attributedTitle"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [coderCopy encodeObject:subtitle forKey:@"subtitle"];
  }

  _asMenuElementImageName = [(_UIMenuImageOrName *)self->__imageOrName _asMenuElementImageName];
  _asMenuElementImage = [(_UIMenuImageOrName *)self->__imageOrName _asMenuElementImage];
  if (_asMenuElementImageName)
  {
    v8 = @"imageName";
    v9 = coderCopy;
    v10 = _asMenuElementImageName;
  }

  else
  {
    v11 = coderCopy;
    if (!_asMenuElementImage)
    {
      goto LABEL_10;
    }

    v8 = @"image";
    v9 = coderCopy;
    v10 = _asMenuElementImage;
  }

  [v9 encodeObject:v10 forKey:v8];
  v11 = coderCopy;
LABEL_10:
  [v11 encodeObject:self->_accessibilityIdentifier forKey:@"accessibilityIdentifier"];
  [coderCopy encodeInteger:self->__preferredDisplayMode forKey:@"preferredDisplayMode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [coderCopy encodeObject:self->__internalIdentifier forKey:@"internalIdentifier"];
  }
}

- (void)_setTitle:(id)title
{
  if (self->_title != title)
  {
    v5 = [title copy];
    title = self->_title;
    self->_title = v5;
  }
}

- (void)_setSubtitle:(id)subtitle
{
  if (self->_subtitle != subtitle)
  {
    v5 = [subtitle copy];
    subtitle = self->_subtitle;
    self->_subtitle = v5;
  }
}

- (void)_setImage:(id)image
{
  imageCopy = image;
  imageOrName = self->__imageOrName;
  p_imageOrName = &self->__imageOrName;
  if (imageOrName != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(p_imageOrName, image);
    imageCopy = v8;
  }
}

- (id)_safeCopy
{
  v2 = [(UIMenuElement *)self copy];

  return v2;
}

@end