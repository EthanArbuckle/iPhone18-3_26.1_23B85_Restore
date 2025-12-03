@interface _NSTextRunStorage
- (BOOL)isEmpty;
- (NSCountableTextLocation)_createLocationFromOffset:(uint64_t)offset;
- (NSCountableTextLocation)_locationFromLocation:(uint64_t)location withOffset:;
- (NSTextRange)contentRange;
- (_NSTextRunStorage)initWithDataSource:(id)source;
- (id)description;
- (id)enumerateObjectsFromLocation:(id)location options:(int64_t)options usingBlock:(id)block;
- (int64_t)baseIndex;
- (uint64_t)_createTextRangeFromRange:(uint64_t)range;
- (uint64_t)_indexFromTextLocation:(uint64_t)result;
- (uint64_t)_rangeFromTextRange:(uint64_t)range;
- (void)_performCountableRunStorageOperation:(uint64_t)operation;
- (void)dealloc;
- (void)invalidateElementsInRange:(id)range delta:(int64_t)delta;
- (void)setObject:(id)object forRange:(id)range;
@end

@implementation _NSTextRunStorage

- (int64_t)baseIndex
{
  if (!self->_isCountable)
  {
    return 0;
  }

  baseLocation = [(_NSTextRunStorage *)self baseLocation];

  return [(NSTextLocation *)baseLocation characterIndex];
}

- (void)dealloc
{
  __NSTextRunStorageReleaseElementContentsInRange(self, 0x7FFFFFFFFFFFFFFFuLL, 0);

  v3.receiver = self;
  v3.super_class = _NSTextRunStorage;
  [(_NSTextRunStorage *)&v3 dealloc];
}

- (NSTextRange)contentRange
{
  objc_sync_enter(self);
  null = [MEMORY[0x1E695DFB0] null];
  contentRange = self->_contentRange;
  if (!contentRange)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__14;
    v16 = __Block_byref_object_dispose__14;
    v17 = 0;
    if (self->_RLEArray)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __33___NSTextRunStorage_contentRange__block_invoke_3;
      v9[3] = &unk_1E7268058;
      v9[4] = self;
      v9[5] = &v12;
      [(_NSTextRunStorage *)self _performCountableRunStorageOperation:v9];
    }

    else
    {
      v8 = [(NSStorage *)self->_elements count];
      if (v8 >= 1)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __33___NSTextRunStorage_contentRange__block_invoke;
        v11[3] = &unk_1E7268030;
        v11[4] = &v12;
        __NSTextRunStorageEnumerateElementsInRange(self, 0, 1uLL, 0, v11);
        if (v13[5])
        {
          if (v8 != 1)
          {
            v10[0] = MEMORY[0x1E69E9820];
            v10[1] = 3221225472;
            v10[2] = __33___NSTextRunStorage_contentRange__block_invoke_2;
            v10[3] = &unk_1E7268030;
            v10[4] = &v12;
            __NSTextRunStorageEnumerateElementsInRange(self, v8 - 1, 1uLL, 0, v10);
          }
        }
      }
    }

    v5 = v13[5];
    if (!v5)
    {
      v5 = null;
      v13[5] = v5;
    }

    self->_contentRange = v5;
    _Block_object_dispose(&v12, 8);
    contentRange = self->_contentRange;
  }

  if (null == contentRange)
  {
    v6 = 0;
  }

  else
  {
    v6 = contentRange;
  }

  objc_sync_exit(self);
  return v6;
}

