@interface PXGSpriteDataStore
+ (id)newSpriteDataStore;
- ($32FA0F4B141605662A7EE1284C9FC7E2)sprites;
- ($32FA0F4B141605662A7EE1284C9FC7E2)spritesInRange:(SEL)range;
- ($95568E2CB0F008E7B4D2895BE51B87CB)_mutableSpritesInRange:(SEL)range;
- ($95568E2CB0F008E7B4D2895BE51B87CB)spriteAtIndex:(SEL)index;
- (NSString)description;
- (NSString)diagnosticDescription;
- (PXGSpriteDataStore)init;
- (id)_init;
- (id)spriteAtIndexes:(id)indexes inRect:(CGRect)rect;
- (id)spriteIndexesInRect:(CGRect)rect;
- (id)spriteIndexesWithSpriteInfoFlags:(unsigned __int8)flags;
- (void)_collectSpriteIndexes:(id)indexes inRange:(_PXGSpriteIndexRange)range inRect:(CGRect)rect;
- (void)applyChangeDetails:(id)details;
- (void)clearEntities;
- (void)copySpritesInRange:(_PXGSpriteIndexRange)range fromSpriteDataStore:(id)store;
- (void)dealloc;
- (void)enumerateSpritesInRange:(_PXGSpriteIndexRange)range usingBlock:(id)block;
- (void)enumerateSpritesInRect:(CGRect)rect usingBlock:(id)block;
- (void)insertSpritesInRange:(_PXGSpriteIndexRange)range;
- (void)moveSpritesFromIndexes:(__CFArray *)indexes toIndexes:(id)toIndexes;
- (void)moveSpritesInRange:(_PXGSpriteIndexRange)range toRange:(_PXGSpriteIndexRange)toRange;
- (void)removeSpritesInRange:(_PXGSpriteIndexRange)range;
- (void)setCount:(unsigned int)count;
- (void)setSprites:(id *)sprites;
@end

@implementation PXGSpriteDataStore

+ (id)newSpriteDataStore
{
  v2 = [self alloc];

  return [v2 _init];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PXGSpriteDataStore;
  return [(PXGSpriteDataStore *)&v3 init];
}

- ($32FA0F4B141605662A7EE1284C9FC7E2)sprites
{
  v4 = [(PXGSpriteDataStore *)self count]<< 32;

  return [(PXGSpriteDataStore *)self spritesInRange:v4];
}

- (NSString)diagnosticDescription
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v28 = [v3 stringWithFormat:@"<%@: %p\n", v5, self];

  v6 = [(PXGSpriteDataStore *)self count];
  entities = [(PXGSpriteDataStore *)self entities];
  geometries = [(PXGSpriteDataStore *)self geometries];
  styles = [(PXGSpriteDataStore *)self styles];
  infos = [(PXGSpriteDataStore *)self infos];
  if (v6)
  {
    v11 = infos;
    v12 = 0;
    v13 = v6;
    do
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{id=%ld}", entities[v12].var0];
      v15 = *&geometries->var0.var0;
      v16 = *&geometries->var0.var2;
      geometries = (geometries + 32);
      v29 = v15;
      v30 = v16;
      v17 = PXGSpriteGeometryDescription(&v29);
      v18 = *&styles[2].var3;
      v35 = *(&styles[2].var1 + 4);
      v36 = v18;
      v19 = *(&styles[3].var1 + 8);
      v37 = *&styles[2].var8;
      v38 = v19;
      var1 = styles[1].var1;
      v31 = *&styles->var5;
      v32 = var1;
      v21 = *&styles[1].var6;
      v33 = *&styles[1].var2;
      v34 = v21;
      v22 = *&styles->var0;
      v23 = *(&styles->var1 + 12);
      styles = (styles + 160);
      v29 = v22;
      v30 = v23;
      v24 = PXGSpriteStyleDescription(&v29);
      v25 = *&v11->var4;
      v29 = *&v11->var0;
      v30 = v25;
      *&v31 = v11[1].var3;
      v26 = PXGSpriteInfoDescription(&v29);
      [v28 appendFormat:@"\t%li: entity=%@ geometry=%@ style=%@ info=%@\n", v12, v14, v17, v24, v26];

      ++v12;
      v11 = (v11 + 40);
    }

    while (v13 != v12);
  }

  [v28 appendString:@">"];

  return v28;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p count = %u>", v5, self, -[PXGSpriteDataStore count](self, "count")];;

  return v6;
}

