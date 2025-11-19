@interface PXNewMagazineRectArray
- (BOOL)isEqualToRectArray:(id)a3;
- (BOOL)isPerfectEnding;
- (PXMagazineRect)rectAtIndex:(SEL)a3;
- (PXNewMagazineRectArray)initWithSize:(unint64_t)a3 tileGrid:(id)a4;
- (double)tileDensity;
- (id)immutableCopyForCurrentRectsCount;
- (unint64_t)rowsUsed;
- (void)addRect:(PXMagazineRect *)a3;
- (void)dealloc;
- (void)removeLastRect;
- (void)reset;
@end

@implementation PXNewMagazineRectArray

- (BOOL)isEqualToRectArray:(id)a3
{
  v4 = a3;
  v5 = [(PXNewMagazineRectArray *)self count];
  v6 = v5 == [v4 count] && !memcmp(objc_msgSend(v4, "rects"), -[PXNewMagazineRectArray rects](self, "rects"), 32 * v5);

  return v6;
}

- (BOOL)isPerfectEnding
{
  tileGrid = self->_tileGrid;
  if (tileGrid)
  {
    LOBYTE(v4) = [(PXNewMagazineGrid *)tileGrid isPerfectEnding];
  }

  else
  {
    return self->_endingType == 2;
  }

  return v4;
}

- (double)tileDensity
{
  v3 = [(PXNewMagazineGrid *)self->_tileGrid numberOfColumns];
  v4 = ([(PXNewMagazineGrid *)self->_tileGrid currentRowsUsed]* v3);
  return v4 / (4 * [(PXNewMagazineRectArray *)self count]);
}

- (PXMagazineRect)rectAtIndex:(SEL)a3
{
  v4 = self[1].var1.var1 + 32 * a4;
  v5 = *(v4 + 16);
  retstr->var0 = *v4;
  retstr->var1 = v5;
  return self;
}

- (void)removeLastRect
{
  if ([(PXNewMagazineRectArray *)self count])
  {
    v3 = self->_currentIndex - 1;
    self->_currentIndex = v3;
    v4 = &self->_rects[v3];
    var1 = v4->var1;
    var0 = v4->var0;
    v10 = var1;
    tileGrid = self->_tileGrid;
    v8[0] = var0;
    v8[1] = var1;
    [(PXNewMagazineGrid *)tileGrid clearArea:v8];
    v7 = &self->_rects[self->_currentIndex];
    v7->var0 = 0u;
    v7->var1 = 0u;
  }
}

- (void)addRect:(PXMagazineRect *)a3
{
  currentIndex = self->_currentIndex;
  size = self->_size;
  if (currentIndex >= size)
  {
    v8 = 2 * size + 2;
    self->_size = v8;
    rects = malloc_type_realloc(self->_rects, 32 * v8, 0x1000040E0EAB150uLL);
    self->_rects = rects;
    currentIndex = self->_currentIndex;
  }

  else
  {
    rects = self->_rects;
  }

  v9 = &rects[currentIndex];
  var1 = a3->var1;
  v9->var0 = a3->var0;
  v9->var1 = var1;
  tileGrid = self->_tileGrid;
  v12 = self->_currentIndex;
  v13 = a3->var1;
  v14[0] = a3->var0;
  v14[1] = v13;
  [(PXNewMagazineGrid *)tileGrid setTileIdentifier:v12 forArea:v14];
  ++self->_currentIndex;
}

- (unint64_t)rowsUsed
{
  if (![(PXNewMagazineRectArray *)self count])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    if (self->_rects[v3].var1.var1 + self->_rects[v3].var0.var1 > v5)
    {
      v5 = self->_rects[v3].var1.var1 + self->_rects[v3].var0.var1;
    }

    ++v4;
    ++v3;
  }

  while (v4 < [(PXNewMagazineRectArray *)self count]);
  return v5;
}

- (void)reset
{
  bzero(self->_rects, 32 * self->_size);
  [(PXNewMagazineGrid *)self->_tileGrid reset];
  self->_currentIndex = 0;
  self->_endingType = 0;
}

- (id)immutableCopyForCurrentRectsCount
{
  v3 = [[PXNewMagazineRectArray alloc] initWithSize:[(PXNewMagazineRectArray *)self count] tileGrid:0];
  memcpy(v3->_rects, self->_rects, 32 * v3->_size);
  v3->_currentIndex = self->_currentIndex;
  tileGrid = self->_tileGrid;
  if (tileGrid)
  {
    endingType = [(PXNewMagazineGrid *)tileGrid endingType];
  }

  else
  {
    endingType = self->_endingType;
  }

  v3->_endingType = endingType;

  return v3;
}

- (void)dealloc
{
  free(self->_rects);
  v3.receiver = self;
  v3.super_class = PXNewMagazineRectArray;
  [(PXNewMagazineRectArray *)&v3 dealloc];
}

- (PXNewMagazineRectArray)initWithSize:(unint64_t)a3 tileGrid:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXNewMagazineRectArray;
  v8 = [(PXNewMagazineRectArray *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_size = a3;
    v8->_rects = malloc_type_calloc(a3, 0x20uLL, 0x1000040E0EAB150uLL);
    objc_storeStrong(&v9->_tileGrid, a4);
  }

  return v9;
}

@end