- (BOOL)isEmpty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28___NSTextRunStorage_isEmpty__block_invoke;
  v4[3] = &unk_1E7268008;
  v4[4] = &v5;
  [(_NSTextRunStorage *)self enumerateObjectsFromLocation:0 options:2 usingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (_NSTextRunStorage)initWithDataSource:(id)source
{
  v11.receiver = self;
  v11.super_class = _NSTextRunStorage;
  v4 = [(_NSTextRunStorage *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_dataSource = source;
    v4->_isCountable = [source isCountableDataSource];
    v6 = objc_opt_respondsToSelector();
    v5->_hasBaseLocation = v6 & 1;
    if (v6 & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }

    v5->_mapsLocationOffset = v7 & 1;
    if (v5->_isCountable || (v7 & 1) != 0)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E696AD58]) init];
      v9 = 16;
    }

    else
    {
      v8 = [[NSStorage alloc] initWithElementSize:16 capacity:0];
      v9 = 24;
    }

    *(&v5->super.isa + v9) = v8;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  objc_msgSend(string, "appendFormat:", @"<%@ %p>(\n"), objc_opt_class(), self;
  baseLocation = [(_NSTextRunStorage *)self baseLocation];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32___NSTextRunStorage_description__block_invoke;
  v6[3] = &unk_1E7267FE0;
  v6[4] = string;
  [(_NSTextRunStorage *)self enumerateObjectsFromLocation:baseLocation options:0 usingBlock:v6];
  [string appendFormat:@""]);
  return string;
}

- (void)_performCountableRunStorageOperation:(uint64_t)operation
{
  if (operation)
  {
    if (*(operation + 57) == 1)
    {
      baseLocation = [*(operation + 8) baseLocation];
    }

    else
    {
      baseLocation = 0;
    }

    *(operation + 64) = baseLocation;
    (*(a2 + 16))(a2, operation);

    *(operation + 64) = 0;
  }
}

- (id)enumerateObjectsFromLocation:(id)location options:(int64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  objc_sync_enter(self);
  v9 = optionsCopy & 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v24 = 0;
  if (self->_RLEArray)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69___NSTextRunStorage_enumerateObjectsFromLocation_options_usingBlock___block_invoke_2;
    v15[3] = &unk_1E72680A8;
    v15[4] = location;
    v15[5] = self;
    v16 = optionsCopy & 1;
    v17 = (optionsCopy & 2) != 0;
    v15[6] = block;
    v15[7] = &v19;
    [(_NSTextRunStorage *)self _performCountableRunStorageOperation:v15];
  }

  else
  {
    v10 = [(NSStorage *)self->_elements count];
    v11 = v10;
    if (location || !v9 || (ElementIndexForTextLocation = v10 - 1, v10 < 1))
    {
      ElementIndexForTextLocation = __NSTextRunStorageGetElementIndexForTextLocation(self, location, 0);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69___NSTextRunStorage_enumerateObjectsFromLocation_options_usingBlock___block_invoke;
    v18[3] = &unk_1E7268080;
    v18[4] = block;
    v18[5] = &v19;
    __NSTextRunStorageEnumerateElementsInRange(self, ElementIndexForTextLocation, v11 - ElementIndexForTextLocation, v9, v18);
  }

  v13 = v20[5];
  _Block_object_dispose(&v19, 8);
  objc_sync_exit(self);
  return v13;
}

- (void)setObject:(id)object forRange:(id)range
{
  objc_sync_enter(self);
  if (object)
  {
    if (self->_RLEArray)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40___NSTextRunStorage_setObject_forRange___block_invoke;
      v10[3] = &unk_1E72680D0;
      v10[4] = range;
      v10[5] = self;
      v10[6] = object;
      [(_NSTextRunStorage *)self _performCountableRunStorageOperation:v10];
    }

    else
    {
      ElementIndexForTextRange = __NSTextRunStorageGetElementIndexForTextRange(self, range, 0);
      if (ElementIndexForTextRange != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [(NSStorage *)self->_elements elementAtIndex:ElementIndexForTextRange];
        v9 = v8;
        if (v8)
        {

          v9[1] = object;
          *v9 = range;
        }
      }
    }
  }

  else
  {
    [(_NSTextRunStorage *)self invalidateElementsInRange:range delta:0];
  }

  self->_contentRange = 0;
  objc_sync_exit(self);
}

