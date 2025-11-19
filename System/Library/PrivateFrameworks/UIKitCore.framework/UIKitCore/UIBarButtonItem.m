@interface UIBarButtonItem
+ (UIBarButtonItem)fixedSpaceItemOfWidth:(CGFloat)width;
+ (UIBarButtonItem)flexibleSpaceItem;
+ (id)_appearanceBlindViewClasses;
+ (id)_inlineToolbarSearchItemAssociatedWithSearchController:(id)a3;
- (BOOL)_canProduceNSToolbarItem;
- (BOOL)_isImageBarButtonItem;
- (BOOL)_menuIsPrimary;
- (BOOL)_prefersCollapsedRepresentationInToolbar;
- (BOOL)_requiresOwnSection;
- (BOOL)_updateMenuInPlace;
- (BOOL)hasImage;
- (BOOL)hasTitle;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSpringLoaded;
- (CGFloat)width;
- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4;
- (CGRect)_rectForPresenting;
- (CGRect)_sourceRectForPresentationInWindow:(id)a3;
- (CGRect)frameInView:(id)a3;
- (NSArray)_gestureRecognizers;
- (NSArray)_interactions;
- (NSSet)_possibleItemVariations;
- (NSString)_resolvedLargeContentSizeTitle;
- (NSString)description;
- (SEL)action;
- (UIBarButtonItem)_itemForPresenting;
- (UIBarButtonItem)init;
- (UIBarButtonItem)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem primaryAction:(UIAction *)primaryAction menu:(UIMenu *)menu;
- (UIBarButtonItem)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action;
- (UIBarButtonItem)initWithCoder:(NSCoder *)coder;
- (UIBarButtonItem)initWithCustomView:(UIView *)customView;
- (UIBarButtonItem)initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;
- (UIBarButtonItem)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;
- (UIBarButtonItem)initWithPrimaryAction:(UIAction *)primaryAction menu:(UIMenu *)menu;
- (UIBarButtonItem)initWithTitle:(NSString *)title image:(UIImage *)image target:(id)target action:(SEL)action menu:(UIMenu *)menu;
- (UIBarButtonItem)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;
- (UIBarButtonItemBadge)badge;
- (UIBarButtonItemGroup)_owningButtonGroup;
- (UIBarButtonItemGroup)buttonGroup;
- (UIBarButtonItemGroup)creatingFixedGroup;
- (UIBarButtonItemGroup)creatingMovableGroupWithCustomizationIdentifier:(NSString *)customizationIdentifier;
- (UIBarButtonItemGroup)creatingOptionalGroupWithCustomizationIdentifier:(NSString *)customizationIdentifier inDefaultCustomization:(BOOL)inDefaultCustomization;
- (UIBarButtonItemStyle)style;
- (UIColor)_effectiveTintColor;
- (UIContextMenuInteraction)_contextMenuInteraction;
- (UIEdgeInsets)_additionalSelectionInsets;
- (UIEdgeInsets)imageInsets;
- (UIEdgeInsets)landscapeImagePhoneInsets;
- (UIEdgeInsets)largeContentSizeImageInsets;
- (UIImage)backButtonBackgroundImageForState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;
- (UIImage)backgroundImageForState:(UIControlState)state style:(UIBarButtonItemStyle)style barMetrics:(UIBarMetrics)barMetrics;
- (UIMenuElement)_effectiveMenuRepresentation;
- (UINavigationItem)_owningNavigationItem;
- (UINavigationItem)_vendingNavigationItem;
- (UIOffset)_accessoryOffset;
- (UIOffset)backButtonTitlePositionAdjustmentForBarMetrics:(UIBarMetrics)barMetrics;
- (UIOffset)titlePositionAdjustmentForBarMetrics:(UIBarMetrics)barMetrics;
- (UISearchController)_associatedSearchController;
- (UIToolbarButton)_toolbarButton;
- (UIView)_viewForPresenting;
- (UIView)customView;
- (_UIBarButtonItemBadge)_badge;
- (_UIBarButtonItemViewOwner)_viewOwner;
- (_UITypedStorage)_typedStorage;
- (double)_leftImagePaddingForEdgeMarginInNavBar;
- (double)_rightImagePaddingForEdgeMarginInNavBar;
- (id)_backgroundImageForState:(unint64_t)a3 compact:(BOOL)a4 type:(int64_t)a5;
- (id)_deferredEffectsCreateIfNecessary:(BOOL)a3;
- (id)_imageForState:(unint64_t)a3 compact:(BOOL)a4 type:(int64_t)a5;
- (id)_nearestViewController;
- (id)_sourceViewForPresentationInWindow:(id)a3;
- (id)createViewForNavigationItem:(id)a3;
- (id)createViewForToolbar:(id)a3;
- (id)image;
- (id)itemVariation;
- (id)landscapeImagePhone;
- (id)largeContentSizeImage;
- (id)resolvedTitle;
- (id)target;
- (id)title;
- (id)titleTextAttributesForState:(unint64_t)a3;
- (unint64_t)hash;
- (void)_applyDeferredSymbolEffects:(id)a3;
- (void)_applyPositionAdjustmentToSegmentedControl:(id)a3;
- (void)_connectInterfaceBuilderEventConnection:(id)a3;
- (void)_deferSymbolEffectOperation:(int64_t)a3 effect:(id)a4 options:(id)a5 animated:(BOOL)a6;
- (void)_executeValidationHandler;
- (void)_getMenuTitle:(id *)a3 image:(id *)a4;
- (void)_getNavBarEdgeSizeAdjust:(CGSize *)a3 imageInsets:(UIEdgeInsets *)a4 landscape:(BOOL)a5;
- (void)_getSystemItemStyle:(int64_t *)a3 title:(id *)a4 image:(id *)a5 selectedImage:(id *)a6 action:(SEL *)a7 forBarStyle:(int64_t)a8 landscape:(BOOL)a9 alwaysBordered:(BOOL)a10;
- (void)_getToolbarSystemItemEdgeInsetsWithImageInsets:(UIEdgeInsets *)a3 forBarStyle:(int64_t)a4 landscape:(BOOL)a5 alwaysBordered:(BOOL)a6;
- (void)_initializeSystemItem:(int64_t)a3;
- (void)_relinquishOwnership:(id)a3;
- (void)_sendAction:(id)a3 withEvent:(id)a4;
- (void)_setAccessoryOffset:(UIOffset)a3;
- (void)_setAccessoryPlacement:(int64_t)a3;
- (void)_setAccessoryView:(id)a3;
- (void)_setActsAsFakeBackButton:(BOOL)a3;
- (void)_setAdditionalSelectionInsets:(UIEdgeInsets)a3;
- (void)_setButtonGroup:(id)a3 isRepresentative:(BOOL)a4;
- (void)_setEnclosingBar:(id)a3 onItem:(id)a4;
- (void)_setGestureRecognizers:(id)a3;
- (void)_setImageHasEffects:(BOOL)a3;
- (void)_setInteractions:(id)a3;
- (void)_setItemVariation:(id)a3;
- (void)_setPossibleItemVariations:(id)a3;
- (void)_setPossibleSystemItems:(id)a3;
- (void)_setPrefersCollapsedRepresentationInToolbar:(BOOL)a3;
- (void)_setSearchBarViewItem:(BOOL)a3;
- (void)_setSecondaryActionsProvider:(id)a3;
- (void)_setShowsBackButtonIndicator:(BOOL)a3;
- (void)_setShowsChevron:(BOOL)a3;
- (void)_setSystemItem:(int64_t)a3;
- (void)_setWantsThreeUp:(BOOL)a3;
- (void)_setWidth:(double)a3;
- (void)_triggerActionForEvent:(id)a3 fallbackSender:(id)a4;
- (void)_updateForAutomaticSelection;
- (void)_updateView;
- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect;
- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)forcedSelectionOfMenu:(id)a3 willChangeTo:(id)a4;
- (void)removeAllSymbolEffects;
- (void)removeAllSymbolEffectsWithOptions:(NSSymbolEffectOptions *)options animated:(BOOL)animated;
- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect;
- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated;
- (void)setAction:(SEL)action;
- (void)setBackButtonBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;
- (void)setBackButtonBackgroundVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics;
- (void)setBackButtonTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(UIBarMetrics)barMetrics;
- (void)setBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state style:(UIBarButtonItemStyle)style barMetrics:(UIBarMetrics)barMetrics;
- (void)setBackgroundVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics;
- (void)setChangesSelectionAsPrimaryAction:(BOOL)changesSelectionAsPrimaryAction;
- (void)setCustomView:(UIView *)customView;
- (void)setEnabled:(BOOL)a3;
- (void)setHidden:(BOOL)hidden;
- (void)setHidesSharedBackground:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageInsets:(UIEdgeInsets)a3;
- (void)setIsMinibarView:(BOOL)a3;
- (void)setLandscapeImagePhone:(id)a3;
- (void)setLandscapeImagePhoneInsets:(UIEdgeInsets)a3;
- (void)setLargeContentSizeImage:(id)a3;
- (void)setLargeContentSizeImageInsets:(UIEdgeInsets)a3;
- (void)setMenu:(UIMenu *)menu;
- (void)setMenuRepresentation:(UIMenuElement *)menuRepresentation;
- (void)setPossibleTitles:(NSSet *)possibleTitles;
- (void)setPreferredMenuElementOrder:(UIContextMenuConfigurationElementOrder)preferredMenuElementOrder;
- (void)setPrimaryAction:(UIAction *)primaryAction;
- (void)setSecondaryActionsArePrimary:(BOOL)a3;
- (void)setSelected:(BOOL)selected;
- (void)setSharesBackground:(BOOL)a3;
- (void)setShouldUseButtonPlatters:(BOOL)a3;
- (void)setSpringLoaded:(BOOL)a3;
- (void)setStyle:(UIBarButtonItemStyle)style;
- (void)setSymbolAnimationEnabled:(BOOL)symbolAnimationEnabled;
- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition;
- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition options:(NSSymbolEffectOptions *)options;
- (void)setTarget:(id)target;
- (void)setTintColor:(UIColor *)tintColor;
- (void)setTitle:(id)a3;
- (void)setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(UIBarMetrics)barMetrics;
- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)setView:(id)a3;
- (void)setWidth:(CGFloat)width;
@end

@implementation UIBarButtonItem

- (UIBarButtonItem)init
{
  v5.receiver = self;
  v5.super_class = UIBarButtonItem;
  v2 = [(UIBarItem *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIBarButtonItem *)v2 setEnabled:1];
    [(UIBarButtonItem *)v3 setSharesBackground:1];
  }

  return v3;
}

- (BOOL)_menuIsPrimary
{
  v2 = (*&self->_barButtonItemFlags >> 17) & 3;
  if (v2)
  {
    return v2 != 1;
  }

  if ((self->_menu || self->_secondaryActionsProvider) && !self->_action)
  {
    return self->_primaryAction == 0;
  }

  return 0;
}

- (void)_updateView
{
  if ((*(&self->_barButtonItemFlags + 1) & 0x20) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _itemStandardViewNeedsUpdate:self];
LABEL_21:

      return;
    }

    view = self->_view;
    if (!view)
    {
      goto LABEL_21;
    }

    v6 = [(UIView *)view superview];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v6;
          [(UIView *)self->_view removeFromSuperview];
          v16 = self->_view;
          self->_view = 0;

          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __30__UIBarButtonItem__updateView__block_invoke;
          v22[3] = &unk_1E70F35B8;
          v22[4] = self;
          v23 = v15;
          v17 = v15;
          [UIView performWithoutAnimation:v22];
        }
      }

      else
      {
        v18 = self->_view;
        self->_view = 0;
      }

      goto LABEL_20;
    }

    v7 = objc_loadWeakRetained(&self->__owningNavigationItem);
    v8 = [v7 _navigationBar];

    if ((*&self->_barButtonItemFlags & 0x10) != 0)
    {
LABEL_17:
      [(UIView *)self->_view setStyle:2 * ([(UIBarButtonItem *)self style]== UIBarButtonItemStyleDone)];
      v24 = 0u;
      v25 = 0u;
      -[UIBarButtonItem _getNavBarEdgeSizeAdjust:imageInsets:landscape:](self, "_getNavBarEdgeSizeAdjust:imageInsets:landscape:", 0, &v24, [v8 isMinibar]);
      [(UIView *)self->_view setImageEdgeInsets:v24, v25];
      v19 = self->_view;
      appearanceStorage = self->_appearanceStorage;
      v21 = objc_getAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey);
      [(UIView *)v19 _applyBarButtonAppearanceStorage:appearanceStorage withTaggedSelectors:v21];

      if (self->__showsBackButtonIndicator)
      {
        [v8 _updateBackIndicatorImage];
      }

LABEL_20:
      goto LABEL_21;
    }

    v9 = self->_view;
    v10 = [(UIBarButtonItem *)self title];
    [(UIView *)v9 setTitle:v10];

    v11 = self->_view;
    if ([v8 isMinibar])
    {
      v12 = [(UIBarButtonItem *)self landscapeImagePhone];
      if (!v12)
      {
        v13 = [(UIBarButtonItem *)self image];
        [(UIView *)v11 setImage:v13];

        v14 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v12 = [(UIBarButtonItem *)self image];
    }

    v14 = v12;
    [(UIView *)v11 setImage:v12];
    goto LABEL_16;
  }
}

- (id)image
{
  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_image;
  }

  return v3;
}

- (UIView)customView
{
  if ((*(&self->_barButtonItemFlags + 1) & 0x20) != 0)
  {
    return self->_view;
  }

  else
  {
    return 0;
  }
}

- (void)_updateForAutomaticSelection
{
  v3 = [(UIBarButtonItem *)self _isPopUpMenuButtonWithMenu:self->_menu];
  menu = self->_menu;
  if (v3)
  {
    [(UIMenu *)menu setForceAutomaticSelection:1];
    [(UIMenu *)self->_menu setForcedAutomaticSelectionDelegate:self];
    v5 = [(UIMenu *)self->_menu selectedElements];
    v6 = [v5 firstObject];
    v7 = [v6 title];
    [(UIBarButtonItem *)self setTitle:v7];

    v11 = [(UIMenu *)self->_menu selectedElements];
    v8 = [v11 firstObject];
    v9 = [v8 image];
    [(UIBarButtonItem *)self setImage:v9];
  }

  else
  {
    [(UIMenu *)menu setForcedAutomaticSelectionDelegate:0];
    v10 = self->_menu;

    [(UIMenu *)v10 setForceAutomaticSelection:0];
  }
}

