@interface PULayoutSectionListSampler
- (PULayoutSectionListSampler)initWithNumberOfVisibleItems:(int64_t)items numberOfRealItems:(int64_t)realItems;
- (int64_t)indexForUnsampledIndex:(int64_t)index isMainItem:(BOOL *)item;
- (void)dealloc;
- (void)dumpInternalMemory;
- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)range usingBlock:(id)block;
@end

@implementation PULayoutSectionListSampler

- (void)dumpInternalMemory
{
  v6 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexes:self->_visibleItemIndexes count:self->_numberOfVisibleItems];
  numberOfVisibleItems = self->_numberOfVisibleItems;
  numberOfRealItems = self->_numberOfRealItems;
  v5 = [v6 description];
  NSLog(&cfstr_SpreadLdItemsO_0.isa, numberOfVisibleItems, numberOfRealItems, v5);
}

- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)range usingBlock:(id)block
{
  v8 = 0;
  if (range.location < (range.location + range.length))
  {
    location = range.location;
    v7 = range.length - 1;
    do
    {
      (*(block + 2))(block, location, self->_visibleItemIndexes[location], &v8);
      if (!v7)
      {
        break;
      }

      ++location;
      --v7;
    }

    while ((v8 & 1) == 0);
  }
}

- (int64_t)indexForUnsampledIndex:(int64_t)index isMainItem:(BOOL *)item
{
  if (index < 0 || self->_numberOfRealItems <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:656 description:{@"Invalid unsampled index %ld for %ld real items", index, self->_numberOfRealItems}];
  }

  visibleItemIndexes = self->_visibleItemIndexes;
  v9 = *visibleItemIndexes;
  if (*visibleItemIndexes >= index)
  {
    result = 0;
LABEL_8:
    if (item)
    {
      *item = v9 == index;
    }

    return result;
  }

  result = self->_numberOfVisibleItems - 1;
  v9 = visibleItemIndexes[result];
  if (v9 <= index)
  {
    goto LABEL_8;
  }

  lastSeenUnsampledIndex = self->_lastSeenUnsampledIndex;
  if (lastSeenUnsampledIndex > index)
  {
LABEL_6:
    result = 0;
    goto LABEL_16;
  }

  result = self->_lastSeenSampledIndex;
  if (self->_lastSeenTopUnsampledIndex > index)
  {
    if (item)
    {
      *item = lastSeenUnsampledIndex == index;
    }

    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    goto LABEL_6;
  }

  ++result;
LABEL_16:
  self->_lastSeenTopUnsampledIndex = 0;
  while (1)
  {
    if (result >= self->_numberOfVisibleItems)
    {
      result = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_27;
    }

    v12 = visibleItemIndexes[result];
    if (v12 == index)
    {
      self->_lastSeenUnsampledIndex = index;
      self->_lastSeenTopUnsampledIndex = visibleItemIndexes[result + 1];
      if (!item)
      {
        goto LABEL_27;
      }

      v13 = 1;
      goto LABEL_26;
    }

    if (v12 > index)
    {
      break;
    }

    self->_lastSeenUnsampledIndex = v12;
    ++result;
  }

  self->_lastSeenTopUnsampledIndex = v12;
  --result;
  if (!item)
  {
    goto LABEL_27;
  }

  v13 = 0;
LABEL_26:
  *item = v13;
LABEL_27:
  self->_lastSeenSampledIndex = result;
  return result;
}

- (void)dealloc
{
  free(self->_visibleItemIndexes);
  v3.receiver = self;
  v3.super_class = PULayoutSectionListSampler;
  [(PULayoutSectionListSampler *)&v3 dealloc];
}

- (PULayoutSectionListSampler)initWithNumberOfVisibleItems:(int64_t)items numberOfRealItems:(int64_t)realItems
{
  v9.receiver = self;
  v9.super_class = PULayoutSectionListSampler;
  v6 = [(PULayoutSectionListSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_numberOfVisibleItems = items;
    v6->_numberOfRealItems = realItems;
    v6->_visibleItemIndexes = malloc_type_malloc(8 * items, 0x100004000313F17uLL);
    v7->_lastSeenUnsampledIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7->_lastSeenTopUnsampledIndex = 0;
  }

  return v7;
}

@end