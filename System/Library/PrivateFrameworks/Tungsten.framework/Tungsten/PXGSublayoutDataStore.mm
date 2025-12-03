@interface PXGSublayoutDataStore
- ($7C531AF6E50BD019A4D1760C681E3492)geometryForSublayout:(SEL)sublayout;
- (NSString)diagnosticDescription;
- (id)sublayoutAtIndex:(int64_t)index;
- (id)sublayoutProviderAtIndex:(int64_t)index;
- (int64_t)indexOfSublayout:(id)sublayout;
- (unsigned)spriteIndexOriginForSublayout:(id)sublayout;
- (unsigned)spriteIndexOriginForSublayoutIndex:(int64_t)index;
- (void)_insertRange:(_NSRange)range;
- (void)dealloc;
- (void)enumerateSublayoutGeometriesInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateSublayoutGeometriesUsingBlock:(id)block;
- (void)enumerateSublayoutsAtPoint:(CGPoint)point usingBlock:(id)block;
- (void)enumerateSublayoutsInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)enumerateSublayoutsInRect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateSublayoutsUsingBlock:(id)block;
- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index;
- (void)insertSublayoutProvider:(id)provider inRange:(_NSRange)range;
- (void)moveSublayoutsFromIndexes:(__CFArray *)indexes toIndexes:(id)toIndexes;
- (void)removeSublayoutsInRange:(_NSRange)range;
- (void)setCount:(int64_t)count;
@end

@implementation PXGSublayoutDataStore

- (NSString)diagnosticDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p\n", v5, self];

  v7 = [(PXGSublayoutDataStore *)self count];
  geometries = [(PXGSublayoutDataStore *)self geometries];
  infos = [(PXGSublayoutDataStore *)self infos];
  if (v7 >= 1)
  {
    v10 = infos;
    v11 = 0;
    p_var2 = &geometries->var4.var2;
    do
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%.2f, %.2f, %.5f}", *&p_var2[-1].width, *&p_var2[-1].height, *&p_var2->width];
      v14 = NSStringFromCGSize(p_var2[-2]);
      var0 = v10->var0;
      var1 = v10->var1;
      ++v10;
      [v6 appendFormat:@"\t%li:\tframe={%@, %@}\tspac=%0.1f\tsubl=%p\tprov=%p}\n", v11, v13, v14, *&p_var2[4].width, var0, var1];

      ++v11;
      p_var2 = (p_var2 + 136);
    }

    while (v7 != v11);
  }

  [v6 appendString:@">"];

  return v6;
}

- (void)enumerateSublayoutGeometriesInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (location + length > [(PXGSublayoutDataStore *)self count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v19.location = location;
    v19.length = length;
    v17 = NSStringFromRange(v19);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:264 description:{@"range out of bounds %@ 0..%li", v17, -[PXGSublayoutDataStore count](self, "count")}];

    if (!length)
    {
      goto LABEL_12;
    }
  }

  else if (!length)
  {
    goto LABEL_12;
  }

  v11 = (optionsCopy & 2) == 0;
  if ((optionsCopy & 2) != 0)
  {
    v12 = location + length - 1;
  }

  else
  {
    v12 = location;
  }

  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  v14 = [(PXGSublayoutDataStore *)self geometries]+ 136 * v12;
  v15 = [(PXGSublayoutDataStore *)self infos]+ 16 * v12;
  v18 = 0;
  do
  {
    blockCopy[2](blockCopy, v12, v14, v15, &v18);
    if (v18)
    {
      break;
    }

    v12 += v13;
    v15 += v13;
    v14 += v13;
    --length;
  }

  while (length);
LABEL_12:
}

- (void)enumerateSublayoutGeometriesUsingBlock:(id)block
{
  blockCopy = block;
  [(PXGSublayoutDataStore *)self enumerateSublayoutGeometriesInRange:0 options:[(PXGSublayoutDataStore *)self count] usingBlock:0, blockCopy];
}

