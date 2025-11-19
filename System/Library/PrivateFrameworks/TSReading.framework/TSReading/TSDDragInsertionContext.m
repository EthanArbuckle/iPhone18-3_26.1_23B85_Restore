@interface TSDDragInsertionContext
- (CGPoint)preferredCenter;
- (TSDDragInsertionContext)initWithPreferredCenter:(CGPoint)a3 required:(BOOL)a4 shouldEndEditing:(BOOL)a5 fromDragToInsertController:(BOOL)a6 insertWillBeDiscarded:(BOOL)a7;
@end

@implementation TSDDragInsertionContext

- (TSDDragInsertionContext)initWithPreferredCenter:(CGPoint)a3 required:(BOOL)a4 shouldEndEditing:(BOOL)a5 fromDragToInsertController:(BOOL)a6 insertWillBeDiscarded:(BOOL)a7
{
  y = a3.y;
  x = a3.x;
  v14.receiver = self;
  v14.super_class = TSDDragInsertionContext;
  result = [(TSDInsertionContext *)&v14 init];
  if (result)
  {
    result->mPreferredCenter.x = x;
    result->mPreferredCenter.y = y;
    result->mPreferredCenterRequired = a4;
    result->mShouldEndEditing = a5;
    result->mFromDragToInsertController = a6;
    result->mInsertWillBeDiscarded = a7;
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