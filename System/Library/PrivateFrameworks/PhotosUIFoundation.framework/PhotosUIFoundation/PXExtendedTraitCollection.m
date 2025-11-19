@interface PXExtendedTraitCollection
+ (UIEdgeInsets)_simulatedExtraPeripheryInsets;
- (BOOL)insideCollectionDetailsView;
- (CGRect)platformSpecificFullScreenReferenceRect;
- (CGSize)_pendingViewTransitionSize;
- (CGSize)_viewSize;
- (CGSize)layoutReferenceSize;
- (CGSize)windowReferenceSize;
- (PXExtendedTraitCollection)init;
- (PXExtendedTraitCollectionSnapshot)snapshot;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)peripheryInsets;
- (UIEdgeInsets)safeAreaInsets;
- (id)_initForSubclassWithUserInterfaceFeature:(int64_t)a3;
- (id)createTraitCollection;
- (int64_t)preferredBackgroundStyle;
- (void)_invalidateAllAppearingProperties;
- (void)_setLayoutOrientation:(int64_t)a3;
- (void)_setLayoutSizeClass:(int64_t)a3;
- (void)_setLayoutSizeSubclass:(int64_t)a3;
- (void)_setPendingViewTransitionSize:(CGSize)a3;
- (void)_setTraitCollection:(id)a3;
- (void)_setUserInterfaceIdiom:(int64_t)a3;
- (void)_setUserInterfaceLevel:(int64_t)a3;
- (void)_setUserInterfaceStyle:(int64_t)a3;
- (void)_setViewSize:(CGSize)a3;
- (void)_setWindowOrientation:(int64_t)a3;
- (void)_setWindowReferenceSize:(CGSize)a3;
- (void)_updateContentSizeCategoryIfNeeded;
- (void)_updateDisplayScaleIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLayoutDirectionIfNeeded;
- (void)_updateLayoutMarginsIfNeeded;
- (void)_updateLayoutOrientationIfNeeded;
- (void)_updateLayoutReferenceSizeIfNeeded;
- (void)_updateLayoutSizeClassIfNeeded;
- (void)_updatePeripheryInsetsIfNeeded;
- (void)_updateSafeAreaInsetsIfNeeded;
- (void)_updateTraitCollectionIfNeeded;
- (void)_updateUserInterfaceIdiomIfNeeded;
- (void)_updateUserInterfaceLevelIfNeeded;
- (void)_updateUserInterfaceStyleIfNeeded;
- (void)_updateViewSizeIfNeeded;
- (void)_updateWindowOrientationIfNeeded;
- (void)_updateWindowReferenceSizeIfNeeded;
- (void)_viewWillLayoutSubviews;
- (void)backingViewDidLoad;
- (void)dealloc;
- (void)didPerformChanges;
- (void)getContentSizeCategory:(int64_t *)a3;
- (void)getLayoutDirection:(int64_t *)a3;
- (void)getSizeClass:(int64_t *)a3 sizeSubclass:(int64_t *)a4;
- (void)getUserInterfaceIdiom:(int64_t *)a3;
- (void)getUserInterfaceLevel:(int64_t *)a3;
- (void)getUserInterfaceStyle:(int64_t *)a3;
- (void)peripheryInsetsNeedsUpdate;
- (void)setContentSizeCategory:(int64_t)a3;
- (void)setDisplayScale:(double)a3;
- (void)setLayoutDirection:(int64_t)a3;
- (void)setLayoutMargins:(UIEdgeInsets)a3;
- (void)setLayoutReferenceSize:(CGSize)a3;
- (void)setPeripheryInsets:(UIEdgeInsets)a3;
- (void)setSafeAreaInsets:(UIEdgeInsets)a3;
- (void)viewControllerDidMoveToParentViewController:(id)a3;
- (void)viewControllerLayoutOrientationDidChange;
- (void)viewControllerTraitCollectionDidChange;
- (void)viewControllerViewDidAppear;
- (void)viewControllerViewIsAppearing;
- (void)viewControllerViewLayoutMarginsDidChange;
- (void)viewControllerViewSafeAreaInsetsDidChange;
- (void)viewControllerViewWillAppear;
- (void)viewControllerViewWillTransitionToSize:(CGSize)a3;
@end