- (UIBarButtonItemGroup)buttonGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonGroup);

  return WeakRetained;
}

- (BOOL)_requiresOwnSection
{
  if ([(UIBarButtonItem *)self hidesSharedBackground]|| ![(UIBarButtonItem *)self sharesBackground]|| [(UIBarButtonItem *)self _prefersFilledAppearance]|| [(UIBarButtonItem *)self isSystemItem]&& [(UIBarButtonItem *)self systemItem]== 24)
  {
    return 1;
  }

  if (![(UIBarButtonItem *)self hasTitle]|| [(UIBarButtonItem *)self hasImage])
  {
    return 0;
  }

  v5 = [(UIBarButtonItem *)self customView];
  v3 = v5 == 0;

  return v3;
}

- (UIBarButtonItemStyle)style
{
  v2 = (*&self->_barButtonItemFlags >> 1) & 7;
  if (v2 == 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (BOOL)hasTitle
{
  v2 = [(UIBarButtonItem *)self resolvedTitle];
  v3 = v2 != 0;

  return v3;
}

- (id)resolvedTitle
{
  barButtonItemFlags = self->_barButtonItemFlags;
  if ((barButtonItemFlags & 0x10) != 0)
  {
    v3 = BarButtonItemTitleForSystemItem((barButtonItemFlags >> 5));
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIBarButtonItem;
    v3 = [(UIBarItem *)&v5 resolvedTitle];
  }

  return v3;
}

- (id)title
{
  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_title;
  }

  return v3;
}

- (NSArray)_gestureRecognizers
{
  if (self->_gestureRecognizers)
  {
    return self->_gestureRecognizers;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)_interactions
{
  if (self->_interactions)
  {
    return self->_interactions;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (SEL)action
{
  if (self->_primaryAction || !self->_action)
  {
    return 0;
  }

  else
  {
    return self->_action;
  }
}

- (UIBarButtonItemGroup)_owningButtonGroup
{
  if (self->_groupRepresentative)
  {
    WeakRetained = objc_loadWeakRetained(&self->_buttonGroup);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (BOOL)isSpringLoaded
{
  barButtonItemFlags = self->_barButtonItemFlags;
  if ((*&barButtonItemFlags & 0x2000) != 0 || (*&barButtonItemFlags & 0x10) != 0 && (*&barButtonItemFlags >> 5) - 5 < 2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return (*&barButtonItemFlags >> 21) & 1;
  }

  return v3;
}

- (BOOL)hasImage
{
  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    v5 = [(UIBarButtonItem *)self systemItem];

    return BarButtonItemResolveSystemImage(v5, 0, 0, 0);
  }

  else
  {
    v2 = [(UIBarButtonItem *)self image];
    v3 = v2 != 0;

    return v3;
  }
}

- (UIOffset)_accessoryOffset
{
  horizontal = self->_accessoryOffset.horizontal;
  vertical = self->_accessoryOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (_UITypedStorage)_typedStorage
{
  if (a1)
  {
    v2 = *(a1 + 296);
    if (!v2)
    {
      v2 = objc_alloc_init(_UITypedStorage);
      objc_storeStrong((a1 + 296), v2);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)hash
{
  if (_UIUseModernBars() && [(UIBarButtonItem *)self isSpaceItem])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UIBarButtonItem;
  return [(UIBarButtonItem *)&v4 hash];
}

- (BOOL)_updateMenuInPlace
{
  WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained _itemDidUpdateMenu:self fromMenu:self->_menu];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  if (![(UIBarButtonItem *)self isCustomViewItem]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIView *)self->_view removeTarget:self action:sel__sendAction_withEvent_ forControlEvents:0x2000];
  }

  v3.receiver = self;
  v3.super_class = UIBarButtonItem;
  [(UIBarButtonItem *)&v3 dealloc];
}

- (void)_setPrefersCollapsedRepresentationInToolbar:(BOOL)a3
{
  v4 = self;
  sub_188C04C74(a3);
}

+ (UIBarButtonItem)flexibleSpaceItem
{
  v2 = [objc_alloc(objc_opt_class()) initWithBarButtonSystemItem:5 primaryAction:0];

  return v2;
}

- (UIEdgeInsets)_additionalSelectionInsets
{
  top = self->_additionalSelectionInsets.top;
  left = self->_additionalSelectionInsets.left;
  bottom = self->_additionalSelectionInsets.bottom;
  right = self->_additionalSelectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
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

- (BOOL)_prefersCollapsedRepresentationInToolbar
{
  v2 = self;
  v3 = sub_188C66288();
  swift_getKeyPath();
  sub_188C61AF0();
  sub_18A4A2C08();

  LOBYTE(v2) = *(v3 + 16);

  return v2;
}

- (UISearchController)_associatedSearchController
{
  WeakRetained = objc_loadWeakRetained(&self->_vendingNavigationItem);
  v4 = [WeakRetained _searchControllerIfAllowed];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_associatedSearchController);
  }

  v7 = v6;

  return v7;
}

- (UINavigationItem)_vendingNavigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_vendingNavigationItem);

  return WeakRetained;
}

- (NSString)description
{
  v18.receiver = self;
  v18.super_class = UIBarButtonItem;
  v3 = [(UIBarButtonItem *)&v18 description];
  v4 = [v3 mutableCopy];

  if ([(UIBarButtonItem *)self isCustomViewItem])
  {
    [v4 appendFormat:@" view=%p", self->_view];
  }

  if (self->_primaryAction)
  {
    [v4 appendFormat:@" primaryAction=%@", self->_primaryAction];
  }

  else if (self->_action)
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    v15 = NSStringFromSelector(action);
    [v4 appendFormat:@" target=%p action=%@", WeakRetained, v15];
  }

  menu = self->_menu;
  if (menu)
  {
    v6 = (*&self->_barButtonItemFlags >> 17) & 3;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
LABEL_18:
        [v4 appendFormat:@" menu=%p", menu];
        goto LABEL_19;
      }

      v7 = @" menuForcedOnTouchDown";
    }

    else if (v6)
    {
      v7 = @" menuForcedOnLongPress";
    }

    else if ([(UIBarButtonItem *)self _menuIsPrimary])
    {
      v7 = @" menuOnTouchDown";
    }

    else
    {
      v7 = @" menuOnLongPress";
    }

    [v4 appendString:v7];
    menu = self->_menu;
    goto LABEL_18;
  }

LABEL_19:
  if ([(UIBarButtonItem *)self isSystemItem])
  {
    v10 = [(UIBarButtonItem *)self systemItem];
    switch(v10)
    {
      case 0:
        v11 = @" systemItem=Done";
        goto LABEL_61;
      case 1:
        v11 = @" systemItem=Cancel";
        goto LABEL_61;
      case 2:
        v11 = @" systemItem=Edit";
        goto LABEL_61;
      case 3:
        v11 = @" systemItem=Save";
        goto LABEL_61;
      case 4:
        v11 = @" systemItem=Add";
        goto LABEL_61;
      case 5:
        v11 = @" systemItem=FlexibleSpace";
        goto LABEL_61;
      case 6:
        [v4 appendFormat:@" systemItem=FixedSpace width=%f", *&self->_width];
        break;
      case 7:
        v11 = @" systemItem=Compose";
        goto LABEL_61;
      case 8:
        v11 = @" systemItem=Reply";
        goto LABEL_61;
      case 9:
        v11 = @" systemItem=Action";
        goto LABEL_61;
      case 10:
        v11 = @" systemItem=Organize";
        goto LABEL_61;
      case 11:
        v11 = @" systemItem=Bookmarks";
        goto LABEL_61;
      case 12:
        v11 = @" systemItem=Search";
        goto LABEL_61;
      case 13:
        v11 = @" systemItem=Refresh";
        goto LABEL_61;
      case 14:
        v11 = @" systemItem=Stop";
        goto LABEL_61;
      case 15:
        v11 = @" systemItem=Camera";
        goto LABEL_61;
      case 16:
        v11 = @" systemItem=Trash";
        goto LABEL_61;
      case 17:
        v11 = @" systemItem=Play";
        goto LABEL_61;
      case 18:
        v11 = @" systemItem=Pause";
        goto LABEL_61;
      case 19:
        v11 = @" systemItem=Rewind";
        goto LABEL_61;
      case 20:
        v11 = @" systemItem=Forward";
        goto LABEL_61;
      case 21:
        v11 = @" systemItem=Undo";
        goto LABEL_61;
      case 22:
        v11 = @" systemItem=Redo";
        goto LABEL_61;
      case 23:
        goto LABEL_36;
      case 24:
        v11 = @" systemItem=Close";
LABEL_61:
        [v4 appendString:v11];
        break;
      case 25:
        v14 = @" systemItem=WritingTools";
        goto LABEL_30;
      default:
        if (v10 == 205)
        {
          v14 = @" systemItem=InlineSearch";
          goto LABEL_30;
        }

LABEL_36:
        [v4 appendFormat:@" systemItem=%li", -[UIBarButtonItem systemItem](self, "systemItem")];
        break;
    }
  }

  else if (![(UIBarButtonItem *)self isCustomViewItem])
  {
    image = self->_image;
    if (image)
    {
      v13 = [(UIImage *)image _conciseDescription];
      [v4 appendFormat:@" image=%@", v13];

      if (self->_landscapeImagePhone)
      {
        [v4 appendFormat:@" landscapeImagePhone=%@", self->_landscapeImagePhone];
      }
    }

    else if (self->_title)
    {
      [v4 appendFormat:@" title='%@'", self->_title];
    }

    if (self->_width != 0.0)
    {
      width = self->_width;
      v14 = @" width=%f";
LABEL_30:
      [v4 appendFormat:v14, *&width];
    }
  }

  return v4;
}

- (CGFloat)width
{
  if ((*&self->_barButtonItemFlags & 0x10) == 0)
  {
    return self->_width;
  }

  result = 0.0;
  if ((*&self->_barButtonItemFlags & 0x1FE0) == 0xC0)
  {
    return self->_width;
  }

  return result;
}

- (UIView)_viewForPresenting
{
  WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained _viewForPresenting:self];
  }

  else
  {
    v5 = [(UIBarButtonItem *)self _itemForPresenting];
    v4 = v5[23];
  }

  return v4;
}

- (UIBarButtonItem)_itemForPresenting
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonGroup);
  v4 = [(UIBarButtonItem *)self view];
  v5 = [v4 window];

  if (v5)
  {
LABEL_10:
    v6 = self;
    goto LABEL_11;
  }

  if (self->_groupRepresentative || ![WeakRetained isDisplayingRepresentativeItem])
  {
    v7 = objc_loadWeakRetained(&self->__viewOwner);
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 _overflowFallbackItem];
        if (v8)
        {
          v9 = v8;

          goto LABEL_12;
        }
      }
    }

    goto LABEL_10;
  }

  v6 = [WeakRetained representativeItem];
LABEL_11:
  v9 = v6;
LABEL_12:

  return v9;
}

- (CGRect)_rectForPresenting
{
  WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _rectForPresenting:self];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v12 = [(UIBarButtonItem *)self _itemForPresenting];
    v13 = [(UIBarButtonItem *)self _viewForPresenting];
    v14 = [v12 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = [v12 view];
      v17 = [v16 visualProvider];
      v18 = [v17 contentView];

      [v18 bounds];
      [v18 convertRect:v13 toView:?];
      v5 = v19;
      v7 = v20;
      v9 = v21;
      v11 = v22;
    }

    else
    {
      [v13 bounds];
      v5 = v23;
      v7 = v24;
      v9 = v25;
      v11 = v26;
    }
  }

  v27 = v5;
  v28 = v7;
  v29 = v9;
  v30 = v11;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (UIBarButtonItemBadge)badge
{
  v2 = self;
  v3 = UIBarButtonItem.__badge.getter();

  return v3;
}

- (_UIBarButtonItemBadge)_badge
{
  v2 = self;
  v3 = UIBarButtonItem.___badge.getter();

  return v3;
}

- (UIBarButtonItem)initWithImage:(UIImage *)image style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action
{
  v10 = image;
  v11 = target;
  v12 = [(UIBarButtonItem *)self init];
  v13 = v12;
  if (v12)
  {
    [(UIBarButtonItem *)v12 setImage:v10];
    [(UIBarButtonItem *)v13 setStyle:style];
    [(UIBarButtonItem *)v13 setTarget:v11];
    [(UIBarButtonItem *)v13 setAction:action];
  }

  return v13;
}

- (UIBarButtonItem)initWithImage:(UIImage *)image landscapeImagePhone:(UIImage *)landscapeImagePhone style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action
{
  v12 = image;
  v13 = landscapeImagePhone;
  v14 = target;
  v15 = [(UIBarButtonItem *)self init];
  v16 = v15;
  if (v15)
  {
    [(UIBarButtonItem *)v15 setImage:v12];
    [(UIBarButtonItem *)v16 setLandscapeImagePhone:v13];
    [(UIBarButtonItem *)v16 setStyle:style];
    [(UIBarButtonItem *)v16 setTarget:v14];
    [(UIBarButtonItem *)v16 setAction:action];
  }

  return v16;
}

- (UIBarButtonItem)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = title;
  v11 = target;
  v12 = [(UIBarButtonItem *)self init];
  v13 = v12;
  if (v12)
  {
    [(UIBarButtonItem *)v12 setTitle:v10];
    [(UIBarButtonItem *)v13 setStyle:style];
    [(UIBarButtonItem *)v13 setTarget:v11];
    [(UIBarButtonItem *)v13 setAction:action];
    if (v10)
    {
      if (style == UIBarButtonItemStyleDone)
      {
        v14 = objc_alloc(MEMORY[0x1E695DF20]);
        v19[0] = v10;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v16 = [v14 initWithObjects:v15 forKeys:&unk_1EFE2B4E8];
        stylesForSizingTitles = v13->_stylesForSizingTitles;
        v13->_stylesForSizingTitles = v16;
      }
    }
  }

  return v13;
}

- (UIBarButtonItem)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action
{
  v8 = target;
  v9 = [(UIBarButtonItem *)self init];
  v10 = v9;
  if (v9)
  {
    [(UIBarButtonItem *)v9 _initializeSystemItem:systemItem];
    [(UIBarButtonItem *)v10 setTarget:v8];
    [(UIBarButtonItem *)v10 setAction:action];
    [(UIBarButtonItem *)v10 setHidden:BarButtonItemSystemItemIsHidden(systemItem)];
  }

  return v10;
}