- (int64_t)indexOfSublayout:(id)sublayout
{
  sublayoutCopy = sublayout;
  v5 = [(PXGSublayoutDataStore *)self count];
  infos = [(PXGSublayoutDataStore *)self infos];
  if (v5 < 1)
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
    while (infos->var0 != sublayoutCopy)
    {
      ++v7;
      ++infos;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }
  }

  return v7;
}

- (void)enumerateSublayoutsAtPoint:(CGPoint)point usingBlock:(id)block
{
  y = point.y;
  x = point.x;
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__PXGSublayoutDataStore_enumerateSublayoutsAtPoint_usingBlock___block_invoke;
  v9[3] = &unk_2782A9480;
  v11 = x;
  v12 = y;
  v10 = blockCopy;
  v8 = blockCopy;
  [(PXGSublayoutDataStore *)self enumerateSublayoutGeometriesUsingBlock:v9];
}

uint64_t __63__PXGSublayoutDataStore_enumerateSublayoutsAtPoint_usingBlock___block_invoke(uint64_t a1, uint64_t a2, double *a3, void *a4)
{
  v6 = a3[6];
  v7 = a3[7];
  v8 = a3[4];
  v9 = a3[5];
  v17.origin.x = v6;
  v17.origin.y = v7;
  v17.size.width = v8;
  v17.size.height = v9;
  result = CGRectContainsPoint(v17, *(a1 + 40));
  if (result && *a4)
  {
    v15 = *(*(a1 + 32) + 16);
    v11.n128_f64[0] = v6;
    v12.n128_f64[0] = v7;
    v13.n128_f64[0] = v8;
    v14.n128_f64[0] = v9;

    return v15(v11, v12, v13, v14);
  }

  return result;
}

- (void)enumerateSublayoutsInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PXGSublayoutDataStore_enumerateSublayoutsInRect_usingBlock___block_invoke;
  v11[3] = &unk_2782A9458;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  v12 = blockCopy;
  v10 = blockCopy;
  [(PXGSublayoutDataStore *)self enumerateSublayoutGeometriesUsingBlock:v11];
}

uint64_t __62__PXGSublayoutDataStore_enumerateSublayoutsInRect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, double *a3, void *a4)
{
  v6 = a3[6];
  v7 = a3[7];
  v8 = a3[4];
  v9 = a3[5];
  v17.origin.x = v6;
  v17.origin.y = v7;
  v17.size.width = v8;
  v17.size.height = v9;
  result = CGRectIntersectsRect(*(a1 + 40), v17);
  if (result && *a4)
  {
    v15 = *(*(a1 + 32) + 16);
    v11.n128_f64[0] = v6;
    v12.n128_f64[0] = v7;
    v13.n128_f64[0] = v8;
    v14.n128_f64[0] = v9;

    return v15(v11, v12, v13, v14);
  }

  return result;
}

- (void)enumerateSublayoutsInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  length = range.length;
  location = range.location;
  blockCopy = block;
  if (location + length > [(PXGSublayoutDataStore *)self count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(range) <= self.count"}];
  }

  if ((optionsCopy & 2) != 0)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  infos = [(PXGSublayoutDataStore *)self infos];
  v16 = 0;
  if (length)
  {
    if ((optionsCopy & 2) != 0)
    {
      v13 = location + length - 1;
    }

    else
    {
      v13 = location;
    }

    v14 = &infos[v13];
    do
    {
      if (v14->var0)
      {
        blockCopy[2](blockCopy, v13, v14->var0, &v16);
        if (v16)
        {
          break;
        }
      }

      v13 += v11;
      v14 += v11;
      --length;
    }

    while (length);
  }
}

- (void)enumerateSublayoutsUsingBlock:(id)block
{
  blockCopy = block;
  [(PXGSublayoutDataStore *)self enumerateSublayoutsInRange:0 options:[(PXGSublayoutDataStore *)self count] usingBlock:0, blockCopy];
}

