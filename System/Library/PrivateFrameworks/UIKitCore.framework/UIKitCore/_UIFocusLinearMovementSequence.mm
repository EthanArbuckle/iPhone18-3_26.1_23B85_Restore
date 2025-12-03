@interface _UIFocusLinearMovementSequence
+ (id)sequenceWithItems:(id)items loops:(BOOL)loops restrictEnteringSequence:(BOOL)sequence;
- (_UIFocusLinearMovementSequence)initWithItems:(id)items loops:(BOOL)loops restrictEnteringSequence:(BOOL)sequence;
@end

@implementation _UIFocusLinearMovementSequence

+ (id)sequenceWithItems:(id)items loops:(BOOL)loops restrictEnteringSequence:(BOOL)sequence
{
  sequenceCopy = sequence;
  loopsCopy = loops;
  itemsCopy = items;
  v8 = [[_UIFocusLinearMovementSequence alloc] initWithItems:itemsCopy loops:loopsCopy restrictEnteringSequence:sequenceCopy];

  return v8;
}

- (_UIFocusLinearMovementSequence)initWithItems:(id)items loops:(BOOL)loops restrictEnteringSequence:(BOOL)sequence
{
  itemsCopy = items;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusLinearMovementSequence.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v15.receiver = self;
  v15.super_class = _UIFocusLinearMovementSequence;
  v10 = [(_UIFocusLinearMovementSequence *)&v15 init];
  if (v10)
  {
    v11 = [itemsCopy copy];
    items = v10->_items;
    v10->_items = v11;

    v10->_looping = loops;
    v10->_restrictEnteringSequence = sequence;
  }

  return v10;
}

@end