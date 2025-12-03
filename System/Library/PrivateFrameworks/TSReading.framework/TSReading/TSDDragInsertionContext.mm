@interface TSDDragInsertionContext
- (CGPoint)preferredCenter;
- (TSDDragInsertionContext)initWithPreferredCenter:(CGPoint)center required:(BOOL)required shouldEndEditing:(BOOL)editing fromDragToInsertController:(BOOL)controller insertWillBeDiscarded:(BOOL)discarded;
@end

@implementation TSDDragInsertionContext

- (TSDDragInsertionContext)initWithPreferredCenter:(CGPoint)center required:(BOOL)required shouldEndEditing:(BOOL)editing fromDragToInsertController:(BOOL)controller insertWillBeDiscarded:(BOOL)discarded
{
  y = center.y;
  x = center.x;
  v14.receiver = self;
  v14.super_class = TSDDragInsertionContext;
  result = [(TSDInsertionContext *)&v14 init];
  if (result)
  {
    result->mPreferredCenter.x = x;
    result->mPreferredCenter.y = y;
    result->mPreferredCenterRequired = required;
    result->mShouldEndEditing = editing;
    result->mFromDragToInsertController = controller;
    result->mInsertWillBeDiscarded = discarded;
  }

  return result;
}

- (CGPoint)preferredCenter
{
  x = self->mPreferredCenter.x;
  y = self->mPreferredCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end