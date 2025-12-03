@interface PXMockExtendedTraitCollection
- (CGSize)layoutReferenceSize;
- (PXMockExtendedTraitCollection)initWithFormFactor:(int64_t)factor orientation:(int64_t)orientation visibleChromeElements:(unint64_t)elements;
- (PXMockExtendedTraitCollection)initWithLayoutSizeClass:(int64_t)class;
- (PXMockExtendedTraitCollection)initWithViewController:(id)controller;
- (UIEdgeInsets)safeAreaInsets;
- (void)_updateLayoutReferenceSizeAndDisplayScale;
- (void)_updateLayoutSizeClass;
- (void)_updateSafeAreaInsets;
- (void)didPerformChanges;
- (void)performChanges:(id)changes;
- (void)setContentSizeCategory:(int64_t)category;
- (void)setDisplayScale:(double)scale;
- (void)setFormFactor:(int64_t)factor;
- (void)setLayoutOrientation:(int64_t)orientation;
- (void)setLayoutReferenceSize:(CGSize)size;
- (void)setLayoutSizeClass:(int64_t)class;
- (void)setUserInterfaceIdiom:(int64_t)idiom;
- (void)setVisibleChromeElements:(unint64_t)elements;
- (void)setWindowOrientation:(int64_t)orientation;
@end

@implementation PXMockExtendedTraitCollection

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