- (UIBarButtonItem)initWithPrimaryAction:(UIAction *)primaryAction menu:(UIMenu *)menu
{
  v6 = primaryAction;
  v7 = menu;
  v8 = [(UIBarButtonItem *)self init];
  v9 = v8;
  if (v8)
  {
    [(UIBarButtonItem *)v8 setPrimaryAction:v6];
    [(UIBarButtonItem *)v9 setMenu:v7];
  }

  return v9;
}

- (UIBarButtonItem)initWithBarButtonSystemItem:(UIBarButtonSystemItem)systemItem primaryAction:(UIAction *)primaryAction menu:(UIMenu *)menu
{
  v8 = primaryAction;
  v9 = menu;
  v10 = [(UIBarButtonItem *)self init];
  v11 = v10;
  if (v10)
  {
    [(UIBarButtonItem *)v10 _initializeSystemItem:systemItem];
    [(UIBarButtonItem *)v11 setPrimaryAction:v8];
    [(UIBarButtonItem *)v11 setMenu:v9];
    [(UIBarButtonItem *)v11 setHidden:BarButtonItemSystemItemIsHidden(systemItem)];
  }

  return v11;
}

- (UIBarButtonItem)initWithTitle:(NSString *)title image:(UIImage *)image target:(id)target action:(SEL)action menu:(UIMenu *)menu
{
  v12 = title;
  v13 = image;
  v14 = target;
  v15 = menu;
  v16 = [(UIBarButtonItem *)self init];
  v17 = v16;
  if (v16)
  {
    [(UIBarButtonItem *)v16 setTitle:v12];
    [(UIBarButtonItem *)v17 setImage:v13];
    [(UIBarButtonItem *)v17 setTarget:v14];
    [(UIBarButtonItem *)v17 setAction:action];
    [(UIBarButtonItem *)v17 setMenu:v15];
  }

  return v17;
}

+ (UIBarButtonItem)fixedSpaceItemOfWidth:(CGFloat)width
{
  v4 = [objc_alloc(objc_opt_class()) initWithBarButtonSystemItem:6 primaryAction:0];
  [v4 setWidth:width];

  return v4;
}

- (UIBarButtonItem)initWithCustomView:(UIView *)customView
{
  v4 = customView;
  v5 = [(UIBarButtonItem *)self init];
  v6 = v5;
  if (v5)
  {
    [(UIBarButtonItem *)v5 setCustomView:v4];
  }

  return v6;
}

- (UIBarButtonItem)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v41.receiver = self;
  v41.super_class = UIBarButtonItem;
  v5 = [(UIBarItem *)&v41 initWithCoder:v4];
  if (v5)
  {
    v5->_barButtonItemFlags = (*&v5->_barButtonItemFlags & 0xFFFFFFFE | [(NSCoder *)v4 decodeBoolForKey:@"UIEnabled"]);
    if ([(NSCoder *)v4 decodeBoolForKey:@"UIIsSystemItem"])
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    v5->_barButtonItemFlags = (*&v5->_barButtonItemFlags & 0xFFFFFFEF | v6);
    v5->_barButtonItemFlags = (*&v5->_barButtonItemFlags & 0xFFFFE01F | (32 * [(NSCoder *)v4 decodeIntegerForKey:@"UISystemItem"]));
    v7 = [(NSCoder *)v4 decodeObjectForKey:@"UIAction"];
    v8 = NSSelectorFromString(v7);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v5->_action = v9;

    v10 = [(NSCoder *)v4 decodeObjectForKey:@"UITarget"];
    objc_storeWeak(&v5->_target, v10);

    v11 = [(NSCoder *)v4 decodeObjectForKey:@"UITitle"];
    title = v5->_title;
    v5->_title = v11;

    v13 = [(NSCoder *)v4 decodeObjectForKey:@"UIImage"];
    image = v5->_image;
    v5->_image = v13;

    v15 = [(NSCoder *)v4 decodeObjectForKey:@"UILandscapeImagePhone"];
    landscapeImagePhone = v5->_landscapeImagePhone;
    v5->_landscapeImagePhone = v15;

    [(NSCoder *)v4 decodeFloatForKey:@"UIWidth"];
    v5->_width = v17;
    [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UIImageInsets"];
    v5->_imageInsets.top = v18;
    v5->_imageInsets.left = v19;
    v5->_imageInsets.bottom = v20;
    v5->_imageInsets.right = v21;
    [(NSCoder *)v4 decodeUIEdgeInsetsForKey:@"UILandscapeImagePhoneInsets"];
    v5->_landscapeImagePhoneInsets.top = v22;
    v5->_landscapeImagePhoneInsets.left = v23;
    v5->_landscapeImagePhoneInsets.bottom = v24;
    v5->_landscapeImagePhoneInsets.right = v25;
    *&v5->_barButtonItemFlags &= 0xFFFFFFF1;
    [(UIBarItem *)v5 setTag:[(NSCoder *)v4 decodeIntegerForKey:@"UITag"]];
    v26 = [(NSCoder *)v4 decodeObjectForKey:@"UICustomView"];
    view = v5->_view;
    v5->_view = v26;

    v5->_barButtonItemFlags = (*&v5->_barButtonItemFlags & 0xFFFFDFFF | ((v5->_view != 0) << 13));
    if ([(NSCoder *)v4 containsValueForKey:@"UIStyle"])
    {
      v5->_barButtonItemFlags = (*&v5->_barButtonItemFlags & 0xFFFFFFF1 | (2 * ([(NSCoder *)v4 decodeIntegerForKey:@"UIStyle"]& 7)));
    }

    v5->_hidden = [(NSCoder *)v4 decodeBoolForKey:@"UIItemHidden"];
    if ([(NSCoder *)v4 containsValueForKey:@"UIHidesSharedBG"])
    {
      if ([(NSCoder *)v4 decodeBoolForKey:@"UIHidesSharedBG"])
      {
        v28 = 0x8000000;
      }

      else
      {
        v28 = 0;
      }

      v29 = *&v5->_barButtonItemFlags & 0xF7FFFFFF | v28;
    }

    else
    {
      v29 = *&v5->_barButtonItemFlags & 0xF7FFFFFF | (((v5->_barButtonItemFlags >> 5) - 5 < 2) << 27);
    }

    v5->_barButtonItemFlags = v29;
    if ([(NSCoder *)v4 containsValueForKey:@"UISharesBG"])
    {
      if ([(NSCoder *)v4 decodeBoolForKey:@"UISharesBG"])
      {
        v30 = 0x4000000;
      }

      else
      {
        v30 = 0;
      }

      v31 = *&v5->_barButtonItemFlags & 0xFBFFFFFF | v30;
    }

    else
    {
      v31 = *&v5->_barButtonItemFlags | 0x4000000;
    }

    v5->_barButtonItemFlags = v31;
    v32 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v32;

    v34 = [(NSCoder *)v4 decodeObjectForKey:@"UITintColor"];
    if (v34)
    {
      [(UIBarButtonItem *)v5 setTintColor:v34];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UISpringLoaded"])
    {
      [(UIBarButtonItem *)v5 setSpringLoaded:[(NSCoder *)v4 decodeBoolForKey:@"UISpringLoaded"]];
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIBarButtonMenu"])
    {
      v35 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIBarButtonMenu"];
      menu = v5->_menu;
      v5->_menu = v35;
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UIBarButtonSelectionAsPrimary"])
    {
      if ([(NSCoder *)v4 decodeBoolForKey:@"UIBarButtonSelectionAsPrimary"])
      {
        v37 = 0x1000000;
      }

      else
      {
        v37 = 0;
      }

      v5->_barButtonItemFlags = (*&v5->_barButtonItemFlags & 0xFEFFFFFF | v37);
    }

    [(UIBarButtonItem *)v5 _updateForAutomaticSelection];
    v38 = [(NSCoder *)v4 decodeObjectForKey:@"UIMenuRepresentation"];
    menuRepresentation = v5->_menuRepresentation;
    v5->_menuRepresentation = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = UIBarButtonItem;
  [(UIBarItem *)&v24 encodeWithCoder:v4];
  v5 = [(UIBarButtonItem *)self customView];

  if (v5)
  {
    v6 = [(UIBarButtonItem *)self customView];
    [v4 encodeObject:v6 forKey:@"UICustomView"];
  }

  barButtonItemFlags = self->_barButtonItemFlags;
  if (*&barButtonItemFlags)
  {
    [v4 encodeBool:1 forKey:@"UIEnabled"];
    barButtonItemFlags = self->_barButtonItemFlags;
  }

  if ((*&barButtonItemFlags & 0x10) != 0)
  {
    [v4 encodeBool:1 forKey:@"UIIsSystemItem"];
    [v4 encodeInteger:(self->_barButtonItemFlags >> 5) forKey:@"UISystemItem"];
    barButtonItemFlags = self->_barButtonItemFlags;
  }

  v8 = (*&barButtonItemFlags >> 1) & 7;
  if (v8)
  {
    [v4 encodeInteger:v8 forKey:@"UIStyle"];
  }

  if (self->_hidden)
  {
    [v4 encodeBool:1 forKey:@"UIItemHidden"];
  }

  if ([(UIBarItem *)self tag])
  {
    [v4 encodeInteger:-[UIBarItem tag](self forKey:{"tag"), @"UITag"}];
  }

  action = self->_action;
  if (action)
  {
    v10 = NSStringFromSelector(action);
    [v4 encodeObject:v10 forKey:@"UIAction"];
  }

  if ([(UIBarButtonItem *)self hidesSharedBackground])
  {
    [v4 encodeBool:1 forKey:@"UIHidesSharedBG"];
  }

  if (![(UIBarButtonItem *)self sharesBackground])
  {
    [v4 encodeBool:0 forKey:@"UISharesBG"];
  }

  v11 = [(UIBarButtonItem *)self identifier];

  if (v11)
  {
    v12 = [(UIBarButtonItem *)self identifier];
    [v4 encodeObject:v12 forKey:@"UIIdentifier"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    [v4 encodeConditionalObject:WeakRetained forKey:@"UITarget"];
  }

  title = self->_title;
  if (title)
  {
    [v4 encodeObject:title forKey:@"UITitle"];
  }

  width = self->_width;
  if (width != 0.0)
  {
    *&width = width;
    [v4 encodeFloat:@"UIWidth" forKey:width];
  }

  image = self->_image;
  if (image)
  {
    [v4 encodeObject:image forKey:@"UIImage"];
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_imageInsets.top), vceqzq_f64(*&self->_imageInsets.bottom))))))
  {
    [(UIBarButtonItem *)self imageInsets];
    [v4 encodeUIEdgeInsets:@"UIImageInsets" forKey:?];
  }

  landscapeImagePhone = self->_landscapeImagePhone;
  if (landscapeImagePhone)
  {
    [v4 encodeObject:landscapeImagePhone forKey:@"UILandscapeImagePhone"];
  }

  v18 = *&self->_landscapeImagePhoneInsets.top;
  v19 = *&self->_landscapeImagePhoneInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v18), vceqzq_f64(v19))))))
  {
    [v4 encodeUIEdgeInsets:@"UILandscapeImagePhoneInsets" forKey:{*&v18, *&v19}];
  }

  v20 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage tintColor];

  if (v20)
  {
    v21 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage tintColor];
    [v4 encodeObject:v21 forKey:@"UITintColor"];
  }

  if ([(UIBarButtonItem *)self isSpringLoaded])
  {
    [v4 encodeBool:1 forKey:@"UISpringLoaded"];
  }

  menu = self->_menu;
  if (menu)
  {
    [v4 encodeObject:menu forKey:@"UIBarButtonMenu"];
  }

  if (*(&self->_barButtonItemFlags + 3))
  {
    [v4 encodeBool:1 forKey:@"UIBarButtonSelectionAsPrimary"];
  }

  menuRepresentation = self->_menuRepresentation;
  if (menuRepresentation)
  {
    [v4 encodeObject:menuRepresentation forKey:@"UIMenuRepresentation"];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if ((*&self->_barButtonItemFlags & 1) != a3)
  {
    self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFFFFFFE | a3);
    if (objc_opt_respondsToSelector())
    {
      [(UIView *)self->_view setEnabled:*&self->_barButtonItemFlags & 1];
    }

    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    if (WeakRetained)
    {
      [WeakRetained _itemDidChangeEnabledState:self];
    }

    [(UIBarButtonItem *)self _updateView];
  }
}

- (void)setStyle:(UIBarButtonItemStyle)style
{
  barButtonItemFlags = self->_barButtonItemFlags;
  if (((barButtonItemFlags >> 1) & 7) != style)
  {
    self->_barButtonItemFlags = (barButtonItemFlags & 0xFFFFFFF1 | (2 * (style & 7)));
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained _itemDidChangePlatterizationPreference:self];
    }

    [(UIBarButtonItem *)self _updateView];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*&self->_barButtonItemFlags & 0x10) == 0 && self->_title != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      title = self->_title;
      self->_title = v7;

      [(UIBarButtonItem *)self _updateView];
      v5 = v9;
    }
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if ((*&self->_barButtonItemFlags & 0x10) == 0 && self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(UIBarButtonItem *)self _updateView];
    v5 = v6;
  }
}

- (void)setLandscapeImagePhone:(id)a3
{
  v5 = a3;
  if ((*&self->_barButtonItemFlags & 0x10) == 0 && self->_landscapeImagePhone != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_landscapeImagePhone, a3);
    [(UIBarButtonItem *)self _updateView];
    v5 = v6;
  }
}

- (id)landscapeImagePhone
{
  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_landscapeImagePhone;
  }

  return v3;
}

- (void)setLandscapeImagePhoneInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_landscapeImagePhoneInsets.top), vceqq_f64(v4, *&self->_landscapeImagePhoneInsets.bottom)))) & 1) == 0)
  {
    self->_landscapeImagePhoneInsets = a3;
    [(UIBarButtonItem *)self _updateView];
  }
}

- (UIEdgeInsets)landscapeImagePhoneInsets
{
  top = self->_landscapeImagePhoneInsets.top;
  left = self->_landscapeImagePhoneInsets.left;
  bottom = self->_landscapeImagePhoneInsets.bottom;
  right = self->_landscapeImagePhoneInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
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
    [(UIBarButtonItem *)self _updateView];
  }
}

- (id)largeContentSizeImage
{
  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIBarButtonItem;
    v3 = [(UIBarItem *)&v5 largeContentSizeImage];
  }

  return v3;
}

