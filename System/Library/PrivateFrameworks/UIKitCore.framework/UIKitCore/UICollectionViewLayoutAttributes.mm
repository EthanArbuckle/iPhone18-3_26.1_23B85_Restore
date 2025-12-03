@interface UICollectionViewLayoutAttributes
+ (UICollectionViewLayoutAttributes)layoutAttributesForCellWithIndexPath:(NSIndexPath *)indexPath;
+ (UICollectionViewLayoutAttributes)layoutAttributesForDecorationViewOfKind:(NSString *)decorationViewKind withIndexPath:(NSIndexPath *)indexPath;
+ (UICollectionViewLayoutAttributes)layoutAttributesForSupplementaryViewOfKind:(NSString *)elementKind withIndexPath:(NSIndexPath *)indexPath;
- (BOOL)_hasMaskViewFrame;
- (BOOL)isEqual:(id)equal;
- (CATransform3D)transform3D;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CGRect)frame;
- (CGSize)size;
- (NSIndexPath)indexPath;
- (NSString)description;
- (NSString)representedElementKind;
- (UICollectionElementCategory)representedElementCategory;
- (UICollectionViewLayoutAttributes)init;
- (double)_listLayoutItemMaxWidth;
- (id)_existingListAttributes;
- (id)_preferredSizingData;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_isEquivalentTo:(uint64_t)to;
- (unint64_t)hash;
- (void)__indexPath;
- (void)_isTransitionVisibleTo:(void *)result;
- (void)_listAttributesCreatingIfNecessary;
- (void)_setMaskedCorners:(uint64_t)corners;
- (void)_setPinningAlignment:(uint64_t)alignment;
- (void)_setPreferredSizingData:(uint64_t)data;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setSize:(CGSize)size;
- (void)setTransform3D:(CATransform3D *)transform3D;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation UICollectionViewLayoutAttributes

- (UICollectionElementCategory)representedElementCategory
{
  if (self)
  {
    v2 = *(self + 288);
    v3 = UICollectionElementCategorySupplementaryView;
    if ((v2 & 2) != 0)
    {
      v3 = UICollectionElementCategoryDecorationView;
    }

    if (v2)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return self;
}

- (NSString)representedElementKind
{
  if (*&self->_layoutFlags)
  {
    elementKind = 0;
  }

  else
  {
    elementKind = self->_elementKind;
  }

  v4 = elementKind;

  return v4;
}

- (unint64_t)hash
{
  v3 = [(NSIndexPath *)self->_indexPath hash];
  v4 = [(NSString *)self->_elementKind hash];
  v5 = 1231;
  if ((*&self->_layoutFlags & 8) == 0)
  {
    v5 = 1237;
  }

  return v4 ^ v3 ^ v5;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)bounds
{
  [(UICollectionViewLayoutAttributes *)self size];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CATransform3D)transform3D
{
  v3 = *&self[1].m31;
  *&retstr->m31 = *&self[1].m23;
  *&retstr->m33 = v3;
  v4 = *&self[1].m41;
  *&retstr->m41 = *&self[1].m33;
  *&retstr->m43 = v4;
  v5 = *&self[1].m11;
  *&retstr->m11 = *&self->m43;
  *&retstr->m13 = v5;
  v6 = *&self[1].m21;
  *&retstr->m21 = *&self[1].m13;
  *&retstr->m23 = v6;
  return self;
}

- (BOOL)_hasMaskViewFrame
{
  if (result)
  {
    return !CGRectIsNull(*(result + 240));
  }

  return result;
}

- (id)_existingListAttributes
{
  if (self)
  {
    self = self[35];
    v1 = vars8;
  }

  return self;
}

- (UICollectionViewLayoutAttributes)init
{
  v11.receiver = self;
  v11.super_class = UICollectionViewLayoutAttributes;
  result = [(UICollectionViewLayoutAttributes *)&v11 init];
  if (result)
  {
    v3 = MEMORY[0x1E69792E8];
    v4 = *(MEMORY[0x1E69792E8] + 80);
    *&result->_transform.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&result->_transform.m33 = v4;
    v5 = v3[7];
    *&result->_transform.m41 = v3[6];
    *&result->_transform.m43 = v5;
    v6 = v3[1];
    *&result->_transform.m11 = *v3;
    *&result->_transform.m13 = v6;
    v7 = v3[3];
    *&result->_transform.m21 = v3[2];
    *&result->_transform.m23 = v7;
    v9 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 16);
    result->_frame.origin = *MEMORY[0x1E695F050];
    result->_frame.size = v8;
    layoutFlags = result->_layoutFlags;
    result->_alpha = 1.0;
    result->_zPosition = 0;
    result->_maskViewFrame.origin = v9;
    result->_maskViewFrame.size = v8;
    result->_layoutFlags = (*&layoutFlags & 0xFFFFFE17 | 0x1E0);
  }

  return result;
}