- (CGSize)layoutReferenceSize
{
  width = self->_layoutReferenceSize.width;
  height = self->_layoutReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateSafeAreaInsets
{
  formFactor = [(PXMockExtendedTraitCollection *)self formFactor];
  if (formFactor)
  {
    v5 = formFactor;
    layoutOrientation = [(PXMockExtendedTraitCollection *)self layoutOrientation];
    v7 = 0.0;
    v8 = NAN;
    v9 = 20.0;
    v10 = NAN;
    v11 = 44.0;
    if (layoutOrientation == 1)
    {
      v10 = 44.0;
    }

    else
    {
      v11 = 0.0;
    }

    if (((1 << v5) & 0x70) == 0)
    {
      v10 = NAN;
      v11 = 0.0;
    }

    if (((1 << v5) & 0xF8E) != 0)
    {
      v12 = 0.0;
    }

    else
    {
      v9 = v10;
      v12 = v11;
    }

    if (v5 <= 0xB)
    {
      v13 = v9;
    }

    else
    {
      v13 = NAN;
    }

    if (v5 <= 0xB)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = NAN;
    if (v5 <= 0xB)
    {
      if (((1 << v5) & 0x58E) != 0)
      {
        v15 = 49.0;
      }

      else if (((1 << v5) & 0x70) != 0)
      {
        if (layoutOrientation == 1)
        {
          v15 = 83.0;
        }

        else
        {
          v15 = NAN;
        }

        v8 = 34.0;
        v9 = 0.0;
        if (layoutOrientation == 1)
        {
          v7 = 34.0;
        }

        else
        {
          v7 = 0.0;
        }
      }

      else if (((1 << v5) & 0xA00) != 0)
      {
        v15 = 65.0;
      }
    }

    v16 = *(off_1E7721FA8 + 1);
    v17 = *(off_1E7721FA8 + 3);
    v18 = [(PXMockExtendedTraitCollection *)self visibleChromeElements:v8];
    v19 = v18;
    if (v18)
    {
      v20 = v13;
    }

    else
    {
      v20 = v14;
    }

    v21 = NAN;
    if ((v18 & 2) != 0)
    {
      v22 = NAN;
    }

    else
    {
      v22 = v20;
    }

    if ((v18 & 4) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26.top = v22;
      v26.left = v16;
      v26.bottom = NAN;
      v26.right = v17;
      v24 = NSStringFromUIEdgeInsets(v26);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMockExtendedTraitCollection.m" lineNumber:493 description:{@"unknown value for chrome elements %li form factor %li (%@)", v19, v5, v24}];
    }

    else if ((v18 & 8) != 0)
    {
      v21 = v15;
    }

    else
    {
      v21 = v7;
    }

    [(PXMockExtendedTraitCollection *)self setSafeAreaInsets:v22, v16, v21, v17];
  }
}

- (void)_updateLayoutReferenceSizeAndDisplayScale
{
  switch([(PXMockExtendedTraitCollection *)self formFactor])
  {
    case 0:
      layoutSizeClass = [(PXMockExtendedTraitCollection *)self layoutSizeClass];
      if (layoutSizeClass >= 3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXMockExtendedTraitCollection.m" lineNumber:334 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v6 = dbl_1A5381DA0[layoutSizeClass];
      v5 = dbl_1A5381DB8[layoutSizeClass];
      v4 = 2.0;
      break;
    case 1:
      v4 = 2.0;
      v5 = 320.0;
      v6 = 568.0;
      break;
    case 2:
      v4 = 2.0;
      v5 = 375.0;
      v6 = 667.0;
      break;
    case 3:
      v4 = 3.0;
      v5 = 414.0;
      *&v7 = 736.0;
      goto LABEL_15;
    case 4:
      v4 = 3.0;
      v5 = 375.0;
      v6 = 812.0;
      break;
    case 5:
      v4 = 2.0;
      goto LABEL_14;
    case 6:
      v4 = 3.0;
LABEL_14:
      v5 = 414.0;
      *&v7 = 896.0;
      goto LABEL_15;
    case 7:
      v4 = 2.0;
      v5 = 768.0;
      *&v7 = 1024.0;
LABEL_15:
      v6 = *&v7;
      break;
    case 8:
      v4 = 2.0;
      v5 = 834.0;
      v6 = 1112.0;
      break;
    case 9:
      v4 = 2.0;
      v5 = 834.0;
      v6 = 1194.0;
      break;
    case 10:
    case 11:
      v4 = 2.0;
      v5 = 1024.0;
      v6 = 1366.0;
      break;
    case 12:
      v4 = 2.0;
      v5 = 1680.0;
      v6 = 1050.0;
      break;
    case 13:
      v4 = 1.0;
      v5 = 1920.0;
      v6 = 1080.0;
      break;
    default:
      v4 = 0.0;
      v6 = 0.0;
      v5 = 0.0;
      break;
  }

  if (v5 >= v6)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v5 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v5;
  }

  layoutOrientation = [(PXMockExtendedTraitCollection *)self layoutOrientation];
  if (layoutOrientation == 1)
  {
    v12 = v10;
    v10 = v9;
  }

  else
  {
    if (layoutOrientation != 2)
    {
      goto LABEL_27;
    }

    v12 = v9;
  }

  [(PXMockExtendedTraitCollection *)self setLayoutReferenceSize:v12, v10];
LABEL_27:

  [(PXMockExtendedTraitCollection *)self setDisplayScale:v4];
}

- (void)_updateLayoutSizeClass
{
  if ([(PXMockExtendedTraitCollection *)self layoutOrientation])
  {
    v3 = [(PXMockExtendedTraitCollection *)self formFactor]- 1;
    if (v3 <= 0xC)
    {
      v4 = qword_1A5381D38[v3];

      [(PXMockExtendedTraitCollection *)self setLayoutSizeClass:v4];
    }
  }
}

- (void)setWindowOrientation:(int64_t)orientation
{
  if (self->_windowOrientation != orientation)
  {
    self->_windowOrientation = orientation;
    [(PXMockExtendedTraitCollection *)self signalChange:0x40000];
  }
}

- (void)setContentSizeCategory:(int64_t)category
{
  if (self->_contentSizeCategory != category)
  {
    self->_contentSizeCategory = category;
    [(PXMockExtendedTraitCollection *)self signalChange:2048];
  }
}

- (void)setDisplayScale:(double)scale
{
  if (self->_displayScale != scale)
  {
    self->_displayScale = scale;
    [(PXMockExtendedTraitCollection *)self signalChange:32];
  }
}

- (void)setVisibleChromeElements:(unint64_t)elements
{
  if (self->_visibleChromeElements != elements)
  {
    self->_visibleChromeElements = elements;
    [(PXMockExtendedTraitCollection *)self _invalidateSafeAreaInsets];
  }
}

- (void)setFormFactor:(int64_t)factor
{
  if (self->_formFactor != factor)
  {
    self->_formFactor = factor;
    [(PXMockExtendedTraitCollection *)self _invalidateLayoutSizeClass];
    [(PXMockExtendedTraitCollection *)self _invalidateLayoutReferenceSizeAndDisplayScale];

    [(PXMockExtendedTraitCollection *)self _invalidateSafeAreaInsets];
  }
}

- (void)setUserInterfaceIdiom:(int64_t)idiom
{
  if (self->_userInterfaceIdiom != idiom)
  {
    self->_userInterfaceIdiom = idiom;
    [(PXMockExtendedTraitCollection *)self signalChange:64];
  }
}

- (void)setLayoutReferenceSize:(CGSize)size
{
  if (size.width != self->_layoutReferenceSize.width || size.height != self->_layoutReferenceSize.height)
  {
    self->_layoutReferenceSize = size;
    [(PXMockExtendedTraitCollection *)self signalChange:16];
  }
}

- (void)setLayoutOrientation:(int64_t)orientation
{
  if (self->_layoutOrientation != orientation)
  {
    self->_layoutOrientation = orientation;
    [(PXMockExtendedTraitCollection *)self signalChange:8];
    [(PXMockExtendedTraitCollection *)self _invalidateLayoutSizeClass];
    [(PXMockExtendedTraitCollection *)self _invalidateLayoutReferenceSizeAndDisplayScale];

    [(PXMockExtendedTraitCollection *)self _invalidateSafeAreaInsets];
  }
}

- (void)setLayoutSizeClass:(int64_t)class
{
  if (self->_layoutSizeClass != class)
  {
    self->_layoutSizeClass = class;
    [(PXMockExtendedTraitCollection *)self signalChange:2];
    [(PXMockExtendedTraitCollection *)self _invalidateLayoutReferenceSizeAndDisplayScale];

    [(PXMockExtendedTraitCollection *)self _invalidateSafeAreaInsets];
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXMockExtendedTraitCollection;
  [(PXMockExtendedTraitCollection *)&v3 didPerformChanges];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXMockExtendedTraitCollection;
  [(PXMockExtendedTraitCollection *)&v3 performChanges:changes];
}

- (PXMockExtendedTraitCollection)initWithFormFactor:(int64_t)factor orientation:(int64_t)orientation visibleChromeElements:(unint64_t)elements
{
  v8 = [(PXMockExtendedTraitCollection *)self initWithViewController:0];
  v9 = v8;
  if (v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__PXMockExtendedTraitCollection_initWithFormFactor_orientation_visibleChromeElements___block_invoke;
    v11[3] = &__block_descriptor_56_e48_v16__0___PXMockMutableExtendedTraitCollection__8l;
    v11[4] = factor;
    v11[5] = orientation;
    v11[6] = elements;
    [(PXMockExtendedTraitCollection *)v8 performChanges:v11];
  }

  return v9;
}

void __86__PXMockExtendedTraitCollection_initWithFormFactor_orientation_visibleChromeElements___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setUserInterfaceIdiom:IdiomForFormFactor(v3)];
  [v4 setFormFactor:a1[4]];
  [v4 setLayoutOrientation:a1[5]];
  [v4 setWindowOrientation:a1[5]];
  [v4 setVisibleChromeElements:a1[6]];
}

