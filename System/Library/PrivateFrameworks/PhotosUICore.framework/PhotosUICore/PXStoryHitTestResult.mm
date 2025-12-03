@interface PXStoryHitTestResult
- (PXStoryHitTestResult)initWithSpriteIndex:(unsigned int)index layout:(id)layout identifier:(id)identifier;
@end

@implementation PXStoryHitTestResult

- (PXStoryHitTestResult)initWithSpriteIndex:(unsigned int)index layout:(id)layout identifier:(id)identifier
{
  v6 = *&index;
  identifierCopy = identifier;
  layoutCopy = layout;
  v10 = [layoutCopy spriteReferenceForSpriteIndex:v6];
  v13.receiver = self;
  v13.super_class = PXStoryHitTestResult;
  v11 = [(PXGHitTestResult *)&v13 initWithSpriteReference:v10 layout:layoutCopy identifier:identifierCopy userData:0];

  v11->_clipIdentifier = 0;
  return v11;
}

@end