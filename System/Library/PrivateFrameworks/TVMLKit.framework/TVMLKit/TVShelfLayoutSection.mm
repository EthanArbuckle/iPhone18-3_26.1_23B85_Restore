@interface TVShelfLayoutSection
- (CGRect)firstItemFrame;
- (CGRect)itemFrameAtIndex:(int64_t)index;
- (CGRect)itemsBoundingFrame;
- (CGRect)lastItemFrame;
- (CGRect)sectionHeaderFrame;
- (UIEdgeInsets)sectionInset;
- (void)dealloc;
- (void)setNumberOfItems:(int64_t)numberOfItems;
@end

@implementation TVShelfLayoutSection

- (void)dealloc
{
  [(TVShelfLayoutSection *)self setNumberOfItems:0];
  v3.receiver = self;
  v3.super_class = TVShelfLayoutSection;
  [(TVShelfLayoutSection *)&v3 dealloc];
}

- (void)setNumberOfItems:(int64_t)numberOfItems
{
  if (self->_numberOfItems != numberOfItems)
  {
    self->_numberOfItems = numberOfItems;
    itemFrames = self->_itemFrames;
    if (itemFrames)
    {
      free(itemFrames);
      self->_itemFrames = 0;
      numberOfItems = self->_numberOfItems;
    }

    if (numberOfItems)
    {
      self->_itemFrames = malloc_type_calloc(numberOfItems, 0x20uLL, 0x1000040E0EAB150uLL);
    }
  }
}

- (CGRect)itemFrameAtIndex:(int64_t)index
{
  v3 = &self->_itemFrames[index];
  x = v3->origin.x;
  y = v3->origin.y;
  width = v3->size.width;
  height = v3->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)firstItemFrame
{
  if (self->_numberOfItems < 1)
  {
    itemFrames = MEMORY[0x277CBF3A0];
  }

  else
  {
    itemFrames = self->_itemFrames;
  }

  width = itemFrames->size.width;
  height = itemFrames->size.height;
  x = itemFrames->origin.x;
  y = itemFrames->origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lastItemFrame
{
  numberOfItems = self->_numberOfItems;
  if (numberOfItems < 1)
  {
    p_x = MEMORY[0x277CBF3A0];
    p_height = (MEMORY[0x277CBF3A0] + 24);
    p_width = (MEMORY[0x277CBF3A0] + 16);
    p_y = (MEMORY[0x277CBF3A0] + 8);
  }

  else
  {
    v3 = &self->_itemFrames[numberOfItems];
    p_x = &v3[-1].origin.x;
    p_y = &v3[-1].origin.y;
    p_width = &v3[-1].size.width;
    p_height = &v3[-1].size.height;
  }

  v8 = *p_height;
  v9 = *p_width;
  v10 = *p_x;
  v11 = *p_y;
  result.size.height = v8;
  result.size.width = v9;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)itemsBoundingFrame
{
  x = self->_itemsBoundingFrame.origin.x;
  y = self->_itemsBoundingFrame.origin.y;
  width = self->_itemsBoundingFrame.size.width;
  height = self->_itemsBoundingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sectionHeaderFrame
{
  x = self->_sectionHeaderFrame.origin.x;
  y = self->_sectionHeaderFrame.origin.y;
  width = self->_sectionHeaderFrame.size.width;
  height = self->_sectionHeaderFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)sectionInset
{
  top = self->_sectionInset.top;
  left = self->_sectionInset.left;
  bottom = self->_sectionInset.bottom;
  right = self->_sectionInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end