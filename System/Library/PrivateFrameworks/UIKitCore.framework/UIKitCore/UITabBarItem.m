@interface UITabBarItem
+ (id)_appearanceBlindViewClasses;
- (BOOL)_isSelected;
- (BOOL)hasTitle;
- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4;
- (CGRect)_sourceRectForPresentationInWindow:(id)a3;
- (CGRect)frameInView:(id)a3;
- (NSString)description;
- (SEL)action;
- (UIEdgeInsets)imageInsets;
- (UIEdgeInsets)imageInsetsForStyle:(int64_t)a3 state:(int64_t)a4;
- (UIEdgeInsets)landscapeImagePhoneInsets;
- (UIEdgeInsets)largeContentSizeImageInsets;
- (UIImage)_internalLandscapeSelectedImagePhone;
- (UIImage)finishedSelectedImage;
- (UIImage)finishedUnselectedImage;
- (UIImage)landscapeSelectedImagePhone;
- (UIImage)selectedImage;
- (UIOffset)badgeOffset;
- (UIOffset)landscapePhoneBadgeOffset;
- (UIOffset)titlePositionAdjustment;
- (UITabBarItem)init;
- (UITabBarItem)initWithCoder:(NSCoder *)coder;
- (UITabBarItem)initWithTabBarSystemItem:(UITabBarSystemItem)systemItem tag:(NSInteger)tag;
- (UITabBarItem)initWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;
- (UITabBarItem)initWithTitle:(NSString *)title image:(UIImage *)image tag:(NSInteger)tag;
- (id)_changeObserver;
- (id)_createViewForTabBar:(id)a3 asProxyView:(BOOL)a4;
- (id)_internalLandscapeTemplateImage;
- (id)_internalLandscapeTemplateImages;
- (id)_internalTemplateImage;
- (id)_internalTemplateImagesForTabBarDisplayStyle:(int64_t)a3;
- (id)_nearestViewController;
- (id)_resolvedSourceItem;
- (id)_sourceViewForPresentationInWindow:(id)a3;
- (id)_tabBarButton;
- (id)badgeForStyle:(int64_t)a3 state:(int64_t)a4;
- (id)imageForStyle:(int64_t)a3 state:(int64_t)a4;
- (id)largeContentSizeImage;
- (id)target;
- (id)titleForStyle:(int64_t)a3 state:(int64_t)a4;
- (id)titleTextAttributesForState:(unint64_t)a3;
- (id)unselectedImage;
- (int64_t)preferredPlacement;
- (void)_itemBarAppearanceNeedsUpdate:(id *)a1;
- (void)_itemViewNeedsUpdate:(uint64_t)a1;
- (void)_resolveSystemItem;
- (void)_setInternalLandscapeTemplateImage:(id)a3;
- (void)_setInternalTemplateImage:(id)a3;
- (void)_setInternalTitle:(id)a3;
- (void)_setSelected:(BOOL)a3;
- (void)_setTabBarButton:(uint64_t)a1;
- (void)_setTitleTextAttributeValue:(id)a3 forAttributeKey:(id)a4 state:(unint64_t)a5;
- (void)_updateView;
- (void)_updateViewAndPositionItems:(BOOL)a3;
- (void)_updateViewBadge;
- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setAction:(SEL)a3;
- (void)setBadgeColor:(UIColor *)badgeColor;
- (void)setBadgeOffset:(UIOffset)a3;
- (void)setBadgeTextAttributes:(NSDictionary *)textAttributes forState:(UIControlState)state;
- (void)setBadgeValue:(NSString *)badgeValue;
- (void)setEnabled:(BOOL)a3;
- (void)setFinishedSelectedImage:(UIImage *)selectedImage withFinishedUnselectedImage:(UIImage *)unselectedImage;
- (void)setImageInsets:(UIEdgeInsets)a3;
- (void)setLandscapeImagePhone:(id)a3;
- (void)setLandscapeImagePhoneInsets:(UIEdgeInsets)a3;
- (void)setLandscapeSelectedImagePhone:(id)a3;
- (void)setLargeContentSizeImage:(id)a3;
- (void)setLargeContentSizeImageInsets:(UIEdgeInsets)a3;
- (void)setScrollEdgeAppearance:(UITabBarAppearance *)scrollEdgeAppearance;
- (void)setSelectedImage:(UIImage *)selectedImage;
- (void)setSpringLoaded:(BOOL)a3;
- (void)setStandardAppearance:(UITabBarAppearance *)standardAppearance;
- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment;
- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)setUnselectedImage:(id)a3;
- (void)set_fallbackSourceItem:(uint64_t)a1;
@end

@implementation UITabBarItem

- (void)_updateView
{
  alternateUpdateHandler = self->_alternateUpdateHandler;
  if (alternateUpdateHandler)
  {
    alternateUpdateHandler[2]();
  }

  else
  {
    [(UITabBarItem *)self _updateViewAndPositionItems:1];
  }
}

- (UITabBarItem)init
{
  v5.receiver = self;
  v5.super_class = UITabBarItem;
  v2 = [(UIBarItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UITabBarItem *)v2 setEnabled:1];
  }

  return v3;
}

- (UIImage)selectedImage
{
  selectedImage = self->_selectedImage;
  if (!selectedImage)
  {
    v4 = [(UITabBarItem *)self _internalTemplateImages];
    v5 = [v4 lastObject];
    v6 = self->_selectedImage;
    self->_selectedImage = v5;

    selectedImage = self->_selectedImage;
  }

  return selectedImage;
}