- (void)invalidateElementsInRange:(id)range delta:(int64_t)delta
{
  objc_sync_enter(self);
  if (self->_RLEArray)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53___NSTextRunStorage_invalidateElementsInRange_delta___block_invoke_2;
    v9[3] = &unk_1E7268120;
    v9[4] = range;
    v9[5] = self;
    v9[6] = delta;
    [(_NSTextRunStorage *)self _performCountableRunStorageOperation:v9];
  }

  else
  {
    ElementIndexForTextRange = __NSTextRunStorageGetElementIndexForTextRange(self, range, 1);
    v8 = [(NSStorage *)self->_elements count];
    if (ElementIndexForTextRange != 0x7FFFFFFFFFFFFFFFLL && v8 > ElementIndexForTextRange)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __53___NSTextRunStorage_invalidateElementsInRange_delta___block_invoke;
      v10[3] = &unk_1E72680F8;
      v10[4] = self;
      v10[5] = delta;
      __NSTextRunStorageEnumerateElementsInRange(self, ElementIndexForTextRange, v8 - ElementIndexForTextRange, 0, v10);
    }
  }

  self->_contentRange = 0;
  objc_sync_exit(self);
}

- (uint64_t)_createTextRangeFromRange:(uint64_t)range
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_4();
  if (!v6)
  {
    if (*(self + 58) == 1)
    {
      v10 = [*(self + 8) locationFromLocation:objc_msgSend(self withOffset:{"baseLocation"), a2}];
      if (range)
      {
        range = [*(self + 8) locationFromLocation:objc_msgSend(self withOffset:{"baseLocation"), a2 + range}];
      }

      v11 = [NSTextRange alloc];

      return [(NSTextRange *)v11 initWithLocation:v10 endLocation:range];
    }

    return 0;
  }

  baseIndex = [self baseIndex];
  v8 = [NSCountableTextRange alloc];

  return [(NSCountableTextRange *)v8 initWithRange:baseIndex + a2, range];
}

- (NSCountableTextLocation)_locationFromLocation:(uint64_t)location withOffset:
{
  if (result)
  {
    OUTLINED_FUNCTION_1_4();
    if (v6)
    {
      v7 = -[NSCountableTextLocation initWithIndex:]([NSCountableTextLocation alloc], "initWithIndex:", [a2 characterIndex] + location);

      return v7;
    }

    else
    {
      v8 = *(v5 + 8);

      return [v8 locationFromLocation:a2 withOffset:location];
    }
  }

  return result;
}

- (NSCountableTextLocation)_createLocationFromOffset:(uint64_t)offset
{
  if (!offset)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_4();
  if (!v4)
  {
    if (*(v3 + 58) == 1)
    {
      v8 = [*(v3 + 8) locationFromLocation:objc_msgSend(v3 withOffset:{"baseLocation"), a2}];

      return v8;
    }

    return 0;
  }

  v5 = [v3 baseIndex] + a2;
  if (v5 < 0)
  {
    return 0;
  }

  v6 = [NSCountableTextLocation alloc];

  return [(NSCountableTextLocation *)v6 initWithIndex:v5];
}

- (uint64_t)_indexFromTextLocation:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    OUTLINED_FUNCTION_1_4();
    if (v4)
    {
      characterIndex = [a2 characterIndex];
      return characterIndex - [v3 baseIndex];
    }

    else if (*(v3 + 58) == 1)
    {
      v6 = *(v3 + 8);
      baseLocation = [v3 baseLocation];

      return [v6 offsetFromLocation:baseLocation toLocation:a2];
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (uint64_t)_rangeFromTextRange:(uint64_t)range
{
  if (!range)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_4();
  if (v4)
  {
    range = [a2 range];
    return range - [range baseIndex];
  }

  else if (*(range + 58) == 1)
  {
    v6 = [*(range + 8) offsetFromLocation:objc_msgSend(range toLocation:{"baseLocation"), objc_msgSend(a2, "location")}];
    if (([a2 isEmpty] & 1) == 0)
    {
      [*(range + 8) offsetFromLocation:objc_msgSend(a2 toLocation:{"location"), objc_msgSend(a2, "endLocation")}];
    }
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

@end