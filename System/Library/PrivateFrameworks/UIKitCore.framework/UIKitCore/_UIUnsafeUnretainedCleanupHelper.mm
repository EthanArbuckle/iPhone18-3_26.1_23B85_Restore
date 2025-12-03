@interface _UIUnsafeUnretainedCleanupHelper
- (void)dealloc;
- (void)initWithParent:(void *)parent deallocationHandler:;
@end

@implementation _UIUnsafeUnretainedCleanupHelper

- (void)initWithParent:(void *)parent deallocationHandler:
{
  parentCopy = parent;
  v6 = parentCopy;
  if (!self)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    if (parentCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithParent_deallocationHandler_ object:self file:@"_UIWeakHelper.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"parent != nil"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_initWithParent_deallocationHandler_ object:self file:@"_UIWeakHelper.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"deallocationHandler != NULL"}];

LABEL_4:
  v14.receiver = self;
  v14.super_class = _UIUnsafeUnretainedCleanupHelper;
  self = objc_msgSendSuper2(&v14, sel_init);
  if (self)
  {
    v7 = _Block_copy(v6);
    v8 = self[1];
    self[1] = v7;

    self[2] = a2;
    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    v10 = self[3];
    self[3] = v9;
  }

LABEL_6:

  return self;
}

- (void)dealloc
{
  (*(self->_deallocationHandler + 2))();
  v3.receiver = self;
  v3.super_class = _UIUnsafeUnretainedCleanupHelper;
  [(_UIUnsafeUnretainedCleanupHelper *)&v3 dealloc];
}

@end