- (BOOL)_isSelected
{
  view = self->_view;
  if (view)
  {
    v4 = [(_UITabBarButton *)view _isSelected];
    if (v4)
    {
      v5 = 1024;
    }

    else
    {
      v5 = 0;
    }

    *&self->_tabBarItemFlags = *&self->_tabBarItemFlags & 0xFBFF | v5;
  }

  else
  {
    return (*&self->_tabBarItemFlags >> 10) & 1;
  }

  return v4;
}

- (int64_t)preferredPlacement
{
  if ([(UITabBarItem *)self systemItem]== 8)
  {
    return 4;
  }

  if ([(UITabBarItem *)self _isPinned])
  {
    return 4;
  }

  return 5;
}

- (void)_resolveSystemItem
{
  if ((*(a1 + 248) & 0x20) == 0)
  {
    return;
  }

  v3 = [a1 systemItem];
  v4 = 0;
  if (v3 > 5)
  {
    if (v3 > 8)
    {
      if (v3 == 9)
      {
        v5 = _UINSLocalizedStringWithDefaultValue(@"Downloads", @"Downloads");
        v4 = @"square.and.arrow.down.fill";
        goto LABEL_29;
      }

      if (v3 != 10)
      {
        v5 = 0;
        if (v3 == 11)
        {
          v5 = _UINSLocalizedStringWithDefaultValue(@"Most Viewed", @"Most Viewed");
          v4 = @"list.number";
        }

        goto LABEL_29;
      }

      v7 = @"Most Recent";
    }

    else
    {
      if (v3 != 6)
      {
        if (v3 == 7)
        {
          v5 = _UINSLocalizedStringWithDefaultValue(@"Bookmarks", @"Bookmarks");
          v4 = @"book.fill";
        }

        else
        {
          v5 = _UINSLocalizedStringWithDefaultValue(@"Search", @"Search");
          v4 = @"magnifyingglass";
        }

        goto LABEL_29;
      }

      v7 = @"History";
    }

LABEL_28:
    v5 = _UINSLocalizedStringWithDefaultValue(v7, v7);
    v4 = @"clock.fill";
    goto LABEL_29;
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = @"Top Rated";
      goto LABEL_24;
    }

    if (v3 != 4)
    {
      v5 = _UINSLocalizedStringWithDefaultValue(@"Contacts", @"Contacts");
      v4 = @"person.crop.circle.fill";
      goto LABEL_29;
    }

    v7 = @"Recents";
    goto LABEL_28;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v6 = @"Favorites";
      goto LABEL_24;
    }

    v5 = 0;
    if (v3 == 2)
    {
      v6 = @"Featured";
LABEL_24:
      v5 = _UINSLocalizedStringWithDefaultValue(v6, v6);
      v4 = @"star.fill";
    }
  }

  else
  {
    v5 = _UINSLocalizedStringWithDefaultValue(@"More", @"More");
    v4 = @"ellipsis";
  }

LABEL_29:
  v8 = [UIImage systemImageNamed:v4];
  v9 = v8;
  v10 = *(a1 + 64);
  *(a1 + 64) = v5;
  v11 = v5;

  objc_storeStrong((a1 + 88), v8);
  v12 = *(a1 + 96);
  *(a1 + 96) = 0;

  v13 = *(a1 + 152);
  *(a1 + 152) = v9;
  v15 = v9;

  v14 = *(a1 + 160);
  *(a1 + 160) = 0;
}

- (id)unselectedImage
{
  unselectedImage = self->_unselectedImage;
  if (!unselectedImage)
  {
    v4 = [(UITabBarItem *)self _internalTemplateImages];
    v5 = [v4 firstObject];

    v6 = self->_unselectedImage;
    self->_unselectedImage = v5;

    unselectedImage = self->_unselectedImage;
  }

  return unselectedImage;
}

- (id)_internalTemplateImage
{
  v2 = [(UITabBarItem *)self _internalTemplateImages];
  v3 = [v2 firstObject];

  return v3;
}