- (NSIndexPath)indexPath
{
  if (self->_indexPath)
  {
    v3 = dyld_program_sdk_at_least();
    indexPath = self->_indexPath;
    if ((v3 & 1) == 0)
    {
      indexPath = indexPath;
    }
  }

  else
  {
    indexPath = indexPath_sharedNotFoundPath;
    if (!indexPath_sharedNotFoundPath)
    {
      v5 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
      v6 = indexPath_sharedNotFoundPath;
      indexPath_sharedNotFoundPath = v5;

      indexPath = indexPath_sharedNotFoundPath;
    }
  }

  return indexPath;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)frame
{
  if (CGRectIsNull(self->_frame))
  {
    v3 = __geometryCalculationLayer;
    if (!__geometryCalculationLayer)
    {
      v4 = objc_alloc_init(MEMORY[0x1E6979398]);
      v5 = __geometryCalculationLayer;
      __geometryCalculationLayer = v4;

      v3 = __geometryCalculationLayer;
    }

    [v3 setPosition:{self->_center.x, self->_center.y}];
    [__geometryCalculationLayer setBounds:{0.0, 0.0, self->_size.width, self->_size.height}];
    v6 = *&self->_transform.m33;
    v14[4] = *&self->_transform.m31;
    v14[5] = v6;
    v7 = *&self->_transform.m43;
    v14[6] = *&self->_transform.m41;
    v14[7] = v7;
    v8 = *&self->_transform.m13;
    v14[0] = *&self->_transform.m11;
    v14[1] = v8;
    v9 = *&self->_transform.m23;
    v14[2] = *&self->_transform.m21;
    v14[3] = v9;
    [__geometryCalculationLayer setTransform:v14];
    [__geometryCalculationLayer frame];
    self->_frame.origin.x = x;
    self->_frame.origin.y = y;
    self->_frame.size.width = width;
    self->_frame.size.height = height;
  }

  else
  {
    x = self->_frame.origin.x;
    y = self->_frame.origin.y;
    width = self->_frame.size.width;
    height = self->_frame.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_preferredSizingData
{
  if (self)
  {
    self = self[34];
    v1 = vars8;
  }

  return self;
}

- (void)__indexPath
{
  if (result)
  {
    result = result[2];
    if (!result)
    {
      result = __indexPath_sharedNotFoundPath;
      if (!__indexPath_sharedNotFoundPath)
      {
        result = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
        __indexPath_sharedNotFoundPath = result;
      }
    }
  }

  return result;
}

- (double)_listLayoutItemMaxWidth
{
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)&self->super.isa _existingListAttributes];

  if (!_existingListAttributes)
  {
    return 0.0;
  }

  _existingListAttributes2 = [(UICollectionViewLayoutAttributes *)&self->super.isa _existingListAttributes];
  if (_existingListAttributes2)
  {
    v5 = _existingListAttributes2[8];
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)_listAttributesCreatingIfNecessary
{
  if (self)
  {
    selfCopy = self;
    v3 = self[35];
    if (!v3)
    {
      v4 = objc_alloc_init(_UICollectionLayoutListAttributes);
      v5 = selfCopy[35];
      selfCopy[35] = v4;

      v3 = selfCopy[35];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

+ (UICollectionViewLayoutAttributes)layoutAttributesForCellWithIndexPath:(NSIndexPath *)indexPath
{
  v4 = objc_alloc_init(self);
  *(v4 + 72) |= 1u;
  objc_storeStrong(v4 + 1, @"UICollectionElementKindCell");
  objc_storeStrong(v4 + 2, indexPath);

  return v4;
}

+ (UICollectionViewLayoutAttributes)layoutAttributesForSupplementaryViewOfKind:(NSString *)elementKind withIndexPath:(NSIndexPath *)indexPath
{
  v6 = objc_alloc_init(self);
  v7 = [(NSString *)elementKind copy];
  v8 = *(v6 + 1);
  *(v6 + 1) = v7;

  objc_storeStrong(v6 + 2, indexPath);

  return v6;
}

+ (UICollectionViewLayoutAttributes)layoutAttributesForDecorationViewOfKind:(NSString *)decorationViewKind withIndexPath:(NSIndexPath *)indexPath
{
  v6 = objc_alloc_init(self);
  objc_storeStrong(v6 + 2, indexPath);
  v7 = [(NSString *)decorationViewKind copy];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)decorationViewKind copy];
  v10 = v6[3];
  v6[3] = v9;

  *(v6 + 72) |= 2u;

  return v6;
}

- (void)setHidden:(BOOL)hidden
{
  if (hidden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_layoutFlags = (*&self->_layoutFlags & 0xFFFFFFFB | v3);
}

- (void)_setMaskedCorners:(uint64_t)corners
{
  if (corners)
  {
    if (a2 >= 0x10)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setMaskedCorners_ object:corners file:@"UICollectionViewLayout.m" lineNumber:264 description:{@"CACornerMask value (%ld) does not fit in bitfield reserved space", a2}];
    }

    *(corners + 288) = *(corners + 288) & 0xFFFFFE1F | (32 * (a2 & 0xF));
  }
}

- (void)_setPinningAlignment:(uint64_t)alignment
{
  if (alignment)
  {
    if (a2 >= 16)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setPinningAlignment_ object:alignment file:@"UICollectionViewLayout.m" lineNumber:318 description:{@"NSRectAlignment value (%ld) does not fit in bitfield reserved space", a2}];
    }

    *(alignment + 288) = *(alignment + 288) & 0xFFFF87FF | ((a2 & 0xF) << 11);
  }
}