- ($7C531AF6E50BD019A4D1760C681E3492)geometryForSublayout:(SEL)sublayout
{
  v17 = a4;
  v7 = [(PXGSublayoutDataStore *)self count];
  infos = [(PXGSublayoutDataStore *)self infos];
  if (v7 < 1)
  {
LABEL_5:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sublayout object:self file:@"PXGSublayoutDataStore.m" lineNumber:194 description:{@"couldn't find sublayout %@", v17}];

    abort();
  }

  v9 = 0;
  while (infos->var0 != v17)
  {
    ++v9;
    ++infos;
    if (v7 == v9)
    {
      goto LABEL_5;
    }
  }

  v11 = [(PXGSublayoutDataStore *)self geometries]+ 136 * v9;
  v12 = *&v11->var5.var0.ty;
  *&retstr->var5.var0.d = *&v11->var5.var0.d;
  *&retstr->var5.var0.ty = v12;
  retstr->var6 = v11->var6;
  v13 = *&v11->var4.var0;
  retstr->var3 = v11->var3;
  *&retstr->var4.var0 = v13;
  v14 = *&v11->var5.var0.b;
  *&retstr->var4.var2 = *&v11->var4.var2;
  *&retstr->var5.var0.b = v14;
  v15 = *&v11->var1;
  retstr->var0 = v11->var0;
  *&retstr->var1 = v15;

  return result;
}

- (unsigned)spriteIndexOriginForSublayout:(id)sublayout
{
  sublayoutCopy = sublayout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PXGSublayoutDataStore_spriteIndexOriginForSublayout___block_invoke;
  v7[3] = &unk_2782AA970;
  v5 = sublayoutCopy;
  v8 = v5;
  v9 = &v10;
  [(PXGSublayoutDataStore *)self enumerateSublayoutsUsingBlock:v7];
  LODWORD(self) = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __55__PXGSublayoutDataStore_spriteIndexOriginForSublayout___block_invoke(uint64_t result, uint64_t a2, void *a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    *a4 = 1;
  }

  else
  {
    v4 = result;
    result = [a3 numberOfSprites];
    *(*(*(v4 + 40) + 8) + 24) += result;
  }

  return result;
}

- (unsigned)spriteIndexOriginForSublayoutIndex:(int64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__PXGSublayoutDataStore_spriteIndexOriginForSublayoutIndex___block_invoke;
  v5[3] = &unk_2782A9430;
  v5[4] = &v6;
  v5[5] = index;
  [(PXGSublayoutDataStore *)self enumerateSublayoutsUsingBlock:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __60__PXGSublayoutDataStore_spriteIndexOriginForSublayoutIndex___block_invoke(uint64_t result, uint64_t a2, void *a3, _BYTE *a4)
{
  if (*(result + 40) == a2)
  {
    *a4 = 1;
  }

  else
  {
    v4 = result;
    result = [a3 numberOfSprites];
    *(*(*(v4 + 32) + 8) + 24) += result;
  }

  return result;
}

- (id)sublayoutProviderAtIndex:(int64_t)index
{
  if (index < 0 || [(PXGSublayoutDataStore *)self count]<= index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < self.count"}];
  }

  v6 = ([(PXGSublayoutDataStore *)self infos]+ 16 * index)[8];

  return v6;
}

- (id)sublayoutAtIndex:(int64_t)index
{
  if (index < 0 || [(PXGSublayoutDataStore *)self count]<= index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < self.count"}];
  }

  index = [(PXGSublayoutDataStore *)self infos][16 * index];

  return index;
}

- (void)moveSublayoutsFromIndexes:(__CFArray *)indexes toIndexes:(id)toIndexes
{
  toIndexesCopy = toIndexes;
  Count = CFArrayGetCount(indexes);
  v9 = [toIndexesCopy count];
  v10 = v9;
  if (Count < 1 || v9 <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"fromIndexesCount > 0 && toIndexesCount > 0"}];
  }

  if (Count != v10)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"fromIndexesCount == toIndexesCount"}];
  }

  if (![(PXGSublayoutDataStore *)self count])
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"self.count != 0"}];
  }

  v11 = [(PXGSublayoutDataStore *)self count];
  [(PXGSublayoutDataStore *)self setCount:[(PXGSublayoutDataStore *)self count]+ v10];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (Count < 1)
  {
    v24 = &v29;
  }

  else
  {
    for (i = 0; i < Count; v30[3] = i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(indexes, i);
      v14 = v30[3] + v11;
      geometries = self->_geometries;
      v16 = &geometries[v14];
      v17 = &geometries[ValueAtIndex];
      v18 = *&v17->var4.var2;
      v20 = *&v17->var1;
      var3 = v17->var3;
      *&v16->var4.var0 = *&v17->var4.var0;
      *&v16->var4.var2 = v18;
      *&v16->var1 = v20;
      v16->var3 = var3;
      v22 = *&v17->var5.var0.d;
      v21 = *&v17->var5.var0.ty;
      v23 = *&v17->var5.var0.b;
      v16->var6 = v17->var6;
      *&v16->var5.var0.d = v22;
      *&v16->var5.var0.ty = v21;
      *&v16->var5.var0.b = v23;
      v16->var0 = v17->var0;
      self->_infos[v14] = self->_infos[ValueAtIndex];
      v24 = v30;
      i = v30[3] + 1;
    }
  }

  v24[3] = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__PXGSublayoutDataStore_moveSublayoutsFromIndexes_toIndexes___block_invoke;
  v28[3] = &unk_2782A9408;
  v28[6] = v11;
  v28[7] = v10;
  v28[4] = self;
  v28[5] = &v29;
  [toIndexesCopy enumerateRangesUsingBlock:v28];
  [(PXGSublayoutDataStore *)self setCount:[(PXGSublayoutDataStore *)self count]- v10];
  _Block_object_dispose(&v29, 8);
}

