@interface _PASInternPool
- (BOOL)isEmpty;
- (BOOL)isInterned:(id)a3;
- (_PASInternPool)initWithBehavior:(unint64_t)a3 copyWithZone:(id)a4;
- (id)_intern:(char)a3 copyInput:;
- (void)clear;
@end

@implementation _PASInternPool

- (void)clear
{
  v3 = objc_autoreleasePoolPush();
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_8_2102];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)isEmpty
{
  v3 = objc_autoreleasePoolPush();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  lock = self->_lock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25___PASInternPool_isEmpty__block_invoke;
  v6[3] = &unk_1E77F1E58;
  v6[4] = &v7;
  [(_PASLock *)lock runWithLockAcquired:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  objc_autoreleasePoolPop(v3);
  return self;
}

- (BOOL)isInterned:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (malloc_size(v4))
    {
      v6 = objc_autoreleasePoolPush();
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      lock = self->_lock;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __29___PASInternPool_isInterned___block_invoke;
      v10[3] = &unk_1E77F1E30;
      v12 = &v13;
      v11 = v5;
      [(_PASLock *)lock runWithLockAcquired:v10];
      v8 = *(v14 + 24);

      _Block_object_dispose(&v13, 8);
      objc_autoreleasePoolPop(v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (id)_intern:(char)a3 copyInput:
{
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (a1 && v5)
  {
    if (malloc_size(v5))
    {
      v8 = objc_autoreleasePoolPush();
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__2105;
      v20 = __Block_byref_object_dispose__2106;
      v21 = 0;
      v9 = *(a1 + 8);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __36___PASInternPool__intern_copyInput___block_invoke;
      v11[3] = &unk_1E77F1E08;
      v13 = a1;
      v14 = &v16;
      v15 = a3;
      v12 = v6;
      [v9 runWithLockAcquired:v11];
      v7 = v17[5];

      _Block_object_dispose(&v16, 8);
      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v7 = v6;
    }
  }

  return v7;
}

- (_PASInternPool)initWithBehavior:(unint64_t)a3 copyWithZone:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = _PASInternPool;
  v7 = [(_PASInternPool *)&v17 init];
  v8 = v7;
  if (v7)
  {
    if (a3 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 5;
    }

    v10 = [objc_msgSend(MEMORY[0x1E696AC70] allocWithZone:{-[_PASZonedObject allocationZone](v7, "allocationZone")), "initWithOptions:capacity:", v9, 0}];
    v11 = [[_PASLock alloc] initWithGuardedData:v10];
    lock = v8->_lock;
    v8->_lock = v11;

    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = &__block_literal_global_2111;
    }

    v14 = MEMORY[0x1AC566DD0](v13);
    copyWithZone = v8->_copyWithZone;
    v8->_copyWithZone = v14;
  }

  return v8;
}

@end