- (id)spriteAtIndexes:(id)indexes inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = MEMORY[0x277CCAB58];
  indexesCopy = indexes;
  v11 = objc_alloc_init(v9);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __45__PXGSpriteDataStore_spriteAtIndexes_inRect___block_invoke;
  v18 = &unk_2782AA2A8;
  selfCopy = self;
  v20 = v11;
  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  v12 = v11;
  [indexesCopy enumerateRangesUsingBlock:&v15];

  v13 = [v12 copy];

  return v13;
}

- (void)_collectSpriteIndexes:(id)indexes inRange:(_PXGSpriteIndexRange)range inRect:(CGRect)rect
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  indexesCopy = indexes;
  geometries = [(PXGSpriteDataStore *)self geometries];
  v10 = HIDWORD(*&range);
  if (range.length + range.location > range.location)
  {
    *&v11 = x;
    *&v12 = y;
    v13 = *&v11;
    v14.f64[0] = width;
    v14.f64[1] = height;
    v15 = vadd_f32(__PAIR64__(v12, v11), vcvt_f32_f64(v14));
    v16 = v15.f32[1];
    v17 = *&v12;
    v18 = v15.f32[0];
    range = range.location;
    v19 = geometries + 32 * range.location;
    do
    {
      v20 = vmul_f32(*(v19 + 24), 0x3F0000003F000000);
      v21 = *(v19 + 1);
      v22 = v21 - v20.f32[1];
      v23 = v21 + v20.f32[1];
      if (v22 <= v16 && v23 >= v17)
      {
        v25 = v20.f32[0];
        v26 = *v19 - v25;
        v27 = *v19 + v25;
        if (v26 <= v18 && v27 >= v13)
        {
          [indexesCopy addIndex:{range, v27}];
        }
      }

      ++*&range;
      v19 += 32;
      LODWORD(v10) = v10 - 1;
    }

    while (v10);
  }
}

- (id)spriteIndexesWithSpriteInfoFlags:(unsigned __int8)flags
{
  flagsCopy = flags;
  infos = [(PXGSpriteDataStore *)self infos];
  v6 = [(PXGSpriteDataStore *)self count];
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = 0;
  v9 = 0;
  v10 = &infos[1].var3 + 2;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v12 = v11;
    v13 = v9;
    v14 = *v10;
    v10 += 40;
    if ((flagsCopy & ~v14) == 0)
    {
      if (v9)
      {
        v11 = v8;
        v9 = 1;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_11;
        }

        if (v8 == v13 + v12)
        {
          v9 = v13 + 1;
          v11 = v12;
          goto LABEL_11;
        }

        [v7 addIndexesInRange:{v12, v13}];
      }

      v11 = v8;
      v9 = 1;
    }

LABEL_11:
    ++v8;
  }

  while (v6 != v8);
  if (v9)
  {
    [v7 addIndexesInRange:v11];
  }

LABEL_14:

  return v7;
}

- (id)spriteIndexesInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [(PXGSpriteDataStore *)self _collectSpriteIndexes:v8 inRange:[(PXGSpriteDataStore *)self count]<< 32 inRect:x, y, width, height];
  v9 = [v8 copy];

  return v9;
}

