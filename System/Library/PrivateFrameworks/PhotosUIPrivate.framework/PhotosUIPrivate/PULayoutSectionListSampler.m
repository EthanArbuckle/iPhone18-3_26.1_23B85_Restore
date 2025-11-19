@interface PULayoutSectionListSampler
- (PULayoutSectionListSampler)initWithNumberOfVisibleItems:(int64_t)a3 numberOfRealItems:(int64_t)a4;
- (int64_t)indexForUnsampledIndex:(int64_t)a3 isMainItem:(BOOL *)a4;
- (void)dealloc;
- (void)dumpInternalMemory;
- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)a3 usingBlock:(id)a4;
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

- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)a3 usingBlock:(id)a4
{
  v8 = 0;
  if (a3.location < (a3.location + a3.length))
  {
    location = a3.location;
    v7 = a3.length - 1;
    do
    {
      (*(a4 + 2))(a4, location, self->_visibleItemIndexes[location], &v8);
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

- (int64_t)indexForUnsampledIndex:(int64_t)a3 isMainItem:(BOOL *)a4
{
  if (a3 < 0 || self->_numberOfRealItems <= a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:656 description:{@"Invalid unsampled index %ld for %ld real items", a3, self->_numberOfRealItems}];
  }

  visibleItemIndexes = self->_visibleItemIndexes;
  v9 = *visibleItemIndexes;
  if (*visibleItemIndexes >= a3)
  {
    result = 0;
LABEL_8:
    if (a4)
    {
      *a4 = v9 == a3;
    }

    return result;
  }

  result = self->_numberOfVisibleItems - 1;
  v9 = visibleItemIndexes[result];
  if (v9 <= a3)
  {
    goto LABEL_8;
  }

  lastSeenUnsampledIndex = self->_lastSeenUnsampledIndex;
  if (lastSeenUnsampledIndex > a3)
  {
LABEL_6:
    result = 0;
    goto LABEL_16;
  }

  result = self->_lastSeenSampledIndex;
  if (self->_lastSeenTopUnsampledIndex > a3)
  {
    if (a4)
    {
      *a4 = lastSeenUnsampledIndex == a3;
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
    if (v12 == a3)
    {
      self->_lastSeenUnsampledIndex = a3;
      self->_lastSeenTopUnsampledIndex = visibleItemIndexes[result + 1];
      if (!a4)
      {
        goto LABEL_27;
      }

      v13 = 1;
      goto LABEL_26;
    }

    if (v12 > a3)
    {
      break;
    }

    self->_lastSeenUnsampledIndex = v12;
    ++result;
  }

  self->_lastSeenTopUnsampledIndex = v12;
  --result;
  if (!a4)
  {
    goto LABEL_27;
  }

  v13 = 0;
LABEL_26:
  *a4 = v13;
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

- (PULayoutSectionListSampler)initWithNumberOfVisibleItems:(int64_t)a3 numberOfRealItems:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = PULayoutSectionListSampler;
  v6 = [(PULayoutSectionListSampler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_numberOfVisibleItems = a3;
    v6->_numberOfRealItems = a4;
    v6->_visibleItemIndexes = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    v7->_lastSeenUnsampledIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7->_lastSeenTopUnsampledIndex = 0;
  }

  return v7;
}

@end