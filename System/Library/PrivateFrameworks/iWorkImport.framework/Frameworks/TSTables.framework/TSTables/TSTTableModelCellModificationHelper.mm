@interface TSTTableModelCellModificationHelper
+ (id)perChunkHelperWithSourceRect:(TSUCellRect)rect columnRowUIDMap:(id)map;
- (TSTTableModelCellModificationHelper)initWithSourceRect:(TSUCellRect)rect columnRowUIDMap:(id)map;
- (TSUCellRect)sourceRect;
- (void)prepareToAddCells;
@end

@implementation TSTTableModelCellModificationHelper

- (TSTTableModelCellModificationHelper)initWithSourceRect:(TSUCellRect)rect columnRowUIDMap:(id)map
{
  size = rect.size;
  origin = rect.origin;
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = TSTTableModelCellModificationHelper;
  v9 = [(TSTTableModelCellModificationHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_sourceRect.origin = origin;
    v9->_sourceRect.size = size;
    objc_storeStrong(&v9->_columnRowUIDMap, map);
    v10->_emptyCellCount = 0;
  }

  return v10;
}

+ (id)perChunkHelperWithSourceRect:(TSUCellRect)rect columnRowUIDMap:(id)map
{
  size = rect.size;
  origin = rect.origin;
  mapCopy = map;
  v7 = [TSTTableModelCellModificationHelper alloc];
  v9 = objc_msgSend_initWithSourceRect_columnRowUIDMap_(v7, v8, origin, size, mapCopy);

  return v9;
}

- (void)prepareToAddCells
{
  if (!self->_sparseCellList)
  {
    v6 = objc_msgSend_columnRowUIDMap(self, a2, v2, v3, v4);
    v9 = v6;
    if (v6)
    {
      objc_msgSend_cellUIDRangeForCellRange_(v6, v7, *&self->_sourceRect.origin, *&self->_sourceRect.size, v8);
    }

    else
    {
      *v22 = 0u;
      v23 = 0u;
      *v21 = 0u;
    }

    v10 = [TSTConcurrentSparseCellList alloc];
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_221086EBC(&v15, v21[0], v21[1], (v21[1] - v21[0]) >> 4);
    __p = 0;
    v19 = 0;
    v20 = 0;
    sub_221086EBC(&__p, v22[1], v23, (v23 - v22[1]) >> 4);
    v13 = objc_msgSend_initWithContext_cellUIDRange_(v10, v11, 0, &v15, v12);
    sparseCellList = self->_sparseCellList;
    self->_sparseCellList = v13;

    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (v22[1])
    {
      *&v23 = v22[1];
      operator delete(v22[1]);
    }

    if (v21[0])
    {
      v21[1] = v21[0];
      operator delete(v21[0]);
    }
  }
}

- (TSUCellRect)sourceRect
{
  size = self->_sourceRect.size;
  origin = self->_sourceRect.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

@end