- (void)enumerateSpritesInRange:(_PXGSpriteIndexRange)range usingBlock:(id)block
{
  blockCopy = block;
  v7 = [(PXGSpriteDataStore *)self count];
  entities = [(PXGSpriteDataStore *)self entities];
  geometries = [(PXGSpriteDataStore *)self geometries];
  styles = [(PXGSpriteDataStore *)self styles];
  infos = [(PXGSpriteDataStore *)self infos];
  v12 = range.length + range.location;
  if (v12 > v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [MEMORY[0x277CCACA8] stringWithFormat:@"{%li, %li}", range.location, HIDWORD(*&range)];
    v18 = v19 = v7;
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:226 description:{@"invalid range %@ not within 0..<%li", v18, v19}];
  }

  v23 = 0;
  if (v12 > range.location)
  {
    v13 = range.location + 1;
    v14 = infos + 40 * range.location;
    v15 = styles + 160 * range.location;
    v16 = geometries + 32 * range.location;
    v17 = &entities[range.location];
    do
    {
      v22[0] = v17;
      v22[1] = v16;
      v22[2] = v15;
      v22[3] = v14;
      blockCopy[2](blockCopy, range, v22, &v23);
      if (v13 >= v12)
      {
        break;
      }

      ++v13;
      range = (range.location + 1);
      v14 += 40;
      v15 += 160;
      v16 += 32;
      ++v17;
    }

    while ((v23 & 1) == 0);
  }
}

- (void)enumerateSpritesInRect:(CGRect)rect usingBlock:(id)block
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  v8 = [(PXGSpriteDataStore *)self count];
  entities = [(PXGSpriteDataStore *)self entities];
  geometries = [(PXGSpriteDataStore *)self geometries];
  styles = [(PXGSpriteDataStore *)self styles];
  infos = [(PXGSpriteDataStore *)self infos];
  v36 = 0;
  if (v8)
  {
    v14 = infos;
    v15.f32[0] = x;
    v16 = y;
    v17 = v15.f32[0];
    v15.f32[1] = v16;
    v18.f64[0] = width;
    v18.f64[1] = height;
    v19 = vadd_f32(v15, vcvt_f32_f64(v18));
    v20 = v19.f32[1];
    v21 = v16;
    v22 = v19.f32[0];
    v23 = 1;
    do
    {
      v24 = vmul_f32(*&geometries[1].var0.var0, 0x3F0000003F000000);
      var1 = geometries->var0.var1;
      v26 = var1 - v24.f32[1];
      v27 = var1 + v24.f32[1];
      v28 = v26 > v20 || v27 < v21;
      if (v28 || ((v29 = v24.f32[0], v30 = geometries->var0.var0 - v29, v13.n128_f64[0] = geometries->var0.var0 + v29, v30 <= v22) ? (v31 = v13.n128_f64[0] < v17) : (v31 = 1), v31))
      {
        v32 = 0;
      }

      else
      {
        v35[0] = entities;
        v35[1] = geometries;
        v35[2] = styles;
        v35[3] = v14;
        (*(blockCopy + 2))(blockCopy, (v23 - 1), v35, &v36, v13);
        v32 = v36;
      }

      if (v23 >= v8)
      {
        break;
      }

      ++v23;
      v14 = (v14 + 40);
      styles = (styles + 160);
      ++entities;
      geometries = (geometries + 32);
    }

    while ((v32 & 1) == 0);
  }
}

- (void)clearEntities
{
  v3 = 4 * [(PXGSpriteDataStore *)self count];
  entities = self->_entities;

  bzero(entities, v3);
}

- (void)copySpritesInRange:(_PXGSpriteIndexRange)range fromSpriteDataStore:(id)store
{
  storeCopy = store;
  v8 = HIDWORD(*&range);
  if (range.length + range.location > [storeCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"PXGSpriteIndexRangeMax(spriteIndexRange) <= fromSpriteDataStore.count"}];
  }

  [(PXGSpriteDataStore *)self _mutableSpritesInRange:range];
  if (storeCopy)
  {
    [storeCopy _mutableSpritesInRange:range];
  }

  memcpy(0, 0, 4 * v8);
  memcpy(0, 0, 32 * v8);
  memcpy(0, 0, 160 * v8);
  memcpy(0, 0, 40 * v8);
}