@implementation PXExtendedTraitCollection

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXExtendedTraitCollection;
  [(PXObservable *)&v3 didPerformChanges];
  [(PXExtendedTraitCollection *)self _updateIfNeeded];
}

- (void)_updateIfNeeded
{
  if ([(PXExtendedTraitCollection *)self _needsUpdate])
  {
    [(PXExtendedTraitCollection *)self _updateViewSizeIfNeeded];
    [(PXExtendedTraitCollection *)self _updateLayoutReferenceSizeIfNeeded];
    [(PXExtendedTraitCollection *)self _updateTraitCollectionIfNeeded];
    [(PXExtendedTraitCollection *)self _updateLayoutSizeClassIfNeeded];
    [(PXExtendedTraitCollection *)self _updateLayoutDirectionIfNeeded];
    [(PXExtendedTraitCollection *)self _updateLayoutOrientationIfNeeded];
    [(PXExtendedTraitCollection *)self _updateContentSizeCategoryIfNeeded];
    [(PXExtendedTraitCollection *)self _updateDisplayScaleIfNeeded];
    [(PXExtendedTraitCollection *)self _updateSafeAreaInsetsIfNeeded];
    [(PXExtendedTraitCollection *)self _updatePeripheryInsetsIfNeeded];
    [(PXExtendedTraitCollection *)self _updateLayoutMarginsIfNeeded];
    [(PXExtendedTraitCollection *)self _updateUserInterfaceIdiomIfNeeded];
    [(PXExtendedTraitCollection *)self _updateUserInterfaceStyleIfNeeded];
    [(PXExtendedTraitCollection *)self _updateUserInterfaceLevelIfNeeded];
    [(PXExtendedTraitCollection *)self _updateWindowReferenceSizeIfNeeded];

    [(PXExtendedTraitCollection *)self _updateWindowOrientationIfNeeded];
  }
}