- (id)_internalLandscapeTemplateImages
{
  v3 = self->_landscapeTemplateImage;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, self->_landscapeSelectedTemplateImage, 0}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIEdgeInsets)landscapeImagePhoneInsets
{
  top = self->_landscapeImageInsets.top;
  left = self->_landscapeImageInsets.left;
  bottom = self->_landscapeImageInsets.bottom;
  right = self->_landscapeImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_tabBarButton
{
  if (a1)
  {
    a1 = a1[29];
    v1 = vars8;
  }

  return a1;
}

- (id)_internalLandscapeTemplateImage
{
  v2 = [(UITabBarItem *)self _internalLandscapeTemplateImages];
  v3 = [v2 firstObject];

  return v3;
}

- (UIImage)_internalLandscapeSelectedImagePhone
{
  landscapeSelectedImage = self->_landscapeSelectedImage;
  if (!landscapeSelectedImage)
  {
    v4 = [(UITabBarItem *)self _internalLandscapeTemplateImages];
    v5 = [v4 lastObject];
    v6 = self->_landscapeSelectedImage;
    self->_landscapeSelectedImage = v5;

    landscapeSelectedImage = self->_landscapeSelectedImage;
  }

  return landscapeSelectedImage;
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

- (UIOffset)badgeOffset
{
  horizontal = self->_badgeOffset.horizontal;
  vertical = self->_badgeOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = UITabBarItem;
  v3 = [(UITabBarItem *)&v8 description];
  v4 = [v3 mutableCopy];

  if ([(UITabBarItem *)self isSystemItem])
  {
    v5 = [(UITabBarItem *)self systemItem];
    if (v5 > 5)
    {
      if (v5 > 8)
      {
        switch(v5)
        {
          case 9:
            v6 = @" systemItem=Downloads";
            break;
          case 10:
            v6 = @" systemItem=MostRecent";
            break;
          case 11:
            v6 = @" systemItem=MostViewed";
            break;
          default:
            goto LABEL_33;
        }
      }

      else if (v5 == 6)
      {
        v6 = @" systemItem=History";
      }

      else if (v5 == 7)
      {
        v6 = @" systemItem=Bookmarks";
      }

      else
      {
        v6 = @" systemItem=Search";
      }
    }

    else if (v5 > 2)
    {
      if (v5 == 3)
      {
        v6 = @" systemItem=TopRated";
      }

      else if (v5 == 4)
      {
        v6 = @" systemItem=Recents";
      }

      else
      {
        v6 = @" systemItem=Contacts";
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        v6 = @" systemItem=Favorites";
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_33;
        }

        v6 = @" systemItem=Featured";
      }
    }

    else
    {
      v6 = @" systemItem=More";
    }

    [v4 appendString:v6];
  }

  else
  {
    if (self->_title)
    {
      [v4 appendFormat:@" title='%@'", self->_title];
    }

    if (self->_templateImage)
    {
      [v4 appendFormat:@" image=%@", self->_templateImage];
      if (self->_landscapeTemplateImage)
      {
        [v4 appendFormat:@" landscapeImagePhone=%@", self->_landscapeTemplateImage];
      }
    }
  }

LABEL_33:
  if (self->_standardAppearance)
  {
    [v4 appendFormat:@" standardAppearance=%p", self->_standardAppearance];
  }

  if (self->_scrollEdgeAppearance)
  {
    [v4 appendFormat:@" scrollEdgeAppearance=%p", self->_scrollEdgeAppearance];
  }

  if ([(UITabBarItem *)self _isSelected])
  {
    [v4 appendString:@" selected"];
  }

  if ((*&self->_tabBarItemFlags & 1) == 0)
  {
    [v4 appendString:@" disabled"];
  }

  return v4;
}

- (void)_setSelected:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_tabBarItemFlags = *&self->_tabBarItemFlags & 0xFBFF | v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__UITabBarItem__setSelected___block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [(UITabBarItem *)self _itemViewNeedsUpdate:v4];
}

- (void)_itemViewNeedsUpdate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    aBlock = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 280));
    v5 = _Block_copy(aBlock);
    v6 = *(a1 + 256);
    *(a1 + 256) = v5;

    if (WeakRetained)
    {
      [WeakRetained _tabDataProviderContentDidChange:a1];
    }

    else if (aBlock)
    {
      aBlock[2]();
    }

    else
    {
      [a1 _updateView];
    }

    v7 = *(a1 + 256);
    *(a1 + 256) = 0;

    v3 = aBlock;
  }
}

- (void)_updateViewBadge
{
  if (self->_badgeValue)
  {
    [(_UITabBarButton *)self->_view _setBadgeValue:?];
  }
}

- (void)setBadgeOffset:(UIOffset)a3
{
  if (a3.horizontal != self->_badgeOffset.horizontal || a3.vertical != self->_badgeOffset.vertical)
  {
    self->_badgeOffset = a3;
    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }
}

- (UIOffset)landscapePhoneBadgeOffset
{
  horizontal = self->_badgeOffset.horizontal;
  vertical = self->_badgeOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UITabBarItem)initWithTitle:(NSString *)title image:(UIImage *)image tag:(NSInteger)tag
{
  v8 = title;
  v9 = image;
  v10 = [(UITabBarItem *)self init];
  v11 = v10;
  if (v10)
  {
    [(UITabBarItem *)v10 setTitle:v8];
    [(UITabBarItem *)v11 setImage:v9];
    [(UIBarItem *)v11 setTag:tag];
  }

  return v11;
}

- (UITabBarItem)initWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage
{
  v8 = title;
  v9 = image;
  v10 = selectedImage;
  v11 = [(UITabBarItem *)self init];
  v12 = v11;
  if (v11)
  {
    [(UITabBarItem *)v11 setTitle:v8];
    [(UITabBarItem *)v12 setImage:v9];
    [(UITabBarItem *)v12 setSelectedImage:v10];
  }

  return v12;
}

- (UITabBarItem)initWithTabBarSystemItem:(UITabBarSystemItem)systemItem tag:(NSInteger)tag
{
  v5 = systemItem;
  v6 = [(UITabBarItem *)self init];
  v7 = v6;
  if (v6)
  {
    [(UIBarItem *)v6 setTag:tag];
    *(v7 + 248) = ((v5 & 0xF) << 6) | *(v7 + 248) & 0xFC3F | 0x20;
    [(UITabBarItem *)v7 _resolveSystemItem];
  }

  return v7;
}

