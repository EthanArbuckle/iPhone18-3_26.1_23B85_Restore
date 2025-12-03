@interface _UIContextMenuLayoutSection
- (_UIContextMenuLayoutSection)initWithLayoutGroup:(id)group hiddenSeparatorIndexPaths:(id)paths;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enrichLayoutAttributes:(id)attributes interactionState:(id)state;
@end

@implementation _UIContextMenuLayoutSection

- (_UIContextMenuLayoutSection)initWithLayoutGroup:(id)group hiddenSeparatorIndexPaths:(id)paths
{
  pathsCopy = paths;
  v11.receiver = self;
  v11.super_class = _UIContextMenuLayoutSection;
  v7 = [(NSCollectionLayoutSection *)&v11 initWithLayoutGroup:group];
  if (v7)
  {
    v8 = [pathsCopy copy];
    hiddenSeparatorIndexPaths = v7->_hiddenSeparatorIndexPaths;
    v7->_hiddenSeparatorIndexPaths = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _UIContextMenuLayoutSection;
  v4 = [(NSCollectionLayoutSection *)&v8 copyWithZone:zone];
  if (v4)
  {
    v5 = [(NSSet *)self->_hiddenSeparatorIndexPaths copy];
    v6 = v4[41];
    v4[41] = v5;
  }

  return v4;
}

- (void)_enrichLayoutAttributes:(id)attributes interactionState:(id)state
{
  attributesCopy = attributes;
  representedElementKind = [attributesCopy representedElementKind];
  if (representedElementKind == @"kContextMenuItemSeparator")
  {
    hiddenSeparatorIndexPaths = [(_UIContextMenuLayoutSection *)self hiddenSeparatorIndexPaths];
    indexPath = [attributesCopy indexPath];
    v8 = [hiddenSeparatorIndexPaths containsObject:indexPath];

    if (v8)
    {
      [attributesCopy setHidden:1];
    }
  }

  else
  {
  }
}

@end