- (void)_updateViewSizeIfNeeded
{
  if (self->_needsUpdateFlags.viewSize)
  {
    self->_needsUpdateFlags.viewSize = 0;
    v4 = [(PXExtendedTraitCollection *)self viewIfLoaded];
    v9 = v4;
    if (v4)
    {
      [v4 bounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v8 = INFINITY;
      v6 = INFINITY;
    }

    [(PXExtendedTraitCollection *)self _setViewSize:v6, v8];
  }
}

- (void)_updateLayoutReferenceSizeIfNeeded
{
  if (self->_needsUpdateFlags.layoutReferenceSize)
  {
    self->_needsUpdateFlags.layoutReferenceSize = 0;
    [(PXExtendedTraitCollection *)self _pendingViewTransitionSize];
    if (v5 == INFINITY && v4 == INFINITY)
    {
      [(PXExtendedTraitCollection *)self _viewSize];
    }

    [(PXExtendedTraitCollection *)self setLayoutReferenceSize:?];
  }
}

- (void)_updateTraitCollectionIfNeeded
{
  if (self->_needsUpdateFlags.traitCollection)
  {
    self->_needsUpdateFlags.traitCollection = 0;
    v4 = [(PXExtendedTraitCollection *)self createTraitCollection];
    [(PXExtendedTraitCollection *)self _setTraitCollection:v4];
  }
}

- (void)_updateLayoutSizeClassIfNeeded
{
  if (self->_needsUpdateFlags.layoutSizeClass)
  {
    v6[3] = v2;
    v6[4] = v3;
    self->_needsUpdateFlags.layoutSizeClass = 0;
    v5 = 0;
    v6[0] = 0;
    [(PXExtendedTraitCollection *)self getSizeClass:v6 sizeSubclass:&v5];
    [(PXExtendedTraitCollection *)self _setLayoutSizeClass:v6[0]];
    [(PXExtendedTraitCollection *)self _setLayoutSizeSubclass:v5];
  }
}

- (void)_updateLayoutDirectionIfNeeded
{
  if (self->_needsUpdateFlags.layoutDirection)
  {
    v5[3] = v2;
    v5[4] = v3;
    self->_needsUpdateFlags.layoutDirection = 0;
    v5[0] = 0;
    [(PXExtendedTraitCollection *)self getLayoutDirection:v5];
    [(PXExtendedTraitCollection *)self setLayoutDirection:v5[0]];
  }
}

- (void)_updateLayoutOrientationIfNeeded
{
  if (self->_needsUpdateFlags.layoutOrientation)
  {
    self->_needsUpdateFlags.layoutOrientation = 0;
    [(PXExtendedTraitCollection *)self layoutReferenceSize];
    v6 = 0;
    if (v4 != 0.0 && v5 != 0.0)
    {
      if (v4 == INFINITY && v5 == INFINITY)
      {
        v6 = 0;
      }

      else
      {
        PXSizeGetAspectRatio(v4, v5);
        v8 = 2;
        if (v7 <= 1.0)
        {
          v8 = 0;
        }

        if (v7 >= 1.0)
        {
          v6 = v8;
        }

        else
        {
          v6 = 1;
        }
      }
    }

    [(PXExtendedTraitCollection *)self _setLayoutOrientation:v6];
  }
}

- (void)_updateContentSizeCategoryIfNeeded
{
  if (self->_needsUpdateFlags.contentSizeCategory)
  {
    v5[3] = v2;
    v5[4] = v3;
    self->_needsUpdateFlags.contentSizeCategory = 0;
    v5[0] = 0;
    [(PXExtendedTraitCollection *)self getContentSizeCategory:v5];
    [(PXExtendedTraitCollection *)self setContentSizeCategory:v5[0]];
  }
}

- (void)_updateDisplayScaleIfNeeded
{
  if (self->_needsUpdateFlags.displayScale)
  {
    self->_needsUpdateFlags.displayScale = 0;
    v4 = [(PXExtendedTraitCollection *)self traitCollection];
    [(PXExtendedTraitCollection *)self displayScaleFromTraitCollection:v4];
    v6 = v5;

    [(PXExtendedTraitCollection *)self setDisplayScale:v6];
  }
}

- (void)_updateSafeAreaInsetsIfNeeded
{
  if (self->_needsUpdateFlags.safeAreaInsets)
  {
    self->_needsUpdateFlags.safeAreaInsets = 0;
    v4 = [(PXExtendedTraitCollection *)self viewIfLoaded];
    [v4 px_safeAreaInsets];
    [(PXExtendedTraitCollection *)self setSafeAreaInsets:?];
  }
}

- (void)_updatePeripheryInsetsIfNeeded
{
  if (self->_needsUpdateFlags.peripheryInsets)
  {
    self->_needsUpdateFlags.peripheryInsets = 0;
    v4 = [(PXExtendedTraitCollection *)self viewIfLoaded];
    v17 = v4;
    if (v4)
    {
      [v4 px_peripheryInsets];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
    }

    else
    {
      v12 = 0.0;
      v10 = 0.0;
      v8 = 0.0;
      v6 = 0.0;
    }

    [objc_opt_class() _simulatedExtraPeripheryInsets];
    [(PXExtendedTraitCollection *)self setPeripheryInsets:v6 + v13, v8 + v14, v10 + v15, v12 + v16];
  }
}

- (void)_updateLayoutMarginsIfNeeded
{
  if (self->_needsUpdateFlags.layoutMargins)
  {
    self->_needsUpdateFlags.layoutMargins = 0;
    v4 = [(PXExtendedTraitCollection *)self viewIfLoaded];
    [v4 px_layoutMargins];
    [(PXExtendedTraitCollection *)self setLayoutMargins:?];
  }
}

- (void)_updateUserInterfaceIdiomIfNeeded
{
  if (self->_needsUpdateFlags.userInterfaceIdiom)
  {
    v5[3] = v2;
    v5[4] = v3;
    self->_needsUpdateFlags.userInterfaceIdiom = 0;
    v5[0] = 0;
    [(PXExtendedTraitCollection *)self getUserInterfaceIdiom:v5];
    [(PXExtendedTraitCollection *)self _setUserInterfaceIdiom:v5[0]];
  }
}

- (void)_updateUserInterfaceStyleIfNeeded
{
  if (self->_needsUpdateFlags.userInterfaceStyle)
  {
    v5[3] = v2;
    v5[4] = v3;
    self->_needsUpdateFlags.userInterfaceStyle = 0;
    v5[0] = 0;
    [(PXExtendedTraitCollection *)self getUserInterfaceStyle:v5];
    [(PXExtendedTraitCollection *)self _setUserInterfaceStyle:v5[0]];
  }
}

- (void)_updateUserInterfaceLevelIfNeeded
{
  if (self->_needsUpdateFlags.userInterfaceLevel)
  {
    v5[3] = v2;
    v5[4] = v3;
    self->_needsUpdateFlags.userInterfaceLevel = 0;
    v5[0] = -1;
    [(PXExtendedTraitCollection *)self getUserInterfaceLevel:v5];
    [(PXExtendedTraitCollection *)self _setUserInterfaceLevel:v5[0]];
  }
}

- (void)_updateWindowReferenceSizeIfNeeded
{
  if (self->_needsUpdateFlags.windowReferenceSize)
  {
    self->_needsUpdateFlags.windowReferenceSize = 0;
    v4 = [(PXExtendedTraitCollection *)self viewIfLoaded];
    [v4 px_windowReferenceSize];
    v6 = v5;
    v8 = v7;

    [(PXExtendedTraitCollection *)self _setWindowReferenceSize:v6, v8];
  }
}

- (void)_updateWindowOrientationIfNeeded
{
  if (self->_needsUpdateFlags.windowOrientation)
  {
    self->_needsUpdateFlags.windowOrientation = 0;
    [(PXExtendedTraitCollection *)self windowReferenceSize];
    v6 = 0;
    if (v4 != 0.0 && v5 != 0.0)
    {
      if (v4 == INFINITY && v5 == INFINITY)
      {
        v6 = 0;
      }

      else
      {
        PXSizeGetAspectRatio(v4, v5);
        v8 = 2;
        if (v7 <= 1.0)
        {
          v8 = 0;
        }

        if (v7 >= 1.0)
        {
          v6 = v8;
        }

        else
        {
          v6 = 1;
        }
      }
    }

    [(PXExtendedTraitCollection *)self _setWindowOrientation:v6];
  }
}

- (void)viewControllerViewWillAppear
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __57__PXExtendedTraitCollection_viewControllerViewWillAppear__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

- (void)_invalidateAllAppearingProperties
{
  [(PXExtendedTraitCollection *)self invalidateViewSize];
  [(PXExtendedTraitCollection *)self invalidateTraitCollection];
  [(PXExtendedTraitCollection *)self invalidateSafeAreaInsets];
  [(PXExtendedTraitCollection *)self invalidatePeripheryInsets];
  [(PXExtendedTraitCollection *)self invalidateLayoutMargins];

  [(PXExtendedTraitCollection *)self invalidateLayoutDirection];
}

- (CGSize)_pendingViewTransitionSize
{
  width = self->__pendingViewTransitionSize.width;
  height = self->__pendingViewTransitionSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_viewSize
{
  width = self->__viewSize.width;
  height = self->__viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)createTraitCollection
{
  v2 = [(PXExtendedTraitCollection *)self traitEnvironment];
  v3 = [v2 traitCollection];

  return v3;
}

- (CGSize)layoutReferenceSize
{
  width = self->_layoutReferenceSize.width;
  height = self->_layoutReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (UIEdgeInsets)_simulatedExtraPeripheryInsets
{
  if (PFOSVariantHasInternalUI())
  {
    if (_simulatedExtraPeripheryInsets_onceToken != -1)
    {
      dispatch_once(&_simulatedExtraPeripheryInsets_onceToken, &__block_literal_global_3361);
    }

    v2 = &_simulatedExtraPeripheryInsets_extraInsets_3;
    v3 = &_simulatedExtraPeripheryInsets_extraInsets_2;
    v4 = &_simulatedExtraPeripheryInsets_extraInsets_0;
    v5 = &_simulatedExtraPeripheryInsets_extraInsets_1;
  }

  else
  {
    v4 = &PXEdgeInsetsZero;
    v2 = &qword_1B4075358;
    v3 = &qword_1B4075350;
    v5 = &qword_1B4075348;
  }

  v6 = *v2;
  v7 = *v3;
  v8 = *v4;
  v9 = *v5;
  result.right = v6;
  result.bottom = v7;
  result.left = v9;
  result.top = v8;
  return result;
}

void __59__PXExtendedTraitCollection__simulatedExtraPeripheryInsets__block_invoke()
{
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v7 doubleForKey:@"PXExtendedTraitCollectionExtraPeripheryInsets-Top"];
  v1 = v0;
  [v7 doubleForKey:@"PXExtendedTraitCollectionExtraPeripheryInsets-Left"];
  v3 = v2;
  [v7 doubleForKey:@"PXExtendedTraitCollectionExtraPeripheryInsets-Bottom"];
  v5 = v4;
  [v7 doubleForKey:@"PXExtendedTraitCollectionExtraPeripheryInsets-Right"];
  _simulatedExtraPeripheryInsets_extraInsets_0 = v1;
  _simulatedExtraPeripheryInsets_extraInsets_1 = v3;
  _simulatedExtraPeripheryInsets_extraInsets_2 = v5;
  _simulatedExtraPeripheryInsets_extraInsets_3 = v6;
}

- (void)viewControllerTraitCollectionDidChange
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __67__PXExtendedTraitCollection_viewControllerTraitCollectionDidChange__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

uint64_t __67__PXExtendedTraitCollection_viewControllerTraitCollectionDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateTraitCollection];
  [*(a1 + 32) invalidateSafeAreaInsets];
  v2 = *(a1 + 32);

  return [v2 invalidateLayoutMargins];
}

