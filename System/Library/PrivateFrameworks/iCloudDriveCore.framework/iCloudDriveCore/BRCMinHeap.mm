@interface BRCMinHeap
- (BOOL)check;
- (BOOL)containsObject:(id)object;
- (BRCMinHeap)init;
- (BRCMinHeap)initWithComparator:(id)comparator;
- (id)description;
- (id)firstObject;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_moveDown:(id)down index:(unint64_t)index;
- (void)_moveUp:(id)up index:(unint64_t)index;
- (void)_moveUpOrDown:(id)down index:(unint64_t)index;
- (void)_shrink;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)objectWeightChanged:(id)changed;
- (void)removeAllObjects;
- (void)removeFirstObject;
- (void)removeObject:(id)object;
@end

@implementation BRCMinHeap

- (void)removeFirstObject
{
  count = self->_count;
  if (count)
  {
    array = self->_array;
    v5 = count - 1;
    self->_count = v5;
    v6 = array[v5];
    v7 = *self->_array;
    objects = self->_objects;
    selfCopy = self;
    [(NSMapTable *)objects removeObjectForKey:v7];

    self->_array[self->_count] = 0;
    if (self->_count)
    {
      [(BRCMinHeap *)selfCopy _moveDown:v6 index:0];
    }

    [(BRCMinHeap *)selfCopy _shrink];
  }

  ++self->_mutation;
}

- (void)_shrink
{
  count = self->_count;
  if (count >= 8)
  {
    size = self->_size;
    if (size >= 4 * count)
    {
      v5 = malloc_type_realloc(self->_array, 4 * (size & 0x1FFFFFFFFFFFFFFFLL), 0x80040B8603338uLL);
      v6 = self->_size >> 1;
      self->_array = v5;
      self->_size = v6;
    }
  }
}

- (id)firstObject
{
  if (self->_count)
  {
    return *self->_array;
  }

  else
  {
    return 0;
  }
}

- (BRCMinHeap)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[BRCMinHeap init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (BRCMinHeap)initWithComparator:(id)comparator
{
  comparatorCopy = comparator;
  v11.receiver = self;
  v11.super_class = BRCMinHeap;
  v5 = [(BRCMinHeap *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x22AA4A310](comparatorCopy);
    comparator = v5->_comparator;
    v5->_comparator = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    objects = v5->_objects;
    v5->_objects = strongToStrongObjectsMapTable;
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:32];
  [v3 appendFormat:@"<BRCMinHeap %p objects:%@ array:[", self, self->_objects];
  if (self->_size)
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%p:%@, ", self->_array[v4], self->_array[v4]];
      ++v4;
    }

    while (v4 < self->_size);
  }

  [v3 appendString:@"]>"];

  return v3;
}

- (void)dealloc
{
  [(BRCMinHeap *)self removeAllObjects];
  free(self->_array);
  v3.receiver = self;
  v3.super_class = BRCMinHeap;
  [(BRCMinHeap *)&v3 dealloc];
}

- (BOOL)check
{
  count = self->_count;
  if (count == [(NSMapTable *)self->_objects count])
  {
    if (!self->_count)
    {
      return 1;
    }

    v4 = 0;
    while (self->_array[v4])
    {
      v5 = [(NSMapTable *)self->_objects objectForKey:?];
      v6 = v5;
      if (!v5 || v4 != [v5 unsignedIntegerValue])
      {
        goto LABEL_10;
      }

      if (++v4 >= self->_count)
      {
        return 1;
      }
    }

    v6 = 0;
LABEL_10:
  }

  return 0;
}

- (void)_moveUp:(id)up index:(unint64_t)index
{
  upCopy = up;
  if (index)
  {
    while (1)
    {
      v7 = index - 1;
      indexCopy = (index - 1) >> 1;
      v9 = self->_array[indexCopy];
      if ((*(self->_comparator + 2))() <= 0)
      {
        break;
      }

      self->_array[index] = v9;
      objects = self->_objects;
      v11 = MEMORY[0x277CCABB0];
      v12 = v9;
      selfCopy = self;
      v14 = [v11 numberWithUnsignedInteger:index];
      [(NSMapTable *)objects setObject:v14 forKey:v12];

      index = indexCopy;
      if (v7 <= 1)
      {
        goto LABEL_7;
      }
    }

    indexCopy = index;
  }

  else
  {
    indexCopy = 0;
  }

LABEL_7:
  self->_array[indexCopy] = upCopy;
  v15 = self->_objects;
  v16 = MEMORY[0x277CCABB0];
  v19 = upCopy;
  selfCopy2 = self;
  v18 = [v16 numberWithUnsignedInteger:indexCopy];
  [(NSMapTable *)v15 setObject:v18 forKey:v19];
}

