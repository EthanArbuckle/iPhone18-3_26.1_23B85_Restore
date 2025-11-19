@interface PUCollectionViewLayoutCache
- (CGSize)collectionViewContentSize;
- (PUCollectionViewLayoutCache)initWithProvider:(id)a3;
- (PUCollectionViewLayoutProvider)layoutProvider;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)invalidateLayoutCache;
@end

@implementation PUCollectionViewLayoutCache

- (PUCollectionViewLayoutProvider)layoutProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutProvider);

  return WeakRetained;
}

- (void)invalidateLayoutCache
{
  [(NSMutableDictionary *)self->_itemLayoutAttributesByIndexPath removeAllObjects];
  [(NSMutableDictionary *)self->_supplementaryViewLayoutAttributesByKind removeAllObjects];
  decorationViewLayoutAttributesByKind = self->_decorationViewLayoutAttributesByKind;

  [(NSMutableDictionary *)decorationViewLayoutAttributesByKind removeAllObjects];
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_decorationViewLayoutAttributesByKind objectForKey:v6];
  v9 = [v8 objectForKey:v7];
  if (v9)
  {
    v10 = v9;
  }

  else if ((*&self->_layoutProviderFlags & 2) != 0)
  {
    v11 = [(PUCollectionViewLayoutCache *)self layoutProvider];
    v10 = [v11 layoutAttributesForDecorationViewOfKind:v6 atIndexPath:v7];

    if (v10 && [(PUCollectionViewLayoutCache *)self cachesResults])
    {
      decorationViewLayoutAttributesByKind = self->_decorationViewLayoutAttributesByKind;
      if (decorationViewLayoutAttributesByKind)
      {
        v13 = decorationViewLayoutAttributesByKind;
      }

      else
      {
        v13 = [MEMORY[0x1E695DF90] dictionary];
      }

      v14 = self->_decorationViewLayoutAttributesByKind;
      self->_decorationViewLayoutAttributesByKind = v13;

      if (!v8)
      {
        v8 = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_decorationViewLayoutAttributesByKind setObject:v8 forKey:v6];
      }

      [v8 setObject:v10 forKey:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_supplementaryViewLayoutAttributesByKind objectForKey:v6];
  v9 = [v8 objectForKey:v7];
  if (v9)
  {
    v10 = v9;
  }

  else if (*&self->_layoutProviderFlags)
  {
    v11 = [(PUCollectionViewLayoutCache *)self layoutProvider];
    v10 = [v11 layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];

    if (v10 && [(PUCollectionViewLayoutCache *)self cachesResults])
    {
      supplementaryViewLayoutAttributesByKind = self->_supplementaryViewLayoutAttributesByKind;
      if (supplementaryViewLayoutAttributesByKind)
      {
        v13 = supplementaryViewLayoutAttributesByKind;
      }

      else
      {
        v13 = [MEMORY[0x1E695DF90] dictionary];
      }

      v14 = self->_supplementaryViewLayoutAttributesByKind;
      self->_supplementaryViewLayoutAttributesByKind = v13;

      if (!v8)
      {
        v8 = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_supplementaryViewLayoutAttributesByKind setObject:v8 forKey:v6];
      }

      [v8 setObject:v10 forKey:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_itemLayoutAttributesByIndexPath objectForKey:v4];
  if (!v5)
  {
    v7 = [(PUCollectionViewLayoutCache *)self layoutProvider];
    v5 = [v7 layoutAttributesForItemAtIndexPath:v4];

    if (v5)
    {
      if ([(PUCollectionViewLayoutCache *)self cachesResults])
      {
        itemLayoutAttributesByIndexPath = self->_itemLayoutAttributesByIndexPath;
        if (itemLayoutAttributesByIndexPath)
        {
          v9 = itemLayoutAttributesByIndexPath;
        }

        else
        {
          v9 = [MEMORY[0x1E695DF90] dictionary];
        }

        v10 = self->_itemLayoutAttributesByIndexPath;
        self->_itemLayoutAttributesByIndexPath = v9;

        [(NSMutableDictionary *)self->_itemLayoutAttributesByIndexPath setObject:v5 forKey:v4];
      }
    }
  }

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PUCollectionViewLayoutCache *)self layoutProvider];
  v8 = [v7 layoutAttributesForElementsInRect:{x, y, width, height}];

  return v8;
}

- (CGSize)collectionViewContentSize
{
  v2 = [(PUCollectionViewLayoutCache *)self layoutProvider];
  [v2 collectionViewContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (PUCollectionViewLayoutCache)initWithProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PUCollectionViewLayoutCache;
  v5 = [(PUCollectionViewLayoutCache *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layoutProvider, v4);
    *&v6->_layoutProviderFlags = *&v6->_layoutProviderFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&v6->_layoutProviderFlags = *&v6->_layoutProviderFlags & 0xFD | v7;
    v6->_cachesResults = 1;
  }

  return v6;
}

@end