- (PXMockExtendedTraitCollection)initWithLayoutSizeClass:(int64_t)class
{
  v4 = [(PXMockExtendedTraitCollection *)self initWithViewController:0];
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PXMockExtendedTraitCollection_initWithLayoutSizeClass___block_invoke;
    v7[3] = &__block_descriptor_40_e48_v16__0___PXMockMutableExtendedTraitCollection__8l;
    v7[4] = class;
    [(PXMockExtendedTraitCollection *)v4 performChanges:v7];
  }

  return v5;
}

void __57__PXMockExtendedTraitCollection_initWithLayoutSizeClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setLayoutSizeClass:v2];
  [v3 setLayoutOrientation:1];
}

- (PXMockExtendedTraitCollection)initWithViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = PXMockExtendedTraitCollection;
  v3 = [(PXMockExtendedTraitCollection *)&v7 _initForSubclassWithUserInterfaceFeature:0];
  if (v3)
  {
    v4 = [[off_1E7721940 alloc] initWithTarget:v3 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v3->_updater;
    v3->_updater = v4;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateLayoutSizeClass];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateLayoutReferenceSizeAndDisplayScale];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateSafeAreaInsets];
    [(PXMockExtendedTraitCollection *)v3 setEnabled:1];
  }

  return v3;
}

@end