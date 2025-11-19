@interface _UIEditMenuListViewLayout
- (BOOL)_canDisplayItemAtIndexPath:(id)a3;
- (BOOL)_canDisplaySeparatorForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)setIndexPathForHighlightedItem:(id)a3;
- (void)setPages:(id)a3;
@end

@implementation _UIEditMenuListViewLayout

- (void)setPages:(id)a3
{
  v5 = a3;
  v6 = self->_pages;
  v7 = v5;
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
    objc_storeStrong(&self->_pages, a3);
    [(UICollectionViewLayout *)self invalidateLayout];
  }

LABEL_9:
}

- (void)setIndexPathForHighlightedItem:(id)a3
{
  v5 = a3;
  v6 = self->_indexPathForHighlightedItem;
  v7 = v5;
  v8 = v7;
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
    objc_storeStrong(&self->_indexPathForHighlightedItem, a3);
    v11 = [MEMORY[0x1E695DFA8] set];
    v9 = v11;
    if (v6)
    {
      [(NSIndexPath *)v11 addObject:v6];
      v12 = MEMORY[0x1E696AC88];
      v13 = v6;
      v14 = [(NSIndexPath *)v13 item];
      v15 = [(NSIndexPath *)v13 section];

      v16 = [v12 indexPathForItem:v14 + 1 inSection:v15];
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

    v8 = [(UICollectionViewLayout *)self _invalidationContextForRefreshingVisibleElementAttributes];
    v20 = [(NSIndexPath *)v9 allObjects];
    [v8 invalidateSupplementaryElementsOfKind:@"_UIEditMenuListViewSeparator" atIndexPaths:v20];

    [(UICollectionViewCompositionalLayout *)self invalidateLayoutWithContext:v8];
    goto LABEL_12;
  }

LABEL_13:
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = _UIEditMenuListViewLayout;
  v4 = [(UICollectionViewCompositionalLayout *)&v19 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
          v10 = [v9 representedElementKind];
          v11 = [v10 isEqualToString:@"_UIEditMenuListViewSeparator"];

          if (!v11)
          {
            continue;
          }

          v12 = [v9 indexPath];
          v13 = [(_UIEditMenuListViewLayout *)self _canDisplaySeparatorForItemAtIndexPath:v12];
        }

        else
        {
          v12 = [v9 indexPath];
          v13 = [(_UIEditMenuListViewLayout *)self _canDisplayItemAtIndexPath:v12];
        }

        [v9 setHidden:!v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIEditMenuListViewLayout;
  v5 = [(UICollectionViewCompositionalLayout *)&v7 layoutAttributesForItemAtIndexPath:v4];
  if (v5)
  {
    [v5 setHidden:{-[_UIEditMenuListViewLayout _canDisplayItemAtIndexPath:](self, "_canDisplayItemAtIndexPath:", v4) ^ 1}];
  }

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = _UIEditMenuListViewLayout;
  v7 = a3;
  v8 = [(UICollectionViewCompositionalLayout *)&v11 layoutAttributesForSupplementaryViewOfKind:v7 atIndexPath:v6];
  v9 = [v7 isEqualToString:{@"_UIEditMenuListViewSeparator", v11.receiver, v11.super_class}];

  if (v9)
  {
    [v8 setHidden:{-[_UIEditMenuListViewLayout _canDisplaySeparatorForItemAtIndexPath:](self, "_canDisplaySeparatorForItemAtIndexPath:", v6) ^ 1}];
  }

  return v8;
}

- (BOOL)_canDisplaySeparatorForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (![v4 item])
  {
    goto LABEL_6;
  }

  v5 = [(_UIEditMenuListViewLayout *)self indexPathForHighlightedItem];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [(_UIEditMenuListViewLayout *)self indexPathForHighlightedItem];
  if (![v4 isEqual:v6])
  {
    v7 = [(_UIEditMenuListViewLayout *)self indexPathForHighlightedItem];
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v7 inSection:{"item") + 1, objc_msgSend(v7, "section")}];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
      goto LABEL_6;
    }

LABEL_7:
    v10 = [(_UIEditMenuListViewLayout *)self _canDisplayItemAtIndexPath:v4];
    goto LABEL_8;
  }

LABEL_6:
  v10 = 0;
LABEL_8:

  return v10;
}

- (BOOL)_canDisplayItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled())
  {
    v5 = [(_UIEditMenuListViewLayout *)self pages];
    v6 = [v5 firstObject];
    [v6 range];
    v8 = v7;

    v9 = [v4 item] < v8;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end