- (UITabBarItem)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v28.receiver = self;
  v28.super_class = UITabBarItem;
  v5 = [(UIBarItem *)&v28 initWithCoder:v4];
  if (v5)
  {
    if ([(NSCoder *)v4 containsValueForKey:@"UISystemItem"])
    {
      *&v5->_tabBarItemFlags |= 0x20u;
      *&v5->_tabBarItemFlags = (([(NSCoder *)v4 decodeIntegerForKey:@"UISystemItem"]& 0xF) << 6) | *&v5->_tabBarItemFlags & 0xFC3F;
    }

    [(UIBarItem *)v5 setTag:[(NSCoder *)v4 decodeIntegerForKey:@"UITag"]];
    *&v5->_tabBarItemFlags = *&v5->_tabBarItemFlags & 0xFFFE | [(NSCoder *)v4 decodeBoolForKey:@"UIEnabled"];
    v6 = [(NSCoder *)v4 decodeObjectForKey:@"UITitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [(NSCoder *)v4 decodeObjectForKey:@"UIBadgeValue"];
    badgeValue = v5->_badgeValue;
    v5->_badgeValue = v8;

    v10 = [(NSCoder *)v4 decodeObjectForKey:@"UIBadgeColor"];
    [(UITabBarItem *)v5 setBadgeColor:v10];

    v11 = [(NSCoder *)v4 decodeObjectForKey:@"UIImage"];
    templateImage = v5->_templateImage;
    v5->_templateImage = v11;

    v13 = [(NSCoder *)v4 decodeObjectForKey:@"UISelectedTemplateImage"];
    selectedTemplateImage = v5->_selectedTemplateImage;
    v5->_selectedTemplateImage = v13;

    [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UIImageInsets"];
    v5->_imageInsets.top = v15;
    v5->_imageInsets.left = v16;
    v5->_imageInsets.bottom = v17;
    v5->_imageInsets.right = v18;
    if (dyld_program_sdk_at_least())
    {
      v19 = [(NSCoder *)v4 decodeObjectForKey:@"UIImageLandscape"];
      landscapeTemplateImage = v5->_landscapeTemplateImage;
      v5->_landscapeTemplateImage = v19;

      v21 = [(NSCoder *)v4 decodeObjectForKey:@"UISelectedTemplateImageLandscape"];
      landscapeSelectedTemplateImage = v5->_landscapeSelectedTemplateImage;
      v5->_landscapeSelectedTemplateImage = v21;

      [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UIImageInsetsLandscape"];
      v5->_landscapeImageInsets.top = v23;
      v5->_landscapeImageInsets.left = v24;
      v5->_landscapeImageInsets.bottom = v25;
      v5->_landscapeImageInsets.right = v26;
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UITitlePositionAdjustment"])
    {
      [(NSCoder *)v4 decodeUIOffsetForKey:@"UITitlePositionAdjustment"];
      [(UITabBarItem *)v5 setTitlePositionAdjustment:?];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISpringLoaded"])
    {
      [(UITabBarItem *)v5 setSpringLoaded:[(NSCoder *)v4 decodeBoolForKey:@"UISpringLoaded"]];
    }

    [(UITabBarItem *)v5 _resolveSystemItem];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = UITabBarItem;
  [(UIBarItem *)&v21 encodeWithCoder:v4];
  tabBarItemFlags = self->_tabBarItemFlags;
  LOBYTE(v6) = self->_tabBarItemFlags;
  if ((tabBarItemFlags & 0x20) != 0)
  {
    [v4 encodeInteger:(tabBarItemFlags >> 6) & 0xF forKey:@"UISystemItem"];
    v6 = self->_tabBarItemFlags;
  }

  if (v6)
  {
    [v4 encodeBool:1 forKey:@"UIEnabled"];
  }

  if ([(UIBarItem *)self tag])
  {
    [v4 encodeInteger:-[UIBarItem tag](self forKey:{"tag"), @"UITag"}];
  }

  if ((tabBarItemFlags & 0x20) == 0)
  {
    title = self->_title;
    if (title)
    {
      [v4 encodeObject:title forKey:@"UITitle"];
    }
  }

  badgeValue = self->_badgeValue;
  if (badgeValue)
  {
    [v4 encodeObject:badgeValue forKey:@"UIBadgeValue"];
  }

  v9 = [(UITabBarItem *)self badgeColor];

  if (v9)
  {
    v10 = [(UITabBarItem *)self badgeColor];
    [v4 encodeObject:v10 forKey:@"UIBadgeColor"];
  }

  if ((tabBarItemFlags & 0x20) == 0)
  {
    templateImage = self->_templateImage;
    if (templateImage)
    {
      [v4 encodeObject:templateImage forKey:@"UIImage"];
    }

    selectedTemplateImage = self->_selectedTemplateImage;
    if (selectedTemplateImage)
    {
      [v4 encodeObject:selectedTemplateImage forKey:@"UISelectedTemplateImage"];
    }
  }

  v13 = *&self->_imageInsets.top;
  v14 = *&self->_imageInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v13), vceqzq_f64(v14))))))
  {
    [v4 encodeUIEdgeInsets:@"UIImageInsets" forKey:{*&v13, *&v14}];
  }

  if (dyld_program_sdk_at_least())
  {
    if ((tabBarItemFlags & 0x20) == 0)
    {
      landscapeTemplateImage = self->_landscapeTemplateImage;
      if (landscapeTemplateImage)
      {
        [v4 encodeObject:landscapeTemplateImage forKey:@"UIImageLandscape"];
      }

      landscapeSelectedTemplateImage = self->_landscapeSelectedTemplateImage;
      if (landscapeSelectedTemplateImage)
      {
        [v4 encodeObject:landscapeSelectedTemplateImage forKey:@"UISelectedTemplateImageLandscape"];
      }
    }

    v17 = *&self->_landscapeImageInsets.top;
    v18 = *&self->_landscapeImageInsets.bottom;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v17), vceqzq_f64(v18))))))
    {
      [v4 encodeUIEdgeInsets:@"UIImageInsetsLandscape" forKey:{*&v17, *&v18}];
    }
  }

  [(UITabBarItem *)self titlePositionAdjustment];
  if (v20 != 0.0 || v19 != 0.0)
  {
    [v4 encodeUIOffset:@"UITitlePositionAdjustment" forKey:?];
  }

  if ([(UITabBarItem *)self isSpringLoaded])
  {
    [v4 encodeBool:1 forKey:@"UISpringLoaded"];
  }
}

