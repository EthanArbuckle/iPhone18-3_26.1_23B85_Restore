@interface SXDelayed
+ (id)execute:(id)execute delay:(double)delay;
- (SXDelayed)initWithBlock:(id)block delay:(double)delay;
- (void)cancel;
- (void)invoke;
@end

@implementation SXDelayed

+ (id)execute:(id)execute delay:(double)delay
{
  executeCopy = execute;
  v6 = executeCopy;
  if (executeCopy)
  {
    if (delay > 0.0)
    {
      v7 = [objc_alloc(objc_opt_class()) initWithBlock:executeCopy delay:delay];
      goto LABEL_6;
    }

    (*(executeCopy + 2))(executeCopy);
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (SXDelayed)initWithBlock:(id)block delay:(double)delay
{
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = SXDelayed;
  v7 = [(SXDelayed *)&v15 init];
  if (v7)
  {
    v8 = MEMORY[0x1DA716BE0](blockCopy);
    block = v7->_block;
    v7->_block = v8;

    objc_storeStrong(&v7->_strongReference, v7);
    objc_initWeak(&location, v7);
    v10 = dispatch_time(0, (delay * 1000000000.0));
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__SXDelayed_initWithBlock_delay___block_invoke;
    v12[3] = &unk_1E84FEC28;
    objc_copyWeak(&v13, &location);
    dispatch_after(v10, MEMORY[0x1E69E96A0], v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __33__SXDelayed_initWithBlock_delay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained strongReference];
    [v2 invoke];

    WeakRetained = v3;
  }
}

- (void)invoke
{
  block = [(SXDelayed *)self block];

  if (block)
  {
    block2 = [(SXDelayed *)self block];
    block2[2]();
  }

  [(SXDelayed *)self setStrongReference:0];
}

- (void)cancel
{
  [(SXDelayed *)self setBlock:0];

  [(SXDelayed *)self setStrongReference:0];
}

@end