@interface PXGSublayoutDataStore
- ($7C531AF6E50BD019A4D1760C681E3492)geometryForSublayout:(SEL)a3;
- (NSString)diagnosticDescription;
- (id)sublayoutAtIndex:(int64_t)a3;
- (id)sublayoutProviderAtIndex:(int64_t)a3;
- (int64_t)indexOfSublayout:(id)a3;
- (unsigned)spriteIndexOriginForSublayout:(id)a3;
- (unsigned)spriteIndexOriginForSublayoutIndex:(int64_t)a3;
- (void)_insertRange:(_NSRange)a3;
- (void)dealloc;
- (void)enumerateSublayoutGeometriesInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateSublayoutGeometriesUsingBlock:(id)a3;
- (void)enumerateSublayoutsAtPoint:(CGPoint)a3 usingBlock:(id)a4;
- (void)enumerateSublayoutsInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateSublayoutsInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)enumerateSublayoutsUsingBlock:(id)a3;
- (void)insertSublayout:(id)a3 atIndex:(int64_t)a4;
- (void)insertSublayoutProvider:(id)a3 inRange:(_NSRange)a4;
- (void)moveSublayoutsFromIndexes:(__CFArray *)a3 toIndexes:(id)a4;
- (void)removeSublayoutsInRange:(_NSRange)a3;
- (void)setCount:(int64_t)a3;
@end

@implementation PXGSublayoutDataStore

- (NSString)diagnosticDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p\n", v5, self];

  v7 = [(PXGSublayoutDataStore *)self count];
  v8 = [(PXGSublayoutDataStore *)self geometries];
  v9 = [(PXGSublayoutDataStore *)self infos];
  if (v7 >= 1)
  {
    v10 = v9;
    v11 = 0;
    p_var2 = &v8->var4.var2;
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

- (void)enumerateSublayoutGeometriesInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v5 = a4;
  length = a3.length;
  location = a3.location;
  v10 = a5;
  if (location + length > [(PXGSublayoutDataStore *)self count])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v19.location = location;
    v19.length = length;
    v17 = NSStringFromRange(v19);
    [v16 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:264 description:{@"range out of bounds %@ 0..%li", v17, -[PXGSublayoutDataStore count](self, "count")}];

    if (!length)
    {
      goto LABEL_12;
    }
  }

  else if (!length)
  {
    goto LABEL_12;
  }

  v11 = (v5 & 2) == 0;
  if ((v5 & 2) != 0)
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
    v10[2](v10, v12, v14, v15, &v18);
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

- (void)enumerateSublayoutGeometriesUsingBlock:(id)a3
{
  v4 = a3;
  [(PXGSublayoutDataStore *)self enumerateSublayoutGeometriesInRange:0 options:[(PXGSublayoutDataStore *)self count] usingBlock:0, v4];
}

- (int64_t)indexOfSublayout:(id)a3
{
  v4 = a3;
  v5 = [(PXGSublayoutDataStore *)self count];
  v6 = [(PXGSublayoutDataStore *)self infos];
  if (v5 < 1)
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
    while (v6->var0 != v4)
    {
      ++v7;
      ++v6;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }
  }

  return v7;
}

- (void)enumerateSublayoutsAtPoint:(CGPoint)a3 usingBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__PXGSublayoutDataStore_enumerateSublayoutsAtPoint_usingBlock___block_invoke;
  v9[3] = &unk_2782A9480;
  v11 = x;
  v12 = y;
  v10 = v7;
  v8 = v7;
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

- (void)enumerateSublayoutsInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__PXGSublayoutDataStore_enumerateSublayoutsInRect_usingBlock___block_invoke;
  v11[3] = &unk_2782A9458;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  v12 = v9;
  v10 = v9;
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