- (void)setLargeContentSizeImage:(id)a3
{
  if ((*&self->_barButtonItemFlags & 0x10) == 0)
  {
    v3.receiver = self;
    v3.super_class = UIBarButtonItem;
    [(UIBarItem *)&v3 setLargeContentSizeImage:a3];
  }
}

- (UIEdgeInsets)largeContentSizeImageInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ((*&self->_barButtonItemFlags & 0x10) == 0)
  {
    v6.receiver = self;
    v6.super_class = UIBarButtonItem;
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
  if ((*&self->_barButtonItemFlags & 0x10) == 0)
  {
    v3.receiver = self;
    v3.super_class = UIBarButtonItem;
    [(UIBarItem *)&v3 setLargeContentSizeImageInsets:a3.top, a3.left, a3.bottom, a3.right];
  }
}

- (void)setWidth:(CGFloat)width
{
  if ((*&self->_barButtonItemFlags & 0x10) == 0 || (*&self->_barButtonItemFlags & 0x1FE0) == 0xC0)
  {
    [(UIBarButtonItem *)self _setWidth:width];
  }
}

- (void)_setWidth:(double)a3
{
  if (self->_width != a3)
  {
    self->_width = a3;
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _itemDidChangeWidth:self];
    }

    else
    {
      [(UIBarButtonItem *)self _updateView];
    }
  }
}

- (void)_setButtonGroup:(id)a3 isRepresentative:(BOOL)a4
{
  objc_storeWeak(&self->_buttonGroup, a3);
  if (a3)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0;
  }

  self->_groupRepresentative = v7;
}

- (void)_relinquishOwnership:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__viewOwner);

  v5 = WeakRetained;
  if (WeakRetained == v4)
  {
    objc_storeWeak(&self->__viewOwner, 0);
    v5 = WeakRetained;
  }
}

- (void)_triggerActionForEvent:(id)a3 fallbackSender:(id)a4
{
  v12 = a3;
  v6 = a4;
  primaryAction = self->_primaryAction;
  if (primaryAction)
  {
    [(UIAction *)primaryAction performWithSender:self target:0];
  }

  else if (self->_action)
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    if (!WeakRetained)
    {
      v9 = [(UIBarButtonItem *)self window];

      if (v6)
      {
        if (!v9)
        {
          if (self->_action)
          {
            action = self->_action;
          }

          else
          {
            action = 0;
          }

          WeakRetained = [UIApp _unswizzledTargetInChainForAction:action sender:v6];
        }
      }
    }

    if (self->_action)
    {
      v11 = self->_action;
    }

    else
    {
      v11 = 0;
    }

    [UIApp sendAction:v11 to:WeakRetained from:self forEvent:v12];
  }
}

- (void)_executeValidationHandler
{
  autoValidationHandler = self->__autoValidationHandler;
  if (autoValidationHandler)
  {
    autoValidationHandler[2](autoValidationHandler, self);
  }
}

- (void)_getMenuTitle:(id *)a3 image:(id *)a4
{
  v13 = [(UIBarButtonItem *)self resolvedTitle];
  if ([v13 length])
  {
    v7 = v13;
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  v8 = *a3;
  *a3 = v7;

  v9 = [(UIBarButtonItem *)self _imageForState:0 compact:0 type:1];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  v12 = *a4;
  *a4 = v10;
}

- (UIMenuElement)_effectiveMenuRepresentation
{
  v14[1] = *MEMORY[0x1E69E9840];
  menuRepresentation = self->_menuRepresentation;
  if (menuRepresentation)
  {
    v3 = menuRepresentation;
    goto LABEL_15;
  }

  if ([(UIBarButtonItem *)self isCustomViewItem]|| [(UIBarButtonItem *)self isSpaceItem])
  {
    v3 = 0;
    goto LABEL_15;
  }

  v12 = 0;
  v13 = 0;
  [(UIBarButtonItem *)self _getMenuTitle:&v13 image:&v12];
  if (self->_menu)
  {
    if ([(UIBarButtonItem *)self isEnabled])
    {
      v5 = [(UIMenu *)self->_menu children];
      if (![(UIBarButtonItem *)self _menuIsPrimary])
      {
        v6 = _proxyAction(self, v13, v12);
        v14[0] = v6;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        v8 = [v7 arrayByAddingObjectsFromArray:v5];

        v5 = v8;
      }

      v3 = [UIMenu menuWithTitle:v13 image:v12 identifier:0 options:0 children:v5];

      goto LABEL_14;
    }

    v10 = _proxyAction(self, v13, v12);
    v3 = v10;
    v9 = 1;
  }

  else
  {
    v3 = _proxyAction(self, v13, v12);
    [(UIMenuElement *)v3 setState:[(UIBarButtonItem *)self isSelected]];
    v9 = [(UIBarButtonItem *)self isEnabled]^ 1;
    v10 = v3;
  }

  [(UIMenuElement *)v10 setAttributes:v9];
LABEL_14:

LABEL_15:

  return v3;
}

- (void)setMenuRepresentation:(UIMenuElement *)menuRepresentation
{
  if (self->_menuRepresentation != menuRepresentation)
  {
    v4 = [(UIMenuElement *)menuRepresentation copy];
    v5 = self->_menuRepresentation;
    self->_menuRepresentation = v4;

    [(UIBarButtonItem *)self _sendNeedsToolbarUpdate];
  }
}

- (BOOL)_canProduceNSToolbarItem
{
  if (self->_hidden)
  {
    return 0;
  }

  if ([(UIBarButtonItem *)self isSpaceItem])
  {
    if ([(UIBarButtonItem *)self hidesSharedBackground])
    {
      return 0;
    }

    [(UIBarButtonItem *)self width];
    if (v4 == 0.0)
    {
      return 0;
    }
  }

  if (dyld_program_sdk_at_least())
  {
    return 1;
  }

  return ![(UIBarButtonItem *)self isSpaceItem];
}

- (UIBarButtonItemGroup)creatingFixedGroup
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = [UIBarButtonItemGroup fixedGroupWithRepresentativeItem:0 items:v2];

  return v3;
}

- (UIBarButtonItemGroup)creatingMovableGroupWithCustomizationIdentifier:(NSString *)customizationIdentifier
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = self;
  v3 = MEMORY[0x1E695DEC8];
  v4 = customizationIdentifier;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [UIBarButtonItemGroup movableGroupWithCustomizationIdentifier:v4 representativeItem:0 items:v5, v8, v9];

  return v6;
}

- (UIBarButtonItemGroup)creatingOptionalGroupWithCustomizationIdentifier:(NSString *)customizationIdentifier inDefaultCustomization:(BOOL)inDefaultCustomization
{
  v4 = inDefaultCustomization;
  v11 = *MEMORY[0x1E69E9840];
  v10 = self;
  v5 = MEMORY[0x1E695DEC8];
  v6 = customizationIdentifier;
  v7 = [v5 arrayWithObjects:&v10 count:1];
  v8 = [UIBarButtonItemGroup optionalGroupWithCustomizationIdentifier:v6 inDefaultCustomization:v4 representativeItem:0 items:v7, v10, v11];

  return v8;
}

- (void)_setPossibleItemVariations:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if ((*&self->_barButtonItemFlags & 0x10) == 0)
  {
    if ([v4 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = v5;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            v14 = [v13 title];
            v15 = [v13 style];
            if (v14)
            {
              v16 = v15;
              [v6 addObject:v14];
              if (v16 >= 2)
              {
                v17 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
                [v7 setObject:v17 forKey:v14];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v10);
      }

      [(UIBarButtonItem *)self _setStylesForSizingTitles:v7];
      [(UIBarButtonItem *)self setPossibleTitles:v6];

      v5 = v18;
    }

    else
    {
      [(UIBarButtonItem *)self _setStylesForSizingTitles:0];
      [(UIBarButtonItem *)self setPossibleTitles:0];
    }
  }
}

- (NSSet)_possibleItemVariations
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*&self->_barButtonItemFlags & 0x10) != 0 || ![(NSSet *)self->_possibleTitles count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSSet count](self->_possibleTitles, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = self->_possibleTitles;
    v4 = [(NSSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [(NSDictionary *)self->_stylesForSizingTitles objectForKey:v8];
          v10 = [UIBarButtonItem alloc];
          if (v9)
          {
            v11 = [v9 integerValue];
          }

          else
          {
            v11 = 0;
          }

          v12 = [(UIBarButtonItem *)v10 initWithTitle:v8 style:v11 target:0 action:0];
          [v3 addObject:v12];
        }

        v5 = [(NSSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (void)_setItemVariation:(id)a3
{
  if ((*&self->_barButtonItemFlags & 0x10) == 0)
  {
    v4 = a3;
    v5 = [v4 title];
    [(UIBarButtonItem *)self setTitle:v5];

    v6 = [v4 style];

    [(UIBarButtonItem *)self setStyle:v6];
  }
}

- (id)itemVariation
{
  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = [UIBarButtonItem alloc];
    v4 = [(UIBarButtonItem *)self title];
    v5 = [(UIBarButtonItem *)v3 initWithTitle:v4 style:[(UIBarButtonItem *)self style] target:0 action:0];
  }

  return v5;
}

- (void)setPossibleTitles:(NSSet *)possibleTitles
{
  v4 = possibleTitles;
  v5 = v4;
  if ((*&self->_barButtonItemFlags & 0x10) == 0)
  {
    v9 = v4;
    v6 = [(NSSet *)v4 isEqualToSet:self->_possibleTitles];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSSet *)v9 copy];
      v8 = self->_possibleTitles;
      self->_possibleTitles = v7;

      [(UIBarButtonItem *)self _updateView];
      v5 = v9;
    }
  }
}

- (void)setCustomView:(UIView *)customView
{
  v5 = customView;
  if (v5 || (*(&self->_barButtonItemFlags + 1) & 0x20) != 0)
  {
    view = self->_view;
    if (view != v5)
    {
      v15 = v5;
      v7 = [(UIView *)view superview];
      v8 = self->_view;
      objc_storeStrong(&self->_view, customView);
      self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFFFDFFF | ((self->_view != 0) << 13));
      if (self->_view && [_UIAppearance _hasCustomizationsForClass:objc_opt_class() guideClass:0])
      {
        [(UIView *)self->_view _setAppearanceIsInvalid:1];
      }

      if (objc_opt_respondsToSelector())
      {
        [(UIView *)self->_view setEnabled:*&self->_barButtonItemFlags & 1];
      }

      [(UIBarButtonItem *)self _updateView];
      WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
      v10 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained _itemCustomViewDidChange:self fromView:v8];
      }

      else if (v7)
      {
        v11 = objc_loadWeakRetained(&self->__owningNavigationItem);
        v12 = v11;
        if (v11)
        {
          v13 = [v11 _navigationBar];
        }

        else
        {
          v13 = v7;
        }

        v14 = v13;
        if (objc_opt_respondsToSelector())
        {
          [v14 _customViewChangedForButtonItem:self];
        }
      }

      [(UIView *)v8 removeFromSuperview];

      v5 = v15;
    }
  }
}

- (void)_setAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_accessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryView, a3);
    [(UIBarButtonItem *)self _updateView];
    v5 = v6;
  }
}

- (void)_setAccessoryPlacement:(int64_t)a3
{
  if (self->_accessoryPlacement != a3)
  {
    self->_accessoryPlacement = a3;
    if (self->_accessoryView)
    {
      [(UIBarButtonItem *)self _updateView];
    }
  }
}

- (void)_setAccessoryOffset:(UIOffset)a3
{
  if (vabdd_f64(a3.horizontal, self->_accessoryOffset.horizontal) > 0.0001 || vabdd_f64(a3.vertical, self->_accessoryOffset.vertical) > 0.0001)
  {
    self->_accessoryOffset = a3;
    if (self->_accessoryView)
    {
      [(UIBarButtonItem *)self _updateView];
    }
  }
}

- (id)target
{
  if (self->_primaryAction)
  {
    WeakRetained = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
  }

  return WeakRetained;
}

- (void)setTarget:(id)target
{
  v4 = target;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = dyld_program_sdk_at_least();
  v6 = v4;
  if ((v5 & 1) == 0)
  {
    v7 = [v4 allowsWeakReference];
    v6 = v4;
    if ((v7 & 1) == 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __29__UIBarButtonItem_setTarget___block_invoke;
      v9[3] = &unk_1E70F35B8;
      v10 = v4;
      v11 = self;
      if (setTarget__once != -1)
      {
        dispatch_once(&setTarget__once, v9);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = v6;

  objc_storeWeak(&self->_target, v8);
}

void __29__UIBarButtonItem_setTarget___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_0) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as a delegate. This will be a hard crash in the future. Offending object: %@ hostObject: %@", &v5, 0x16u);
  }
}

- (void)setAction:(SEL)action
{
  v5 = [(UIBarButtonItem *)self _menuIsPrimary];
  if (action)
  {
    v6 = action;
  }

  else
  {
    v6 = 0;
  }

  self->_action = v6;
  if (v5 != [(UIBarButtonItem *)self _menuIsPrimary])
  {
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    [WeakRetained _itemStandardViewNeedsUpdate:self];

    [(UIBarButtonItem *)self _updateForAutomaticSelection];
  }
}

- (void)setPrimaryAction:(UIAction *)primaryAction
{
  v4 = primaryAction;
  v5 = [(UIBarButtonItem *)self _menuIsPrimary];
  v6 = [(UIAction *)v4 copy];

  v7 = self->_primaryAction;
  self->_primaryAction = v6;

  if (v5 != [(UIBarButtonItem *)self _menuIsPrimary])
  {
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    [WeakRetained _itemStandardViewNeedsUpdate:self];

    [(UIBarButtonItem *)self _updateForAutomaticSelection];
  }

  if ((*&self->_barButtonItemFlags & 0x10) == 0)
  {
    v9 = [(UIMenuElement *)self->_primaryAction title];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(UIMenuElement *)self->_primaryAction title];
      [(UIBarButtonItem *)self setTitle:v11];
    }

    v12 = [(UIMenuElement *)self->_primaryAction image];

    if (v12)
    {
      v13 = [(UIMenuElement *)self->_primaryAction image];
      [(UIBarButtonItem *)self setImage:v13];
    }
  }
}

- (void)_initializeSystemItem:(int64_t)a3
{
  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFFFE00F | (32 * a3) | 0x10);
  if (a3)
  {
    if ((a3 - 5) <= 1)
    {
      [(UIBarButtonItem *)self setHidesSharedBackground:1];
    }
  }

  else
  {
    [(UIBarButtonItem *)self setStyle:2];
  }
}

