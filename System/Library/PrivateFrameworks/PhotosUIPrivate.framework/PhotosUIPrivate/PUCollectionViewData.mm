@interface PUCollectionViewData
- (CGRect)currentContentBounds;
- (PUCollectionViewData)init;
- (void)invalidate;
@end

@implementation PUCollectionViewData

- (CGRect)currentContentBounds
{
  x = self->_currentContentBounds.origin.x;
  y = self->_currentContentBounds.origin.y;
  width = self->_currentContentBounds.size.width;
  height = self->_currentContentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)invalidate
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  self->_currentContentBounds.origin = *MEMORY[0x1E695F058];
  self->_currentContentBounds.size = v3;
  array = [MEMORY[0x1E695DF70] array];
  itemLayoutAttributes = self->_itemLayoutAttributes;
  self->_itemLayoutAttributes = array;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  itemLayoutAttributesByIndexPath = self->_itemLayoutAttributesByIndexPath;
  self->_itemLayoutAttributesByIndexPath = dictionary;

  MEMORY[0x1EEE66BB8](dictionary, itemLayoutAttributesByIndexPath);
}

- (PUCollectionViewData)init
{
  v9.receiver = self;
  v9.super_class = PUCollectionViewData;
  v2 = [(PUCollectionViewData *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_cachedPageCount = 2;
    array = [MEMORY[0x1E695DF70] array];
    itemLayoutAttributes = v3->_itemLayoutAttributes;
    v3->_itemLayoutAttributes = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    itemLayoutAttributesByIndexPath = v3->_itemLayoutAttributesByIndexPath;
    v3->_itemLayoutAttributesByIndexPath = dictionary;
  }

  return v3;
}

@end