- (void)viewControllerViewLayoutMarginsDidChange
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __69__PXExtendedTraitCollection_viewControllerViewLayoutMarginsDidChange__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

- (void)viewControllerViewSafeAreaInsetsDidChange
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __70__PXExtendedTraitCollection_viewControllerViewSafeAreaInsetsDidChange__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

- (void)peripheryInsetsNeedsUpdate
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __55__PXExtendedTraitCollection_peripheryInsetsNeedsUpdate__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

- (void)viewControllerViewIsAppearing
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __58__PXExtendedTraitCollection_viewControllerViewIsAppearing__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

- (void)_viewWillLayoutSubviews
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __52__PXExtendedTraitCollection__viewWillLayoutSubviews__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

uint64_t __52__PXExtendedTraitCollection__viewWillLayoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setPendingViewTransitionSize:{INFINITY, INFINITY}];
  [*(a1 + 32) invalidateViewSize];
  [*(a1 + 32) invalidateWindowReferenceSize];
  [*(a1 + 32) invalidateSafeAreaInsets];
  v2 = *(a1 + 32);

  return [v2 invalidateLayoutMargins];
}

- (CGSize)windowReferenceSize
{
  width = self->_windowReferenceSize.width;
  height = self->_windowReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)viewControllerViewDidAppear
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__PXExtendedTraitCollection_viewControllerViewDidAppear__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