- (void)_setPreferredSizingData:(uint64_t)data
{
  if (data)
  {
    objc_storeStrong((data + 272), a2);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 12) = *&self->_alpha;
  *(v4 + 72) = *(v4 + 72) & 0xFFFFFFFB | (4 * ((*&self->_layoutFlags >> 2) & 1));
  objc_storeStrong(v4 + 2, self->_indexPath);
  v5 = [(NSString *)self->_reuseIdentifier copy];
  v6 = *(v4 + 3);
  *(v4 + 3) = v5;

  v7 = [(NSString *)self->_elementKind copy];
  v8 = *(v4 + 1);
  *(v4 + 1) = v7;

  *(v4 + 37) = self->_zIndex;
  v9 = *(v4 + 72) & 0xFFFFFFFE | *&self->_layoutFlags & 1;
  *(v4 + 72) = v9;
  v10 = v9 & 0xFFFFFFFD | (2 * ((*&self->_layoutFlags >> 1) & 1));
  *(v4 + 72) = v10;
  *(v4 + 72) = v10 & 0xFFFFFFF7 | (8 * ((*&self->_layoutFlags >> 3) & 1));
  *(v4 + 13) = [(UICollectionViewLayoutAttributes *)self _zPosition];
  v11 = *(v4 + 72) & 0xFFFFFFEF | (16 * ((*&self->_layoutFlags >> 4) & 1));
  *(v4 + 72) = v11;
  v12 = v11 & 0xFFFFFE1F | (32 * ((*&self->_layoutFlags >> 5) & 0xF));
  *(v4 + 72) = v12;
  *(v4 + 39) = *&self->_cornerRadius;
  size = self->_maskViewFrame.size;
  *(v4 + 15) = self->_maskViewFrame.origin;
  *(v4 + 16) = size;
  v14 = v12 & 0xFFFFFBFF | (((*&self->_layoutFlags >> 10) & 1) << 10);
  *(v4 + 72) = v14;
  *(v4 + 72) = v14 & 0xFFFFFDFF | (((*&self->_layoutFlags >> 9) & 1) << 9);
  v15 = *&self->_defaultLayoutMargins.bottom;
  *(v4 + 20) = *&self->_defaultLayoutMargins.top;
  *(v4 + 21) = v15;
  objc_storeStrong(v4 + 34, self->_preferredSizingData);
  v16 = [(_UICollectionLayoutListAttributes *)self->_listAttributes copy];
  v17 = *(v4 + 35);
  *(v4 + 35) = v16;

  v18 = _getCustomAttributes(self);
  v19 = v18;
  if (v18)
  {
    v20 = [v18 mutableCopy];
    objc_setAssociatedObject(v4, &_UICollectionViewLayoutCustomAttributesKey, v20, 1);

    v21 = *(v4 + 72) | 0x10000;
    *(v4 + 72) = v21;
  }

  else
  {
    v21 = *(v4 + 72);
  }

  *(v4 + 38) = self->_selectionGrouping;
  v22 = v21 & 0xFFFF87FF | (((*&self->_layoutFlags >> 11) & 0xF) << 11);
  *(v4 + 72) = v22;
  *(v4 + 72) = v22 & 0xFFFF7FFF | (((*&self->_layoutFlags >> 15) & 1) << 15);
  v23 = *&self->_transform.m11;
  v24 = *&self->_transform.m13;
  v25 = *&self->_transform.m23;
  *(v4 + 9) = *&self->_transform.m21;
  *(v4 + 10) = v25;
  *(v4 + 7) = v23;
  *(v4 + 8) = v24;
  v26 = *&self->_transform.m31;
  v27 = *&self->_transform.m33;
  v28 = *&self->_transform.m43;
  *(v4 + 13) = *&self->_transform.m41;
  *(v4 + 14) = v28;
  *(v4 + 11) = v26;
  *(v4 + 12) = v27;
  *(v4 + 2) = self->_center;
  *(v4 + 3) = self->_size;
  v29 = self->_frame.size;
  *(v4 + 4) = self->_frame.origin;
  *(v4 + 5) = v29;

  return v4;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (bounds.origin.x != 0.0 || bounds.origin.y != 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v10 = NSStringFromCGRect(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:459 description:{@"UICollectionViewLayoutAttributes bounds must be set with a (0, 0) origin %@ - %@", self, v10}];
  }

  [(UICollectionViewLayoutAttributes *)self setSize:width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (dyld_program_sdk_at_least())
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (CGRectIsInfinite(v23))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v19 = NSStringFromCGRect(v27);
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:466 description:{@"UICollectionViewLayoutAttributes: -setFrame: with CGRectInfinite is undefined. Attributes: %@; new frame: %@", self, v19}];
    }

    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    if (CGRectIsNull(v24))
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      v21 = NSStringFromCGRect(v28);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:467 description:{@"UICollectionViewLayoutAttributes: -setFrame: with CGRectNull is undefined. Attributes: %@; new frame: %@", self, v21}];
    }
  }

  if (dyld_program_sdk_at_least())
  {
    if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&y & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v15 = NSStringFromCGRect(v25);
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:470 description:{@"UICollectionViewLayoutAttributes: -setFrame: requires finite coordinates. Attributes: %@; new frame: %@", self, v15}];
    }

    if ((*&width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v17 = NSStringFromCGRect(v26);
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:471 description:{@"UICollectionViewLayoutAttributes: -setFrame: requires finite dimensions. Attributes: %@; new frame: %@", self, v17}];
    }
  }

  [(UICollectionViewLayoutAttributes *)self setSize:width, height];
  [(UICollectionViewLayoutAttributes *)self setCenter:x + width * 0.5, y + height * 0.5];
  v9 = *&self->_transform.m33;
  *&v22.m31 = *&self->_transform.m31;
  *&v22.m33 = v9;
  v10 = *&self->_transform.m43;
  *&v22.m41 = *&self->_transform.m41;
  *&v22.m43 = v10;
  v11 = *&self->_transform.m13;
  *&v22.m11 = *&self->_transform.m11;
  *&v22.m13 = v11;
  v12 = *&self->_transform.m23;
  *&v22.m21 = *&self->_transform.m21;
  *&v22.m23 = v12;
  if (CATransform3DIsIdentity(&v22))
  {
    self->_frame.origin.x = x;
    self->_frame.origin.y = y;
    self->_frame.size.width = width;
    self->_frame.size.height = height;
  }

  else
  {
    v13 = *(MEMORY[0x1E695F050] + 16);
    self->_frame.origin = *MEMORY[0x1E695F050];
    self->_frame.size = v13;
  }
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (dyld_program_sdk_at_least() && ((*&width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11.width = width;
    v11.height = height;
    v10 = NSStringFromCGSize(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:481 description:{@"UICollectionViewLayoutAttributes: -setSize: requires finite dimensions. Attributes: %@; new size: %@", self, v10}];
  }

  if (width != self->_size.width || height != self->_size.height)
  {
    self->_size.width = width;
    self->_size.height = height;
    v8 = *(MEMORY[0x1E695F050] + 16);
    self->_frame.origin = *MEMORY[0x1E695F050];
    self->_frame.size = v8;
  }
}

- (void)setCenter:(CGPoint)center
{
  x = center.x;
  y = center.y;
  v5 = dyld_program_sdk_at_least();
  v7 = x;
  v6 = y;
  if (v5 && ((*&x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&y & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14.x = x;
    v14.y = y;
    v11 = NSStringFromCGPoint(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:492 description:{@"UICollectionViewLayoutAttributes: -setCenter: requires finite coordinates. Attributes: %@; new center: %@", self, v11}];

    v7 = x;
    v6 = y;
  }

  if (v7 != self->_center.x || v6 != self->_center.y)
  {
    if (!CGRectIsNull(self->_frame))
    {
      v9.f64[0] = x;
      v9.f64[1] = y;
      self->_frame.origin = vaddq_f64(self->_frame.origin, vsubq_f64(v9, self->_center));
    }

    self->_center.x = x;
    self->_center.y = y;
  }
}

- (void)setTransform3D:(CATransform3D *)transform3D
{
  if (dyld_program_sdk_at_least())
  {
    v6 = *&transform3D->m33;
    *&a.m31 = *&transform3D->m31;
    *&a.m33 = v6;
    v7 = *&transform3D->m43;
    *&a.m41 = *&transform3D->m41;
    *&a.m43 = v7;
    v8 = *&transform3D->m13;
    *&a.m11 = *&transform3D->m11;
    *&a.m13 = v8;
    v9 = *&transform3D->m23;
    *&a.m21 = *&transform3D->m21;
    *&a.m23 = v9;
    if ((_UICATransform3DHasFiniteMembers(&a) & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = *&transform3D->m33;
      *&a.m31 = *&transform3D->m31;
      *&a.m33 = v26;
      v27 = *&transform3D->m43;
      *&a.m41 = *&transform3D->m41;
      *&a.m43 = v27;
      v28 = *&transform3D->m13;
      *&a.m11 = *&transform3D->m11;
      *&a.m13 = v28;
      v29 = *&transform3D->m23;
      *&a.m21 = *&transform3D->m21;
      *&a.m23 = v29;
      v30 = _NSStringFromCATransform3D(&a);
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:508 description:{@"UICollectionViewLayoutAttributes: -setTransform3D: requires that all members in the transform matrix are finite numbers. Attributes: %@; new transform: %@", self, v30}];
    }
  }

  v10 = *&transform3D->m33;
  *&a.m31 = *&transform3D->m31;
  *&a.m33 = v10;
  v11 = *&transform3D->m43;
  *&a.m41 = *&transform3D->m41;
  *&a.m43 = v11;
  v12 = *&transform3D->m13;
  *&a.m11 = *&transform3D->m11;
  *&a.m13 = v12;
  v13 = *&transform3D->m23;
  *&a.m21 = *&transform3D->m21;
  *&a.m23 = v13;
  v14 = *&self->_transform.m33;
  *&b.m31 = *&self->_transform.m31;
  *&b.m33 = v14;
  v15 = *&self->_transform.m43;
  *&b.m41 = *&self->_transform.m41;
  *&b.m43 = v15;
  v16 = *&self->_transform.m13;
  *&b.m11 = *&self->_transform.m11;
  *&b.m13 = v16;
  v17 = *&self->_transform.m23;
  *&b.m21 = *&self->_transform.m21;
  *&b.m23 = v17;
  if (!CATransform3DEqualToTransform(&a, &b))
  {
    v18 = *&transform3D->m11;
    v19 = *&transform3D->m13;
    v20 = *&transform3D->m23;
    *&self->_transform.m21 = *&transform3D->m21;
    *&self->_transform.m23 = v20;
    *&self->_transform.m11 = v18;
    *&self->_transform.m13 = v19;
    v21 = *&transform3D->m31;
    v22 = *&transform3D->m33;
    v23 = *&transform3D->m43;
    *&self->_transform.m41 = *&transform3D->m41;
    *&self->_transform.m43 = v23;
    *&self->_transform.m31 = v21;
    *&self->_transform.m33 = v22;
    v24 = *(MEMORY[0x1E695F050] + 16);
    self->_frame.origin = *MEMORY[0x1E695F050];
    self->_frame.size = v24;
  }
}

- (void)setTransform:(CGAffineTransform *)transform
{
  if (dyld_program_sdk_at_least())
  {
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7 = vnegq_f64(v6);
    v8 = vandq_s8(*&transform->c, v7);
    v9 = vandq_s8(*&transform->a, v7);
    v10 = vandq_s8(*&transform->tx, v7);
    v11 = vdupq_n_s64(0x7FF0000000000000uLL);
    v12 = vandq_s8(vandq_s8(vcgtq_s64(v11, v9), vcgtq_s64(v11, v10)), vandq_s8(vcgtq_s64(v11, v8), vcgtq_s64(v11, 0)));
    if ((vandq_s8(v12, vdupq_laneq_s64(v12, 1)).u64[0] & 0x8000000000000000) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = *&transform->c;
      *&v18.m11 = *&transform->a;
      *&v18.m13 = v15;
      *&v18.m21 = *&transform->tx;
      v16 = NSStringFromCGAffineTransform(&v18);
      [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewLayout.m" lineNumber:522 description:{@"UICollectionViewLayoutAttributes: -setTransform: requires that all members in the transform matrix be finite numbers. Attributes: %@; new transform: %@", self, v16}];
    }
  }

  v13 = *&transform->c;
  *&m.a = *&transform->a;
  *&m.c = v13;
  *&m.tx = *&transform->tx;
  CATransform3DMakeAffineTransform(&v18, &m);
  [(UICollectionViewLayoutAttributes *)self setTransform3D:&v18];
}

- (CGAffineTransform)transform
{
  v5 = *&self->_transform.m33;
  *&v16.m31 = *&self->_transform.m31;
  *&v16.m33 = v5;
  v6 = *&self->_transform.m43;
  *&v16.m41 = *&self->_transform.m41;
  *&v16.m43 = v6;
  v7 = *&self->_transform.m13;
  *&v16.m11 = *&self->_transform.m11;
  *&v16.m13 = v7;
  v8 = *&self->_transform.m23;
  *&v16.m21 = *&self->_transform.m21;
  *&v16.m23 = v8;
  result = MEMORY[0x18CFE42C0](&v16, a3);
  if (result)
  {
    v10 = *&self->_transform.m33;
    *&v16.m31 = *&self->_transform.m31;
    *&v16.m33 = v10;
    v11 = *&self->_transform.m43;
    *&v16.m41 = *&self->_transform.m41;
    *&v16.m43 = v11;
    v12 = *&self->_transform.m13;
    *&v16.m11 = *&self->_transform.m11;
    *&v16.m13 = v12;
    v13 = *&self->_transform.m23;
    *&v16.m21 = *&self->_transform.m21;
    *&v16.m23 = v13;
    return CATransform3DGetAffineTransform(retstr, &v16);
  }

  else
  {
    v14 = MEMORY[0x1E695EFD0];
    v15 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v15;
    *&retstr->tx = *(v14 + 32);
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  _ui_shortDescription = [(NSIndexPath *)self->_indexPath _ui_shortDescription];
  [v6 appendFormat:@"index path: %@; ", _ui_shortDescription];

  if ((*&self->_layoutFlags & 1) == 0)
  {
    [v6 appendFormat:@"element kind: (%@); ", self->_elementKind];
  }

  [(UICollectionViewLayoutAttributes *)self frame];
  [v6 appendFormat:@"frame = (%g %g; %g %g); ", v8, v9, v10, v11];
  memset(&v19, 0, sizeof(v19));
  [(UICollectionViewLayoutAttributes *)self transform3D];
  v18 = v19;
  if (!CATransform3DIsIdentity(&v18))
  {
    v18 = v19;
    if (MEMORY[0x18CFE42C0](&v18))
    {
      v18 = v19;
      CATransform3DGetAffineTransform(&transform, &v18);
      v12 = NSStringFromCGAffineTransform(&transform);
      [v6 appendFormat:@"transform = %@; ", v12];
    }

    else
    {
      [v6 appendString:@"non-affine transform; "];
    }
  }

  if ([(UICollectionViewLayoutAttributes *)self isHidden])
  {
    [v6 appendFormat:@"hidden = YES; "];
  }

  [(UICollectionViewLayoutAttributes *)self alpha];
  if (v13 != 1.0)
  {
    [v6 appendFormat:@"alpha = %g; ", *&v13];
  }

  if (self->_zIndex)
  {
    [v6 appendFormat:@"zIndex = %ld; ", self->_zIndex];
  }

  if ((*&self->_layoutFlags & 8) != 0)
  {
    [v6 appendFormat:@"IS CLONE; "];
  }

  v14 = [v6 rangeOfString:@"; " options:4];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 appendString:@">"];
  }

  else
  {
    [v6 replaceCharactersInRange:v14 withString:{v15, @">"}];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSIndexPath *)self->_indexPath isEqual:*(equal + 2)];
      if (v5)
      {

        LOBYTE(v5) = [(UICollectionViewLayoutAttributes *)self _isEquivalentTo:equal];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (uint64_t)_isEquivalentTo:(uint64_t)to
{
  result = 0;
  if (to && a2)
  {
    if (*(to + 96) == 0.0)
    {
      v5 = 1;
    }

    else
    {
      v5 = (*(to + 288) >> 2) & 1;
    }

    if (*(a2 + 96) == 0.0)
    {
      v6 = 1;
    }

    else
    {
      v6 = (*(a2 + 288) >> 2) & 1;
    }

    if (v5 != v6)
    {
      return 0;
    }

    v7 = vdupq_n_s64(0x3E80000000000000uLL);
    v8 = vmovn_s64(vcgtq_f64(v7, vabdq_f64(*(to + 32), *(a2 + 32))));
    if ((v8.i32[0] & v8.i32[1] & 1) == 0)
    {
      return 0;
    }

    v9 = vmovn_s64(vcgtq_f64(v7, vabdq_f64(*(to + 48), *(a2 + 48))));
    if ((v9.i32[1] & v9.i32[0] & 1) == 0)
    {
      return 0;
    }

    v10 = *(to + 192);
    *&a.m31 = *(to + 176);
    *&a.m33 = v10;
    v11 = *(to + 224);
    *&a.m41 = *(to + 208);
    *&a.m43 = v11;
    v12 = *(to + 128);
    *&a.m11 = *(to + 112);
    *&a.m13 = v12;
    v13 = *(to + 160);
    *&a.m21 = *(to + 144);
    *&a.m23 = v13;
    v14 = *(a2 + 192);
    *&v27.m31 = *(a2 + 176);
    *&v27.m33 = v14;
    v15 = *(a2 + 224);
    *&v27.m41 = *(a2 + 208);
    *&v27.m43 = v15;
    v16 = *(a2 + 128);
    *&v27.m11 = *(a2 + 112);
    *&v27.m13 = v16;
    v17 = *(a2 + 160);
    *&v27.m21 = *(a2 + 144);
    *&v27.m23 = v17;
    result = CATransform3DEqualToTransform(&a, &v27);
    if (!result)
    {
      return result;
    }

    if (*(to + 296) != *(a2 + 296))
    {
      return 0;
    }

    if (((*(a2 + 288) ^ *(to + 288)) & 8) != 0)
    {
      return 0;
    }

    v18 = *(to + 96);
    [a2 alpha];
    if (v18 != v19 || ((*(a2 + 288) ^ *(to + 288)) & 0x1F0) != 0 || *(to + 312) != *(a2 + 312) || *(to + 304) != *(a2 + 304))
    {
      return 0;
    }

    result = CGRectEqualToRect(*(to + 240), *(a2 + 240));
    if (!result)
    {
      return result;
    }

    v20 = *(to + 288);
    v21 = *(a2 + 288);
    if ((v21 ^ v20) & 0xFC00) == 0 && (v22 = (v20 >> 9) & 1, v22 == ((v21 >> 9) & 1)) && (!v22 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(to + 320), *(a2 + 320)), vceqq_f64(*(to + 336), *(a2 + 336)))))))
    {
      v23 = *(to + 8);
      if (v23 == *(a2 + 8) || (result = [v23 isEqualToString:?], result))
      {
        result = _deferringTokenEqualToToken(*(to + 272), *(a2 + 272));
        if (result)
        {
          result = _deferringTokenEqualToToken(*(to + 280), *(a2 + 280));
          if (result)
          {
            v24 = _getCustomAttributes(to);
            v25 = _getCustomAttributes(a2);
            v26 = _deferringTokenEqualToToken(v24, v25);

            return v26;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_isTransitionVisibleTo:(void *)result
{
  if (result)
  {
    v3 = result;
    [result alpha];
    if (v4 == 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v3 isHidden] ^ 1;
    }

    [a2 alpha];
    if (v6 == 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = [a2 isHidden] ^ 1;
    }

    if (((v5 | v7) & 1) == 0)
    {
      return 0;
    }

    [v3 size];
    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
    v12 = v11 == *MEMORY[0x1E695F060] && v8 == v10;
    if (v12 && (([a2 size], v14 == v9) ? (v15 = v13 == v10) : (v15 = 0), v15))
    {
      return 0;
    }

    else
    {
      return ([(UICollectionViewLayoutAttributes *)v3 _isEquivalentTo:a2]^ 1);
    }
  }

  return result;
}

@end