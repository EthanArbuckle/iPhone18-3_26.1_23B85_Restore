@interface PUSectionedGridLayoutData
- (CGRect)currentContentBounds;
- (PUSectionedGridLayoutData)init;
- (void)invalidate;
@end

@implementation PUSectionedGridLayoutData

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
  headerLayoutAttributes = self->_headerLayoutAttributes;
  self->_headerLayoutAttributes = array;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  headerLayoutAttributesByVisualSection = self->_headerLayoutAttributesByVisualSection;
  self->_headerLayoutAttributesByVisualSection = dictionary;

  MEMORY[0x1EEE66BB8](dictionary, headerLayoutAttributesByVisualSection);
}

- (PUSectionedGridLayoutData)init
{
  v9.receiver = self;
  v9.super_class = PUSectionedGridLayoutData;
  v2 = [(PUSectionedGridLayoutData *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfPagesToCache = 2;
    array = [MEMORY[0x1E695DF70] array];
    headerLayoutAttributes = v3->_headerLayoutAttributes;
    v3->_headerLayoutAttributes = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    headerLayoutAttributesByVisualSection = v3->_headerLayoutAttributesByVisualSection;
    v3->_headerLayoutAttributesByVisualSection = dictionary;
  }

  return v3;
}

@end