uint64_t __56__PXExtendedTraitCollection_viewControllerViewDidAppear__block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateWindowReferenceSize];
  [*(a1 + 32) invalidateDisplayScale];
  [*(a1 + 32) invalidateTraitCollection];
  [*(a1 + 32) invalidateSafeAreaInsets];
  [*(a1 + 32) invalidatePeripheryInsets];
  v2 = *(a1 + 32);

  return [v2 invalidateLayoutMargins];
}

- (int64_t)preferredBackgroundStyle
{
  v2 = self;
  v3 = sub_1B3F961E4();

  return v3;
}

- (BOOL)insideCollectionDetailsView
{
  v2 = self;
  v3 = sub_1B3F96270();

  return v3 & 1;
}

- (UIEdgeInsets)peripheryInsets
{
  top = self->_peripheryInsets.top;
  left = self->_peripheryInsets.left;
  bottom = self->_peripheryInsets.bottom;
  right = self->_peripheryInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_setWindowOrientation:(int64_t)a3
{
  if (self->_windowOrientation != a3)
  {
    self->_windowOrientation = a3;
    [(PXObservable *)self signalChange:0x40000];
  }
}

- (void)_setWindowReferenceSize:(CGSize)a3
{
  if (a3.width != self->_windowReferenceSize.width || a3.height != self->_windowReferenceSize.height)
  {
    self->_windowReferenceSize = a3;
    [(PXObservable *)self signalChange:0x20000];

    [(PXExtendedTraitCollection *)self _invalidateWindowOrientation];
  }
}

- (void)setContentSizeCategory:(int64_t)a3
{
  if (self->_contentSizeCategory != a3)
  {
    self->_contentSizeCategory = a3;
    [(PXObservable *)self signalChange:2048];
  }
}

- (void)setLayoutMargins:(UIEdgeInsets)a3
{
  p_layoutMargins = &self->_layoutMargins;
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  if (a3.left != left || a3.top != top || a3.right != right || a3.bottom != bottom)
  {
    v11 = a3.right;
    v12 = a3.bottom;
    v13 = a3.left;
    v14 = a3.top;
    if (PXEdgeInsetsEqualToEdgeInsetsForEdges(10, self->_layoutMargins.top, self->_layoutMargins.left, self->_layoutMargins.bottom, self->_layoutMargins.right, a3.top, a3.left, a3.bottom, a3.right))
    {
      v16 = 512;
    }

    else
    {
      v16 = 33280;
    }

    v17 = PXEdgeInsetsEqualToEdgeInsetsForEdges(5, top, left, bottom, right, v14, v13, v12, v11);
    p_layoutMargins->top = v14;
    p_layoutMargins->left = v13;
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 | 0x10000;
    }

    p_layoutMargins->bottom = v12;
    p_layoutMargins->right = v11;

    [(PXObservable *)self signalChange:v18];
  }
}

