@interface _UIKeyboardImplHeldOperation
- (_UIKeyboardImplHeldOperation)initWithOperation:(id)operation;
@end

@implementation _UIKeyboardImplHeldOperation

- (_UIKeyboardImplHeldOperation)initWithOperation:(id)operation
{
  operationCopy = operation;
  v8.receiver = self;
  v8.super_class = _UIKeyboardImplHeldOperation;
  v5 = [(_UIKeyboardImplHeldOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIKeyboardImplHeldOperation *)v5 setOperation:operationCopy];
  }

  return v6;
}

@end