- (void)_setSystemItem:(int64_t)a3
{
  barButtonItemFlags = self->_barButtonItemFlags;
  if ((barButtonItemFlags & 0x10) == 0 || a3 != (barButtonItemFlags >> 5))
  {
    possibleSystemItems = self->_possibleSystemItems;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    LOBYTE(possibleSystemItems) = [(NSSet *)possibleSystemItems containsObject:v7];

    if ((possibleSystemItems & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"System item (%ld) is not listed in possible system items", a3}];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    CanBeSet = BarButtonItemSystemItemCanBeSet(v8);

    if ((CanBeSet & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"System item (%ld) is not a supported system item", a3}];
    }

    self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFFFE00F | (32 * a3) | 0x10);
    v24 = 0u;
    v25 = 0u;
    v10 = [(UIView *)self->_view superview];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      WeakRetained = objc_loadWeakRetained(&self->__owningNavigationItem);
      v12 = [WeakRetained _navigationBar];

      v13 = [v12 barStyle];
      v23 = 0;
      LOWORD(v20) = [v12 isMinibar];
      [(UIBarButtonItem *)self _getSystemItemStyle:0 title:0 image:&v23 selectedImage:0 action:0 forBarStyle:v13 landscape:v20 alwaysBordered:?];
      v14 = v23;
      -[UIBarButtonItem _getNavBarEdgeSizeAdjust:imageInsets:landscape:](self, "_getNavBarEdgeSizeAdjust:imageInsets:landscape:", 0, &v24, [v12 isMinibar]);
      if ([v12 isMinibar])
      {
        if ((*&self->_barButtonItemFlags & 0x1FE0) == 0x1A0)
        {
          *&v24 = *&v24 + 2.0;
        }
      }

      v15 = [(UIBarButtonItem *)self view];
      [v15 setImageEdgeInsets:{v24, v25}];
      [v15 setImage:v14 forStates:0];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_21:

        return;
      }

      v12 = v10;
      v16 = [v12 barStyle];
      v21 = 0;
      v22 = 0;
      LOWORD(v20) = [v12 isMinibar];
      [(UIBarButtonItem *)self _getSystemItemStyle:0 title:0 image:&v22 selectedImage:&v21 action:0 forBarStyle:v16 landscape:v20 alwaysBordered:?];
      v14 = v22;
      v15 = v21;
      -[UIBarButtonItem _getToolbarSystemItemEdgeInsetsWithImageInsets:forBarStyle:landscape:alwaysBordered:](self, "_getToolbarSystemItemEdgeInsetsWithImageInsets:forBarStyle:landscape:alwaysBordered:", &v24, v16, [v12 isMinibar], 0);
      if (v14)
      {
        v17 = [(UIBarButtonItem *)self view];
        v18 = [v17 _info];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
          [v19 setImage:v14 forState:0];
          if (v15)
          {
            [v19 setImage:v15 forState:1];
          }
        }

        else
        {
          [v18 setImage:v14];
        }
      }
    }

    goto LABEL_21;
  }
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    self->_hidden = hidden;
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    [WeakRetained _itemDidChangeHiddenState:self];
  }
}

- (void)_setShowsBackButtonIndicator:(BOOL)a3
{
  if (self->__showsBackButtonIndicator != a3)
  {
    self->__showsBackButtonIndicator = a3;
    v4 = a3 ? 0x400000 : 0;
    self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFBFFFFF | v4);
    if (dyld_program_sdk_at_least())
    {
      v5 = [(UIBarButtonItem *)self _owningNavigationItem];
      [v5 updateNavigationBarButtonsAnimated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];
    }
  }
}

- (void)_setPossibleSystemItems:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  barButtonItemFlags = self->_barButtonItemFlags;
  v6 = MEMORY[0x1E695D920];
  if ((*&barButtonItemFlags & 0x10) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Button item is not a system item"];
    barButtonItemFlags = self->_barButtonItemFlags;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:(*&barButtonItemFlags >> 5)];
  v8 = [v4 containsObject:v7];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*v6 format:{@"Current system item (%ld) is not listed as a possible system item", (self->_barButtonItemFlags >> 5)}];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    v13 = *v6;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ((BarButtonItemSystemItemCanBeSet(v15) & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:v13 format:{@"System item (%ld) is unsupported as a settable system item", objc_msgSend(v15, "integerValue")}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  if (![(NSSet *)self->_possibleSystemItems isEqualToSet:v9])
  {
    v16 = [v9 copy];
    possibleSystemItems = self->_possibleSystemItems;
    self->_possibleSystemItems = v16;

    [(UIBarButtonItem *)self _updateView];
  }
}

- (void)setSelected:(BOOL)selected
{
  barButtonItemFlags = self->_barButtonItemFlags;
  if ((((*&barButtonItemFlags & 0x10000) == 0) ^ selected))
  {
    return;
  }

  if (selected)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  self->_barButtonItemFlags = (*&barButtonItemFlags & 0xFFFEFFFF | v5);
  WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _itemDidChangeSelectionState:self];
LABEL_11:
    v8 = v9;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_view setUseSelectedImage:HIWORD(*&self->_barButtonItemFlags) & 1];
    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = 0;
  if (isKindOfClass)
  {
    [(UIView *)self->_view setSelected:HIWORD(*&self->_barButtonItemFlags) & 1];
    goto LABEL_11;
  }

LABEL_12:
}

+ (id)_appearanceBlindViewClasses
{
  v6[6] = *MEMORY[0x1E69E9840];
  v2 = _appearanceBlindViewClasses_classList;
  if (!_appearanceBlindViewClasses_classList)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v6[2] = objc_opt_class();
    v6[3] = objc_opt_class();
    v6[4] = objc_opt_class();
    v6[5] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
    v4 = _appearanceBlindViewClasses_classList;
    _appearanceBlindViewClasses_classList = v3;

    v2 = _appearanceBlindViewClasses_classList;
  }

  return v2;
}

- (void)setBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state style:(UIBarButtonItemStyle)style barMetrics:(UIBarMetrics)barMetrics
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = backgroundImage;
  if (style != 8 && [(UIBarButtonItem *)self style]!= style)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"UIBarButtonItem.m" lineNumber:1747 description:@"attempt to set background image for style not matching the UIBarButtonItem's style"];
  }

  if ((barMetrics - 101) > 1)
  {
    if (!self->_appearanceStorage)
    {
      v12 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      appearanceStorage = self->_appearanceStorage;
      self->_appearanceStorage = v12;
    }

    if (state > 8 || ((1 << state) & 0x107) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v27 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v29 = state;
          _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "button background image only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", buf, 0xCu);
        }
      }

      else
      {
        v25 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A898) + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v29 = state;
          _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "button background image only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", buf, 0xCu);
        }
      }
    }

    if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0 && state != 8)
    {
      state = 1;
    }

    v15 = MEMORY[0x1E695DEC8];
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:barMetrics];
    v18 = [v15 arrayWithObjects:{v16, v17, 0}];
    _UIAppearanceTagObjectForSelector(self, sel_setBackgroundImage_forState_barMetrics_, v18);

    v19 = MEMORY[0x1E695DEC8];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:style];
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:barMetrics];
    v23 = [v19 arrayWithObjects:{v20, v21, v22, 0}];
    _UIAppearanceTagObjectForSelector(self, a2, v23);

    v24 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:state style:style isMini:barMetrics == UIBarMetricsCompact];
    if (v11 | v24 && ![(UIImage *)v11 isEqual:v24])
    {
      [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackgroundImage:v11 forState:state style:style isMini:barMetrics == UIBarMetricsCompact];
      [(UIBarButtonItem *)self _updateView];
    }
  }

  else if ((_MergedGlobals_11_2 & 1) == 0)
  {
    _MergedGlobals_11_2 = 1;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }
}

- (UIImage)backgroundImageForState:(UIControlState)state style:(UIBarButtonItemStyle)style barMetrics:(UIBarMetrics)barMetrics
{
  v17 = *MEMORY[0x1E69E9840];
  if (state > 8 || ((1 << state) & 0x107) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v16 = state;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "button background image only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", buf, 0xCu);
      }
    }

    else
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A8A0) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v16 = state;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "button background image only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", buf, 0xCu);
      }
    }
  }

  if ((barMetrics - 101) > 1)
  {
    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0 || state == 8)
    {
      v11 = state;
    }

    else
    {
      v11 = 1;
    }

    v9 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:v11 style:style isMini:barMetrics == UIBarMetricsCompact];
  }

  else
  {
    if ((byte_1ED49A891 & 1) == 0)
    {
      byte_1ED49A891 = 1;
      NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v9 = 0;
  }

  return v9;
}

- (void)setTintColor:(UIColor *)tintColor
{
  v8 = tintColor;
  if (!self->_appearanceStorage)
  {
    v5 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    appearanceStorage = self->_appearanceStorage;
    self->_appearanceStorage = v5;
  }

  _UIAppearanceTagObjectForSelector(self, a2, 0);
  v7 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage tintColor];
  if (v8 | v7 && ![(UIColor *)v8 isEqual:v7])
  {
    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setTintColor:v8];
    [(UIBarButtonItem *)self _updateView];
  }
}

- (UIColor)_effectiveTintColor
{
  v3 = [(UIBarButtonItem *)self tintColor];
  if (!v3)
  {
    v3 = +[UIColor tintColor];
  }

  if (![(UIBarButtonItem *)self isEnabled])
  {
    v4 = [UIColor _disabledColorForColor:v3];

    v3 = v4;
  }

  return v3;
}

- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!self->_appearanceStorage)
  {
    v8 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    appearanceStorage = self->_appearanceStorage;
    self->_appearanceStorage = v8;
  }

  if (a4 > 8 || ((1 << a4) & 0x107) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v19 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        v20 = 134217984;
        v21 = a4;
        _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", &v20, 0xCu);
      }
    }

    else
    {
      v18 = *(__UILogGetCategoryCachedImpl("Assert", &setTitleTextAttributes_forState____s_category) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = 134217984;
        v21 = a4;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", &v20, 0xCu);
      }
    }
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0 || a4 == 8)
  {
    v11 = a4;
  }

  else
  {
    v11 = 1;
  }

  v12 = [v7 _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  v13 = MEMORY[0x1E695DEC8];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  v15 = [v13 arrayWithObject:v14];
  _UIAppearanceTagObjectForSelector(self, a2, v15);

  v16 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:v11];
  v17 = v16;
  if (v16 | v12 && ([v16 isEqual:v12] & 1) == 0)
  {
    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:v12 forState:v11];
    [(UIBarButtonItem *)self _updateView];
  }
}

- (id)titleTextAttributesForState:(unint64_t)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if (a3 > 8 || ((1 << a3) & 0x107) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = 134217984;
        v19 = v3;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", &v18, 0xCu);
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &titleTextAttributesForState____s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v18 = 134217984;
        v19 = v3;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", &v18, 0xCu);
      }
    }
  }

  if ((v3 & 0xFFFFFFFFFFFFFFFDLL) != 0 && v3 != 8)
  {
    v3 = 1;
  }

  v6 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:v3];
  if (!v6)
  {
    v7 = [(UIBarButtonItem *)self view];
    v8 = objc_opt_respondsToSelector();

    v9 = [(UIBarButtonItem *)self view];
    if (v8)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [(UIBarButtonItem *)self view];
      v13 = [v12 superview];

      v14 = -3;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v9 = [v13 superview];

        v13 = v9;
        if (__CFADD__(v14++, 1))
        {
          goto LABEL_26;
        }
      }

      v9 = v13;
LABEL_26:
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v6 = 0;
        goto LABEL_11;
      }

LABEL_10:
      v6 = [v9 _titleTextAttributesForState:v3];
LABEL_11:

      goto LABEL_22;
    }

    v6 = 0;
  }

LABEL_22:

  return v6;
}

- (void)setBackButtonBackgroundImage:(UIImage *)backgroundImage forState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = backgroundImage;
  if ((barMetrics - 101) > 1)
  {
    if (!self->_appearanceStorage)
    {
      v10 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      appearanceStorage = self->_appearanceStorage;
      self->_appearanceStorage = v10;
    }

    if (state > 8 || ((1 << state) & 0x107) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v18 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v20 = state;
          _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "back button background image only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", buf, 0xCu);
        }
      }

      else
      {
        v17 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A8A8) + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v20 = state;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "back button background image only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", buf, 0xCu);
        }
      }
    }

    if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0 && state != 8)
    {
      state = 1;
    }

    v13 = MEMORY[0x1E695DEC8];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:barMetrics];
    v16 = [v13 arrayWithObjects:{v14, v15, 0}];
    _UIAppearanceTagObjectForSelector(self, a2, v16);

    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackButtonBackgroundImage:v9 forState:state isMini:barMetrics == UIBarMetricsCompact];
  }

  else if ((byte_1ED49A892 & 1) == 0)
  {
    byte_1ED49A892 = 1;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"back button background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }
}

- (UIImage)backButtonBackgroundImageForState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics
{
  v15 = *MEMORY[0x1E69E9840];
  if ((barMetrics - 101) > 1)
  {
    if (state > 8 || ((1 << state) & 0x107) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v12 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v14 = state;
          _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "back button background image only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", buf, 0xCu);
        }
      }

      else
      {
        v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49A8B0) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v14 = state;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "back button background image only respected for UIControlStateNormal, UIControlStateHighlighted, UIControlStateDisabled and UIControlStateFocused. state = %lu is interpreted as UIControlStateHighlighted.", buf, 0xCu);
        }
      }
    }

    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0 || state == 8)
    {
      v9 = state;
    }

    else
    {
      v9 = 1;
    }

    v4 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:v9 isMini:barMetrics == UIBarMetricsCompact];
  }

  else
  {
    if ((byte_1ED49A893 & 1) == 0)
    {
      byte_1ED49A893 = 1;
      NSLog(&cfstr_SCustomization.isa, a2, state, "UIBarButtonItem", @"back button background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0;
  }

  return v4;
}

- (void)setBackgroundVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics
{
  if (!self->_appearanceStorage)
  {
    v8 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    appearanceStorage = self->_appearanceStorage;
    self->_appearanceStorage = v8;
  }

  v10 = MEMORY[0x1E695DEC8];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:barMetrics];
  v12 = [v10 arrayWithObject:v11];
  _UIAppearanceTagObjectForSelector(self, a2, v12);

  [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundVerticalAdjustmentForBarMetrics:barMetrics];
  if (v13 != adjustment)
  {
    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackgroundVerticalAdjustment:barMetrics forBarMetrics:adjustment];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIBarButtonItem *)self _applyPositionAdjustmentToSegmentedControl:self->_view];
    }

    [(UIBarButtonItem *)self _updateView];
  }
}