- (void)setSprites:(id *)sprites
{
  var0 = sprites->var0;
  [(PXGSpriteDataStore *)self setCount:var0];
  memcpy([(PXGSpriteDataStore *)self entities], sprites->var1, 4 * var0);
  memcpy([(PXGSpriteDataStore *)self geometries], sprites->var2, 32 * var0);
  v6 = 5 * var0;
  memcpy([(PXGSpriteDataStore *)self styles], sprites->var3, 32 * v6);
  infos = [(PXGSpriteDataStore *)self infos];
  var4 = sprites->var4;

  memcpy(infos, var4, 8 * v6);
}

- ($95568E2CB0F008E7B4D2895BE51B87CB)spriteAtIndex:(SEL)index
{
  v7 = ([(PXGSpriteDataStore *)self entities]+ 4 * a4);
  v8 = ([(PXGSpriteDataStore *)self geometries]+ 32 * a4);
  v9 = ([(PXGSpriteDataStore *)self styles]+ 160 * a4);
  result = [(PXGSpriteDataStore *)self infos];
  retstr->var0 = v7;
  retstr->var1 = v8;
  retstr->var2 = v9;
  retstr->var3 = (result + 40 * a4);
  return result;
}

- ($95568E2CB0F008E7B4D2895BE51B87CB)_mutableSpritesInRange:(SEL)range
{
  location = a4.location;
  if (a4.length + a4.location > [(PXGSpriteDataStore *)self count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:range object:self file:@"PXGSpriteDataStore.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"PXGSpriteIndexRangeMax(range) <= self.count"}];
  }

  v8 = location;
  v9 = ([(PXGSpriteDataStore *)self entities]+ 4 * location);
  v10 = ([(PXGSpriteDataStore *)self geometries]+ 32 * v8);
  v11 = ([(PXGSpriteDataStore *)self styles]+ 160 * v8);
  result = [(PXGSpriteDataStore *)self infos];
  retstr->var0 = v9;
  retstr->var1 = v10;
  retstr->var2 = v11;
  retstr->var3 = (result + 40 * v8);
  return result;
}

- ($32FA0F4B141605662A7EE1284C9FC7E2)spritesInRange:(SEL)range
{
  location = a4.location;
  length = a4.length;
  if (a4.length + a4.location > [(PXGSpriteDataStore *)self count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:range object:self file:@"PXGSpriteDataStore.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"PXGSpriteIndexRangeMax(range) <= self.count"}];
  }

  v9 = location;
  v10 = ([(PXGSpriteDataStore *)self entities]+ 4 * location);
  v11 = ([(PXGSpriteDataStore *)self geometries]+ 32 * v9);
  v12 = ([(PXGSpriteDataStore *)self styles]+ 160 * v9);
  result = [(PXGSpriteDataStore *)self infos];
  retstr->var0 = length;
  retstr->var1 = v10;
  retstr->var2 = v11;
  retstr->var3 = v12;
  retstr->var4 = &result[v9];
  return result;
}

- (void)applyChangeDetails:(id)details
{
  detailsCopy = details;
  -[PXGSpriteDataStore setCount:](self, "setCount:", [detailsCopy numberOfSpritesAfterChange] - objc_msgSend(detailsCopy, "numberOfSpritesBeforeChange") + -[PXGSpriteDataStore count](self, "count"));
  [detailsCopy applyToArray:self->_entities elementSize:4 countAfterChanges:-[PXGSpriteDataStore count](self insertionHandler:"count") modifiedHandler:{0, 0}];
  [detailsCopy applyToArray:self->_geometries elementSize:32 countAfterChanges:-[PXGSpriteDataStore count](self insertionHandler:"count") modifiedHandler:{0, 0}];
  [detailsCopy applyToArray:self->_styles elementSize:160 countAfterChanges:-[PXGSpriteDataStore count](self insertionHandler:"count") modifiedHandler:{0, 0}];
  [detailsCopy applyToArray:self->_infos elementSize:40 countAfterChanges:-[PXGSpriteDataStore count](self insertionHandler:"count") modifiedHandler:{0, 0}];
}

- (void)moveSpritesInRange:(_PXGSpriteIndexRange)range toRange:(_PXGSpriteIndexRange)toRange
{
  v7 = [MEMORY[0x277D3CCC8] changeDetailsWithMovedFromIndexRange:range.location toIndexRange:{range.length, toRange.location, toRange.length}];
  movesFromIndexes = [v7 movesFromIndexes];
  movesToIndexes = [v7 movesToIndexes];
  [(PXGSpriteDataStore *)self moveSpritesFromIndexes:movesFromIndexes toIndexes:movesToIndexes];
}

- (void)moveSpritesFromIndexes:(__CFArray *)indexes toIndexes:(id)toIndexes
{
  toIndexesCopy = toIndexes;
  Count = CFArrayGetCount(indexes);
  v9 = [toIndexesCopy count];
  v10 = v9;
  if (Count < 1 || v9 <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"fromIndexesCount > 0 && toIndexesCount > 0"}];
  }

  if (Count != v10)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"fromIndexesCount == toIndexesCount"}];
  }

  if (![(PXGSpriteDataStore *)self count])
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"self.count != 0"}];
  }

  v11 = [(PXGSpriteDataStore *)self count];
  [(PXGSpriteDataStore *)self setCount:[(PXGSpriteDataStore *)self count]+ v10];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (Count < 1)
  {
    v34 = &v41;
  }

  else
  {
    for (i = 0; i < Count; v42[3] = i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(indexes, i);
      v14 = v42[3] + v11;
      geometries = self->_geometries;
      self->_entities[v14].var0 = self->_entities[ValueAtIndex].var0;
      v16 = (&geometries->var0.var0 + 4 * v14);
      v17 = (&geometries->var0.var0 + 4 * ValueAtIndex);
      v18 = v17[1];
      *v16 = *v17;
      v16[1] = v18;
      styles = self->_styles;
      v20 = (&styles->var0 + 40 * v14);
      v21 = (&styles->var0 + 40 * ValueAtIndex);
      v22 = v21[1];
      *v20 = *v21;
      v20[1] = v22;
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      v20[4] = v21[4];
      v20[5] = v25;
      v20[2] = v23;
      v20[3] = v24;
      v26 = v21[6];
      v27 = v21[7];
      v28 = v21[9];
      v20[8] = v21[8];
      v20[9] = v28;
      v20[6] = v26;
      v20[7] = v27;
      infos = self->_infos;
      v30 = infos + 40 * v14;
      v31 = infos + 40 * ValueAtIndex;
      v32 = *(v31 + 4);
      v33 = *(v31 + 1);
      *v30 = *v31;
      *(v30 + 1) = v33;
      *(v30 + 4) = v32;
      v34 = v42;
      i = v42[3] + 1;
    }
  }

  v34[3] = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __55__PXGSpriteDataStore_moveSpritesFromIndexes_toIndexes___block_invoke;
  v38[3] = &unk_2782AA280;
  v39 = v11;
  v40 = v10;
  v38[4] = self;
  v38[5] = &v41;
  [toIndexesCopy enumerateRangesUsingBlock:v38];
  [(PXGSpriteDataStore *)self setCount:[(PXGSpriteDataStore *)self count]- v10];
  _Block_object_dispose(&v41, 8);
}

