@interface PXStoryHitTestResult
- (PXStoryHitTestResult)initWithSpriteIndex:(unsigned int)a3 layout:(id)a4 identifier:(id)a5;
@end

@implementation PXStoryHitTestResult

- (PXStoryHitTestResult)initWithSpriteIndex:(unsigned int)a3 layout:(id)a4 identifier:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 spriteReferenceForSpriteIndex:v6];
  v13.receiver = self;
  v13.super_class = PXStoryHitTestResult;
  v11 = [(PXGHitTestResult *)&v13 initWithSpriteReference:v10 layout:v9 identifier:v8 userData:0];

  v11->_clipIdentifier = 0;
  return v11;
}

@end