- (void)setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(UIBarMetrics)barMetrics
{
  if ((barMetrics - 101) > 1)
  {
    vertical = adjustment.vertical;
    horizontal = adjustment.horizontal;
    if (!self->_appearanceStorage)
    {
      v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      appearanceStorage = self->_appearanceStorage;
      self->_appearanceStorage = v9;
    }

    v11 = MEMORY[0x1E695DEC8];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:barMetrics];
    v13 = [v11 arrayWithObject:v12];
    _UIAppearanceTagObjectForSelector(self, a2, v13);

    v14 = self->_appearanceStorage;
    if (barMetrics == UIBarMetricsCompact)
    {
      [(_UIBarButtonItemAppearanceStorage *)v14 miniTitlePositionOffset];
    }

    else
    {
      [(_UIBarButtonItemAppearanceStorage *)v14 titlePositionOffset];
    }
    v15 = ;
    v16 = v15;
    if (v15)
    {
      [v15 UIOffsetValue];
    }

    else
    {
      v17 = 0.0;
      v18 = 0.0;
    }

    if (horizontal != v17 || vertical != v18)
    {
      v19 = self->_appearanceStorage;
      if (barMetrics == UIBarMetricsCompact)
      {
        *v22 = horizontal;
        *&v22[1] = vertical;
        v20 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{UIOffset=dd}"];
        [(_UIBarButtonItemAppearanceStorage *)v19 setMiniTitlePositionOffset:v20];
      }

      else
      {
        *v21 = horizontal;
        *&v21[1] = vertical;
        v20 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{UIOffset=dd}"];
        [(_UIBarButtonItemAppearanceStorage *)v19 setTitlePositionOffset:v20];
      }

      [(UIBarButtonItem *)self _updateView];
    }
  }

  else if ((setTitlePositionAdjustment_forBarMetrics__didWarn & 1) == 0)
  {
    setTitlePositionAdjustment_forBarMetrics__didWarn = 1;
    NSLog(&cfstr_SCustomization.isa, a2, adjustment.horizontal, adjustment.vertical, "UIBarButtonItem", @"title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }
}

- (UIOffset)titlePositionAdjustmentForBarMetrics:(UIBarMetrics)barMetrics
{
  if ((barMetrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (barMetrics == UIBarMetricsCompact)
    {
      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage miniTitlePositionOffset];
    }

    else
    {
      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage titlePositionOffset];
    }
    v6 = ;
    v7 = v6;
    if (v6)
    {
      [v6 UIOffsetValue];
      v3 = v8;
      v4 = v9;
    }

    else
    {
      v3 = 0.0;
      v4 = 0.0;
    }
  }

  else
  {
    v3 = 0.0;
    if ((titlePositionAdjustmentForBarMetrics__didWarn & 1) == 0)
    {
      titlePositionAdjustmentForBarMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, "UIBarButtonItem", @"title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0.0;
  }

  v10 = v3;
  v11 = v4;
  result.vertical = v11;
  result.horizontal = v10;
  return result;
}

- (void)setBackButtonBackgroundVerticalPositionAdjustment:(CGFloat)adjustment forBarMetrics:(UIBarMetrics)barMetrics
{
  if (!self->_appearanceStorage)
  {
    v8 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    appearanceStorage = self->_appearanceStorage;
    self->_appearanceStorage = v8;
  }

  v10 = MEMORY[0x1E695DEC8];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:barMetrics];
  v12 = [v10 arrayWithObject:v11];
  _UIAppearanceTagObjectForSelector(self, a2, v12);

  [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundVerticalAdjustmentForBarMetrics:barMetrics];
  if (v13 != adjustment)
  {
    v14 = self->_appearanceStorage;

    [(_UIBarButtonItemAppearanceStorage *)v14 setBackButtonBackgroundVerticalAdjustment:barMetrics forBarMetrics:adjustment];
  }
}

- (void)setBackButtonTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(UIBarMetrics)barMetrics
{
  if ((barMetrics - 101) > 1)
  {
    vertical = adjustment.vertical;
    horizontal = adjustment.horizontal;
    if (!self->_appearanceStorage)
    {
      v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      appearanceStorage = self->_appearanceStorage;
      self->_appearanceStorage = v9;
    }

    v11 = MEMORY[0x1E695DEC8];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:barMetrics];
    v13 = [v11 arrayWithObject:v12];
    _UIAppearanceTagObjectForSelector(self, a2, v13);

    v14 = self->_appearanceStorage;
    if (barMetrics == UIBarMetricsCompact)
    {
      [(_UIBarButtonItemAppearanceStorage *)v14 miniTitlePositionOffset];
    }

    else
    {
      [(_UIBarButtonItemAppearanceStorage *)v14 titlePositionOffset];
    }
    v15 = ;
    v16 = v15;
    if (v15)
    {
      [v15 UIOffsetValue];
    }

    else
    {
      v17 = 0.0;
      v18 = 0.0;
    }

    if (horizontal != v17 || vertical != v18)
    {
      v19 = self->_appearanceStorage;
      if (barMetrics == UIBarMetricsCompact)
      {
        *v22 = horizontal;
        *&v22[1] = vertical;
        v20 = [MEMORY[0x1E696B098] valueWithBytes:v22 objCType:"{UIOffset=dd}"];
        [(_UIBarButtonItemAppearanceStorage *)v19 setMiniBackButtonTitlePositionOffset:v20];
      }

      else
      {
        *v21 = horizontal;
        *&v21[1] = vertical;
        v20 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{UIOffset=dd}"];
        [(_UIBarButtonItemAppearanceStorage *)v19 setBackButtonTitlePositionOffset:v20];
      }
    }
  }

  else if ((setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn & 1) == 0)
  {
    setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn = 1;
    NSLog(&cfstr_SCustomization.isa, a2, adjustment.horizontal, adjustment.vertical, "UIBarButtonItem", @"back button title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }
}

- (UIOffset)backButtonTitlePositionAdjustmentForBarMetrics:(UIBarMetrics)barMetrics
{
  if ((barMetrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (barMetrics == UIBarMetricsCompact)
    {
      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage miniBackButtonTitlePositionOffset];
    }

    else
    {
      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage backButtonTitlePositionOffset];
    }
    v6 = ;
    v7 = v6;
    if (v6)
    {
      [v6 UIOffsetValue];
      v3 = v8;
      v4 = v9;
    }

    else
    {
      v3 = 0.0;
      v4 = 0.0;
    }
  }

  else
  {
    v3 = 0.0;
    if ((backButtonTitlePositionAdjustmentForBarMetrics__didWarn & 1) == 0)
    {
      backButtonTitlePositionAdjustmentForBarMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, "UIBarButtonItem", @"back button title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0.0;
  }

  v10 = v3;
  v11 = v4;
  result.vertical = v11;
  result.horizontal = v10;
  return result;
}

- (void)_applyPositionAdjustmentToSegmentedControl:(id)a3
{
  appearanceStorage = self->_appearanceStorage;
  v5 = a3;
  [(_UIBarButtonItemAppearanceStorage *)appearanceStorage backgroundVerticalAdjustmentForBarMetrics:0];
  [v5 _setBackgroundVerticalPositionAdjustment:0 forBarMetrics:?];
  [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundVerticalAdjustmentForBarMetrics:1];
  [v5 _setBackgroundVerticalPositionAdjustment:1 forBarMetrics:?];
  [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundVerticalAdjustmentForBarMetrics:101];
  [v5 _setBackgroundVerticalPositionAdjustment:101 forBarMetrics:?];
  [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundVerticalAdjustmentForBarMetrics:102];
  [v5 _setBackgroundVerticalPositionAdjustment:102 forBarMetrics:?];
}

- (void)_setWantsThreeUp:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFF7FFFFF | v3);
}

- (void)_setAdditionalSelectionInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_additionalSelectionInsets.top, v3), vceqq_f64(*&self->_additionalSelectionInsets.bottom, v4)))) & 1) == 0)
  {
    self->_additionalSelectionInsets = a3;
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    [WeakRetained _itemStandardViewNeedsUpdate:self];
  }
}

- (UIToolbarButton)_toolbarButton
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = self->_view;
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)_setImageHasEffects:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFF7FFFF | v3);
}

- (void)_setEnclosingBar:(id)a3 onItem:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v5 _setEnclosingBar:v6];
  }
}

- (id)createViewForNavigationItem:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 navigationBar];
  v6 = [v5 _hasLegacyProvider];

  if (v6)
  {
    if ((*(&self->_barButtonItemFlags + 1) & 0x20) != 0)
    {
      v14 = [(UIBarButtonItem *)self customView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIBarButtonItem *)self _applyPositionAdjustmentToSegmentedControl:v14];
      }

      _clampWidthOfView(v14, self->_minimumWidth, self->_maximumWidth);
    }

    else
    {
      v47 = 0;
      v46 = UIBarButtonItemStylePlain;
      v7 = *MEMORY[0x1E695F060];
      v44 = 0u;
      v45 = v7;
      v43 = 0u;
      v8 = [v4 navigationBar];
      v9 = [v8 barStyle];
      if ((*&self->_barButtonItemFlags & 0x10) != 0)
      {
        v41 = 0;
        v42 = 0;
        v40 = 0;
        LOWORD(v33) = [v8 isMinibar];
        [(UIBarButtonItem *)self _getSystemItemStyle:&v46 title:&v42 image:&v41 selectedImage:&v40 action:&v47 forBarStyle:v9 landscape:v33 alwaysBordered:?];
        v10 = v42;
        v12 = v41;
        v35 = v40;
        -[UIBarButtonItem _getNavBarEdgeSizeAdjust:imageInsets:landscape:](self, "_getNavBarEdgeSizeAdjust:imageInsets:landscape:", &v45, &v43, [v8 isMinibar]);
        if (![(UIBarButtonItem *)self action]&& v47)
        {
          [(UIBarButtonItem *)self setAction:?];
        }
      }

      else
      {
        v10 = [(UIBarButtonItem *)self title];
        if (![v8 isMinibar] || (image = self->_landscapeImagePhone) == 0)
        {
          image = self->_image;
        }

        v12 = image;
        v35 = 0;
        v46 = [(UIBarButtonItem *)self style];
        v13 = *&self->_imageInsets.bottom;
        v43 = *&self->_imageInsets.top;
        v44 = v13;
      }

      if (v46 == (UIBarButtonItemStyleDone|UIBarButtonItemStyleBordered|0x4))
      {
        v15 = 5;
      }

      else
      {
        v15 = 0;
      }

      if (v46 == UIBarButtonItemStyleDone)
      {
        v16 = 2;
      }

      else
      {
        v16 = v15;
      }

      if (v9 == 1 && ([v8 isTranslucent] & 1) != 0)
      {
        v9 = 2;
      }

      if (v12)
      {
        v17 = objc_alloc([objc_opt_class() classForNavigationButton]);
        if ((*(&self->_barButtonItemFlags + 1) & 0x80) != 0)
        {
          width = self->_width;
        }

        else
        {
          [(UIBarButtonItem *)self width];
        }

        LOBYTE(v33) = 0;
        v14 = [v17 initWithValue:v12 width:v16 style:v9 barStyle:0 possibleTitles:self->_possibleSystemItems possibleSystemItems:0 tintColor:width applyBezel:v33 forButtonItemStyle:v46];
      }

      else if (v10)
      {
        v19 = objc_alloc([objc_opt_class() classForNavigationButton]);
        v20 = [(UIBarButtonItem *)self possibleTitles];
        v14 = [v19 initWithTitle:v10 possibleTitles:v20 style:v16];
      }

      else
      {
        v14 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        [v14 _setCreatedByBarButtonItem:1];
      }

      [(UIBarButtonItem *)self _setEnclosingBar:v8 onItem:v14];
      if (v14)
      {
        [v14 setOriginatingButtonItem:self];
        [v14 setOriginatingNavigationItem:v4];
        [v14 _setStylesForSizingTitles:self->_stylesForSizingTitles];
        [v14 setEnabled:{-[UIBarButtonItem isEnabled](self, "isEnabled")}];
        [v14 setAutosizesToFit:(*&self->_barButtonItemFlags & 0x8000) == 0];
        [v14 addTarget:self action:sel__sendAction_withEvent_ forControlEvents:0x2000];
        [v14 setImageEdgeInsets:{v43, v44}];
        if (self->_width <= 0.0)
        {
          _clampWidthOfView(v14, self->_minimumWidth, self->_maximumWidth);
          [v14 setMinimumWidth:self->_minimumWidth];
          [v14 setMaximumWidth:self->_maximumWidth];
        }

        [v14 _setBoundsAdjustment:v45];
        v21 = [v8 _appearanceStorage];
        v22 = [v21 _barButtonAppearanceStorage];
        [v14 _applyBarButtonAppearanceStorage:v22 withTaggedSelectors:0];

        appearanceStorage = self->_appearanceStorage;
        v24 = objc_getAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey);
        [v14 _applyBarButtonAppearanceStorage:appearanceStorage withTaggedSelectors:v24];

        if ([_UIAppearance _hasCustomizationsForClass:objc_opt_class() guideClass:0])
        {
          [v14 _setAppearanceIsInvalid:1];
        }

        [v14 _setAppearanceGuideClass:objc_opt_class()];
        gestureRecognizers = self->_gestureRecognizers;
        if (gestureRecognizers)
        {
          v34 = v12;
          v26 = v10;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v27 = gestureRecognizers;
          v28 = [(NSArray *)v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v37;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v37 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                [v14 addGestureRecognizer:*(*(&v36 + 1) + 8 * i)];
              }

              v29 = [(NSArray *)v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
            }

            while (v29);
          }

          v10 = v26;
          v12 = v34;
        }
      }

      [v14 setSelected:HIWORD(*&self->_barButtonItemFlags) & 1];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)createViewForToolbar:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 barStyle];
  if (v5 == 1 && ([v4 isTranslucent] & 1) != 0)
  {
    v61 = 2;
  }

  else
  {
    v61 = v5;
  }

  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    LOWORD(v57) = [v4 isMinibar];
    [(UIBarButtonItem *)self _getSystemItemStyle:&v69 title:&v68 image:&v67 selectedImage:&v66 action:&v72 forBarStyle:v5 landscape:v57 alwaysBordered:?];
    v7 = v68;
    v8 = v67;
    v9 = v66;
    -[UIBarButtonItem _getToolbarSystemItemEdgeInsetsWithImageInsets:forBarStyle:landscape:alwaysBordered:](self, "_getToolbarSystemItemEdgeInsetsWithImageInsets:forBarStyle:landscape:alwaysBordered:", &v70, v5, [v4 isMinibar], 0);
    if (v8)
    {
      v10 = objc_alloc([objc_opt_class() classForToolbarButton]);
      v11 = v69;
      possibleSystemItems = self->_possibleSystemItems;
      v13 = [v4 tintColor];
      LOBYTE(v59) = [v4 isMinibar];
      LOBYTE(v58) = 0;
      v6 = [v10 initWithImage:v8 pressedImage:v9 label:v7 labelHeight:v61 withBarStyle:v11 withStyle:0 withInsets:0.0 possibleTitles:0.0 possibleSystemItems:0.0 withToolbarTintColor:0.0 bezel:0.0 imageInsets:possibleSystemItems glowInsets:v13 landscape:{v58, v70, v71, 0, 0, 0, 0, v59}];

      [(UIToolbarButton *)v6 _setCreatedByBarButtonItem:1];
    }

    else if (v7)
    {
      v14 = [UIToolbarTextButton alloc];
      v15 = v69;
      v16 = [v4 tintColor];
      v6 = [(UIToolbarTextButton *)v14 initWithTitle:v7 pressedTitle:0 withFont:0 withBarStyle:v61 withStyle:v15 withTitleWidth:0 possibleTitles:0.0 withToolbarTintColor:v16];

      [(UIToolbarButton *)v6 _setCreatedByBarButtonItem:1];
      v17 = [(UIToolbarButton *)v6 _info];
      [v17 _setStylesForSizingTitles:self->_stylesForSizingTitles];
    }

    else
    {
      v6 = 0;
    }

    if (![(UIBarButtonItem *)self action]&& v72)
    {
      [(UIBarButtonItem *)self setAction:?];
    }
  }

  else
  {
    v6 = 0;
  }

  v18 = [v4 delegate];
  if (!v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [v18 toolbar:v4 viewForItem:self];
      if (v19)
      {
        v6 = v19;
        *&self->_barButtonItemFlags |= 0x2000u;
        goto LABEL_33;
      }
    }

    v20 = [(UIBarButtonItem *)self image];

    if (v20)
    {
      if ([v4 isMinibar])
      {
        landscapeImagePhone = self->_landscapeImagePhone;
        if (landscapeImagePhone)
        {
          v22 = landscapeImagePhone;
        }

        else
        {
          v30 = [(UIBarButtonItem *)self image];
          v22 = [v30 _imageScaledToProportion:3 interpolationQuality:0.75];
        }

        if (self->_landscapeImagePhone)
        {
          v31 = &OBJC_IVAR___UIBarButtonItem__landscapeImagePhoneInsets;
LABEL_32:
          v32 = self + *v31;
          v33 = *(v32 + 3);
          v60 = *(v32 + 8);
          v34 = *v32;
          v35 = [UIToolbarButton alloc];
          v36 = [(UIBarButtonItem *)self title];
          v37 = [(UIBarButtonItem *)self style];
          v38 = [(UIBarButtonItem *)self possibleTitles];
          v39 = [v4 tintColor];
          v40 = ![(UIBarButtonItem *)self _imageHasEffects];
          LOBYTE(v59) = [v4 isMinibar];
          LOBYTE(v58) = v40;
          v6 = [(UIToolbarButton *)v35 initWithImage:v22 pressedImage:0 label:v36 labelHeight:v61 withBarStyle:v37 withStyle:v38 withInsets:0.0 possibleTitles:0.0 possibleSystemItems:0.0 withToolbarTintColor:0.0 bezel:0.0 imageInsets:0 glowInsets:v39 landscape:v58, v34, v60, v33, 0, 0, 0, 0, v59];

          [(UIToolbarButton *)v6 _setCreatedByBarButtonItem:1];
          goto LABEL_33;
        }
      }

      else
      {
        v22 = [(UIBarButtonItem *)self image];
      }

      v31 = &OBJC_IVAR___UIBarButtonItem__imageInsets;
      goto LABEL_32;
    }

    v23 = [UIToolbarTextButton alloc];
    v24 = [(UIBarButtonItem *)self title];
    v25 = [(UIBarButtonItem *)self style];
    v26 = [(UIBarButtonItem *)self possibleTitles];
    v27 = [v4 tintColor];
    v6 = [(UIToolbarTextButton *)v23 initWithTitle:v24 pressedTitle:0 withFont:0 withBarStyle:v61 withStyle:v25 withTitleWidth:v26 possibleTitles:0.0 withToolbarTintColor:v27];

    [(UIToolbarButton *)v6 _setCreatedByBarButtonItem:1];
    v28 = [(UIBarButtonItem *)self title];

    if (v28)
    {
      v29 = [(UIToolbarButton *)v6 _info];
      [v29 _setStylesForSizingTitles:self->_stylesForSizingTitles];
    }
  }

