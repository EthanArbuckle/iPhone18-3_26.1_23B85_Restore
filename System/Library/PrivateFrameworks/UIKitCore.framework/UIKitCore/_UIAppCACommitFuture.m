@interface _UIAppCACommitFuture
+ (id)scheduledPostCommitFuture:(id)a3;
+ (id)scheduledPreCommitFuture:(id)a3;
- (_UIAppCACommitFuture)initWithPhase:(unint64_t)a3 block:(id)a4;
- (void)_invoke;
- (void)invalidate;
@end

@implementation _UIAppCACommitFuture

- (void)_invoke
{
  if (!self->_invalidated)
  {
    [(_UIAppCACommitFuture *)self willChangeValueForKey:@"finished"];
    block = self->_block;
    if (block)
    {
      block[2]();
      v5 = self->_block;
    }

    else
    {
      v5 = 0;
    }

    self->_finished = 1;
    self->_block = 0;

    [(_UIAppCACommitFuture *)self didChangeValueForKey:@"finished"];
  }
}

+ (id)scheduledPostCommitFuture:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPhase:0 block:v4];

  return v5;
}

+ (id)scheduledPreCommitFuture:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPhase:1 block:v4];

  return v5;
}

- (_UIAppCACommitFuture)initWithPhase:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = _UIAppCACommitFuture;
  v7 = [(_UIAppCACommitFuture *)&v18 init];
  if (v7)
  {
    v8 = [v6 copy];
    block = v7->_block;
    v7->_block = v8;

    *&v7->_invalidated = 0;
    if (a3 == 1)
    {
      [MEMORY[0x1E6979518] activate];
      v12 = MEMORY[0x1E6979518];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44___UIAppCACommitFuture_initWithPhase_block___block_invoke_2;
      v14[3] = &unk_1E70F3590;
      v11 = &v15;
      v15 = v7;
      [v12 addCommitHandler:v14 forPhase:1];
      goto LABEL_6;
    }

    if (!a3)
    {
      v10 = UIApp;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __44___UIAppCACommitFuture_initWithPhase_block___block_invoke;
      v16[3] = &unk_1E70F3590;
      v11 = &v17;
      v17 = v7;
      [v10 _performBlockAfterCATransactionCommits:v16];
LABEL_6:
    }
  }

  return v7;
}

- (void)invalidate
{
  if (!self->_invalidated && !self->_finished)
  {
    [(_UIAppCACommitFuture *)self willChangeValueForKey:@"invalidated"];
    self->_invalidated = 1;
    block = self->_block;
    self->_block = 0;

    [(_UIAppCACommitFuture *)self didChangeValueForKey:@"invalidated"];
  }
}

@end