__n128 __61__PXGSublayoutDataStore_moveSublayoutsFromIndexes_toIndexes___block_invoke(void *a1, unsigned int a2, int a3)
{
  v3 = a2 + a3;
  if (v3 > a2)
  {
    v4 = v3 - a2;
    v5 = 16 * a2;
    v6 = 136 * a2;
    do
    {
      v7 = *(*(a1[5] + 8) + 24) + a1[6];
      v8 = *(a1[4] + 24);
      v9 = v8 + v6;
      v10 = v8 + 136 * v7;
      v11 = *(v10 + 64);
      v13 = *(v10 + 16);
      v12 = *(v10 + 32);
      *(v9 + 48) = *(v10 + 48);
      *(v9 + 64) = v11;
      *(v9 + 16) = v13;
      *(v9 + 32) = v12;
      v15 = *(v10 + 96);
      v14 = *(v10 + 112);
      v16 = *(v10 + 80);
      *(v9 + 128) = *(v10 + 128);
      *(v9 + 96) = v15;
      *(v9 + 112) = v14;
      *(v9 + 80) = v16;
      *v9 = *v10;
      v17 = *(a1[4] + 32);
      result = *(v17 + 16 * v7);
      *(v17 + v5) = result;
      ++*(*(a1[5] + 8) + 24);
      v5 += 16;
      v6 += 136;
      --v4;
    }

    while (v4);
  }

  return result;
}

