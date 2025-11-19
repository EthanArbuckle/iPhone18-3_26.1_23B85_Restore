@interface BRCMinHeap
- (BOOL)check;
- (BOOL)containsObject:(id)a3;
- (BRCMinHeap)init;
- (BRCMinHeap)initWithComparator:(id)a3;
- (id)description;
- (id)firstObject;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_moveDown:(id)a3 index:(unint64_t)a4;
- (void)_moveUp:(id)a3 index:(unint64_t)a4;
- (void)_moveUpOrDown:(id)a3 index:(unint64_t)a4;
- (void)_shrink;
- (void)addObject:(id)a3;
- (void)dealloc;
- (void)objectWeightChanged:(id)a3;
- (void)removeAllObjects;
- (void)removeFirstObject;
- (void)removeObject:(id)a3;
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
    v9 = self;
    [(NSMapTable *)objects removeObjectForKey:v7];

    self->_array[self->_count] = 0;
    if (self->_count)
    {
      [(BRCMinHeap *)v9 _moveDown:v6 index:0];
    }

    [(BRCMinHeap *)v9 _shrink];
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

- (BRCMinHeap)initWithComparator:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BRCMinHeap;
  v5 = [(BRCMinHeap *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x22AA4A310](v4);
    comparator = v5->_comparator;
    v5->_comparator = v6;

    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    objects = v5->_objects;
    v5->_objects = v8;
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

- (void)_moveUp:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    while (1)
    {
      v7 = a4 - 1;
      v8 = (a4 - 1) >> 1;
      v9 = self->_array[v8];
      if ((*(self->_comparator + 2))() <= 0)
      {
        break;
      }

      self->_array[a4] = v9;
      objects = self->_objects;
      v11 = MEMORY[0x277CCABB0];
      v12 = v9;
      v13 = self;
      v14 = [v11 numberWithUnsignedInteger:a4];
      [(NSMapTable *)objects setObject:v14 forKey:v12];

      a4 = v8;
      if (v7 <= 1)
      {
        goto LABEL_7;
      }
    }

    v8 = a4;
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  self->_array[v8] = v6;
  v15 = self->_objects;
  v16 = MEMORY[0x277CCABB0];
  v19 = v6;
  v17 = self;
  v18 = [v16 numberWithUnsignedInteger:v8];
  [(NSMapTable *)v15 setObject:v18 forKey:v19];
}

- (void)_moveDown:(id)a3 index:(unint64_t)a4
{
  v6 = a3;
  v7 = (2 * a4) | 1;
  if (v7 < self->_count)
  {
    v8 = 2 * a4;
    while (1)
    {
      v9 = self->_array[v7];
      v10 = (*(self->_comparator + 2))();
      v11 = v8 + 2;
      count = self->_count;
      if (v10 < 0)
      {
        if (v8 + 2 >= count || (array = self->_array, v15 = array[v11], v16 = array[v7], ((*(self->_comparator + 2))() & 0x8000000000000000) == 0))
        {
          v11 = v7;
        }
      }

      else
      {
        if (v8 + 2 >= count)
        {
          break;
        }

        v13 = self->_array[v11];
        if ((*(self->_comparator + 2))() >= 0)
        {
          v11 = a4;
        }
      }

      if (v11 == a4)
      {
        break;
      }

      v17 = self->_array;
      v18 = v17[v11];
      v17[a4] = v18;
      objects = self->_objects;
      v20 = MEMORY[0x277CCABB0];
      v21 = v18;
      v22 = self;
      v23 = [v20 numberWithUnsignedInteger:a4];
      [(NSMapTable *)objects setObject:v23 forKey:v21];

      v8 = 2 * v11;
      v7 = (2 * v11) | 1;
      a4 = v11;
      if (v7 >= self->_count)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = a4;
LABEL_15:
  self->_array[v11] = v6;
  v24 = self->_objects;
  v25 = MEMORY[0x277CCABB0];
  v28 = v6;
  v26 = self;
  v27 = [v25 numberWithUnsignedInteger:v11];
  [(NSMapTable *)v24 setObject:v27 forKey:v28];
}

- (void)_moveUpOrDown:(id)a3 index:(unint64_t)a4
{
  v17 = a3;
  if (!a4)
  {
    v10 = self;
    v11 = v17;
    v12 = 0;
    goto LABEL_8;
  }

  v6 = *(self->_array + ((4 * a4) & 0xFFFFFFFFFFFFFFF8));
  v7 = (*(self->_comparator + 2))();
  if (v7 == 1)
  {
    [(BRCMinHeap *)self _moveUp:v17 index:a4];
    goto LABEL_11;
  }

  if (!v7)
  {
    self->_array[a4] = v17;
    objects = self->_objects;
    v14 = MEMORY[0x277CCABB0];
    v15 = v17;
    v16 = [v14 numberWithUnsignedInteger:a4];
    [(NSMapTable *)objects setObject:v16 forKey:v15];

    goto LABEL_11;
  }

  v8 = v7 == -1;
  v9 = v17;
  if (v8)
  {
    v10 = self;
    v11 = v17;
    v12 = a4;
LABEL_8:
    [(BRCMinHeap *)v10 _moveDown:v11 index:v12];
LABEL_11:
    v9 = v17;
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    return 0;
  }

  array = self->_array;
  a3->var0 = 1;
  a3->var1 = array;
  a3->var2 = &self->_mutation;
  return self->_count;
}

- (BOOL)containsObject:(id)a3
{
  v3 = [(NSMapTable *)self->_objects objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_objects objectForKey:v4];

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
  [(BRCMinHeap *)self _moveUp:v4 index:?];
  ++self->_mutation;
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_objects objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
    if (self->_array[v7] != v4)
    {
      [BRCMinHeap removeObject:];
    }

    [(NSMapTable *)self->_objects removeObjectForKey:v4];
    array = self->_array;
    v9 = self->_count - 1;
    self->_count = v9;
    v10 = array[v9];

    self->_array[self->_count] = 0;
    if (v7 != self->_count)
    {
      [(BRCMinHeap *)self _moveUpOrDown:v10 index:v7];
    }

    [(BRCMinHeap *)self _shrink];
  }

  else
  {
    v10 = v4;
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

- (void)objectWeightChanged:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_objects objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
    if (self->_array[v7] != v4)
    {
      [BRCMinHeap objectWeightChanged:];
    }

    [(BRCMinHeap *)self _moveUpOrDown:v4 index:v7];
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