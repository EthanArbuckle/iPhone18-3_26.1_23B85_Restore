@interface PXNewMagazineChunk
- (PXNewMagazineChunk)initWithStartY:(int64_t)y startIndexOfInputs:(int64_t)inputs rectsArray:(id)array;
@end

@implementation PXNewMagazineChunk

- (PXNewMagazineChunk)initWithStartY:(int64_t)y startIndexOfInputs:(int64_t)inputs rectsArray:(id)array
{
  arrayCopy = array;
  v14.receiver = self;
  v14.super_class = PXNewMagazineChunk;
  v10 = [(PXNewMagazineChunk *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_startY = y;
    v10->_numOfRects = [arrayCopy count];
    objc_storeStrong(&v11->_rectsArray, array);
    v11->_startIndexOfInputs = inputs;
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