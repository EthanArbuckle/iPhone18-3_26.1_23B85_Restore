@interface PXNewMagazineChunk
- (PXNewMagazineChunk)initWithStartY:(int64_t)a3 startIndexOfInputs:(int64_t)a4 rectsArray:(id)a5;
@end

@implementation PXNewMagazineChunk

- (PXNewMagazineChunk)initWithStartY:(int64_t)a3 startIndexOfInputs:(int64_t)a4 rectsArray:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PXNewMagazineChunk;
  v10 = [(PXNewMagazineChunk *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_startY = a3;
    v10->_numOfRects = [v9 count];
    objc_storeStrong(&v11->_rectsArray, a5);
    v11->_startIndexOfInputs = a4;
    rectsArray = v11->_rectsArray;
    if (rectsArray)
    {
      [(PXNewMagazineRectArray *)rectsArray rectAtIndex:v11->_numOfRects - 1, 0];
    }

    v11->_height = 0;
  }

  return v11;
}

@end