- (void)setStandardAppearance:(UITabBarAppearance *)standardAppearance
{
  v4 = standardAppearance;
  v5 = self->_standardAppearance;
  v6 = v4;
  v12 = v6;
  if (v5 == v6)
  {

    goto LABEL_12;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = self->_standardAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v12 copy];
  v10 = self->_standardAppearance;
  self->_standardAppearance = v9;

  [(UITabBarItem *)&self->super.super.isa _itemBarAppearanceNeedsUpdate:?];
  v11 = self->_standardAppearance;
  if (v11)
  {
    objc_storeWeak(&v11->super._changeObserver, self);
  }

LABEL_12:
}

- (void)_itemBarAppearanceNeedsUpdate:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 35);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _tab:a1 appearanceNeedsUpdate:v4];
    }

    else
    {
      [a1 appearance:v4 categoriesChanged:-1];
    }
  }
}

- (void)setScrollEdgeAppearance:(UITabBarAppearance *)scrollEdgeAppearance
{
  v4 = scrollEdgeAppearance;
  v5 = self->_scrollEdgeAppearance;
  v6 = v4;
  v12 = v6;
  if (v5 == v6)
  {

    goto LABEL_12;
  }

  if (v6 && v5)
  {
    v7 = [(UIBarAppearance *)v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = self->_scrollEdgeAppearance;
  if (v8)
  {
    objc_storeWeak(&v8->super._changeObserver, 0);
  }

  v9 = [(UIBarAppearance *)v12 copy];
  v10 = self->_scrollEdgeAppearance;
  self->_scrollEdgeAppearance = v9;

  [(UITabBarItem *)&self->super.super.isa _itemBarAppearanceNeedsUpdate:?];
  v11 = self->_scrollEdgeAppearance;
  if (v11)
  {
    objc_storeWeak(&v11->super._changeObserver, self);
  }

LABEL_12:
}

- (void)setEnabled:(BOOL)a3
{
  *&self->_tabBarItemFlags = *&self->_tabBarItemFlags & 0xFFFE | a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__UITabBarItem_setEnabled___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(UITabBarItem *)self _itemViewNeedsUpdate:v3];
}

- (id)_internalTemplateImagesForTabBarDisplayStyle:(int64_t)a3
{
  v4 = self->_templateImage;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, self->_selectedTemplateImage, 0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLandscapeImagePhone:(id)a3
{
  v4 = a3;
  if (dyld_program_sdk_at_least())
  {
    [(UITabBarItem *)self _setInternalLandscapeTemplateImage:v4];
  }
}

- (void)setImageInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_imageInsets.top), vceqq_f64(v4, *&self->_imageInsets.bottom)))) & 1) == 0)
  {
    self->_imageInsets = a3;
    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }
}

- (void)setLandscapeImagePhoneInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  bottom = a3.bottom;
  top = a3.top;
  if (dyld_program_sdk_at_least())
  {
    v4.f64[0] = top;
    v4.f64[1] = left;
    v5.f64[0] = bottom;
    v5.f64[1] = right;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4, *&self->_landscapeImageInsets.top), vceqq_f64(v5, *&self->_landscapeImageInsets.bottom)))) & 1) == 0)
    {
      self->_landscapeImageInsets.top = top;
      self->_landscapeImageInsets.left = left;
      self->_landscapeImageInsets.bottom = bottom;
      self->_landscapeImageInsets.right = right;

      [(UITabBarItem *)self _itemViewNeedsUpdate:?];
    }
  }
}

- (id)largeContentSizeImage
{
  if ((*&self->_tabBarItemFlags & 0x20) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITabBarItem;
    v3 = [(UIBarItem *)&v5 largeContentSizeImage];
  }

  return v3;
}

- (void)setLargeContentSizeImage:(id)a3
{
  if ((*&self->_tabBarItemFlags & 0x20) == 0)
  {
    v3.receiver = self;
    v3.super_class = UITabBarItem;
    [(UIBarItem *)&v3 setLargeContentSizeImage:a3];
  }
}

- (UIEdgeInsets)largeContentSizeImageInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ((*&self->_tabBarItemFlags & 0x20) == 0)
  {
    v6.receiver = self;
    v6.super_class = UITabBarItem;
    [(UIBarItem *)&v6 largeContentSizeImageInsets:0.0];
  }

  result.right = v5;
  result.bottom = v4;
  result.left = v2;
  result.top = v3;
  return result;
}

- (void)setLargeContentSizeImageInsets:(UIEdgeInsets)a3
{
  if ((*&self->_tabBarItemFlags & 0x20) == 0)
  {
    v3.receiver = self;
    v3.super_class = UITabBarItem;
    [(UIBarItem *)&v3 setLargeContentSizeImageInsets:a3.top, a3.left, a3.bottom, a3.right];
  }
}

- (void)setBadgeValue:(NSString *)badgeValue
{
  v4 = badgeValue;
  v5 = self->_badgeValue;
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [(NSString *)v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = [(NSString *)v6 copy];
    v11 = self->_badgeValue;
    self->_badgeValue = v10;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __30__UITabBarItem_setBadgeValue___block_invoke;
    v12[3] = &unk_1E70F3590;
    v12[4] = self;
    [(UITabBarItem *)self _itemViewNeedsUpdate:v12];
  }

LABEL_9:
}

- (void)setSelectedImage:(UIImage *)selectedImage
{
  if (self->_selectedTemplateImage != selectedImage)
  {
    v4 = [(UIImage *)selectedImage _imageThatSuppressesAccessibilityHairlineThickening];
    selectedTemplateImage = self->_selectedTemplateImage;
    self->_selectedTemplateImage = v4;

    if ((*&self->_tabBarItemFlags & 0x800) == 0)
    {
      v6 = self->_selectedImage;
      self->_selectedImage = 0;
    }

    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }
}

