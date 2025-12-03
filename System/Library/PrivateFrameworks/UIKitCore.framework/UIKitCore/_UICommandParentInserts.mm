@interface _UICommandParentInserts
- (void)_addFallbackBeforeElements:(id)elements fallbackAfterElements:(id)afterElements;
- (void)_setAtStartElements:(id)elements atEndElements:(id)endElements;
- (void)_setBeforeElements:(id)elements afterElements:(id)afterElements aroundElement:(id)element;
@end

@implementation _UICommandParentInserts

- (void)_setAtStartElements:(id)elements atEndElements:(id)endElements
{
  elementsCopy = elements;
  endElementsCopy = endElements;
  if (self->_atStartElements)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICommandInternalDiff.m" lineNumber:36 description:@"at start elements already set"];
  }

  if (self->_atEndElements)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICommandInternalDiff.m" lineNumber:37 description:@"at end elements already set"];
  }

  atStartElements = self->_atStartElements;
  self->_atStartElements = elementsCopy;
  v13 = elementsCopy;

  atEndElements = self->_atEndElements;
  self->_atEndElements = endElementsCopy;
}

- (void)_setBeforeElements:(id)elements afterElements:(id)afterElements aroundElement:(id)element
{
  elementCopy = element;
  childInserts = self->_childInserts;
  afterElementsCopy = afterElements;
  elementsCopy = elements;
  v12 = [(NSMutableDictionary *)childInserts objectForKeyedSubscript:elementCopy];

  if (v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICommandInternalDiff.m" lineNumber:45 description:@"child insert already set"];
  }

  v13 = objc_alloc_init(_UICommandChildInserts);
  [(_UICommandChildInserts *)v13 _setBeforeElements:elementsCopy afterElements:afterElementsCopy];

  v14 = self->_childInserts;
  if (v14)
  {
    [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:elementCopy];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF90] dictionaryWithObject:v13 forKey:elementCopy];
    v16 = self->_childInserts;
    self->_childInserts = v15;
  }
}

- (void)_addFallbackBeforeElements:(id)elements fallbackAfterElements:(id)afterElements
{
  elementsCopy = elements;
  afterElementsCopy = afterElements;
  if ([elementsCopy count])
  {
    fallbackBeforeElements = self->_fallbackBeforeElements;
    if (fallbackBeforeElements)
    {
      [(NSMutableArray *)fallbackBeforeElements addObject:elementsCopy];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithObject:elementsCopy];
      v9 = self->_fallbackBeforeElements;
      self->_fallbackBeforeElements = v8;
    }
  }

  if ([afterElementsCopy count])
  {
    fallbackAfterElements = self->_fallbackAfterElements;
    if (fallbackAfterElements)
    {
      [(NSMutableArray *)fallbackAfterElements addObject:afterElementsCopy];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF70] arrayWithObject:afterElementsCopy];
      v12 = self->_fallbackAfterElements;
      self->_fallbackAfterElements = v11;
    }
  }
}

@end