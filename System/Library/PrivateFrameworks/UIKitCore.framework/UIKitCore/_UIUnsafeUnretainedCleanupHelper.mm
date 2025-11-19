@interface _UIUnsafeUnretainedCleanupHelper
- (void)dealloc;
- (void)initWithParent:(void *)a3 deallocationHandler:;
@end

@implementation _UIUnsafeUnretainedCleanupHelper

- (void)initWithParent:(void *)a3 deallocationHandler:
{
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:sel_initWithParent_deallocationHandler_ object:a1 file:@"_UIWeakHelper.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"parent != nil"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:sel_initWithParent_deallocationHandler_ object:a1 file:@"_UIWeakHelper.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"deallocationHandler != NULL"}];

LABEL_4:
  v14.receiver = a1;
  v14.super_class = _UIUnsafeUnretainedCleanupHelper;
  a1 = objc_msgSendSuper2(&v14, sel_init);
  if (a1)
  {
    v7 = _Block_copy(v6);
    v8 = a1[1];
    a1[1] = v7;

    a1[2] = a2;
    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    v10 = a1[3];
    a1[3] = v9;
  }

LABEL_6:

  return a1;
}

- (void)dealloc
{
  (*(self->_deallocationHandler + 2))();
  v3.receiver = self;
  v3.super_class = _UIUnsafeUnretainedCleanupHelper;
  [(_UIUnsafeUnretainedCleanupHelper *)&v3 dealloc];
}

@end