@interface PXGSpriteDataStore
+ (id)newSpriteDataStore;
- ($32FA0F4B141605662A7EE1284C9FC7E2)sprites;
- ($32FA0F4B141605662A7EE1284C9FC7E2)spritesInRange:(SEL)a3;
- ($95568E2CB0F008E7B4D2895BE51B87CB)_mutableSpritesInRange:(SEL)a3;
- ($95568E2CB0F008E7B4D2895BE51B87CB)spriteAtIndex:(SEL)a3;
- (NSString)description;
- (NSString)diagnosticDescription;
- (PXGSpriteDataStore)init;
- (id)_init;
- (id)spriteAtIndexes:(id)a3 inRect:(CGRect)a4;
- (id)spriteIndexesInRect:(CGRect)a3;
- (id)spriteIndexesWithSpriteInfoFlags:(unsigned __int8)a3;
- (void)_collectSpriteIndexes:(id)a3 inRange:(_PXGSpriteIndexRange)a4 inRect:(CGRect)a5;
- (void)applyChangeDetails:(id)a3;
- (void)clearEntities;
- (void)copySpritesInRange:(_PXGSpriteIndexRange)a3 fromSpriteDataStore:(id)a4;
- (void)dealloc;
- (void)enumerateSpritesInRange:(_PXGSpriteIndexRange)a3 usingBlock:(id)a4;
- (void)enumerateSpritesInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)insertSpritesInRange:(_PXGSpriteIndexRange)a3;
- (void)moveSpritesFromIndexes:(__CFArray *)a3 toIndexes:(id)a4;
- (void)moveSpritesInRange:(_PXGSpriteIndexRange)a3 toRange:(_PXGSpriteIndexRange)a4;
- (void)removeSpritesInRange:(_PXGSpriteIndexRange)a3;
- (void)setCount:(unsigned int)a3;
- (void)setSprites:(id *)a3;
@end

@implementation PXGSpriteDataStore

+ (id)newSpriteDataStore
{
  v2 = [a1 alloc];

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
  v7 = [(PXGSpriteDataStore *)self entities];
  v8 = [(PXGSpriteDataStore *)self geometries];
  v9 = [(PXGSpriteDataStore *)self styles];
  v10 = [(PXGSpriteDataStore *)self infos];
  if (v6)
  {
    v11 = v10;
    v12 = 0;
    v13 = v6;
    do
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{id=%ld}", v7[v12].var0];
      v15 = *&v8->var0.var0;
      v16 = *&v8->var0.var2;
      v8 = (v8 + 32);
      v29 = v15;
      v30 = v16;
      v17 = PXGSpriteGeometryDescription(&v29);
      v18 = *&v9[2].var3;
      v35 = *(&v9[2].var1 + 4);
      v36 = v18;
      v19 = *(&v9[3].var1 + 8);
      v37 = *&v9[2].var8;
      v38 = v19;
      var1 = v9[1].var1;
      v31 = *&v9->var5;
      v32 = var1;
      v21 = *&v9[1].var6;
      v33 = *&v9[1].var2;
      v34 = v21;
      v22 = *&v9->var0;
      v23 = *(&v9->var1 + 12);
      v9 = (v9 + 160);
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

- (id)spriteAtIndexes:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = MEMORY[0x277CCAB58];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __45__PXGSpriteDataStore_spriteAtIndexes_inRect___block_invoke;
  v18 = &unk_2782AA2A8;
  v19 = self;
  v20 = v11;
  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  v12 = v11;
  [v10 enumerateRangesUsingBlock:&v15];

  v13 = [v12 copy];

  return v13;
}

- (void)_collectSpriteIndexes:(id)a3 inRange:(_PXGSpriteIndexRange)a4 inRect:(CGRect)a5
{
  width = a5.size.width;
  height = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  v31 = a3;
  v9 = [(PXGSpriteDataStore *)self geometries];
  v10 = HIDWORD(*&a4);
  if (a4.length + a4.location > a4.location)
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
    a4 = a4.location;
    v19 = v9 + 32 * a4.location;
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
          [v31 addIndex:{a4, v27}];
        }
      }

      ++*&a4;
      v19 += 32;
      LODWORD(v10) = v10 - 1;
    }

    while (v10);
  }
}

- (id)spriteIndexesWithSpriteInfoFlags:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [(PXGSpriteDataStore *)self infos];
  v6 = [(PXGSpriteDataStore *)self count];
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = 0;
  v9 = 0;
  v10 = &v5[1].var3 + 2;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v12 = v11;
    v13 = v9;
    v14 = *v10;
    v10 += 40;
    if ((v3 & ~v14) == 0)
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

