@interface UITabBarItem
+ (id)_appearanceBlindViewClasses;
- (BOOL)_isSelected;
- (BOOL)hasTitle;
- (CGRect)_frameInCoordinateSpace:(id)space window:(id)window;
- (CGRect)_sourceRectForPresentationInWindow:(id)window;
- (CGRect)frameInView:(id)view;
- (NSString)description;
- (SEL)action;
- (UIEdgeInsets)imageInsets;
- (UIEdgeInsets)imageInsetsForStyle:(int64_t)style state:(int64_t)state;
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
- (id)_createViewForTabBar:(id)bar asProxyView:(BOOL)view;
- (id)_internalLandscapeTemplateImage;
- (id)_internalLandscapeTemplateImages;
- (id)_internalTemplateImage;
- (id)_internalTemplateImagesForTabBarDisplayStyle:(int64_t)style;
- (id)_nearestViewController;
- (id)_resolvedSourceItem;
- (id)_sourceViewForPresentationInWindow:(id)window;
- (id)_tabBarButton;
- (id)badgeForStyle:(int64_t)style state:(int64_t)state;
- (id)imageForStyle:(int64_t)style state:(int64_t)state;
- (id)largeContentSizeImage;
- (id)target;
- (id)titleForStyle:(int64_t)style state:(int64_t)state;
- (id)titleTextAttributesForState:(unint64_t)state;
- (id)unselectedImage;
- (int64_t)preferredPlacement;
- (void)_itemBarAppearanceNeedsUpdate:(id *)update;
- (void)_itemViewNeedsUpdate:(uint64_t)update;
- (void)_resolveSystemItem;
- (void)_setInternalLandscapeTemplateImage:(id)image;
- (void)_setInternalTemplateImage:(id)image;
- (void)_setInternalTitle:(id)title;
- (void)_setSelected:(BOOL)selected;
- (void)_setTabBarButton:(uint64_t)button;
- (void)_setTitleTextAttributeValue:(id)value forAttributeKey:(id)key state:(unint64_t)state;
- (void)_updateView;
- (void)_updateViewAndPositionItems:(BOOL)items;
- (void)_updateViewBadge;
- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed;
- (void)encodeWithCoder:(id)coder;
- (void)setAction:(SEL)action;
- (void)setBadgeColor:(UIColor *)badgeColor;
- (void)setBadgeOffset:(UIOffset)offset;
- (void)setBadgeTextAttributes:(NSDictionary *)textAttributes forState:(UIControlState)state;
- (void)setBadgeValue:(NSString *)badgeValue;
- (void)setEnabled:(BOOL)enabled;
- (void)setFinishedSelectedImage:(UIImage *)selectedImage withFinishedUnselectedImage:(UIImage *)unselectedImage;
- (void)setImageInsets:(UIEdgeInsets)insets;
- (void)setLandscapeImagePhone:(id)phone;
- (void)setLandscapeImagePhoneInsets:(UIEdgeInsets)insets;
- (void)setLandscapeSelectedImagePhone:(id)phone;
- (void)setLargeContentSizeImage:(id)image;
- (void)setLargeContentSizeImageInsets:(UIEdgeInsets)insets;
- (void)setScrollEdgeAppearance:(UITabBarAppearance *)scrollEdgeAppearance;
- (void)setSelectedImage:(UIImage *)selectedImage;
- (void)setSpringLoaded:(BOOL)loaded;
- (void)setStandardAppearance:(UITabBarAppearance *)standardAppearance;
- (void)setTitlePositionAdjustment:(UIOffset)titlePositionAdjustment;
- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)setUnselectedImage:(id)image;
- (void)set_fallbackSourceItem:(uint64_t)item;
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
    _internalTemplateImages = [(UITabBarItem *)self _internalTemplateImages];
    lastObject = [_internalTemplateImages lastObject];
    v6 = self->_selectedImage;
    self->_selectedImage = lastObject;

    selectedImage = self->_selectedImage;
  }

  return selectedImage;
}