LABEL_33:
  if ((*(&self->_barButtonItemFlags + 1) & 0x20) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIBarButtonItem *)self _applyPositionAdjustmentToSegmentedControl:v6];
    }
  }

  else
  {
    [(UIToolbarButton *)v6 _setAppearanceGuideClass:objc_opt_class()];
    width = self->_width;
    if (width != 0.0)
    {
      *&width = width;
      [(UIToolbarButton *)v6 _setInfoWidth:width];
    }

    [v4 bounds];
    *&v43 = v42;
    [(UIToolbarButton *)v6 _setBarHeight:v43];
    if ((*&self->_barButtonItemFlags & 0x10) == 0)
    {
      appearanceStorage = self->_appearanceStorage;
      v45 = objc_getAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey);
      [(UIToolbarButton *)v6 _applyBarButtonAppearanceStorage:appearanceStorage withTaggedSelectors:v45];
    }

    v46 = [(UIToolbarButton *)v6 _info];
    [(UIBarButtonItem *)self _setEnclosingBar:v4 onItem:v46];
  }

  if (self->_width <= 0.0)
  {
    minimumWidth = self->_minimumWidth;
    maximumWidth = minimumWidth;
    if (minimumWidth > 0.0 || (maximumWidth = self->_maximumWidth, maximumWidth > 0.0))
    {
      v49 = minimumWidth > 0.0;
      *&minimumWidth = maximumWidth;
      [(UIToolbarButton *)v6 _setInfoExtremityWidth:v49 isMin:minimumWidth];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(UIControl *)v6 addTarget:self action:sel__sendAction_withEvent_ forEvents:0x2000];
  }

  if (objc_opt_respondsToSelector())
  {
    [(UIToolbarButton *)v6 setEnabled:[(UIBarButtonItem *)self isEnabled]];
  }

  if (self->_flexible && (*&self->_barButtonItemFlags & 0x200E) == 2)
  {
    [(UIToolbarButton *)v6 _setInfoFlexibleWidth:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIToolbarButton *)v6 setUseSelectedImage:HIWORD(*&self->_barButtonItemFlags) & 1];
  }

  gestureRecognizers = self->_gestureRecognizers;
  if (gestureRecognizers)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v51 = gestureRecognizers;
    v52 = [(NSArray *)v51 countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v63;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v63 != v54)
          {
            objc_enumerationMutation(v51);
          }

          [(UIView *)v6 addGestureRecognizer:*(*(&v62 + 1) + 8 * i)];
        }

        v53 = [(NSArray *)v51 countByEnumeratingWithState:&v62 objects:v73 count:16];
      }

      while (v53);
    }
  }

  return v6;
}

+ (id)_inlineToolbarSearchItemAssociatedWithSearchController:(id)a3
{
  v3 = a3;
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:205 primaryAction:0];
  objc_storeWeak(&v4->_associatedSearchController, v3);

  return v4;
}

- (void)_setSearchBarViewItem:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xEFFFFFFF | v3);
}

- (void)_setGestureRecognizers:(id)a3
{
  v4 = a3;
  WeakRetained = self->_gestureRecognizers;
  v6 = v4;
  v11 = v6;
  if (WeakRetained == v6)
  {

LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  if (!v6 || !WeakRetained)
  {

    v8 = v11;
    goto LABEL_8;
  }

  v7 = [(NSArray *)WeakRetained isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [(NSArray *)v8 copy];
    gestureRecognizers = self->_gestureRecognizers;
    self->_gestureRecognizers = v9;

    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    [(NSArray *)WeakRetained _itemStandardViewNeedsUpdate:self];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_setInteractions:(id)a3
{
  v4 = a3;
  WeakRetained = self->_interactions;
  v6 = v4;
  v11 = v6;
  if (WeakRetained == v6)
  {

LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  if (!v6 || !WeakRetained)
  {

    v8 = v11;
    goto LABEL_8;
  }

  v7 = [(NSArray *)WeakRetained isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [(NSArray *)v8 copy];
    interactions = self->_interactions;
    self->_interactions = v9;

    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    [(NSArray *)WeakRetained _itemStandardViewNeedsUpdate:self];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setMenu:(UIMenu *)menu
{
  v3 = self->_menu;
  if (v3 != menu)
  {
    v9 = v3;
    v6 = [(UIMenu *)menu copy];
    v7 = self->_menu;
    self->_menu = v6;

    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained _itemDidUpdateMenu:self fromMenu:v9] & 1) == 0)
    {
      [WeakRetained _itemStandardViewNeedsUpdate:self];
    }

    [(UIBarButtonItem *)self _updateForAutomaticSelection];
  }
}

- (void)setPreferredMenuElementOrder:(UIContextMenuConfigurationElementOrder)preferredMenuElementOrder
{
  if (self->_preferredMenuElementOrder != preferredMenuElementOrder)
  {
    self->_preferredMenuElementOrder = preferredMenuElementOrder;
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    if (objc_opt_respondsToSelector())
    {
      v5 = [(UIBarButtonItem *)self menu];
      [WeakRetained _itemDidUpdateMenu:self fromMenu:v5];
    }
  }
}

- (void)forcedSelectionOfMenu:(id)a3 willChangeTo:(id)a4
{
  v5 = a4;
  v6 = [v5 title];
  [(UIBarButtonItem *)self setTitle:v6];

  v7 = [v5 image];

  [(UIBarButtonItem *)self setImage:v7];
}

- (void)setChangesSelectionAsPrimaryAction:(BOOL)changesSelectionAsPrimaryAction
{
  barButtonItemFlags = self->_barButtonItemFlags;
  if (((((*&barButtonItemFlags & 0x1000000) == 0) ^ changesSelectionAsPrimaryAction) & 1) == 0)
  {
    if (changesSelectionAsPrimaryAction)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = 0;
    }

    self->_barButtonItemFlags = (*&barButtonItemFlags & 0xFEFFFFFF | v4);
    [(UIBarButtonItem *)self _updateForAutomaticSelection];
  }
}

- (void)setSecondaryActionsArePrimary:(BOOL)a3
{
  v3 = a3;
  if ([(UIBarButtonItem *)self _menuIsPrimary]!= a3)
  {
    if (v3)
    {
      v5 = 0x40000;
    }

    else
    {
      v5 = 0x20000;
    }

    self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFF9FFFF | v5);
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    [WeakRetained _itemStandardViewNeedsUpdate:self];
  }
}

- (void)_setSecondaryActionsProvider:(id)a3
{
  if (self->_secondaryActionsProvider != a3)
  {
    v4 = [a3 copy];
    secondaryActionsProvider = self->_secondaryActionsProvider;
    self->_secondaryActionsProvider = v4;

    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    [WeakRetained _itemStandardViewNeedsUpdate:self];
  }
}

- (UIContextMenuInteraction)_contextMenuInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [WeakRetained _contextMenuInteractionForItem:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHidesSharedBackground:(BOOL)a3
{
  barButtonItemFlags = self->_barButtonItemFlags;
  if (((((*&barButtonItemFlags & 0x8000000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 0x8000000;
    }

    else
    {
      v6 = 0;
    }

    self->_barButtonItemFlags = (*&barButtonItemFlags & 0xF7FFFFFF | v6);
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v9 = objc_opt_respondsToSelector();
      v8 = v10;
      if (v9)
      {
        [v10 _itemDidChangePlatterizationPreference:self];
        v8 = v10;
      }
    }
  }
}

- (void)setSharesBackground:(BOOL)a3
{
  barButtonItemFlags = self->_barButtonItemFlags;
  if (((((*&barButtonItemFlags & 0x4000000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 0x4000000;
    }

    else
    {
      v6 = 0;
    }

    self->_barButtonItemFlags = (*&barButtonItemFlags & 0xFBFFFFFF | v6);
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v9 = objc_opt_respondsToSelector();
      v8 = v10;
      if (v9)
      {
        [v10 _itemDidChangePlatterizationPreference:self];
        v8 = v10;
      }
    }
  }
}

- (void)setSpringLoaded:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFDFFFFF | v3);
}

- (void)setView:(id)a3
{
  v5 = a3;
  if (self->_view != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_view, a3);
    v5 = v6;
  }
}

- (void)setIsMinibarView:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFFFBFFF | v3);
}

- (void)setShouldUseButtonPlatters:(BOOL)a3
{
  if (self->_shouldUseButtonPlatters != a3)
  {
    self->_shouldUseButtonPlatters = a3;
    [(UIBarButtonItem *)self _updateView];
  }
}

- (void)_sendAction:(id)a3 withEvent:(id)a4
{
  v8 = a4;
  if ([(UIBarButtonItem *)self action])
  {
    v5 = UIApp;
    v6 = [(UIBarButtonItem *)self action];
    v7 = [(UIBarButtonItem *)self target];
    [v5 sendAction:v6 to:v7 from:self forEvent:v8];
  }
}

- (id)_imageForState:(unint64_t)a3 compact:(BOOL)a4 type:(int64_t)a5
{
  v9 = 0;
  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    BarButtonItemResolveSystemImage([(UIBarButtonItem *)self systemItem], &v9, a4, a5);
    v6 = v9;
  }

  else if (!a4 || ([(UIBarButtonItem *)self landscapeImagePhone:a3], v6 = objc_claimAutoreleasedReturnValue(), (v9 = v6) == 0))
  {
    v6 = [(UIBarButtonItem *)self image];
    v9 = v6;
  }

  v7 = v6;

  return v7;
}

