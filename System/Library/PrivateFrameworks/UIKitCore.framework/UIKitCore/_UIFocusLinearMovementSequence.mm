@interface _UIFocusLinearMovementSequence
+ (id)sequenceWithItems:(id)a3 loops:(BOOL)a4 restrictEnteringSequence:(BOOL)a5;
- (_UIFocusLinearMovementSequence)initWithItems:(id)a3 loops:(BOOL)a4 restrictEnteringSequence:(BOOL)a5;
@end

@implementation _UIFocusLinearMovementSequence

+ (id)sequenceWithItems:(id)a3 loops:(BOOL)a4 restrictEnteringSequence:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [[_UIFocusLinearMovementSequence alloc] initWithItems:v7 loops:v6 restrictEnteringSequence:v5];

  return v8;
}

- (_UIFocusLinearMovementSequence)initWithItems:(id)a3 loops:(BOOL)a4 restrictEnteringSequence:(BOOL)a5
{
  v9 = a3;
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIFocusLinearMovementSequence.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v15.receiver = self;
  v15.super_class = _UIFocusLinearMovementSequence;
  v10 = [(_UIFocusLinearMovementSequence *)&v15 init];
  if (v10)
  {
    v11 = [v9 copy];
    items = v10->_items;
    v10->_items = v11;

    v10->_looping = a4;
    v10->_restrictEnteringSequence = a5;
  }

  return v10;
}

@end