- (BOOL)_isSelected
{
  view = self->_view;
  if (view)
  {
    _isSelected = [(_UITabBarButton *)view _isSelected];
    if (_isSelected)
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

  return _isSelected;
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
  if ((*(self + 248) & 0x20) == 0)
  {
    return;
  }

  systemItem = [self systemItem];
  v4 = 0;
  if (systemItem > 5)
  {
    if (systemItem > 8)
    {
      if (systemItem == 9)
      {
        v5 = _UINSLocalizedStringWithDefaultValue(@"Downloads", @"Downloads");
        v4 = @"square.and.arrow.down.fill";
        goto LABEL_29;
      }

      if (systemItem != 10)
      {
        v5 = 0;
        if (systemItem == 11)
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
      if (systemItem != 6)
      {
        if (systemItem == 7)
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

  if (systemItem > 2)
  {
    if (systemItem == 3)
    {
      v6 = @"Top Rated";
      goto LABEL_24;
    }

    if (systemItem != 4)
    {
      v5 = _UINSLocalizedStringWithDefaultValue(@"Contacts", @"Contacts");
      v4 = @"person.crop.circle.fill";
      goto LABEL_29;
    }

    v7 = @"Recents";
    goto LABEL_28;
  }

  if (systemItem)
  {
    if (systemItem == 1)
    {
      v6 = @"Favorites";
      goto LABEL_24;
    }

    v5 = 0;
    if (systemItem == 2)
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
  v10 = *(self + 64);
  *(self + 64) = v5;
  v11 = v5;

  objc_storeStrong((self + 88), v8);
  v12 = *(self + 96);
  *(self + 96) = 0;

  v13 = *(self + 152);
  *(self + 152) = v9;
  v15 = v9;

  v14 = *(self + 160);
  *(self + 160) = 0;
}

- (id)unselectedImage
{
  unselectedImage = self->_unselectedImage;
  if (!unselectedImage)
  {
    _internalTemplateImages = [(UITabBarItem *)self _internalTemplateImages];
    firstObject = [_internalTemplateImages firstObject];

    v6 = self->_unselectedImage;
    self->_unselectedImage = firstObject;

    unselectedImage = self->_unselectedImage;
  }

  return unselectedImage;
}

- (id)_internalTemplateImage
{
  _internalTemplateImages = [(UITabBarItem *)self _internalTemplateImages];
  firstObject = [_internalTemplateImages firstObject];

  return firstObject;
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
  if (self)
  {
    self = self[29];
    v1 = vars8;
  }

  return self;
}

- (id)_internalLandscapeTemplateImage
{
  _internalLandscapeTemplateImages = [(UITabBarItem *)self _internalLandscapeTemplateImages];
  firstObject = [_internalLandscapeTemplateImages firstObject];

  return firstObject;
}

- (UIImage)_internalLandscapeSelectedImagePhone
{
  landscapeSelectedImage = self->_landscapeSelectedImage;
  if (!landscapeSelectedImage)
  {
    _internalLandscapeTemplateImages = [(UITabBarItem *)self _internalLandscapeTemplateImages];
    lastObject = [_internalLandscapeTemplateImages lastObject];
    v6 = self->_landscapeSelectedImage;
    self->_landscapeSelectedImage = lastObject;

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
    systemItem = [(UITabBarItem *)self systemItem];
    if (systemItem > 5)
    {
      if (systemItem > 8)
      {
        switch(systemItem)
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

      else if (systemItem == 6)
      {
        v6 = @" systemItem=History";
      }

      else if (systemItem == 7)
      {
        v6 = @" systemItem=Bookmarks";
      }

      else
      {
        v6 = @" systemItem=Search";
      }
    }

    else if (systemItem > 2)
    {
      if (systemItem == 3)
      {
        v6 = @" systemItem=TopRated";
      }

      else if (systemItem == 4)
      {
        v6 = @" systemItem=Recents";
      }

      else
      {
        v6 = @" systemItem=Contacts";
      }
    }

    else if (systemItem)
    {
      if (systemItem == 1)
      {
        v6 = @" systemItem=Favorites";
      }

      else
      {
        if (systemItem != 2)
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

- (void)_setSelected:(BOOL)selected
{
  if (selected)
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

- (void)_itemViewNeedsUpdate:(uint64_t)update
{
  v3 = a2;
  if (update)
  {
    aBlock = v3;
    WeakRetained = objc_loadWeakRetained((update + 280));
    v5 = _Block_copy(aBlock);
    v6 = *(update + 256);
    *(update + 256) = v5;

    if (WeakRetained)
    {
      [WeakRetained _tabDataProviderContentDidChange:update];
    }

    else if (aBlock)
    {
      aBlock[2]();
    }

    else
    {
      [update _updateView];
    }

    v7 = *(update + 256);
    *(update + 256) = 0;

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

- (void)setBadgeOffset:(UIOffset)offset
{
  if (offset.horizontal != self->_badgeOffset.horizontal || offset.vertical != self->_badgeOffset.vertical)
  {
    self->_badgeOffset = offset;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = UITabBarItem;
  [(UIBarItem *)&v21 encodeWithCoder:coderCopy];
  tabBarItemFlags = self->_tabBarItemFlags;
  LOBYTE(v6) = self->_tabBarItemFlags;
  if ((tabBarItemFlags & 0x20) != 0)
  {
    [coderCopy encodeInteger:(tabBarItemFlags >> 6) & 0xF forKey:@"UISystemItem"];
    v6 = self->_tabBarItemFlags;
  }

  if (v6)
  {
    [coderCopy encodeBool:1 forKey:@"UIEnabled"];
  }

  if ([(UIBarItem *)self tag])
  {
    [coderCopy encodeInteger:-[UIBarItem tag](self forKey:{"tag"), @"UITag"}];
  }

  if ((tabBarItemFlags & 0x20) == 0)
  {
    title = self->_title;
    if (title)
    {
      [coderCopy encodeObject:title forKey:@"UITitle"];
    }
  }

  badgeValue = self->_badgeValue;
  if (badgeValue)
  {
    [coderCopy encodeObject:badgeValue forKey:@"UIBadgeValue"];
  }

  badgeColor = [(UITabBarItem *)self badgeColor];

  if (badgeColor)
  {
    badgeColor2 = [(UITabBarItem *)self badgeColor];
    [coderCopy encodeObject:badgeColor2 forKey:@"UIBadgeColor"];
  }

  if ((tabBarItemFlags & 0x20) == 0)
  {
    templateImage = self->_templateImage;
    if (templateImage)
    {
      [coderCopy encodeObject:templateImage forKey:@"UIImage"];
    }

    selectedTemplateImage = self->_selectedTemplateImage;
    if (selectedTemplateImage)
    {
      [coderCopy encodeObject:selectedTemplateImage forKey:@"UISelectedTemplateImage"];
    }
  }

  v13 = *&self->_imageInsets.top;
  v14 = *&self->_imageInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v13), vceqzq_f64(v14))))))
  {
    [coderCopy encodeUIEdgeInsets:@"UIImageInsets" forKey:{*&v13, *&v14}];
  }

  if (dyld_program_sdk_at_least())
  {
    if ((tabBarItemFlags & 0x20) == 0)
    {
      landscapeTemplateImage = self->_landscapeTemplateImage;
      if (landscapeTemplateImage)
      {
        [coderCopy encodeObject:landscapeTemplateImage forKey:@"UIImageLandscape"];
      }

      landscapeSelectedTemplateImage = self->_landscapeSelectedTemplateImage;
      if (landscapeSelectedTemplateImage)
      {
        [coderCopy encodeObject:landscapeSelectedTemplateImage forKey:@"UISelectedTemplateImageLandscape"];
      }
    }

    v17 = *&self->_landscapeImageInsets.top;
    v18 = *&self->_landscapeImageInsets.bottom;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v17), vceqzq_f64(v18))))))
    {
      [coderCopy encodeUIEdgeInsets:@"UIImageInsetsLandscape" forKey:{*&v17, *&v18}];
    }
  }

  [(UITabBarItem *)self titlePositionAdjustment];
  if (v20 != 0.0 || v19 != 0.0)
  {
    [coderCopy encodeUIOffset:@"UITitlePositionAdjustment" forKey:?];
  }

  if ([(UITabBarItem *)self isSpringLoaded])
  {
    [coderCopy encodeBool:1 forKey:@"UISpringLoaded"];
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

- (void)_itemBarAppearanceNeedsUpdate:(id *)update
{
  v4 = a2;
  if (update)
  {
    WeakRetained = objc_loadWeakRetained(update + 35);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _tab:update appearanceNeedsUpdate:v4];
    }

    else
    {
      [update appearance:v4 categoriesChanged:-1];
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

- (void)setEnabled:(BOOL)enabled
{
  *&self->_tabBarItemFlags = *&self->_tabBarItemFlags & 0xFFFE | enabled;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__UITabBarItem_setEnabled___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(UITabBarItem *)self _itemViewNeedsUpdate:v3];
}

- (id)_internalTemplateImagesForTabBarDisplayStyle:(int64_t)style
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

- (void)setLandscapeImagePhone:(id)phone
{
  phoneCopy = phone;
  if (dyld_program_sdk_at_least())
  {
    [(UITabBarItem *)self _setInternalLandscapeTemplateImage:phoneCopy];
  }
}

- (void)setImageInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_imageInsets.top), vceqq_f64(v4, *&self->_imageInsets.bottom)))) & 1) == 0)
  {
    self->_imageInsets = insets;
    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }
}

- (void)setLandscapeImagePhoneInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  bottom = insets.bottom;
  top = insets.top;
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
    largeContentSizeImage = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITabBarItem;
    largeContentSizeImage = [(UIBarItem *)&v5 largeContentSizeImage];
  }

  return largeContentSizeImage;
}

- (void)setLargeContentSizeImage:(id)image
{
  if ((*&self->_tabBarItemFlags & 0x20) == 0)
  {
    v3.receiver = self;
    v3.super_class = UITabBarItem;
    [(UIBarItem *)&v3 setLargeContentSizeImage:image];
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

- (void)setLargeContentSizeImageInsets:(UIEdgeInsets)insets
{
  if ((*&self->_tabBarItemFlags & 0x20) == 0)
  {
    v3.receiver = self;
    v3.super_class = UITabBarItem;
    [(UIBarItem *)&v3 setLargeContentSizeImageInsets:insets.top, insets.left, insets.bottom, insets.right];
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
    _imageThatSuppressesAccessibilityHairlineThickening = [(UIImage *)selectedImage _imageThatSuppressesAccessibilityHairlineThickening];
    selectedTemplateImage = self->_selectedTemplateImage;
    self->_selectedTemplateImage = _imageThatSuppressesAccessibilityHairlineThickening;

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
    _internalLandscapeTemplateImages = [(UITabBarItem *)self _internalLandscapeTemplateImages];
    lastObject = [_internalLandscapeTemplateImages lastObject];
    v6 = self->_landscapeSelectedImage;
    self->_landscapeSelectedImage = lastObject;

    landscapeSelectedImage = self->_landscapeSelectedImage;
  }

  return landscapeSelectedImage;
}

- (void)setLandscapeSelectedImagePhone:(id)phone
{
  if (self->_landscapeSelectedTemplateImage != phone)
  {
    _imageThatSuppressesAccessibilityHairlineThickening = [phone _imageThatSuppressesAccessibilityHairlineThickening];
    landscapeSelectedTemplateImage = self->_landscapeSelectedTemplateImage;
    self->_landscapeSelectedTemplateImage = _imageThatSuppressesAccessibilityHairlineThickening;

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
  resolvedTitle = [(UITabBarItem *)self resolvedTitle];
  v3 = resolvedTitle != 0;

  return v3;
}

- (id)_resolvedSourceItem
{
  selfCopy = self;
  if (self)
  {
    tabBar = [self[29] tabBar];
    v3 = [(UITabBar *)tabBar _resolvedPresentationSourceItemForItem:selfCopy];
    v4 = v3;
    if (!v3)
    {
      _window = [selfCopy[29] _window];

      v6 = &OBJC_IVAR___UITabBarItem___fallbackSourceItem;
      if (_window)
      {
        v6 = &OBJC_IVAR___UITabBarItem__view;
      }

      v4 = *(selfCopy + *v6);
    }

    selfCopy = v4;
  }

  return selfCopy;
}

- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  v15[1] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (!self->_appearanceStorage)
  {
    v8 = objc_alloc_init(_UITabBarItemAppearanceStorage);
    appearanceStorage = self->_appearanceStorage;
    self->_appearanceStorage = v8;
  }

  _ui_attributesForDictionaryContainingUIStringDrawingKeys = [attributesCopy _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0 && state != 8)
  {
    state = 4;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  _UIAppearanceTagObjectForSelector(self, a2, v13);

  v14 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:state];
  if (_ui_attributesForDictionaryContainingUIStringDrawingKeys | v14 && ([_ui_attributesForDictionaryContainingUIStringDrawingKeys isEqualToDictionary:v14] & 1) == 0)
  {
    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys forState:state];
    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
  }
}

- (id)titleTextAttributesForState:(unint64_t)state
{
  if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0 && state != 8)
  {
    state = 4;
  }

  return [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:state];
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

  badgeColor = [(_UITabBarItemAppearanceStorage *)appearanceStorage badgeColor];
  v9 = badgeColor;
  if (badgeColor != v4 && ![(UIColor *)badgeColor isEqual:v4])
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

- (void)_setTabBarButton:(uint64_t)button
{
  v5 = a2;
  if (button)
  {
    _isSelected = [button _isSelected];
    objc_storeStrong((button + 232), a2);
    [*(button + 232) _setSelected:_isSelected];
    [*(button + 232) setSpringLoaded:(*(button + 248) >> 1) & 1];
    [*(button + 232) setEnabled:*(button + 248) & 1];
  }
}

- (void)setUnselectedImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (imageCopy)
  {
    [(UIImage *)imageCopy _setRenderingMode:1];
    imageCopy = v6;
    *&self->_tabBarItemFlags |= 0x1000u;
  }

  if (self->_unselectedImage != imageCopy)
  {
    objc_storeStrong(&self->_unselectedImage, image);
    [(UITabBarItem *)self _itemViewNeedsUpdate:?];
    imageCopy = v6;
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
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

- (void)_setInternalTitle:(id)title
{
  titleCopy = title;
  v5 = self->_title;
  v6 = titleCopy;
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

- (void)_setInternalTemplateImage:(id)image
{
  imageCopy = image;
  if (self->_templateImage != imageCopy)
  {
    v9 = imageCopy;
    objc_storeStrong(&self->_templateImage, image);
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
    imageCopy = v9;
  }
}

- (void)_setInternalLandscapeTemplateImage:(id)image
{
  imageCopy = image;
  if (self->_landscapeTemplateImage != imageCopy)
  {
    v9 = imageCopy;
    objc_storeStrong(&self->_landscapeTemplateImage, image);
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
    imageCopy = v9;
  }
}

- (void)_setTitleTextAttributeValue:(id)value forAttributeKey:(id)key state:(unint64_t)state
{
  valueCopy = value;
  keyCopy = key;
  v9 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:state];
  v10 = [v9 mutableCopy];

  v11 = [v10 objectForKey:keyCopy];
  if (valueCopy && !v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([valueCopy isEqual:v11])
    {
      goto LABEL_11;
    }

LABEL_8:
    [v10 setObject:valueCopy forKey:keyCopy];
    goto LABEL_9;
  }

  if (!(valueCopy | v11) || ([valueCopy isEqual:v11] & 1) != 0)
  {
    goto LABEL_11;
  }

  if (valueCopy)
  {
    goto LABEL_8;
  }

  [v10 removeObjectForKey:keyCopy];
LABEL_9:
  [(UITabBarItem *)self setTitleTextAttributes:v10 forState:state];
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

- (id)_createViewForTabBar:(id)bar asProxyView:(BOOL)view
{
  barCopy = bar;
  v7 = barCopy;
  if (!view)
  {
    imageStyle = self->__imageStyle;
    _appearanceStorage = [barCopy _appearanceStorage];
    selectedImageTintColor = [_appearanceStorage selectedImageTintColor];
    v11 = selectedImageTintColor;
    if (selectedImageTintColor || (imageStyle | 2) != 2)
    {
      _tintColor = selectedImageTintColor;
    }

    else
    {
      _tintColor = [(UITabBarItem *)self _tintColor];
    }

    v13 = _tintColor;
  }

  _internalTitle = [(UITabBarItem *)self _internalTitle];
  _internalLandscapeTemplateImages = [(UITabBarItem *)self _internalLandscapeTemplateImages];
  firstObject = [_internalLandscapeTemplateImages firstObject];

  v17 = [UITabBarButton alloc];
  unselectedImage = [(UITabBarItem *)self unselectedImage];
  selectedImage = [(UITabBarItem *)self selectedImage];
  landscapeSelectedImagePhone = [(UITabBarItem *)self landscapeSelectedImagePhone];
  [(UITabBarItem *)self imageInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(UITabBarItem *)self landscapeImagePhoneInsets];
  v33 = [(UITabBarButton *)v17 initWithImage:unselectedImage landscapeImage:firstObject selectedImage:selectedImage landscapeSelectedImage:landscapeSelectedImagePhone label:_internalTitle withInsets:v7 landscapeInsets:v22 tabBar:v24, v26, v28, v29, v30, v31, v32];

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

  _appearanceStorage2 = [v7 _appearanceStorage];
  selectionIndicatorImage = [_appearanceStorage2 selectionIndicatorImage];

  if (selectionIndicatorImage)
  {
    [(UITabBarButton *)v33 _setCustomSelectedIndicatorImage:selectionIndicatorImage];
  }

  [(UIControl *)v33 addTarget:v7 action:sel__buttonDown_ forControlEvents:1];
  [(UIControl *)v33 addTarget:v7 action:sel__buttonUp_ forControlEvents:64];
  [(UIControl *)v33 addTarget:v7 action:sel__buttonCancel_ forControlEvents:256];
  [(UIControl *)v33 addTarget:v7 action:sel__sendAction_withEvent_ forControlEvents:0x40000000];
  [(UITabBarButton *)v33 setEnabled:[(UITabBarItem *)self isEnabled]];
  -[UITabBarButton _setShowsHighlightedState:](v33, "_setShowsHighlightedState:", [v7 _showsHighlightedState]);
  if (!view && self->_badgeValue)
  {
    [(UITabBarButton *)v33 _setBadgeValue:?];
  }

  LODWORD(v45) = -1105618534;
  [(UIView *)v33 setCharge:v45];

  return v33;
}

- (void)_updateViewAndPositionItems:(BOOL)items
{
  itemsCopy = items;
  tabBar = [(_UITabBarButton *)self->_view tabBar];
  if (tabBar)
  {
    v9 = tabBar;
    [(_UITabBarButton *)self->_view alpha];
    v7 = v6;
    [v9 _updateTabBarItemView:self];
    if (itemsCopy)
    {
      [v9 _positionAllItems];
    }

    [(_UITabBarButton *)self->_view setAlpha:v7];
    selectedItem = [v9 selectedItem];

    if (selectedItem == self)
    {
      [(_UITabBarButton *)self->_view _showSelectedIndicator:1 changeSelection:1];
    }

    [(UITabBarItem *)self _updateViewBadge];
    tabBar = v9;
  }
}

- (void)setSpringLoaded:(BOOL)loaded
{
  tabBarItemFlags = self->_tabBarItemFlags;
  if (((((tabBarItemFlags & 2) == 0) ^ loaded) & 1) == 0)
  {
    if (loaded)
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
    loadedCopy = loaded;
    [(UITabBarItem *)self _itemViewNeedsUpdate:v5];
  }
}

- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed
{
  v5 = [(_UITabBarButton *)self->_view tabBar:appearance];
  [v5 _useModernAppearance];
  [(UITabBarItem *)self _setUsesModernAppearance:1];
  if ([(UITabBarItem *)self _isSelected])
  {
    [v5 setNeedsLayout];
  }
}

- (id)titleForStyle:(int64_t)style state:(int64_t)state
{
  v4 = [(UITabBarItem *)self _internalTitle:style];
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

- (id)badgeForStyle:(int64_t)style state:(int64_t)state
{
  badgeValue = [(NSString *)self->_badgeValue length:style];
  if (badgeValue)
  {
    badgeValue = self->_badgeValue;
  }

  return badgeValue;
}

- (id)imageForStyle:(int64_t)style state:(int64_t)state
{
  if (style < 2)
  {
    _internalTemplateImages = [(UITabBarItem *)self _internalTemplateImages];
LABEL_6:
    currentHandler = _internalTemplateImages;
    if (state == 2)
    {
      [_internalTemplateImages lastObject];
    }

    else
    {
      [_internalTemplateImages firstObject];
    }
    v10 = ;
    goto LABEL_10;
  }

  if (style == 2)
  {
    _internalTemplateImages = [(UITabBarItem *)self _internalLandscapeTemplateImages];
    goto LABEL_6;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarItem.m" lineNumber:1069 description:{@"style %li currently unsupported", style}];
  v10 = 0;
LABEL_10:

  return v10;
}

- (UIEdgeInsets)imageInsetsForStyle:(int64_t)style state:(int64_t)state
{
  if (style < 2)
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

  if (style == 2)
  {
    v5 = 176;
    goto LABEL_6;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarItem.m" lineNumber:1091 description:{@"style %li currently unsupported", style}];

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

- (void)set_fallbackSourceItem:(uint64_t)item
{
  if (item)
  {
    objc_storeStrong((item + 320), a2);
  }
}

- (CGRect)frameInView:(id)view
{
  viewCopy = view;
  _resolvedSourceItem = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  [_resolvedSourceItem frameInView:viewCopy];
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

- (CGRect)_frameInCoordinateSpace:(id)space window:(id)window
{
  windowCopy = window;
  spaceCopy = space;
  _resolvedSourceItem = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  [_resolvedSourceItem _frameInCoordinateSpace:spaceCopy window:windowCopy];
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
  _resolvedSourceItem = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  _nearestViewController = [_resolvedSourceItem _nearestViewController];

  return _nearestViewController;
}

- (id)_sourceViewForPresentationInWindow:(id)window
{
  windowCopy = window;
  _resolvedSourceItem = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  v6 = [_resolvedSourceItem _sourceViewForPresentationInWindow:windowCopy];

  return v6;
}

- (CGRect)_sourceRectForPresentationInWindow:(id)window
{
  windowCopy = window;
  _resolvedSourceItem = [(UITabBarItem *)&self->super.super.isa _resolvedSourceItem];
  [_resolvedSourceItem _sourceRectForPresentationInWindow:windowCopy];
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