- (id)spriteIndexesInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
  [(PXGSpriteDataStore *)self _collectSpriteIndexes:v8 inRange:[(PXGSpriteDataStore *)self count]<< 32 inRect:x, y, width, height];
  v9 = [v8 copy];

  return v9;
}

- (void)enumerateSpritesInRange:(_PXGSpriteIndexRange)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(PXGSpriteDataStore *)self count];
  v8 = [(PXGSpriteDataStore *)self entities];
  v9 = [(PXGSpriteDataStore *)self geometries];
  v10 = [(PXGSpriteDataStore *)self styles];
  v11 = [(PXGSpriteDataStore *)self infos];
  v12 = a3.length + a3.location;
  if (v12 > v7)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [MEMORY[0x277CCACA8] stringWithFormat:@"{%li, %li}", a3.location, HIDWORD(*&a3)];
    v18 = v19 = v7;
    [v20 handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:226 description:{@"invalid range %@ not within 0..<%li", v18, v19}];
  }

  v23 = 0;
  if (v12 > a3.location)
  {
    v13 = a3.location + 1;
    v14 = v11 + 40 * a3.location;
    v15 = v10 + 160 * a3.location;
    v16 = v9 + 32 * a3.location;
    v17 = &v8[a3.location];
    do
    {
      v22[0] = v17;
      v22[1] = v16;
      v22[2] = v15;
      v22[3] = v14;
      v6[2](v6, a3, v22, &v23);
      if (v13 >= v12)
      {
        break;
      }

      ++v13;
      a3 = (a3.location + 1);
      v14 += 40;
      v15 += 160;
      v16 += 32;
      ++v17;
    }

    while ((v23 & 1) == 0);
  }
}

- (void)enumerateSpritesInRect:(CGRect)a3 usingBlock:(id)a4
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = a4;
  v8 = [(PXGSpriteDataStore *)self count];
  v9 = [(PXGSpriteDataStore *)self entities];
  v10 = [(PXGSpriteDataStore *)self geometries];
  v11 = [(PXGSpriteDataStore *)self styles];
  v12 = [(PXGSpriteDataStore *)self infos];
  v36 = 0;
  if (v8)
  {
    v14 = v12;
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
      v24 = vmul_f32(*&v10[1].var0.var0, 0x3F0000003F000000);
      var1 = v10->var0.var1;
      v26 = var1 - v24.f32[1];
      v27 = var1 + v24.f32[1];
      v28 = v26 > v20 || v27 < v21;
      if (v28 || ((v29 = v24.f32[0], v30 = v10->var0.var0 - v29, v13.n128_f64[0] = v10->var0.var0 + v29, v30 <= v22) ? (v31 = v13.n128_f64[0] < v17) : (v31 = 1), v31))
      {
        v32 = 0;
      }

      else
      {
        v35[0] = v9;
        v35[1] = v10;
        v35[2] = v11;
        v35[3] = v14;
        (*(v7 + 2))(v7, (v23 - 1), v35, &v36, v13);
        v32 = v36;
      }

      if (v23 >= v8)
      {
        break;
      }

      ++v23;
      v14 = (v14 + 40);
      v11 = (v11 + 160);
      ++v9;
      v10 = (v10 + 32);
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

- (void)copySpritesInRange:(_PXGSpriteIndexRange)a3 fromSpriteDataStore:(id)a4
{
  v7 = a4;
  v8 = HIDWORD(*&a3);
  if (a3.length + a3.location > [v7 count])
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"PXGSpriteIndexRangeMax(spriteIndexRange) <= fromSpriteDataStore.count"}];
  }

  [(PXGSpriteDataStore *)self _mutableSpritesInRange:a3];
  if (v7)
  {
    [v7 _mutableSpritesInRange:a3];
  }

  memcpy(0, 0, 4 * v8);
  memcpy(0, 0, 32 * v8);
  memcpy(0, 0, 160 * v8);
  memcpy(0, 0, 40 * v8);
}

- (void)setSprites:(id *)a3
{
  var0 = a3->var0;
  [(PXGSpriteDataStore *)self setCount:var0];
  memcpy([(PXGSpriteDataStore *)self entities], a3->var1, 4 * var0);
  memcpy([(PXGSpriteDataStore *)self geometries], a3->var2, 32 * var0);
  v6 = 5 * var0;
  memcpy([(PXGSpriteDataStore *)self styles], a3->var3, 32 * v6);
  v7 = [(PXGSpriteDataStore *)self infos];
  var4 = a3->var4;

  memcpy(v7, var4, 8 * v6);
}

- ($95568E2CB0F008E7B4D2895BE51B87CB)spriteAtIndex:(SEL)a3
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

