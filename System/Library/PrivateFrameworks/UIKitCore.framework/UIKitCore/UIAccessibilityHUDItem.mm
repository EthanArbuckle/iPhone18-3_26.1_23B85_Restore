@interface UIAccessibilityHUDItem
+ (id)HUDItemForBarButtonItem:(id)a3 atPoint:(CGPoint)a4 inView:(id)a5 isBackButton:(BOOL)a6;
+ (id)HUDItemForTabBarItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UIAccessibilityHUDItem)initWithCustomView:(id)a3;
- (UIAccessibilityHUDItem)initWithTitle:(id)a3 image:(id)a4 imageInsets:(UIEdgeInsets)a5;
- (UIAccessibilityHUDItem)initWithTitle:(id)a3 image:(id)a4 imageInsets:(UIEdgeInsets)a5 scaleImage:(BOOL)a6;
- (UIEdgeInsets)imageInsets;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation UIAccessibilityHUDItem

- (UIAccessibilityHUDItem)initWithTitle:(id)a3 image:(id)a4 imageInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = UIAccessibilityHUDItem;
  v13 = [(UIAccessibilityHUDItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(UIAccessibilityHUDItem *)v13 setFlattenImage:1];
    [(UIAccessibilityHUDItem *)v14 setTitle:v11];
    [(UIAccessibilityHUDItem *)v14 setImage:v12];
    [(UIAccessibilityHUDItem *)v14 setImageInsets:top, left, bottom, right];
  }

  return v14;
}

- (UIAccessibilityHUDItem)initWithTitle:(id)a3 image:(id)a4 imageInsets:(UIEdgeInsets)a5 scaleImage:(BOOL)a6
{
  v6 = a6;
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = UIAccessibilityHUDItem;
  v15 = [(UIAccessibilityHUDItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(UIAccessibilityHUDItem *)v15 setFlattenImage:1];
    [(UIAccessibilityHUDItem *)v16 setTitle:v13];
    [(UIAccessibilityHUDItem *)v16 setImage:v14];
    [(UIAccessibilityHUDItem *)v16 setImageInsets:top, left, bottom, right];
    [(UIAccessibilityHUDItem *)v16 setScaleImage:v6];
  }

  return v16;
}

- (UIAccessibilityHUDItem)initWithCustomView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIAccessibilityHUDItem;
  v5 = [(UIAccessibilityHUDItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIAccessibilityHUDItem *)v5 setCustomView:v4];
  }

  return v6;
}

+ (id)HUDItemForTabBarItem:(id)a3
{
  v4 = a3;
  v5 = [v4 _internalTitle];
  v6 = [v4 _internalLargeContentSizeImage];
  if (v6)
  {
    v7 = [a1 alloc];
    [v4 largeContentSizeImageInsets];
    v8 = [v7 initWithTitle:v5 image:v6 imageInsets:?];
  }

  else
  {
    v9 = [v4 _internalTemplateImage];
    v8 = [[a1 alloc] initWithTitle:v5 image:v9 imageInsets:1 scaleImage:{0.0, 0.0, 0.0, 0.0}];
  }

  return v8;
}