- (UIImage)landscapeSelectedImagePhone
{
  landscapeSelectedImage = self->_landscapeSelectedImage;
  if (!landscapeSelectedImage)
  {
    v4 = [(UITabBarItem *)self _internalLandscapeTemplateImages];
    v5 = [v4 lastObject];
    v6 = self->_landscapeSelectedImage;
    self->_landscapeSelectedImage = v5;

    landscapeSelectedImage = self->_landscapeSelectedImage;
  }

  return landscapeSelectedImage;
}

- (void)setLandscapeSelectedImagePhone:(id)a3
{
  if (self->_landscapeSelectedTemplateImage != a3)
  {
    v4 = [a3 _imageThatSuppressesAccessibilityHairlineThickening];
    landscapeSelectedTemplateImage = self->_landscapeSelectedTemplateImage;
    self->_landscapeSelectedTemplateImage = v4;

    if ((*&self->_tabBarItemFlags & 0x800) == 0)
    {
      landscapeSelectedImage = self->_landscapeSelectedImage;
      self->_landscapeSelectedImage = 0;
    }

    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }
}

- (void)setFinishedSelectedImage:(UIImage *)selectedImage withFinishedUnselectedImage:(UIImage *)unselectedImage
{
  v11 = selectedImage;
  v7 = unselectedImage;
  v8 = v7;
  if (v7)
  {
    [(UIImage *)v7 _setRenderingMode:1];
    *&self->_tabBarItemFlags |= 0x1000u;
  }

  v9 = self->_unselectedImage;
  if (v9 != v8)
  {
    objc_storeStrong(&self->_unselectedImage, unselectedImage);
  }

  v10 = v11;
  if (v11)
  {
    [(UIImage *)v11 _setRenderingMode:1];
    v10 = v11;
    *&self->_tabBarItemFlags |= 0x800u;
  }

  if (self->_selectedImage == v10)
  {
    if (v9 == v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_storeStrong(&self->_selectedImage, selectedImage);
  }

  [(UITabBarItem *)self _itemViewNeedsUpdate:?];
LABEL_11:
}

- (UIImage)finishedSelectedImage
{
  if ((*&self->_tabBarItemFlags & 0x800) != 0)
  {
    return self->_selectedImage;
  }

  else
  {
    return 0;
  }
}

- (UIImage)finishedUnselectedImage
{
  if ((*&self->_tabBarItemFlags & 0x1000) != 0)
  {
    return self->_unselectedImage;
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasTitle
{
  v2 = [(UITabBarItem *)self resolvedTitle];
  v3 = v2 != 0;

  return v3;
}

- (id)_resolvedSourceItem
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[29] tabBar];
    v3 = [(UITabBar *)v2 _resolvedPresentationSourceItemForItem:v1];
    v4 = v3;
    if (!v3)
    {
      v5 = [v1[29] _window];

      v6 = &OBJC_IVAR___UITabBarItem___fallbackSourceItem;
      if (v5)
      {
        v6 = &OBJC_IVAR___UITabBarItem__view;
      }

      v4 = *(v1 + *v6);
    }

    v1 = v4;
  }

  return v1;
}

- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!self->_appearanceStorage)
  {
    v8 = objc_alloc_init(_UITabBarItemAppearanceStorage);
    appearanceStorage = self->_appearanceStorage;
    self->_appearanceStorage = v8;
  }

  v10 = [v7 _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0 && a4 != 8)
  {
    a4 = 4;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  _UIAppearanceTagObjectForSelector(self, a2, v13);

  v14 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:a4];
  if (v10 | v14 && ([v10 isEqualToDictionary:v14] & 1) == 0)
  {
    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:v10 forState:a4];
    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }
}

- (id)titleTextAttributesForState:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0 && a3 != 8)
  {
    a3 = 4;
  }

  return [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:a3];
}

- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment
{
  vertical = titlePositionAdjustment.vertical;
  horizontal = titlePositionAdjustment.horizontal;
  _UIAppearanceTagObjectForSelector(self, a2, 0);
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    v7 = objc_alloc_init(_UITabBarItemAppearanceStorage);
    v8 = self->_appearanceStorage;
    self->_appearanceStorage = v7;

    appearanceStorage = self->_appearanceStorage;
  }

  [(_UITabBarItemAppearanceStorage *)appearanceStorage titleOffset];
  if (v10 != horizontal || v9 != vertical)
  {
    [(_UITabBarItemAppearanceStorage *)self->_appearanceStorage setTitleOffset:horizontal, vertical];

    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }
}

- (UIOffset)titlePositionAdjustment
{
  [(_UITabBarItemAppearanceStorage *)self->_appearanceStorage titleOffset];
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (void)setBadgeColor:(UIColor *)badgeColor
{
  v4 = badgeColor;
  appearanceStorage = self->_appearanceStorage;
  if (v4)
  {
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UITabBarItemAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_9;
  }

  v8 = [(_UITabBarItemAppearanceStorage *)appearanceStorage badgeColor];
  v9 = v8;
  if (v8 != v4 && ![(UIColor *)v8 isEqual:v4])
  {
    [(_UITabBarItemAppearanceStorage *)self->_appearanceStorage setBadgeColor:v4];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__UITabBarItem_setBadgeColor___block_invoke;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  [(UITabBarItem *)self _itemViewNeedsUpdate:v10];

LABEL_9:
}

void __30__UITabBarItem_setBadgeColor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 232);
  v3 = [*(v1 + 240) badgeColor];
  [v2 _setBadgeColor:v3];
}

