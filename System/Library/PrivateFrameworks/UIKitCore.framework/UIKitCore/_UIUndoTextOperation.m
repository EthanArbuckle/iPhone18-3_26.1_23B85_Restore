@interface _UIUndoTextOperation
- (UITextInputController)inputController;
- (_NSRange)affectedRange;
- (_UIUndoTextOperation)initWithAffectedRange:(_NSRange)a3 inputController:(id)a4;
- (_UIUndoTextOperation)initWithAffectedRanges:(id)a3 inputController:(id)a4;
@end

@implementation _UIUndoTextOperation

- (_UIUndoTextOperation)initWithAffectedRange:(_NSRange)a3 inputController:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _UIUndoTextOperation;
  v8 = [(_UIUndoTextOperation *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_affectedRange.location = location;
    v8->_affectedRange.length = length;
    objc_storeWeak(&v8->_inputController, v7);
    v10 = v9;
  }

  return v9;
}

- (_UIUndoTextOperation)initWithAffectedRanges:(id)a3 inputController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIUndoTextOperation;
  v9 = [(_UIUndoTextOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_affectedRanges, a3);
    objc_storeWeak(&v10->_inputController, v8);
  }

  return v10;
}

- (_NSRange)affectedRange
{
  length = self->_affectedRange.length;
  location = self->_affectedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (UITextInputController)inputController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputController);

  return WeakRetained;
}

@end