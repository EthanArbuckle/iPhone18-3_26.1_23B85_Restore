@interface PXPhotosGridMessagesLayoutSpec
- (CGSize)interItemSpacing;
- (CGSize)itemInternalMargin;
- (CGSize)itemInternalSquareMargin;
- (PXPhotosGridMessagesLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
- (UIEdgeInsets)padding;
- (int64_t)numberOfColumnsForNumberOfItems:(int64_t)items;
@end

@implementation PXPhotosGridMessagesLayoutSpec

- (CGSize)itemInternalSquareMargin
{
  width = self->_itemInternalSquareMargin.width;
  height = self->_itemInternalSquareMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)itemInternalMargin
{
  width = self->_itemInternalMargin.width;
  height = self->_itemInternalMargin.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)interItemSpacing
{
  width = self->_interItemSpacing.width;
  height = self->_interItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)numberOfColumnsForNumberOfItems:(int64_t)items
{
  if (self->_numberOfColumns == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = +[PXMessagesUISettings sharedInstance];
    [v5 minItemSize];
    v7 = v6;
    minColumns = [v5 minColumns];
    [v5 maxColumns];
    [v5 comfortableFitPercentage];
    width = self->_referenceSize.width;
    v11 = llround(width / v7);
    if (width > 0.0 && items >= 1)
    {
      height = self->_referenceSize.height;
      if (height > 0.0)
      {
        v14 = height - self->_padding.top - self->_padding.bottom;
        if (v14 > 0.0 && minColumns < v11)
        {
          v16 = v9 * v14;
          v17 = minColumns;
          do
          {
            if (width / v17 * ceil(items / v17) < v16)
            {
              break;
            }

            ++v17;
          }

          while (v11 != v17);
        }
      }
    }

    PXClamp();
  }

  return self->_numberOfColumns;
}

- (PXPhotosGridMessagesLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v32.receiver = self;
  v32.super_class = PXPhotosGridMessagesLayoutSpec;
  v7 = [(PXPhotosGridMessagesLayoutSpec *)&v32 initWithExtendedTraitCollection:collectionCopy options:options];
  v8 = v7;
  if (v7)
  {
    p_referenceSize = &v7->_referenceSize;
    [(PXPhotosGridMessagesLayoutSpec *)v7 layoutReferenceSize];
    *&p_referenceSize->width = v10;
    v8->_referenceSize.height = v11;
    layoutOrientation = [(PXPhotosGridMessagesLayoutSpec *)v8 layoutOrientation];
    if ([(PXPhotosGridMessagesLayoutSpec *)v8 sizeClass]== 2)
    {
      if ([(PXPhotosGridMessagesLayoutSpec *)v8 userInterfaceIdiom]== 4)
      {
        v8->_numberOfColumns = 0x7FFFFFFFFFFFFFFFLL;
        v8->_interItemSpacing = xmmword_1A5381030;
        v13 = 20.0;
        v14 = 38.0;
LABEL_25:
        v8->_itemInternalSquareMargin.width = v14;
        v8->_itemInternalSquareMargin.height = v14;
        __asm { FMOV            V0.2D, #8.0 }

        v8->_itemInternalMargin = _Q0;
        v8->_itemCornerRadius = v13;
LABEL_26:
        PXEdgeInsetsMake();
      }

      v8->_numberOfColumns = 4;
      v21 = vdup_n_s32(layoutOrientation == 2);
      v22.i64[0] = v21.u32[0];
      v22.i64[1] = v21.u32[1];
      v23 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL)), xmmword_1A5381040, xmmword_1A5381030);
      v14 = 38.0;
      if (layoutOrientation == 2)
      {
        v14 = 34.0;
      }

      v8->_interItemSpacing = v23;
    }

    else
    {
      sizeSubclass = [(PXPhotosGridMessagesLayoutSpec *)v8 sizeSubclass];
      switch(sizeSubclass)
      {
        case 1:
          v30 = 2;
          if (layoutOrientation == 2)
          {
            v30 = 4;
          }

          v8->_numberOfColumns = v30;
          v8->_interItemSpacing.width = 2.0;
          v31 = 6.0;
          if (layoutOrientation != 2)
          {
            v31 = 4.0;
          }

          v14 = 33.0;
          if (layoutOrientation == 2)
          {
            v14 = 26.0;
          }

          v8->_interItemSpacing.height = v31;
          v13 = 15.0;
          goto LABEL_25;
        case 2:
          _ZF = layoutOrientation == 2;
          v24 = 2;
          if (layoutOrientation == 2)
          {
            v24 = 4;
          }

          v8->_numberOfColumns = v24;
          p_interItemSpacing = &v8->_interItemSpacing;
          v19 = 6.0;
          if (layoutOrientation != 2)
          {
            v19 = 2.0;
          }

          v14 = 34.0;
          v20 = 32.0;
          break;
        case 3:
          _ZF = layoutOrientation == 2;
          v17 = 2;
          if (layoutOrientation == 2)
          {
            v17 = 3;
          }

          v8->_numberOfColumns = v17;
          p_interItemSpacing = &v8->_interItemSpacing;
          v19 = 6.0;
          if (layoutOrientation != 2)
          {
            v19 = 2.0;
          }

          v14 = 38.0;
          v20 = 34.0;
          break;
        default:
          goto LABEL_26;
      }

      if (_ZF)
      {
        v14 = v20;
      }

      p_interItemSpacing->width = v19;
      p_interItemSpacing->height = 12.0;
    }

    v13 = 20.0;
    goto LABEL_25;
  }

  return 0;
}

@end