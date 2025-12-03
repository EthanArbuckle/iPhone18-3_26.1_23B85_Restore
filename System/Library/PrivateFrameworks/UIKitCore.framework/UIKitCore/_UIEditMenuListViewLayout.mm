@interface _UIEditMenuListViewLayout
- (BOOL)_canDisplayItemAtIndexPath:(id)path;
- (BOOL)_canDisplaySeparatorForItemAtIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)setIndexPathForHighlightedItem:(id)item;
- (void)setPages:(id)pages;
@end

@implementation _UIEditMenuListViewLayout

- (void)setPages:(id)pages
{
  pagesCopy = pages;
  v6 = self->_pages;
  v7 = pagesCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSArray *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_pages, pages);
    [(UICollectionViewLayout *)self invalidateLayout];
  }

LABEL_9:
}

- (void)setIndexPathForHighlightedItem:(id)item
{
  itemCopy = item;
  v6 = self->_indexPathForHighlightedItem;
  v7 = itemCopy;
  _invalidationContextForRefreshingVisibleElementAttributes = v7;
  v9 = v6;
  v21 = v7;
  if (v6 == v7)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (!v7 || !v6)
  {

    goto LABEL_7;
  }

  v10 = [(NSIndexPath *)v6 isEqual:v7];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_indexPathForHighlightedItem, item);
    v11 = [MEMORY[0x1E695DFA8] set];
    v9 = v11;
    if (v6)
    {
      [(NSIndexPath *)v11 addObject:v6];
      v12 = MEMORY[0x1E696AC88];
      v13 = v6;
      item = [(NSIndexPath *)v13 item];
      section = [(NSIndexPath *)v13 section];

      v16 = [v12 indexPathForItem:item + 1 inSection:section];
      [(NSIndexPath *)v9 addObject:v16];
    }

    if (v21)
    {
      [(NSIndexPath *)v9 addObject:v21];
      v17 = MEMORY[0x1E696AC88];
      v18 = v21;
      v19 = [v17 indexPathForItem:-[NSIndexPath item](v18 inSection:{"item") + 1, -[NSIndexPath section](v18, "section")}];

      [(NSIndexPath *)v9 addObject:v19];
    }

    _invalidationContextForRefreshingVisibleElementAttributes = [(UICollectionViewLayout *)self _invalidationContextForRefreshingVisibleElementAttributes];
    allObjects = [(NSIndexPath *)v9 allObjects];
    [_invalidationContextForRefreshingVisibleElementAttributes invalidateSupplementaryElementsOfKind:@"_UIEditMenuListViewSeparator" atIndexPaths:allObjects];

    [(UICollectionViewCompositionalLayout *)self invalidateLayoutWithContext:_invalidationContextForRefreshingVisibleElementAttributes];
    goto LABEL_12;
  }

LABEL_13:
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = _UIEditMenuListViewLayout;
  v4 = [(UICollectionViewCompositionalLayout *)&v19 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 representedElementCategory])
        {
          representedElementKind = [v9 representedElementKind];
          v11 = [representedElementKind isEqualToString:@"_UIEditMenuListViewSeparator"];

          if (!v11)
          {
            continue;
          }

          indexPath = [v9 indexPath];
          v13 = [(_UIEditMenuListViewLayout *)self _canDisplaySeparatorForItemAtIndexPath:indexPath];
        }

        else
        {
          indexPath = [v9 indexPath];
          v13 = [(_UIEditMenuListViewLayout *)self _canDisplayItemAtIndexPath:indexPath];
        }

        [v9 setHidden:!v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7.receiver = self;
  v7.super_class = _UIEditMenuListViewLayout;
  v5 = [(UICollectionViewCompositionalLayout *)&v7 layoutAttributesForItemAtIndexPath:pathCopy];
  if (v5)
  {
    [v5 setHidden:{-[_UIEditMenuListViewLayout _canDisplayItemAtIndexPath:](self, "_canDisplayItemAtIndexPath:", pathCopy) ^ 1}];
  }

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = _UIEditMenuListViewLayout;
  kindCopy = kind;
  v8 = [(UICollectionViewCompositionalLayout *)&v11 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
  v9 = [kindCopy isEqualToString:{@"_UIEditMenuListViewSeparator", v11.receiver, v11.super_class}];

  if (v9)
  {
    [v8 setHidden:{-[_UIEditMenuListViewLayout _canDisplaySeparatorForItemAtIndexPath:](self, "_canDisplaySeparatorForItemAtIndexPath:", pathCopy) ^ 1}];
  }

  return v8;
}

- (BOOL)_canDisplaySeparatorForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy item])
  {
    goto LABEL_6;
  }

  indexPathForHighlightedItem = [(_UIEditMenuListViewLayout *)self indexPathForHighlightedItem];

  if (!indexPathForHighlightedItem)
  {
    goto LABEL_7;
  }

  indexPathForHighlightedItem2 = [(_UIEditMenuListViewLayout *)self indexPathForHighlightedItem];
  if (![pathCopy isEqual:indexPathForHighlightedItem2])
  {
    indexPathForHighlightedItem3 = [(_UIEditMenuListViewLayout *)self indexPathForHighlightedItem];
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(indexPathForHighlightedItem3 inSection:{"item") + 1, objc_msgSend(indexPathForHighlightedItem3, "section")}];
    v9 = [pathCopy isEqual:v8];

    if (v9)
    {
      goto LABEL_6;
    }

LABEL_7:
    v10 = [(_UIEditMenuListViewLayout *)self _canDisplayItemAtIndexPath:pathCopy];
    goto LABEL_8;
  }

LABEL_6:
  v10 = 0;
LABEL_8:

  return v10;
}

- (BOOL)_canDisplayItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (_UISolariumEnabled())
  {
    pages = [(_UIEditMenuListViewLayout *)self pages];
    firstObject = [pages firstObject];
    [firstObject range];
    v8 = v7;

    v9 = [pathCopy item] < v8;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end