- (id)_backgroundImageForState:(unint64_t)a3 compact:(BOOL)a4 type:(int64_t)a5
{
  v5 = 0;
  v8 = 0;
  if ((*&self->_barButtonItemFlags & 0x10) != 0)
  {
    BarButtonItemResolveSystemBackgroundImage([(UIBarButtonItem *)self systemItem], &v8, a4);
    v5 = v8;
  }

  v6 = v5;

  return v6;
}

- (id)_deferredEffectsCreateIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_getAssociatedObject(self, &_deferredEffectsCreateIfNecessary___UIBarButtonItemDeferredSymbolEffectKey);
  v6 = v5;
  if (v3 && !v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    objc_setAssociatedObject(self, &_deferredEffectsCreateIfNecessary___UIBarButtonItemDeferredSymbolEffectKey, v6, 1);
  }

  return v6;
}

- (void)_deferSymbolEffectOperation:(int64_t)a3 effect:(id)a4 options:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v15 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E695DF90];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v13 = [v11 dictionaryWithObject:v12 forKey:@"operation"];

  if (v15)
  {
    [v13 setObject:v15 forKeyedSubscript:@"symbolEffect"];
  }

  if (v10)
  {
    [v13 setObject:v10 forKeyedSubscript:@"options"];
  }

  if (v6)
  {
    [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"animated"];
  }

  v14 = [(UIBarButtonItem *)self _deferredEffectsCreateIfNecessary:1];
  [v14 addObject:v13];
}

- (void)_applyDeferredSymbolEffects:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIBarButtonItem *)self _deferredEffectsCreateIfNecessary:0];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 copy];
  }

  else
  {
    v7 = 0;
  }

  [v6 removeAllObjects];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"operation"];
        v14 = [v13 integerValue];
        v15 = [v12 objectForKeyedSubscript:@"symbolEffect"];
        v16 = [v12 objectForKeyedSubscript:@"options"];
        v17 = [v12 objectForKeyedSubscript:@"animated"];
        v4[2](v4, v14, v15, v16, [v17 BOOLValue]);
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)_setActsAsFakeBackButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFEFFFFF | v3);
}

- (void)_setShowsChevron:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFFBFFFFF | v3);
}

- (void)setSymbolAnimationEnabled:(BOOL)symbolAnimationEnabled
{
  if (symbolAnimationEnabled)
  {
    v4 = 0x2000000;
  }

  else
  {
    v4 = 0;
  }

  self->_barButtonItemFlags = (*&self->_barButtonItemFlags & 0xFDFFFFFF | v4);
  WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
  [WeakRetained _itemStandardViewNeedsUpdate:self];
}

- (NSString)_resolvedLargeContentSizeTitle
{
  v3 = [(UIBarButtonItem *)self _largeContentSizeTitle];
  if (![v3 length])
  {
    v4 = [(UIBarButtonItem *)self resolvedTitle];

    v3 = v4;
  }

  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v3 stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (!v7)
  {

    v3 = 0;
  }

  return v3;
}

- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect
{
  v4 = MEMORY[0x1E6982278];
  v5 = symbolEffect;
  v6 = [v4 options];
  [(UIBarButtonItem *)self addSymbolEffect:v5 options:v6];
}

- (void)addSymbolEffect:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated
{
  v5 = animated;
  v16 = symbolEffect;
  v9 = options;
  if ((*(&self->_barButtonItemFlags + 1) & 0x20) == 0)
  {
    if (![(NSSymbolEffect *)v16 ui_isSupportedByBarButtonItem])
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UIBarButtonItem.m" lineNumber:2876 description:@"Unsupported symbol effect added to UIBarButtonItem."];
    }

    if (v16)
    {
      WeakRetained = objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(UIBarButtonItem *)self image];
        if (v12)
        {
          v13 = v12;
          v14 = [(UIBarButtonItem *)self image];
          v15 = [v14 isSymbolImage];

          if (!v15)
          {
            goto LABEL_12;
          }

          WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
          if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained _item:self addSymbolEffect:v16 options:v9 animated:v5])
          {
            [(UIBarButtonItem *)self _deferSymbolEffectOperation:0 effect:v16 options:v9 animated:v5];
          }
        }
      }
    }
  }

LABEL_12:
}

- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect
{
  v4 = MEMORY[0x1E6982278];
  v5 = symbolEffect;
  v6 = [v4 options];
  [(UIBarButtonItem *)self removeSymbolEffectOfType:v5 options:v6];
}

- (void)removeSymbolEffectOfType:(NSSymbolEffect *)symbolEffect options:(NSSymbolEffectOptions *)options animated:(BOOL)animated
{
  v5 = animated;
  v14 = symbolEffect;
  v9 = options;
  if ((*(&self->_barButtonItemFlags + 1) & 0x20) == 0)
  {
    if (![(NSSymbolEffect *)v14 ui_isSupportedByBarButtonItem])
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UIBarButtonItem.m" lineNumber:2912 description:@"Unsupported symbol effect removed from UIBarButtonItem."];
    }

    if (v14)
    {
      v11 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
        if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained _item:self removeSymbolEffectOfType:v14 options:v9 animated:v5])
        {
          [(UIBarButtonItem *)self _deferSymbolEffectOperation:1 effect:v14 options:v9 animated:v5];
        }
      }
    }
  }
}

- (void)removeAllSymbolEffects
{
  v3 = [MEMORY[0x1E6982278] options];
  [(UIBarButtonItem *)self removeAllSymbolEffectsWithOptions:v3];
}

- (void)removeAllSymbolEffectsWithOptions:(NSSymbolEffectOptions *)options animated:(BOOL)animated
{
  v4 = animated;
  v6 = options;
  if ((*(&self->_barButtonItemFlags + 1) & 0x20) == 0)
  {
    v8 = v6;
    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained _item:self removeAllSymbolEffectsWithOptions:v8 animated:v4])
    {
      [(UIBarButtonItem *)self _deferSymbolEffectOperation:2 effect:0 options:v8 animated:v4];
    }

    v6 = v8;
  }
}

- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition
{
  v6 = MEMORY[0x1E6982278];
  v7 = transition;
  v8 = symbolImage;
  v9 = [v6 options];
  [(UIBarButtonItem *)self setSymbolImage:v8 withContentTransition:v7 options:v9];
}

- (void)setSymbolImage:(UIImage *)symbolImage withContentTransition:(NSSymbolContentTransition *)transition options:(NSSymbolEffectOptions *)options
{
  v23 = symbolImage;
  v10 = transition;
  v11 = options;
  if ((*&self->_barButtonItemFlags & 0x2010) != 0)
  {
    goto LABEL_17;
  }

  if (![(NSSymbolContentTransition *)v10 ui_isSupportedByBarButtonItem])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIBarButtonItem.m" lineNumber:2968 description:@"Unsupported symbol content transition added to UIBarButtonItem."];
  }

  if (!v10)
  {
LABEL_16:
    [(UIBarButtonItem *)self setImage:v23];
    goto LABEL_17;
  }

  v13 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(UIBarButtonItem *)self image], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = v14;
  v16 = [(UIBarButtonItem *)self image];
  v17 = [v16 isSymbolImage];
  if (!v23 || (v17 & 1) == 0)
  {

    goto LABEL_15;
  }

  v18 = [(UIImage *)v23 isSymbolImage];

  if (!v18)
  {
    goto LABEL_16;
  }

  WeakRetained = [(UIBarButtonItem *)self image];
  v20 = v23;
  v21 = v20;
  if (WeakRetained == v20)
  {
  }

  else
  {
    if (WeakRetained)
    {
      v22 = [(UIImage *)WeakRetained isEqual:v20];

      if (v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    WeakRetained = objc_loadWeakRetained(&self->__viewOwner);
    if (objc_opt_respondsToSelector())
    {
      objc_storeStrong(&self->_image, symbolImage);
      [(UIImage *)WeakRetained _item:self applyContentTransition:v10 options:v11];
    }

    else
    {
      [(UIBarButtonItem *)self setImage:v21];
    }
  }

LABEL_17:
}

- (void)_getSystemItemStyle:(int64_t *)a3 title:(id *)a4 image:(id *)a5 selectedImage:(id *)a6 action:(SEL *)a7 forBarStyle:(int64_t)a8 landscape:(BOOL)a9 alwaysBordered:(BOOL)a10
{
  if (a10)
  {
    v17 = UIBarButtonItemStyleBordered;
  }

  else
  {
    v17 = [(UIBarButtonItem *)self style];
  }

  BarButtonItemGetSystemItemStyle_KitAsset(a3, a4, a5, a6, a7, a8, a9, 0, (self->_barButtonItemFlags >> 5), v17);
}

- (void)_getNavBarEdgeSizeAdjust:(CGSize *)a3 imageInsets:(UIEdgeInsets *)a4 landscape:(BOOL)a5
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E695F060];
  }

  if (a4)
  {
    if (a5)
    {
      [(UIBarButtonItem *)self landscapeImagePhoneInsets];
    }

    else
    {
      [(UIBarButtonItem *)self imageInsets];
    }

    a4->top = v6;
    a4->left = v7;
    a4->bottom = v8;
    a4->right = v9;
  }
}

- (BOOL)_isImageBarButtonItem
{
  if (!self->_view)
  {
    return 0;
  }

  if ([(UIBarButtonItem *)self isCustomViewItem])
  {
    return 1;
  }

  v4 = [(UIView *)self->_view imageForState:0];
  v3 = v4 != 0;

  return v3;
}

- (double)_leftImagePaddingForEdgeMarginInNavBar
{
  v3 = 0.0;
  if (![(UIBarButtonItem *)self isCustomViewItem])
  {
    v4 = _ImageViewInNavigationButton(self->_view);
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      [v5 alignmentRectForFrame:?];
      left = self->_imageInsets.left;
      v3 = left - CGRectGetMinX(v8);
    }
  }

  return v3;
}

- (double)_rightImagePaddingForEdgeMarginInNavBar
{
  v3 = 0.0;
  if (![(UIBarButtonItem *)self isCustomViewItem])
  {
    v4 = _ImageViewInNavigationButton(self->_view);
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      [v5 alignmentRectForFrame:?];
      MaxX = CGRectGetMaxX(v8);
      [(UIView *)self->_view bounds];
      v3 = MaxX - CGRectGetMaxX(v9) - self->_imageInsets.right;
    }
  }

  return v3;
}

- (void)_getToolbarSystemItemEdgeInsetsWithImageInsets:(UIEdgeInsets *)a3 forBarStyle:(int64_t)a4 landscape:(BOOL)a5 alwaysBordered:(BOOL)a6
{
  if (a3)
  {
    if (a5)
    {
      [(UIBarButtonItem *)self landscapeImagePhoneInsets];
    }

    else
    {
      [(UIBarButtonItem *)self imageInsets];
    }

    a3->top = v7;
    a3->left = v8;
    a3->bottom = v9;
    a3->right = v10;
  }
}

uint64_t __30__UIBarButtonItem__updateView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) createViewForToolbar:*(a1 + 40)];
  [*(a1 + 32) setView:v2];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) view];
  [v3 addSubview:v4];

  v5 = *(a1 + 40);

  return [v5 _positionToolbarButtonsAndResetFontScaleAdjustment:1];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (_UIUseModernBars())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (!-[UIBarButtonItem isSpaceItem](self, "isSpaceItem") || ![v5 isSpaceItem])
      {
        goto LABEL_11;
      }

      v6 = [(UIBarButtonItem *)self systemItem];
      if (v6 != [v5 systemItem])
      {
        v10 = 0;
        goto LABEL_12;
      }

      if (-[UIBarButtonItem systemItem](self, "systemItem") == 5 || (-[UIBarButtonItem width](self, "width"), v8 = v7, [v5 width], v8 == v9))
      {
        v10 = 1;
      }

      else
      {
LABEL_11:
        v12.receiver = self;
        v12.super_class = UIBarButtonItem;
        v10 = [(UIBarButtonItem *)&v12 isEqual:v5];
      }

LABEL_12:

      goto LABEL_13;
    }

    v10 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UIBarButtonItem;
    v10 = [(UIBarButtonItem *)&v13 isEqual:v4];
  }

LABEL_13:

  return v10;
}

- (UINavigationItem)_owningNavigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->__owningNavigationItem);

  return WeakRetained;
}

- (_UIBarButtonItemViewOwner)_viewOwner
{
  WeakRetained = objc_loadWeakRetained(&self->__viewOwner);

  return WeakRetained;
}

- (void)_connectInterfaceBuilderEventConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 target];
  [(UIBarButtonItem *)self setTarget:v5];

  v6 = [v4 action];

  [(UIBarButtonItem *)self setAction:v6];
}

- (CGRect)frameInView:(id)a3
{
  [(UIBarButtonItem *)self _frameInCoordinateSpace:a3 window:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_frameInCoordinateSpace:(id)a3 window:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIBarButtonItem *)self _NSToolbarSourceItem];
  v9 = v8;
  if (v8)
  {
    [v8 _frameInCoordinateSpace:v6 window:v7];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v18 = [(UIBarButtonItem *)self _viewForPresenting];
    [v18 bounds];
    [v18 convertRect:v6 toCoordinateSpace:?];
    v11 = v19;
    v13 = v20;
    v15 = v21;
    v17 = v22;
  }

  v23 = v11;
  v24 = v13;
  v25 = v15;
  v26 = v17;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)_nearestViewController
{
  v3 = [(UIBarButtonItem *)self _NSToolbarSourceItem];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _nearestViewController];
  }

  else
  {
    v6 = [(UIBarButtonItem *)self _viewForPresenting];
    v5 = [v6 _viewControllerForAncestor];
  }

  return v5;
}

- (id)_sourceViewForPresentationInWindow:(id)a3
{
  v4 = a3;
  v5 = [(UIBarButtonItem *)self _NSToolbarSourceItem];
  v6 = v5;
  if (v5)
  {
    [v5 _sourceViewForPresentationInWindow:v4];
  }

  else
  {
    [(UIBarButtonItem *)self _viewForPresenting];
  }
  v7 = ;

  return v7;
}

- (CGRect)_sourceRectForPresentationInWindow:(id)a3
{
  v4 = a3;
  v5 = [(UIBarButtonItem *)self _NSToolbarSourceItem];
  v6 = v5;
  if (v5)
  {
    [v5 _sourceRectForPresentationInWindow:v4];
  }

  else
  {
    [(UIBarButtonItem *)self _rectForPresenting];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end