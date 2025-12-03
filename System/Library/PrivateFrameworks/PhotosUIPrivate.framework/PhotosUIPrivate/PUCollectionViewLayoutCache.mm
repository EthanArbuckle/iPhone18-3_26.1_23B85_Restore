@interface PUCollectionViewLayoutCache
- (CGSize)collectionViewContentSize;
- (PUCollectionViewLayoutCache)initWithProvider:(id)provider;
- (PUCollectionViewLayoutProvider)layoutProvider;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
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

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  dictionary2 = [(NSMutableDictionary *)self->_decorationViewLayoutAttributesByKind objectForKey:kindCopy];
  v9 = [dictionary2 objectForKey:pathCopy];
  if (v9)
  {
    v10 = v9;
  }

  else if ((*&self->_layoutProviderFlags & 2) != 0)
  {
    layoutProvider = [(PUCollectionViewLayoutCache *)self layoutProvider];
    v10 = [layoutProvider layoutAttributesForDecorationViewOfKind:kindCopy atIndexPath:pathCopy];

    if (v10 && [(PUCollectionViewLayoutCache *)self cachesResults])
    {
      decorationViewLayoutAttributesByKind = self->_decorationViewLayoutAttributesByKind;
      if (decorationViewLayoutAttributesByKind)
      {
        dictionary = decorationViewLayoutAttributesByKind;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v14 = self->_decorationViewLayoutAttributesByKind;
      self->_decorationViewLayoutAttributesByKind = dictionary;

      if (!dictionary2)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_decorationViewLayoutAttributesByKind setObject:dictionary2 forKey:kindCopy];
      }

      [dictionary2 setObject:v10 forKey:pathCopy];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  dictionary2 = [(NSMutableDictionary *)self->_supplementaryViewLayoutAttributesByKind objectForKey:kindCopy];
  v9 = [dictionary2 objectForKey:pathCopy];
  if (v9)
  {
    v10 = v9;
  }

  else if (*&self->_layoutProviderFlags)
  {
    layoutProvider = [(PUCollectionViewLayoutCache *)self layoutProvider];
    v10 = [layoutProvider layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];

    if (v10 && [(PUCollectionViewLayoutCache *)self cachesResults])
    {
      supplementaryViewLayoutAttributesByKind = self->_supplementaryViewLayoutAttributesByKind;
      if (supplementaryViewLayoutAttributesByKind)
      {
        dictionary = supplementaryViewLayoutAttributesByKind;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v14 = self->_supplementaryViewLayoutAttributesByKind;
      self->_supplementaryViewLayoutAttributesByKind = dictionary;

      if (!dictionary2)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [(NSMutableDictionary *)self->_supplementaryViewLayoutAttributesByKind setObject:dictionary2 forKey:kindCopy];
      }

      [dictionary2 setObject:v10 forKey:pathCopy];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableDictionary *)self->_itemLayoutAttributesByIndexPath objectForKey:pathCopy];
  if (!v5)
  {
    layoutProvider = [(PUCollectionViewLayoutCache *)self layoutProvider];
    v5 = [layoutProvider layoutAttributesForItemAtIndexPath:pathCopy];

    if (v5)
    {
      if ([(PUCollectionViewLayoutCache *)self cachesResults])
      {
        itemLayoutAttributesByIndexPath = self->_itemLayoutAttributesByIndexPath;
        if (itemLayoutAttributesByIndexPath)
        {
          dictionary = itemLayoutAttributesByIndexPath;
        }

        else
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        v10 = self->_itemLayoutAttributesByIndexPath;
        self->_itemLayoutAttributesByIndexPath = dictionary;

        [(NSMutableDictionary *)self->_itemLayoutAttributesByIndexPath setObject:v5 forKey:pathCopy];
      }
    }
  }

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutProvider = [(PUCollectionViewLayoutCache *)self layoutProvider];
  v8 = [layoutProvider layoutAttributesForElementsInRect:{x, y, width, height}];

  return v8;
}

- (CGSize)collectionViewContentSize
{
  layoutProvider = [(PUCollectionViewLayoutCache *)self layoutProvider];
  [layoutProvider collectionViewContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (PUCollectionViewLayoutCache)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PUCollectionViewLayoutCache;
  v5 = [(PUCollectionViewLayoutCache *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layoutProvider, providerCopy);
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