- ($95568E2CB0F008E7B4D2895BE51B87CB)_mutableSpritesInRange:(SEL)a3
{
  location = a4.location;
  if (a4.length + a4.location > [(PXGSpriteDataStore *)self count])
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a3 object:self file:@"PXGSpriteDataStore.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"PXGSpriteIndexRangeMax(range) <= self.count"}];
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

- ($32FA0F4B141605662A7EE1284C9FC7E2)spritesInRange:(SEL)a3
{
  location = a4.location;
  length = a4.length;
  if (a4.length + a4.location > [(PXGSpriteDataStore *)self count])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a3 object:self file:@"PXGSpriteDataStore.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"PXGSpriteIndexRangeMax(range) <= self.count"}];
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

- (void)applyChangeDetails:(id)a3
{
  v4 = a3;
  -[PXGSpriteDataStore setCount:](self, "setCount:", [v4 numberOfSpritesAfterChange] - objc_msgSend(v4, "numberOfSpritesBeforeChange") + -[PXGSpriteDataStore count](self, "count"));
  [v4 applyToArray:self->_entities elementSize:4 countAfterChanges:-[PXGSpriteDataStore count](self insertionHandler:"count") modifiedHandler:{0, 0}];
  [v4 applyToArray:self->_geometries elementSize:32 countAfterChanges:-[PXGSpriteDataStore count](self insertionHandler:"count") modifiedHandler:{0, 0}];
  [v4 applyToArray:self->_styles elementSize:160 countAfterChanges:-[PXGSpriteDataStore count](self insertionHandler:"count") modifiedHandler:{0, 0}];
  [v4 applyToArray:self->_infos elementSize:40 countAfterChanges:-[PXGSpriteDataStore count](self insertionHandler:"count") modifiedHandler:{0, 0}];
}

- (void)moveSpritesInRange:(_PXGSpriteIndexRange)a3 toRange:(_PXGSpriteIndexRange)a4
{
  v7 = [MEMORY[0x277D3CCC8] changeDetailsWithMovedFromIndexRange:a3.location toIndexRange:{a3.length, a4.location, a4.length}];
  v5 = [v7 movesFromIndexes];
  v6 = [v7 movesToIndexes];
  [(PXGSpriteDataStore *)self moveSpritesFromIndexes:v5 toIndexes:v6];
}

- (void)moveSpritesFromIndexes:(__CFArray *)a3 toIndexes:(id)a4
{
  v7 = a4;
  Count = CFArrayGetCount(a3);
  v9 = [v7 count];
  v10 = v9;
  if (Count < 1 || v9 <= 0)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"fromIndexesCount > 0 && toIndexesCount > 0"}];
  }

  if (Count != v10)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"fromIndexesCount == toIndexesCount"}];
  }

  if (![(PXGSpriteDataStore *)self count])
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"self.count != 0"}];
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
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
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
  [v7 enumerateRangesUsingBlock:v38];
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

- (void)removeSpritesInRange:(_PXGSpriteIndexRange)a3
{
  location = a3.location;
  length = a3.length;
  _PXGArrayRemoveRange(self->_entities, 4, [(PXGSpriteDataStore *)self count], a3.location, a3.length);
  _PXGArrayRemoveRange(self->_geometries, 32, [(PXGSpriteDataStore *)self count], location, length);
  _PXGArrayRemoveRange(self->_styles, 160, [(PXGSpriteDataStore *)self count], location, length);
  _PXGArrayRemoveRange(self->_infos, 40, [(PXGSpriteDataStore *)self count], location, length);
  v6 = [(PXGSpriteDataStore *)self count]- length;

  [(PXGSpriteDataStore *)self setCount:v6];
}

- (void)insertSpritesInRange:(_PXGSpriteIndexRange)a3
{
  length = a3.length;
  [(PXGSpriteDataStore *)self setCount:[(PXGSpriteDataStore *)self count]+ a3.length];
  location = a3.location;
  _PXGArrayInsertRange(self->_entities, 4, [(PXGSpriteDataStore *)self count], a3.location, length);
  _PXGArrayInsertRange(self->_geometries, 32, [(PXGSpriteDataStore *)self count], a3.location, length);
  _PXGArrayInsertRange(self->_styles, 160, [(PXGSpriteDataStore *)self count], a3.location, length);
  _PXGArrayInsertRange(self->_infos, 40, [(PXGSpriteDataStore *)self count], a3.location, length);
  bzero(&self->_entities[a3.location], 4 * length);
  bzero(self->_geometries + 32 * a3.location, 32 * length);
  v7 = 4 * length + HIDWORD(*&a3);
  bzero(self->_styles + 160 * location, 32 * v7);
  v8 = self->_infos + 40 * location;

  bzero(v8, 8 * v7);
}

- (void)setCount:(unsigned int)a3
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGSpriteDataStore.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXGSpriteDataStore init]"}];

  abort();
}

@end