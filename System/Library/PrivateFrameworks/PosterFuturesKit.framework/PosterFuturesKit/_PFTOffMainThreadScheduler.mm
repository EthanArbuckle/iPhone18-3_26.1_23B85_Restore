@interface _PFTOffMainThreadScheduler
+ (id)os_log;
- (NSString)description;
- (_PFTOffMainThreadScheduler)init;
- (_PFTOffMainThreadScheduler)initWithBackgroundScheduler:(id)scheduler;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _PFTOffMainThreadScheduler

+ (id)os_log
{
  if (os_log_pft_once_token_8 != -1)
  {
    +[_PFTOffMainThreadScheduler os_log];
  }

  v3 = os_log_pft_once_object_8;

  return v3;
}

- (_PFTOffMainThreadScheduler)init
{
  v3 = +[PFTScheduler globalAsyncScheduler];
  v4 = [(_PFTOffMainThreadScheduler *)self initWithBackgroundScheduler:v3];

  return v4;
}

- (_PFTOffMainThreadScheduler)initWithBackgroundScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  if (!schedulerCopy)
  {
    if (PFTGuardOSLog_pft_once_token_7 != -1)
    {
      [_PFTOffMainThreadScheduler initWithBackgroundScheduler:];
    }

    v6 = PFTGuardOSLog_pft_once_object_7;
    if (os_log_type_enabled(PFTGuardOSLog_pft_once_object_7, OS_LOG_TYPE_FAULT))
    {
      [_PFTOffMainThreadScheduler initWithBackgroundScheduler:v6];
    }
  }

  v12.receiver = self;
  v12.super_class = _PFTOffMainThreadScheduler;
  v7 = [(_PFTOffMainThreadScheduler *)&v12 init];
  if (v7)
  {
    v8 = +[PFTScheduler inlineScheduler];
    alreadyOffMainThreadScheduler = v7->_alreadyOffMainThreadScheduler;
    v7->_alreadyOffMainThreadScheduler = v8;

    objc_storeStrong(&v7->_needToGetOffMainThreadScheduler, scheduler);
    v10 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_needToGetOffMainThreadScheduler withName:@"backgroundScheduler"];
  build = [v3 build];

  return build;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v6 = 8;
  if (isMainThread)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43___PFTOffMainThreadScheduler_performBlock___block_invoke;
  v9[3] = &unk_279A52D20;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 performBlock:v9];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v8 = 8;
  if (isMainThread)
  {
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60___PFTOffMainThreadScheduler_performBlock_qualityOfService___block_invoke;
  v11[3] = &unk_279A52D20;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 performBlock:v11 qualityOfService:service];
}

- (id)performCancellableBlock:(id)block
{
  blockCopy = block;
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v6 = 8;
  if (isMainThread)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54___PFTOffMainThreadScheduler_performCancellableBlock___block_invoke;
  v11[3] = &unk_279A52D48;
  v11[4] = self;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [v7 performCancellableBlock:v11];

  return v9;
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v8 = 8;
  if (isMainThread)
  {
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71___PFTOffMainThreadScheduler_performCancellableBlock_qualityOfService___block_invoke;
  v13[3] = &unk_279A52D48;
  v13[4] = self;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = [v9 performCancellableBlock:v13 qualityOfService:service];

  return v11;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v8 = 8;
  if (isMainThread)
  {
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54___PFTOffMainThreadScheduler_afterDelay_performBlock___block_invoke;
  v13[3] = &unk_279A52D20;
  v13[4] = self;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = [v9 afterDelay:v13 performBlock:delay];

  return v11;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v10 = 8;
  if (isMainThread)
  {
    v10 = 16;
  }

  v11 = *(&self->super.isa + v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71___PFTOffMainThreadScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v15[3] = &unk_279A52D20;
  v15[4] = self;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = [v11 afterDelay:v15 performBlock:service qualityOfService:delay];

  return v13;
}

@end