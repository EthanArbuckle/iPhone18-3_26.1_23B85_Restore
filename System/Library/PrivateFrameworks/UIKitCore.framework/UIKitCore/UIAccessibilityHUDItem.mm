@interface UIAccessibilityHUDItem
+ (id)HUDItemForBarButtonItem:(id)item atPoint:(CGPoint)point inView:(id)view isBackButton:(BOOL)button;
+ (id)HUDItemForTabBarItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (UIAccessibilityHUDItem)initWithCustomView:(id)view;
- (UIAccessibilityHUDItem)initWithTitle:(id)title image:(id)image imageInsets:(UIEdgeInsets)insets;
- (UIAccessibilityHUDItem)initWithTitle:(id)title image:(id)image imageInsets:(UIEdgeInsets)insets scaleImage:(BOOL)scaleImage;
- (UIEdgeInsets)imageInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation UIAccessibilityHUDItem

- (UIAccessibilityHUDItem)initWithTitle:(id)title image:(id)image imageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  titleCopy = title;
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = UIAccessibilityHUDItem;
  v13 = [(UIAccessibilityHUDItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(UIAccessibilityHUDItem *)v13 setFlattenImage:1];
    [(UIAccessibilityHUDItem *)v14 setTitle:titleCopy];
    [(UIAccessibilityHUDItem *)v14 setImage:imageCopy];
    [(UIAccessibilityHUDItem *)v14 setImageInsets:top, left, bottom, right];
  }

  return v14;
}

- (UIAccessibilityHUDItem)initWithTitle:(id)title image:(id)image imageInsets:(UIEdgeInsets)insets scaleImage:(BOOL)scaleImage
{
  scaleImageCopy = scaleImage;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  titleCopy = title;
  imageCopy = image;
  v18.receiver = self;
  v18.super_class = UIAccessibilityHUDItem;
  v15 = [(UIAccessibilityHUDItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(UIAccessibilityHUDItem *)v15 setFlattenImage:1];
    [(UIAccessibilityHUDItem *)v16 setTitle:titleCopy];
    [(UIAccessibilityHUDItem *)v16 setImage:imageCopy];
    [(UIAccessibilityHUDItem *)v16 setImageInsets:top, left, bottom, right];
    [(UIAccessibilityHUDItem *)v16 setScaleImage:scaleImageCopy];
  }

  return v16;
}

- (UIAccessibilityHUDItem)initWithCustomView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = UIAccessibilityHUDItem;
  v5 = [(UIAccessibilityHUDItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIAccessibilityHUDItem *)v5 setCustomView:viewCopy];
  }

  return v6;
}

+ (id)HUDItemForTabBarItem:(id)item
{
  itemCopy = item;
  _internalTitle = [itemCopy _internalTitle];
  _internalLargeContentSizeImage = [itemCopy _internalLargeContentSizeImage];
  if (_internalLargeContentSizeImage)
  {
    v7 = [self alloc];
    [itemCopy largeContentSizeImageInsets];
    v8 = [v7 initWithTitle:_internalTitle image:_internalLargeContentSizeImage imageInsets:?];
  }

  else
  {
    _internalTemplateImage = [itemCopy _internalTemplateImage];
    v8 = [[self alloc] initWithTitle:_internalTitle image:_internalTemplateImage imageInsets:1 scaleImage:{0.0, 0.0, 0.0, 0.0}];
  }

  return v8;
}