__n128 __55__PXGSpriteDataStore_moveSpritesFromIndexes_toIndexes___block_invoke(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a2 + a3;
  if (v3 > a2)
  {
    v4 = v3 - a2;
    v5 = 4 * a2;
    v6 = 40 * a2;
    v7 = 160 * a2;
    do
    {
      v8 = *(*(*(a1 + 40) + 8) + 24) + *(a1 + 48);
      *(*(*(a1 + 32) + 16) + v5) = *(*(*(a1 + 32) + 16) + 4 * v8);
      v9 = *(*(a1 + 32) + 24);
      v10 = (v9 + 8 * v5);
      v11 = (v9 + 32 * v8);
      v12 = v11[1];
      *v10 = *v11;
      v10[1] = v12;
      v13 = *(*(a1 + 32) + 32);
      v14 = (v13 + v7);
      v15 = (v13 + 160 * v8);
      v16 = v15[5];
      v18 = v15[2];
      v17 = v15[3];
      v14[4] = v15[4];
      v14[5] = v16;
      v14[2] = v18;
      v14[3] = v17;
      v19 = v15[9];
      v21 = v15[6];
      v20 = v15[7];
      v14[8] = v15[8];
      v14[9] = v19;
      v14[6] = v21;
      v14[7] = v20;
      v22 = v15[1];
      *v14 = *v15;
      v14[1] = v22;
      v23 = *(*(a1 + 32) + 40);
      v24 = v23 + 40 * v8;
      result = *v24;
      v26 = *(v24 + 16);
      v27 = v23 + v6;
      *(v27 + 32) = *(v24 + 32);
      *v27 = result;
      *(v27 + 16) = v26;
      ++*(*(*(a1 + 40) + 8) + 24);
      v6 += 40;
      v7 += 160;
      v5 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

- (void)removeSpritesInRange:(_PXGSpriteIndexRange)range
{
  location = range.location;
  length = range.length;
  _PXGArrayRemoveRange(self->_entities, 4, [(PXGSpriteDataStore *)self count], range.location, range.length);
  _PXGArrayRemoveRange(self->_geometries, 32, [(PXGSpriteDataStore *)self count], location, length);
  _PXGArrayRemoveRange(self->_styles, 160, [(PXGSpriteDataStore *)self count], location, length);
  _PXGArrayRemoveRange(self->_infos, 40, [(PXGSpriteDataStore *)self count], location, length);
  v6 = [(PXGSpriteDataStore *)self count]- length;

  [(PXGSpriteDataStore *)self setCount:v6];
}

- (void)insertSpritesInRange:(_PXGSpriteIndexRange)range
{
  length = range.length;
  [(PXGSpriteDataStore *)self setCount:[(PXGSpriteDataStore *)self count]+ range.length];
  location = range.location;
  _PXGArrayInsertRange(self->_entities, 4, [(PXGSpriteDataStore *)self count], range.location, length);
  _PXGArrayInsertRange(self->_geometries, 32, [(PXGSpriteDataStore *)self count], range.location, length);
  _PXGArrayInsertRange(self->_styles, 160, [(PXGSpriteDataStore *)self count], range.location, length);
  _PXGArrayInsertRange(self->_infos, 40, [(PXGSpriteDataStore *)self count], range.location, length);
  bzero(&self->_entities[range.location], 4 * length);
  bzero(self->_geometries + 32 * range.location, 32 * length);
  v7 = 4 * length + HIDWORD(*&range);
  bzero(self->_styles + 160 * location, 32 * v7);
  v8 = self->_infos + 40 * location;

  bzero(v8, 8 * v7);
}

- (void)setCount:(unsigned int)count
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
    self->_entities = malloc_type_realloc(self->_entities, 4 * capacity, 0x42760281uLL);
    self->_geometries = malloc_type_realloc(self->_geometries, 32 * self->_capacity, 0x42760281uLL);
    self->_styles = malloc_type_realloc(self->_styles, 160 * self->_capacity, 0x42760281uLL);
    self->_infos = malloc_type_realloc(self->_infos, 40 * self->_capacity, 0x42760281uLL);
  }
}

- (void)dealloc
{
  free(self->_entities);
  free(self->_geometries);
  free(self->_styles);
  free(self->_infos);
  v3.receiver = self;
  v3.super_class = PXGSpriteDataStore;
  [(PXGSpriteDataStore *)&v3 dealloc];
}

- (PXGSpriteDataStore)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXGSpriteDataStore init]"}];

  abort();
}

@end