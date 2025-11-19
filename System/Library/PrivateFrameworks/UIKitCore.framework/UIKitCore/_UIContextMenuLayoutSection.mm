@interface _UIContextMenuLayoutSection
- (_UIContextMenuLayoutSection)initWithLayoutGroup:(id)a3 hiddenSeparatorIndexPaths:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enrichLayoutAttributes:(id)a3 interactionState:(id)a4;
@end

@implementation _UIContextMenuLayoutSection

- (_UIContextMenuLayoutSection)initWithLayoutGroup:(id)a3 hiddenSeparatorIndexPaths:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = _UIContextMenuLayoutSection;
  v7 = [(NSCollectionLayoutSection *)&v11 initWithLayoutGroup:a3];
  if (v7)
  {
    v8 = [v6 copy];
    hiddenSeparatorIndexPaths = v7->_hiddenSeparatorIndexPaths;
    v7->_hiddenSeparatorIndexPaths = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuLayoutSection;
  v4 = [(NSCollectionLayoutSection *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [(NSSet *)self->_hiddenSeparatorIndexPaths copy];
    v6 = v4[41];
    v4[41] = v5;
  }

  return v4;
}

- (void)_enrichLayoutAttributes:(id)a3 interactionState:(id)a4
{
  v9 = a3;
  v5 = [v9 representedElementKind];
  if (v5 == @"kContextMenuItemSeparator")
  {
    v6 = [(_UIContextMenuLayoutSection *)self hiddenSeparatorIndexPaths];
    v7 = [v9 indexPath];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      [v9 setHidden:1];
    }
  }

  else
  {
  }
}

@end