- (void)setBadgeTextAttributes:(NSDictionary *)textAttributes forState:(UIControlState)state
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = textAttributes;
  if (!self->_appearanceStorage)
  {
    v8 = objc_alloc_init(_UITabBarItemAppearanceStorage);
    appearanceStorage = self->_appearanceStorage;
    self->_appearanceStorage = v8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  _UIAppearanceTagObjectForSelector(self, a2, v11);

  v12 = [(_UITabBarItemAppearanceStorage *)self->_appearanceStorage badgeTextAttributesForState:state];
  if (v12 != v7 && ![(NSDictionary *)v7 isEqualToDictionary:v12])
  {
    [(_UITabBarItemAppearanceStorage *)self->_appearanceStorage setBadgeTextAttributes:v7 forState:state];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__UITabBarItem_setBadgeTextAttributes_forState___block_invoke;
  v13[3] = &unk_1E70F32F0;
  v13[4] = self;
  v13[5] = state;
  [(UITabBarItem *)self _itemViewNeedsUpdate:v13];
}

void __48__UITabBarItem_setBadgeTextAttributes_forState___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  v4 = [*(v2 + 240) badgeTextAttributesForState:*(a1 + 40)];
  [v3 _setBadgeTextAttributes:v4 forState:*(a1 + 40)];
}

- (void)_setTabBarButton:(uint64_t)a1
{
  v5 = a2;
  if (a1)
  {
    v4 = [a1 _isSelected];
    objc_storeStrong((a1 + 232), a2);
    [*(a1 + 232) _setSelected:v4];
    [*(a1 + 232) setSpringLoaded:(*(a1 + 248) >> 1) & 1];
    [*(a1 + 232) setEnabled:*(a1 + 248) & 1];
  }
}

- (void)setUnselectedImage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [(UIImage *)v5 _setRenderingMode:1];
    v5 = v6;
    *&self->_tabBarItemFlags |= 0x1000u;
  }

  if (self->_unselectedImage != v5)
  {
    objc_storeStrong(&self->_unselectedImage, a3);
    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
    v5 = v6;
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)_setInternalTitle:(id)a3
{
  v4 = a3;
  v5 = self->_title;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    title = self->_title;
    self->_title = v8;

    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }

LABEL_9:
}

- (void)_setInternalTemplateImage:(id)a3
{
  v5 = a3;
  if (self->_templateImage != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_templateImage, a3);
    tabBarItemFlags = self->_tabBarItemFlags;
    if ((tabBarItemFlags & 0x800) == 0)
    {
      selectedImage = self->_selectedImage;
      self->_selectedImage = 0;

      tabBarItemFlags = self->_tabBarItemFlags;
    }

    if ((tabBarItemFlags & 0x1000) == 0)
    {
      unselectedImage = self->_unselectedImage;
      self->_unselectedImage = 0;
    }

    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
    v5 = v9;
  }
}

- (void)_setInternalLandscapeTemplateImage:(id)a3
{
  v5 = a3;
  if (self->_landscapeTemplateImage != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_landscapeTemplateImage, a3);
    tabBarItemFlags = self->_tabBarItemFlags;
    if ((tabBarItemFlags & 0x800) == 0)
    {
      selectedImage = self->_selectedImage;
      self->_selectedImage = 0;

      tabBarItemFlags = self->_tabBarItemFlags;
    }

    if ((tabBarItemFlags & 0x1000) == 0)
    {
      unselectedImage = self->_unselectedImage;
      self->_unselectedImage = 0;
    }

    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
    v5 = v9;
  }
}

- (void)_setTitleTextAttributeValue:(id)a3 forAttributeKey:(id)a4 state:(unint64_t)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:a5];
  v10 = [v9 mutableCopy];

  v11 = [v10 objectForKey:v8];
  if (v12 && !v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v12 isEqual:v11])
    {
      goto LABEL_11;
    }

LABEL_8:
    [v10 setObject:v12 forKey:v8];
    goto LABEL_9;
  }

  if (!(v12 | v11) || ([v12 isEqual:v11] & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_8;
  }

  [v10 removeObjectForKey:v8];
LABEL_9:
  [(UITabBarItem *)self setTitleTextAttributes:v10 forState:a5];
  if (self->_view)
  {
    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }

LABEL_11:
}

+ (id)_appearanceBlindViewClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = _appearanceBlindViewClasses_classList_0;
  if (!_appearanceBlindViewClasses_classList_0)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    v4 = _appearanceBlindViewClasses_classList_0;
    _appearanceBlindViewClasses_classList_0 = v3;

    v2 = _appearanceBlindViewClasses_classList_0;
  }

  return v2;
}

