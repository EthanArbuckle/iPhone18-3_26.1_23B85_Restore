@interface PXExtendedTraitCollectionSnapshot
- (CGRect)fullScreenReferenceRect;
- (CGSize)layoutReferenceSize;
- (CGSize)windowReferenceSize;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)peripheryInsets;
- (UIEdgeInsets)safeAreaInsets;
- (id)_initWithExtendedTraitCollection:(id)a3;
@end

@implementation PXExtendedTraitCollectionSnapshot

- (CGRect)fullScreenReferenceRect
{
  x = self->_fullScreenReferenceRect.origin.x;
  y = self->_fullScreenReferenceRect.origin.y;
  width = self->_fullScreenReferenceRect.size.width;
  height = self->_fullScreenReferenceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)windowReferenceSize
{
  width = self->_windowReferenceSize.width;
  height = self->_windowReferenceSize.height;
  result.height = height;
  result.width = width;
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

- (id)_initWithExtendedTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXExtendedTraitCollectionSnapshot *)self init];
  if (v5)
  {
    v5->_layoutSizeClass = [v4 layoutSizeClass];
    v5->_layoutSizeSubclass = [v4 layoutSizeSubclass];
    v5->_layoutOrientation = [v4 layoutOrientation];
    v5->_layoutDirection = [v4 layoutDirection];
    v5->_contentSizeCategory = [v4 contentSizeCategory];
    v5->_userInterfaceIdiom = [v4 userInterfaceIdiom];
    v5->_userInterfaceFeature = [v4 userInterfaceFeature];
    [v4 layoutReferenceSize];
    v5->_layoutReferenceSize.width = v6;
    v5->_layoutReferenceSize.height = v7;
    [v4 displayScale];
    v5->_displayScale = v8;
    [v4 safeAreaInsets];
    v5->_safeAreaInsets.top = v9;
    v5->_safeAreaInsets.left = v10;
    v5->_safeAreaInsets.bottom = v11;
    v5->_safeAreaInsets.right = v12;
    [v4 peripheryInsets];
    v5->_peripheryInsets.top = v13;
    v5->_peripheryInsets.left = v14;
    v5->_peripheryInsets.bottom = v15;
    v5->_peripheryInsets.right = v16;
    [v4 layoutMargins];
    v5->_layoutMargins.top = v17;
    v5->_layoutMargins.left = v18;
    v5->_layoutMargins.bottom = v19;
    v5->_layoutMargins.right = v20;
    v5->_userInterfaceStyle = [v4 userInterfaceStyle];
    v5->_userInterfaceLevel = [v4 userInterfaceLevel];
    [v4 windowReferenceSize];
    v5->_windowReferenceSize.width = v21;
    v5->_windowReferenceSize.height = v22;
    v5->_windowOrientation = [v4 windowOrientation];
    [v4 fullScreenReferenceRect];
    v5->_fullScreenReferenceRect.origin.x = v23;
    v5->_fullScreenReferenceRect.origin.y = v24;
    v5->_fullScreenReferenceRect.size.width = v25;
    v5->_fullScreenReferenceRect.size.height = v26;
  }

  return v5;
}

@end