- (void)setPeripheryInsets:(UIEdgeInsets)a3
{
  v4 = a3.left == self->_peripheryInsets.left && a3.top == self->_peripheryInsets.top && a3.right == self->_peripheryInsets.right;
  if (!v4 || a3.bottom != self->_peripheryInsets.bottom)
  {
    self->_peripheryInsets = a3;
    [(PXObservable *)self signalChange:0x80000];
  }
}

- (void)setSafeAreaInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_safeAreaInsets = &self->_safeAreaInsets;
  v9 = self->_safeAreaInsets.bottom;
  v10 = self->_safeAreaInsets.right;
  v12 = self->_safeAreaInsets.top;
  v11 = self->_safeAreaInsets.left;
  if (vabdd_f64(a3.left, v11) > 0.00000999999975 || vabdd_f64(a3.top, v12) > 0.00000999999975 || vabdd_f64(a3.right, v10) > 0.00000999999975 || vabdd_f64(a3.bottom, v9) > 0.00000999999975)
  {
    if (PXEdgeInsetsEqualToEdgeInsetsForEdges(10, self->_safeAreaInsets.top, self->_safeAreaInsets.left, self->_safeAreaInsets.bottom, self->_safeAreaInsets.right, a3.top, a3.left, a3.bottom, a3.right))
    {
      v13 = 256;
    }

    else
    {
      v13 = 8448;
    }

    v14 = PXEdgeInsetsEqualToEdgeInsetsForEdges(5, v12, v11, v9, v10, top, left, bottom, right);
    p_safeAreaInsets->top = top;
    p_safeAreaInsets->left = left;
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 | 0x4000;
    }

    p_safeAreaInsets->bottom = bottom;
    p_safeAreaInsets->right = right;

    [(PXObservable *)self signalChange:v15];
  }
}

- (void)setDisplayScale:(double)a3
{
  if (self->_displayScale != a3)
  {
    self->_displayScale = a3;
    [(PXObservable *)self signalChange:32];
  }
}

- (void)_setUserInterfaceLevel:(int64_t)a3
{
  if (self->_userInterfaceLevel != a3)
  {
    self->_userInterfaceLevel = a3;
    [(PXObservable *)self signalChange:4096];
  }
}

- (void)_setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(PXObservable *)self signalChange:1024];
  }
}

- (void)_setUserInterfaceIdiom:(int64_t)a3
{
  if (self->_userInterfaceIdiom != a3)
  {
    self->_userInterfaceIdiom = a3;
    [(PXObservable *)self signalChange:64];
  }
}

- (void)_setLayoutOrientation:(int64_t)a3
{
  if (self->_layoutOrientation != a3)
  {
    self->_layoutOrientation = a3;
    [(PXObservable *)self signalChange:8];
  }
}

- (void)setLayoutDirection:(int64_t)a3
{
  if (self->_layoutDirection != a3)
  {
    self->_layoutDirection = a3;
    [(PXObservable *)self signalChange:128];
  }
}