+ (id)HUDItemForBarButtonItem:(id)item atPoint:(CGPoint)point inView:(id)view isBackButton:(BOOL)button
{
  buttonCopy = button;
  y = point.y;
  x = point.x;
  itemCopy = item;
  viewCopy = view;
  _resolvedLargeContentSizeTitle = [itemCopy _resolvedLargeContentSizeTitle];
  largeContentSizeImage = 0;
  if ([itemCopy isSystemItem])
  {
    BarButtonItemResolveSystemImage([itemCopy systemItem], &largeContentSizeImage, 0, 0);
    image = largeContentSizeImage;
  }

  else
  {
    largeContentSizeImage = [itemCopy largeContentSizeImage];
    if (largeContentSizeImage)
    {
      [itemCopy largeContentSizeImageInsets];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      scalesLargeContentImage = 0;
      if (!buttonCopy)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    image = [itemCopy image];
    largeContentSizeImage = image;
  }

  if (_resolvedLargeContentSizeTitle | image)
  {
    v22 = 0.0;
    scalesLargeContentImage = 1;
    v20 = 0.0;
    v18 = 0.0;
    v16 = 0.0;
    if (!buttonCopy)
    {
      goto LABEL_20;
    }
  }

  else
  {
    customView = [itemCopy customView];
    customView2 = [itemCopy customView];
    [customView2 convertPoint:viewCopy fromView:{x, y}];
    v26 = [customView _largeContentViewerItemAtPoint:?];

    if (v26)
    {
      _resolvedLargeContentSizeTitle = [v26 largeContentTitle];
      largeContentImage = [v26 largeContentImage];
      v28 = largeContentSizeImage;
      largeContentSizeImage = largeContentImage;

      [v26 largeContentImageInsets];
      v16 = v29;
      v18 = v30;
      v20 = v31;
      v22 = v32;
      scalesLargeContentImage = [v26 scalesLargeContentImage];
    }

    else
    {
      _resolvedLargeContentSizeTitle = 0;
      v22 = 0.0;
      scalesLargeContentImage = 1;
      v20 = 0.0;
      v18 = 0.0;
      v16 = 0.0;
    }

    if (!buttonCopy)
    {
      goto LABEL_20;
    }
  }

LABEL_14:
  if (!largeContentSizeImage)
  {
    v33 = +[_UIBarButtonItemData standardBackButtonData];
    backIndicatorImage = [v33 backIndicatorImage];
    v35 = largeContentSizeImage;
    largeContentSizeImage = backIndicatorImage;

    v22 = 0.0;
    scalesLargeContentImage = 1;
    v20 = 0.0;
    v18 = 0.0;
    v16 = 0.0;
  }

  if (![_resolvedLargeContentSizeTitle length])
  {
    _backButtonAlternateTitles = [itemCopy _backButtonAlternateTitles];
    firstObject = [_backButtonAlternateTitles firstObject];

    if ([firstObject length])
    {
      _resolvedLargeContentSizeTitle = firstObject;
    }

    else
    {
      _resolvedLargeContentSizeTitle = _UINSLocalizedStringWithDefaultValue(@"Back", @"Back");
    }
  }

LABEL_20:
  v38 = (_resolvedLargeContentSizeTitle | largeContentSizeImage);
  if (_resolvedLargeContentSizeTitle | largeContentSizeImage)
  {
    v39 = [self alloc];
    v40 = [v39 initWithTitle:_resolvedLargeContentSizeTitle image:largeContentSizeImage imageInsets:scalesLargeContentImage scaleImage:{v16, v18, v20, v22}];
    [v40 setDisabledAppearance:{objc_msgSend(itemCopy, "isEnabled") ^ 1}];
    v38 = largeContentSizeImage;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  title = [(UIAccessibilityHUDItem *)self title];
  image = [(UIAccessibilityHUDItem *)self image];
  [(UIAccessibilityHUDItem *)self imageInsets];
  v11 = [v4 initWithTitle:title image:image imageInsets:-[UIAccessibilityHUDItem scaleImage](self scaleImage:{"scaleImage"), v7, v8, v9, v10}];

  [v11 setFlattenImage:{-[UIAccessibilityHUDItem flattenImage](self, "flattenImage")}];
  [v11 setDisabledAppearance:{-[UIAccessibilityHUDItem disabledAppearance](self, "disabledAppearance")}];
  customView = [(UIAccessibilityHUDItem *)self customView];
  [v11 setCustomView:customView];

  [v11 setCustomUserInterfaceStyle:{-[UIAccessibilityHUDItem customUserInterfaceStyle](self, "customUserInterfaceStyle")}];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    title = [v5 title];
    title2 = [(UIAccessibilityHUDItem *)self title];
    v8 = title;
    v9 = title2;
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = 1;
      if (v8 && v9)
      {
        v11 = [v8 isEqual:v9] ^ 1;
      }
    }

    v29 = v11;

    image = [v5 image];
    image2 = [(UIAccessibilityHUDItem *)self image];
    v15 = image;
    v16 = image2;
    v17 = v16;
    if (v15 == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = 1;
      if (v15 && v16)
      {
        v18 = [v15 isEqual:v16] ^ 1;
      }
    }

    v28 = v18;

    customView = [v5 customView];
    customView2 = [(UIAccessibilityHUDItem *)self customView];

    disabledAppearance = [v5 disabledAppearance];
    disabledAppearance2 = [(UIAccessibilityHUDItem *)self disabledAppearance];
    flattenImage = [v5 flattenImage];
    flattenImage2 = [(UIAccessibilityHUDItem *)self flattenImage];
    customUserInterfaceStyle = [v5 customUserInterfaceStyle];
    customUserInterfaceStyle2 = [(UIAccessibilityHUDItem *)self customUserInterfaceStyle];
    v12 = 0;
    if (((v29 | v28) & 1) == 0 && customView == customView2 && ((disabledAppearance ^ disabledAppearance2) & 1) == 0)
    {
      v12 = (customUserInterfaceStyle == customUserInterfaceStyle2) & ~(flattenImage ^ flattenImage2);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  title = [(UIAccessibilityHUDItem *)self title];
  v4 = [title hash];
  image = [(UIAccessibilityHUDItem *)self image];
  v6 = [image hash] ^ v4;
  customView = [(UIAccessibilityHUDItem *)self customView];

  return v6 ^ customView;
}

- (UIEdgeInsets)imageInsets
{
  top = self->_imageInsets.top;
  left = self->_imageInsets.left;
  bottom = self->_imageInsets.bottom;
  right = self->_imageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end