- (void)enumerateSublayoutsInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v5 = a4;
  length = a3.length;
  location = a3.location;
  v10 = a5;
  if (location + length > [(PXGSublayoutDataStore *)self count])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(range) <= self.count"}];
  }

  if ((v5 & 2) != 0)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(PXGSublayoutDataStore *)self infos];
  v16 = 0;
  if (length)
  {
    if ((v5 & 2) != 0)
    {
      v13 = location + length - 1;
    }

    else
    {
      v13 = location;
    }

    v14 = &v12[v13];
    do
    {
      if (v14->var0)
      {
        v10[2](v10, v13, v14->var0, &v16);
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

- (void)enumerateSublayoutsUsingBlock:(id)a3
{
  v4 = a3;
  [(PXGSublayoutDataStore *)self enumerateSublayoutsInRange:0 options:[(PXGSublayoutDataStore *)self count] usingBlock:0, v4];
}

- ($7C531AF6E50BD019A4D1760C681E3492)geometryForSublayout:(SEL)a3
{
  v17 = a4;
  v7 = [(PXGSublayoutDataStore *)self count];
  v8 = [(PXGSublayoutDataStore *)self infos];
  if (v7 < 1)
  {
LABEL_5:
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a3 object:self file:@"PXGSublayoutDataStore.m" lineNumber:194 description:{@"couldn't find sublayout %@", v17}];

    abort();
  }

  v9 = 0;
  while (v8->var0 != v17)
  {
    ++v9;
    ++v8;
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

- (unsigned)spriteIndexOriginForSublayout:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PXGSublayoutDataStore_spriteIndexOriginForSublayout___block_invoke;
  v7[3] = &unk_2782AA970;
  v5 = v4;
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

- (unsigned)spriteIndexOriginForSublayoutIndex:(int64_t)a3
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
  v5[5] = a3;
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

- (id)sublayoutProviderAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(PXGSublayoutDataStore *)self count]<= a3)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < self.count"}];
  }

  v6 = ([(PXGSublayoutDataStore *)self infos]+ 16 * a3)[8];

  return v6;
}

- (id)sublayoutAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(PXGSublayoutDataStore *)self count]<= a3)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < self.count"}];
  }

  v6 = [(PXGSublayoutDataStore *)self infos][16 * a3];

  return v6;
}

- (void)moveSublayoutsFromIndexes:(__CFArray *)a3 toIndexes:(id)a4
{
  v7 = a4;
  Count = CFArrayGetCount(a3);
  v9 = [v7 count];
  v10 = v9;
  if (Count < 1 || v9 <= 0)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"fromIndexesCount > 0 && toIndexesCount > 0"}];
  }

  if (Count != v10)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"fromIndexesCount == toIndexesCount"}];
  }

  if (![(PXGSublayoutDataStore *)self count])
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"self.count != 0"}];
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
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
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
  [v7 enumerateRangesUsingBlock:v28];
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

- (void)_insertRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location > [(PXGSublayoutDataStore *)self count])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"range.location <= self.count"}];
  }

  [(PXGSublayoutDataStore *)self setCount:[(PXGSublayoutDataStore *)self count]+ length];
  _PXGArrayInsertRange(self->_geometries, 136, [(PXGSublayoutDataStore *)self count], location, length);
  _PXGArrayInsertRange(self->_infos, 16, [(PXGSublayoutDataStore *)self count], location, length);
  v7 = [(PXGSublayoutDataStore *)self geometries];
  v8 = [(PXGSublayoutDataStore *)self infos];
  if (length)
  {
    v9 = &v8[location];
    p_var5 = &v7[location].var5;
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

- (void)removeSublayoutsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length <= [(PXGSublayoutDataStore *)self count])
  {
    if (length)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PXGSublayoutDataStore.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(range) <= self.count"}];

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

- (void)insertSublayoutProvider:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  [(PXGSublayoutDataStore *)self _insertRange:location, length];
  v7 = [(PXGSublayoutDataStore *)self geometries];
  v8 = [(PXGSublayoutDataStore *)self infos];
  if (length)
  {
    p_var1 = &v8[location].var1;
    p_width = &v7[location].var3.width;
    v11 = *MEMORY[0x277D3CFE0];
    do
    {
      *p_width = v11;
      p_width = (p_width + 136);
      *p_var1 = v12;
      p_var1 += 2;
      --length;
    }

    while (length);
  }
}

- (void)insertSublayout:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  [(PXGSublayoutDataStore *)self _insertRange:a4, 1];
  v7 = [(PXGSublayoutDataStore *)self geometries]+ 136 * a4;
  [v6 contentSize];
  v7->var3.width = v8;
  v7->var3.height = v9;
  v10 = [(PXGSublayoutDataStore *)self infos]+ 16 * a4;
  v11 = v6;
  if (v10->var0 != v11)
  {

    v10->var0 = v11;
  }
}

- (void)setCount:(int64_t)a3
{
  if (self->_count != a3)
  {
    self->_count = a3;
    capacity = self->_capacity;
    if (capacity < a3)
    {
      if (capacity)
      {
        do
        {
          capacity *= 2;
        }

        while (capacity < a3);
      }

      else
      {
        capacity = a3;
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