- (void)setLayoutReferenceSize:(CGSize)a3
{
  if (a3.width != self->_layoutReferenceSize.width || a3.height != self->_layoutReferenceSize.height)
  {
    self->_layoutReferenceSize = a3;
    [(PXObservable *)self signalChange:16];
    [(PXExtendedTraitCollection *)self invalidateLayoutSizeClass];

    [(PXExtendedTraitCollection *)self _invalidateLayoutOrientation];
  }
}

- (void)_setPendingViewTransitionSize:(CGSize)a3
{
  if (a3.width != self->__pendingViewTransitionSize.width || a3.height != self->__pendingViewTransitionSize.height)
  {
    self->__pendingViewTransitionSize = a3;
    [(PXExtendedTraitCollection *)self _invalidateLayoutReferenceSize];
  }
}

- (void)_setViewSize:(CGSize)a3
{
  if (a3.width != self->__viewSize.width || a3.height != self->__viewSize.height)
  {
    self->__viewSize = a3;
    [(PXExtendedTraitCollection *)self _invalidateLayoutReferenceSize];
  }
}

- (void)_setTraitCollection:(id)a3
{
  v5 = a3;
  if (self->_traitCollection != v5 && ([(PXAnonymousTraitCollection *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_traitCollection, a3);
    [(PXObservable *)self signalChange:1];
    [(PXExtendedTraitCollection *)self invalidateLayoutSizeClass];
    [(PXExtendedTraitCollection *)self invalidateUserInterfaceIdiom];
    [(PXExtendedTraitCollection *)self invalidateUserInterfaceStyle];
    [(PXExtendedTraitCollection *)self invalidateUserInterfaceLevel];
    [(PXExtendedTraitCollection *)self invalidateContentSizeCategory];
    [(PXExtendedTraitCollection *)self invalidateDisplayScale];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_setLayoutSizeSubclass:(int64_t)a3
{
  if (self->_layoutSizeSubclass != a3)
  {
    self->_layoutSizeSubclass = a3;
    [(PXObservable *)self signalChange:4];
  }
}

- (void)_setLayoutSizeClass:(int64_t)a3
{
  if (self->_layoutSizeClass != a3)
  {
    self->_layoutSizeClass = a3;
    [(PXObservable *)self signalChange:2];
  }
}

- (void)viewControllerDidMoveToParentViewController:(id)a3
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __73__PXExtendedTraitCollection_viewControllerDidMoveToParentViewController___block_invoke;
    v4[3] = &unk_1E7BB69B0;
    v4[4] = self;
    [(PXObservable *)self performChanges:v4];
  }
}

uint64_t __73__PXExtendedTraitCollection_viewControllerDidMoveToParentViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateWindowReferenceSize];
  [*(a1 + 32) invalidateSafeAreaInsets];
  v2 = *(a1 + 32);

  return [v2 invalidateLayoutMargins];
}

- (void)viewControllerLayoutOrientationDidChange
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __69__PXExtendedTraitCollection_viewControllerLayoutOrientationDidChange__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

- (void)viewControllerViewWillTransitionToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PXExtendedTraitCollection_viewControllerViewWillTransitionToSize___block_invoke;
    v6[3] = &unk_1E7BB5890;
    v6[4] = self;
    *&v6[5] = width;
    *&v6[6] = height;
    [(PXObservable *)self performChanges:v6];
  }
}

- (void)backingViewDidLoad
{
  if ([(PXExtendedTraitCollection *)self isEnabled])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __47__PXExtendedTraitCollection_backingViewDidLoad__block_invoke;
    v3[3] = &unk_1E7BB69B0;
    v3[4] = self;
    [(PXObservable *)self performChanges:v3];
  }
}

uint64_t __47__PXExtendedTraitCollection_backingViewDidLoad__block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateViewSize];
  [*(a1 + 32) invalidateTraitCollection];
  [*(a1 + 32) invalidateSafeAreaInsets];
  [*(a1 + 32) invalidateLayoutMargins];
  v2 = *(a1 + 32);

  return [v2 invalidateLayoutDirection];
}

- (void)dealloc
{
  [(PXExtendedTraitCollection *)self unregisterObservations];
  v3.receiver = self;
  v3.super_class = PXExtendedTraitCollection;
  [(PXExtendedTraitCollection *)&v3 dealloc];
}