+ (id)HUDItemForBarButtonItem:(id)a3 atPoint:(CGPoint)a4 inView:(id)a5 isBackButton:(BOOL)a6
{
  v6 = a6;
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v12 = a5;
  v13 = [v11 _resolvedLargeContentSizeTitle];
  v42 = 0;
  if ([v11 isSystemItem])
  {
    BarButtonItemResolveSystemImage([v11 systemItem], &v42, 0, 0);
    v14 = v42;
  }

  else
  {
    v42 = [v11 largeContentSizeImage];
    if (v42)
    {
      [v11 largeContentSizeImageInsets];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = 0;
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    v14 = [v11 image];
    v42 = v14;
  }

  if (v13 | v14)
  {
    v22 = 0.0;
    v23 = 1;
    v20 = 0.0;
    v18 = 0.0;
    v16 = 0.0;
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v24 = [v11 customView];
    v25 = [v11 customView];
    [v25 convertPoint:v12 fromView:{x, y}];
    v26 = [v24 _largeContentViewerItemAtPoint:?];

    if (v26)
    {
      v13 = [v26 largeContentTitle];
      v27 = [v26 largeContentImage];
      v28 = v42;
      v42 = v27;

      [v26 largeContentImageInsets];
      v16 = v29;
      v18 = v30;
      v20 = v31;
      v22 = v32;
      v23 = [v26 scalesLargeContentImage];
    }

    else
    {
      v13 = 0;
      v22 = 0.0;
      v23 = 1;
      v20 = 0.0;
      v18 = 0.0;
      v16 = 0.0;
    }

    if (!v6)
    {
      goto LABEL_20;
    }
  }

LABEL_14:
  if (!v42)
  {
    v33 = +[_UIBarButtonItemData standardBackButtonData];
    v34 = [v33 backIndicatorImage];
    v35 = v42;
    v42 = v34;

    v22 = 0.0;
    v23 = 1;
    v20 = 0.0;
    v18 = 0.0;
    v16 = 0.0;
  }

  if (![v13 length])
  {
    v36 = [v11 _backButtonAlternateTitles];
    v37 = [v36 firstObject];

    if ([v37 length])
    {
      v13 = v37;
    }

    else
    {
      v13 = _UINSLocalizedStringWithDefaultValue(@"Back", @"Back");
    }
  }

LABEL_20:
  v38 = (v13 | v42);
  if (v13 | v42)
  {
    v39 = [a1 alloc];
    v40 = [v39 initWithTitle:v13 image:v42 imageInsets:v23 scaleImage:{v16, v18, v20, v22}];
    [v40 setDisabledAppearance:{objc_msgSend(v11, "isEnabled") ^ 1}];
    v38 = v42;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(UIAccessibilityHUDItem *)self title];
  v6 = [(UIAccessibilityHUDItem *)self image];
  [(UIAccessibilityHUDItem *)self imageInsets];
  v11 = [v4 initWithTitle:v5 image:v6 imageInsets:-[UIAccessibilityHUDItem scaleImage](self scaleImage:{"scaleImage"), v7, v8, v9, v10}];

  [v11 setFlattenImage:{-[UIAccessibilityHUDItem flattenImage](self, "flattenImage")}];
  [v11 setDisabledAppearance:{-[UIAccessibilityHUDItem disabledAppearance](self, "disabledAppearance")}];
  v12 = [(UIAccessibilityHUDItem *)self customView];
  [v11 setCustomView:v12];

  [v11 setCustomUserInterfaceStyle:{-[UIAccessibilityHUDItem customUserInterfaceStyle](self, "customUserInterfaceStyle")}];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 title];
    v7 = [(UIAccessibilityHUDItem *)self title];
    v8 = v6;
    v9 = v7;
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

    v13 = [v5 image];
    v14 = [(UIAccessibilityHUDItem *)self image];
    v15 = v13;
    v16 = v14;
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

    v19 = [v5 customView];
    v20 = [(UIAccessibilityHUDItem *)self customView];

    v21 = [v5 disabledAppearance];
    v22 = [(UIAccessibilityHUDItem *)self disabledAppearance];
    v23 = [v5 flattenImage];
    v24 = [(UIAccessibilityHUDItem *)self flattenImage];
    v25 = [v5 customUserInterfaceStyle];
    v26 = [(UIAccessibilityHUDItem *)self customUserInterfaceStyle];
    v12 = 0;
    if (((v29 | v28) & 1) == 0 && v19 == v20 && ((v21 ^ v22) & 1) == 0)
    {
      v12 = (v25 == v26) & ~(v23 ^ v24);
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
  v3 = [(UIAccessibilityHUDItem *)self title];
  v4 = [v3 hash];
  v5 = [(UIAccessibilityHUDItem *)self image];
  v6 = [v5 hash] ^ v4;
  v7 = [(UIAccessibilityHUDItem *)self customView];

  return v6 ^ v7;
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