- (id)_createViewForTabBar:(id)a3 asProxyView:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    imageStyle = self->__imageStyle;
    v9 = [v6 _appearanceStorage];
    v10 = [v9 selectedImageTintColor];
    v11 = v10;
    if (v10 || (imageStyle | 2) != 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = [(UITabBarItem *)self _tintColor];
    }

    v13 = v12;
  }

  v14 = [(UITabBarItem *)self _internalTitle];
  v15 = [(UITabBarItem *)self _internalLandscapeTemplateImages];
  v16 = [v15 firstObject];

  v17 = [UITabBarButton alloc];
  v18 = [(UITabBarItem *)self unselectedImage];
  v19 = [(UITabBarItem *)self selectedImage];
  v20 = [(UITabBarItem *)self landscapeSelectedImagePhone];
  [(UITabBarItem *)self imageInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(UITabBarItem *)self landscapeImagePhoneInsets];
  v33 = [(UITabBarButton *)v17 initWithImage:v18 landscapeImage:v16 selectedImage:v19 landscapeSelectedImage:v20 label:v14 withInsets:v7 landscapeInsets:v22 tabBar:v24, v26, v28, v29, v30, v31, v32];

  [(UITabBarItem *)self badgeOffset];
  [(UITabBarButton *)v33 _setBadgeOffset:?];
  if ((*&self->_tabBarItemFlags & 2) != 0)
  {
    [(UITabBarButton *)v33 setSpringLoaded:1];
  }

  [(UITabBarButton *)v33 _setAppearanceGuideClass:objc_opt_class()];
  [(UIView *)v33 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [v7 _heightForCustomizingItems];
  [(UIView *)v33 setFrame:v35, v37, v39, v40];
  appearanceStorage = self->_appearanceStorage;
  v42 = objc_getAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey);
  [(UITabBarButton *)v33 _applyTabBarButtonAppearanceStorage:appearanceStorage withTaggedSelectors:v42];

  v43 = [v7 _appearanceStorage];
  v44 = [v43 selectionIndicatorImage];

  if (v44)
  {
    [(UITabBarButton *)v33 _setCustomSelectedIndicatorImage:v44];
  }

  [(UIControl *)v33 addTarget:v7 action:sel__buttonDown_ forControlEvents:1];
  [(UIControl *)v33 addTarget:v7 action:sel__buttonUp_ forControlEvents:64];
  [(UIControl *)v33 addTarget:v7 action:sel__buttonCancel_ forControlEvents:256];
  [(UIControl *)v33 addTarget:v7 action:sel__sendAction_withEvent_ forControlEvents:0x40000000];
  [(UITabBarButton *)v33 setEnabled:[(UITabBarItem *)self isEnabled]];
  -[UITabBarButton _setShowsHighlightedState:](v33, "_setShowsHighlightedState:", [v7 _showsHighlightedState]);
  if (!a4 && self->_badgeValue)
  {
    [(UITabBarButton *)v33 _setBadgeValue:?];
  }

  LODWORD(v45) = -1105618534;
  [(UIView *)v33 setCharge:v45];

  return v33;
}

- (void)_updateViewAndPositionItems:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITabBarButton *)self->_view tabBar];
  if (v5)
  {
    v9 = v5;
    [(_UITabBarButton *)self->_view alpha];
    v7 = v6;
    [v9 _updateTabBarItemView:self];
    if (v3)
    {
      [v9 _positionAllItems];
    }

    [(_UITabBarButton *)self->_view setAlpha:v7];
    v8 = [v9 selectedItem];

    if (v8 == self)
    {
      [(_UITabBarButton *)self->_view _showSelectedIndicator:1 changeSelection:1];
    }

    [(UITabBarItem *)self _updateViewBadge];
    v5 = v9;
  }
}

- (void)setSpringLoaded:(BOOL)a3
{
  tabBarItemFlags = self->_tabBarItemFlags;
  if (((((tabBarItemFlags & 2) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_tabBarItemFlags = tabBarItemFlags & 0xFFFD | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__UITabBarItem_setSpringLoaded___block_invoke;
    v5[3] = &unk_1E70F35E0;
    v5[4] = self;
    v6 = a3;
    [(UITabBarItem *)self _itemViewNeedsUpdate:v5];
  }
}

- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4
{
  v5 = [(_UITabBarButton *)self->_view tabBar:a3];
  [v5 _useModernAppearance];
  [(UITabBarItem *)self _setUsesModernAppearance:1];
  if ([(UITabBarItem *)self _isSelected])
  {
    [v5 setNeedsLayout];
  }
}

- (id)titleForStyle:(int64_t)a3 state:(int64_t)a4
{
  v4 = [(UITabBarItem *)self _internalTitle:a3];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)badgeForStyle:(int64_t)a3 state:(int64_t)a4
{
  badgeValue = [(NSString *)self->_badgeValue length:a3];
  if (badgeValue)
  {
    badgeValue = self->_badgeValue;
  }

  return badgeValue;
}

- (id)imageForStyle:(int64_t)a3 state:(int64_t)a4
{
  if (a3 < 2)
  {
    v6 = [(UITabBarItem *)self _internalTemplateImages];
LABEL_6:
    v9 = v6;
    if (a4 == 2)
    {
      [v6 lastObject];
    }

    else
    {
      [v6 firstObject];
    }
    v10 = ;
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v6 = [(UITabBarItem *)self _internalLandscapeTemplateImages];
    goto LABEL_6;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"UITabBarItem.m" lineNumber:1069 description:{@"style %li currently unsupported", a3}];
  v10 = 0;
LABEL_10:

  return v10;
}

- (UIEdgeInsets)imageInsetsForStyle:(int64_t)a3 state:(int64_t)a4
{
  if (a3 < 2)
  {
    v5 = 120;
LABEL_6:
    v6 = (self + v5);
    v13 = *v6;
    v12 = v6[1];
    v11 = v6[2];
    v10 = v6[3];
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v5 = 176;
    goto LABEL_6;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"UITabBarItem.m" lineNumber:1091 description:{@"style %li currently unsupported", a3}];

  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
LABEL_7:
  result.right = v10;
  result.bottom = v11;
  result.left = v12;
  result.top = v13;
  return result;
}

- (id)_changeObserver
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 35);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)set_fallbackSourceItem:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 320), a2);
  }
}

- (CGRect)frameInView:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  [v5 frameInView:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  [v8 _frameInCoordinateSpace:v7 window:v6];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_nearestViewController
{
  v2 = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  v3 = [v2 _nearestViewController];

  return v3;
}

- (id)_sourceViewForPresentationInWindow:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  v6 = [v5 _sourceViewForPresentationInWindow:v4];

  return v6;
}

- (CGRect)_sourceRectForPresentationInWindow:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  [v5 _sourceRectForPresentationInWindow:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

@end