- (void)_insertRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location > [(PXGSublayoutDataStore *)self count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"range.location <= self.count"}];
  }

  [(PXGSublayoutDataStore *)self setCount:[(PXGSublayoutDataStore *)self count]+ length];
  _PXGArrayInsertRange(self->_geometries, 136, [(PXGSublayoutDataStore *)self count], location, length);
  _PXGArrayInsertRange(self->_infos, 16, [(PXGSublayoutDataStore *)self count], location, length);
  geometries = [(PXGSublayoutDataStore *)self geometries];
  infos = [(PXGSublayoutDataStore *)self infos];
  if (length)
  {
    v9 = &infos[location];
    p_var5 = &geometries[location].var5;
    v11 = *MEMORY[0x277CBF3A8];
    do
    {
      *(p_var5 - 48) = 0;
      *(p_var5 - 56) = 0x3FF0000000000000;
      *(p_var5 - 16) = 0;
      *(p_var5 - 8) = 0;
      *(p_var5 - 24) = 0;
      *(p_var5 - 40) = v11;
      *(p_var5 + 48) = 0;
      *(p_var5 + 56) = 0;
      *p_var5 = *PXGSpriteGeometryTransformIdentity;
      *(p_var5 + 16) = *&PXGSpriteGeometryTransformIdentity[16];
      *(p_var5 + 32) = *&PXGSpriteGeometryTransformIdentity[32];
      v9->var0 = 0;
      v9->var1 = 0;
      ++v9;
      p_var5 += 136;
      --length;
    }

    while (length);
  }
}

- (void)removeSublayoutsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length <= [(PXGSublayoutDataStore *)self count])
  {
    if (length)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(range) <= self.count"}];

  if (!length)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = &self->_infos[location];
  v8 = length;
  do
  {
    if (v7->var0)
    {

      v7->var0 = 0;
    }

    ++v7;
    --v8;
  }

  while (v8);
  v9 = length;
LABEL_10:
  _PXGArrayRemoveRange(self->_geometries, 136, [(PXGSublayoutDataStore *)self count], location, v9);
  _PXGArrayRemoveRange(self->_infos, 16, [(PXGSublayoutDataStore *)self count], location, v9);
  v11 = [(PXGSublayoutDataStore *)self count]- length;

  [(PXGSublayoutDataStore *)self setCount:v11];
}

- (void)insertSublayoutProvider:(id)provider inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  providerCopy = provider;
  [(PXGSublayoutDataStore *)self _insertRange:location, length];
  geometries = [(PXGSublayoutDataStore *)self geometries];
  infos = [(PXGSublayoutDataStore *)self infos];
  if (length)
  {
    p_var1 = &infos[location].var1;
    p_width = &geometries[location].var3.width;
    v11 = *MEMORY[0x277D3CFE0];
    do
    {
      *p_width = v11;
      p_width = (p_width + 136);
      *p_var1 = providerCopy;
      p_var1 += 2;
      --length;
    }

    while (length);
  }
}

- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index
{
  sublayoutCopy = sublayout;
  [(PXGSublayoutDataStore *)self _insertRange:index, 1];
  v7 = [(PXGSublayoutDataStore *)self geometries]+ 136 * index;
  [sublayoutCopy contentSize];
  v7->var3.width = v8;
  v7->var3.height = v9;
  v10 = [(PXGSublayoutDataStore *)self infos]+ 16 * index;
  v11 = sublayoutCopy;
  if (v10->var0 != v11)
  {

    v10->var0 = v11;
  }
}

- (void)setCount:(int64_t)count
{
  if (self->_count != count)
  {
    self->_count = count;
    capacity = self->_capacity;
    if (capacity < count)
    {
      if (capacity)
      {
        do
        {
          capacity *= 2;
        }

        while (capacity < count);
      }

      else
      {
        capacity = count;
      }

      self->_capacity = capacity;
      self->_geometries = malloc_type_realloc(self->_geometries, 136 * capacity, 0x42760281uLL);
      self->_infos = malloc_type_realloc(self->_infos, 16 * self->_capacity, 0x42760281uLL);
    }

    [(PXGSublayoutDataStore *)self _invalidateVersion];
  }
}

- (void)dealloc
{
  count = self->_count;
  if (count >= 1)
  {
    v4 = 0;
    infos = self->_infos;
    do
    {
      if (infos->var0)
      {

        infos->var0 = 0;
        count = self->_count;
      }

      ++v4;
      ++infos;
    }

    while (v4 < count);
  }

  free(self->_geometries);
  free(self->_infos);
  v6.receiver = self;
  v6.super_class = PXGSublayoutDataStore;
  [(PXGSublayoutDataStore *)&v6 dealloc];
}

@end