- (void)_moveDown:(id)down index:(unint64_t)index
{
  downCopy = down;
  v7 = (2 * index) | 1;
  if (v7 < self->_count)
  {
    v8 = 2 * index;
    while (1)
    {
      v9 = self->_array[v7];
      v10 = (*(self->_comparator + 2))();
      indexCopy2 = v8 + 2;
      count = self->_count;
      if (v10 < 0)
      {
        if (v8 + 2 >= count || (array = self->_array, v15 = array[indexCopy2], v16 = array[v7], ((*(self->_comparator + 2))() & 0x8000000000000000) == 0))
        {
          indexCopy2 = v7;
        }
      }

      else
      {
        if (v8 + 2 >= count)
        {
          break;
        }

        v13 = self->_array[indexCopy2];
        if ((*(self->_comparator + 2))() >= 0)
        {
          indexCopy2 = index;
        }
      }

      if (indexCopy2 == index)
      {
        break;
      }

      v17 = self->_array;
      v18 = v17[indexCopy2];
      v17[index] = v18;
      objects = self->_objects;
      v20 = MEMORY[0x277CCABB0];
      v21 = v18;
      selfCopy = self;
      v23 = [v20 numberWithUnsignedInteger:index];
      [(NSMapTable *)objects setObject:v23 forKey:v21];

      v8 = 2 * indexCopy2;
      v7 = (2 * indexCopy2) | 1;
      index = indexCopy2;
      if (v7 >= self->_count)
      {
        goto LABEL_15;
      }
    }
  }

  indexCopy2 = index;
LABEL_15:
  self->_array[indexCopy2] = downCopy;
  v24 = self->_objects;
  v25 = MEMORY[0x277CCABB0];
  v28 = downCopy;
  selfCopy2 = self;
  v27 = [v25 numberWithUnsignedInteger:indexCopy2];
  [(NSMapTable *)v24 setObject:v27 forKey:v28];
}

- (void)_moveUpOrDown:(id)down index:(unint64_t)index
{
  downCopy = down;
  if (!index)
  {
    selfCopy2 = self;
    v11 = downCopy;
    indexCopy = 0;
    goto LABEL_8;
  }

  v6 = *(self->_array + ((4 * index) & 0xFFFFFFFFFFFFFFF8));
  v7 = (*(self->_comparator + 2))();
  if (v7 == 1)
  {
    [(BRCMinHeap *)self _moveUp:downCopy index:index];
    goto LABEL_11;
  }

  if (!v7)
  {
    self->_array[index] = downCopy;
    objects = self->_objects;
    v14 = MEMORY[0x277CCABB0];
    v15 = downCopy;
    v16 = [v14 numberWithUnsignedInteger:index];
    [(NSMapTable *)objects setObject:v16 forKey:v15];

    goto LABEL_11;
  }

  v8 = v7 == -1;
  v9 = downCopy;
  if (v8)
  {
    selfCopy2 = self;
    v11 = downCopy;
    indexCopy = index;
LABEL_8:
    [(BRCMinHeap *)selfCopy2 _moveDown:v11 index:indexCopy];
LABEL_11:
    v9 = downCopy;
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    return 0;
  }

  array = self->_array;
  state->var0 = 1;
  state->var1 = array;
  state->var2 = &self->_mutation;
  return self->_count;
}

- (BOOL)containsObject:(id)object
{
  v3 = [(NSMapTable *)self->_objects objectForKey:object];
  v4 = v3 != 0;

  return v4;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  v5 = [(NSMapTable *)self->_objects objectForKey:objectCopy];

  if (v5)
  {
    [BRCMinHeap addObject:];
  }

  v6 = self->_count + 1;
  size = self->_size;
  if (v6 > size)
  {
    v8 = ((3 * size) >> 1) + 4;
    v9 = malloc_type_realloc(self->_array, 8 * v8, 0x80040B8603338uLL);
    self->_array = v9;
    bzero(&v9[self->_size], 8 * (v8 - self->_size));
    self->_size = v8;
    v6 = self->_count + 1;
  }

  self->_count = v6;
  [(BRCMinHeap *)self _moveUp:objectCopy index:?];
  ++self->_mutation;
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  v5 = [(NSMapTable *)self->_objects objectForKey:objectCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (self->_array[unsignedIntegerValue] != objectCopy)
    {
      [BRCMinHeap removeObject:];
    }

    [(NSMapTable *)self->_objects removeObjectForKey:objectCopy];
    array = self->_array;
    v9 = self->_count - 1;
    self->_count = v9;
    v10 = array[v9];

    self->_array[self->_count] = 0;
    if (unsignedIntegerValue != self->_count)
    {
      [(BRCMinHeap *)self _moveUpOrDown:v10 index:unsignedIntegerValue];
    }

    [(BRCMinHeap *)self _shrink];
  }

  else
  {
    v10 = objectCopy;
  }

  ++self->_mutation;
}

- (void)removeAllObjects
{
  [(NSMapTable *)self->_objects removeAllObjects];
  if (self->_count)
  {
    v3 = 0;
    do
    {
      self->_array[v3++] = 0;
    }

    while (v3 < self->_count);
  }

  self->_count = 0;
  ++self->_mutation;
}

- (void)objectWeightChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(NSMapTable *)self->_objects objectForKey:changedCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (self->_array[unsignedIntegerValue] != changedCopy)
    {
      [BRCMinHeap objectWeightChanged:];
    }

    [(BRCMinHeap *)self _moveUpOrDown:changedCopy index:unsignedIntegerValue];
  }

  ++self->_mutation;
}

- (void)addObject:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: _getIndex(self, o) == nil%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeObject:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: _array[index] == o%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)objectWeightChanged:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: _array[index] == o%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end