- (id)_initForSubclassWithUserInterfaceFeature:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = PXExtendedTraitCollection;
  v4 = [(PXObservable *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_layoutReferenceSize = PXSizeNull;
    v4->_layoutDirection = 0;
    v4->_layoutOrientation = 0;
    v4->_windowReferenceSize = PXSizeNull;
    v4->_windowOrientation = 0;
    v4->_contentSizeCategory = 0;
    v4->_displayScale = 1.0;
    v4->__viewSize = PXSizeNull;
    v4->__pendingViewTransitionSize = PXSizeNull;
    v4->_userInterfaceFeature = a3;
    v4->_userInterfaceStyle = 0;
    v4->_userInterfaceLevel = -1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__PXExtendedTraitCollection__initForSubclassWithUserInterfaceFeature___block_invoke;
    v8[3] = &unk_1E7BB69B0;
    v6 = v4;
    v9 = v6;
    [(PXObservable *)v6 performChanges:v8];
    [(PXExtendedTraitCollection *)v6 registerObservations];
  }

  return v5;
}

- (PXExtendedTraitCollection)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXExtendedTraitCollection.m" lineNumber:98 description:{@"%s is not available as initializer", "-[PXExtendedTraitCollection init]"}];

  abort();
}

- (PXExtendedTraitCollectionSnapshot)snapshot
{
  v2 = [[PXExtendedTraitCollectionSnapshot alloc] _initWithExtendedTraitCollection:self];

  return v2;
}

- (CGRect)platformSpecificFullScreenReferenceRect
{
  v2 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)getContentSizeCategory:(int64_t *)a3
{
  v4 = [(PXExtendedTraitCollection *)self traitEnvironment];
  v6 = [v4 traitCollection];

  v5 = v6;
  if (v6)
  {
    v5 = PXPreferredContentSizeCategoryFromUITraitCollection(v6);
  }

  if (a3)
  {
    *a3 = v5;
  }
}

- (void)getSizeClass:(int64_t *)a3 sizeSubclass:(int64_t *)a4
{
  [(PXExtendedTraitCollection *)self layoutReferenceSize];
  v8 = v7;
  v10 = v9;
  v11 = [(PXExtendedTraitCollection *)self traitEnvironment];
  v15 = [v11 traitCollection];

  v12 = PXUserInterfaceSizeClassFromUITraitCollection(v15);
  v13 = v12;
  if (v12 == 2)
  {
    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v14 = fmin(v10, v8);
    v13 = 2;
    if (v14 <= 350.0)
    {
      v13 = 1;
    }

    if (v14 > 410.0)
    {
      v13 = 3;
    }

LABEL_7:
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = 0;
  if (a3)
  {
LABEL_8:
    *a3 = v12;
  }

LABEL_9:
  if (a4)
  {
    *a4 = v13;
  }
}

- (void)getUserInterfaceLevel:(int64_t *)a3
{
  v4 = [(PXExtendedTraitCollection *)self traitEnvironment];
  v7 = [v4 traitCollection];

  v5 = [v7 userInterfaceLevel];
  if (a3)
  {
    v6 = v5 == 1;
    if (v5 == -1)
    {
      v6 = -1;
    }

    *a3 = v6;
  }
}

- (void)getUserInterfaceStyle:(int64_t *)a3
{
  v4 = [(PXExtendedTraitCollection *)self traitEnvironment];
  v7 = [v4 traitCollection];

  v5 = [v7 userInterfaceStyle];
  if (a3)
  {
    v6 = v5 == 1;
    if (v5 == 2)
    {
      v6 = 2;
    }

    *a3 = v6;
  }
}

- (void)getLayoutDirection:(int64_t *)a3
{
  v4 = [(PXExtendedTraitCollection *)self traitEnvironment];
  v7 = [v4 traitCollection];

  v5 = [v7 layoutDirection];
  if (a3)
  {
    v6 = 2 * (v5 == 1);
    if (!v5)
    {
      v6 = 1;
    }

    *a3 = v6;
  }
}

- (void)getUserInterfaceIdiom:(int64_t *)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 > 6)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1B40752C8[v5];
  }

  *a3 = v6;
}

@end