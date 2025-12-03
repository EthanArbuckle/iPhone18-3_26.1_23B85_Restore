@interface SVXQueuePerformer
+ (id)sharedMainQueuePerformer;
- (NSString)description;
- (SVXQueuePerformer)initWithIdentifier:(id)identifier qosClass:(unsigned int)class relativePriority:(int)priority options:(unint64_t)options;
- (id)_initWithIdentifier:(id)identifier queue:(id)queue options:(unint64_t)options;
- (void)_performBlock:(id)block withOptions:(unint64_t)options;
- (void)_performBlockSync:(id)sync withOptions:(unint64_t)options;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block afterDelay:(double)delay;
- (void)performBlock:(id)block afterGroup:(id)group;
- (void)performBlock:(id)block withOptions:(unint64_t)options;
- (void)performBlockSync:(id)sync;
@end

@implementation SVXQueuePerformer

- (void)_performBlockSync:(id)sync withOptions:(unint64_t)options
{
  optionsCopy = options;
  syncCopy = sync;
  v9 = syncCopy;
  if ((optionsCopy & 2) != 0 && (v7 = [(SVXQueuePerformer *)self _isExecutingInContext], syncCopy = v9, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9[2]();
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    dispatch_sync(self->_queue, syncCopy);
  }
}

- (void)_performBlock:(id)block withOptions:(unint64_t)options
{
  optionsCopy = options;
  blockCopy = block;
  v10 = blockCopy;
  if ((optionsCopy & 2) != 0 && (v7 = [(SVXQueuePerformer *)self _isExecutingInContext], blockCopy = v10, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v10[2]();
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    queue = self->_queue;
    if (optionsCopy)
    {
      dispatch_sync(queue, blockCopy);
    }

    else
    {
      dispatch_async(queue, blockCopy);
    }
  }
}

- (id)_initWithIdentifier:(id)identifier queue:(id)queue options:(unint64_t)options
{
  identifierCopy = identifier;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = SVXQueuePerformer;
  v10 = [(SVXQueuePerformer *)&v14 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_queue, queue);
    v10->_options = options;
  }

  return v10;
}

- (void)performBlockSync:(id)sync
{
  if (sync)
  {
    [(SVXQueuePerformer *)self _performBlockSync:sync withOptions:self->_options];
  }
}

- (void)performBlock:(id)block afterGroup:(id)group
{
  block = block;
  groupCopy = group;
  if (block)
  {
    if ((self->_options & 2) != 0 && !dispatch_group_wait(groupCopy, 0))
    {
      [(SVXQueuePerformer *)self _performBlock:block withOptions:self->_options];
    }

    else
    {
      dispatch_group_notify(groupCopy, self->_queue, block);
    }
  }
}

- (void)performBlock:(id)block withOptions:(unint64_t)options
{
  if (block)
  {
    [(SVXQueuePerformer *)self _performBlock:block withOptions:options];
  }
}

- (void)performBlock:(id)block afterDelay:(double)delay
{
  blockCopy = block;
  if (blockCopy)
  {
    block = blockCopy;
    if (delay == 0.0)
    {
      [(SVXQueuePerformer *)self _performBlock:blockCopy withOptions:self->_options];
    }

    else
    {
      v7 = dispatch_time(0, (delay * 1000000000.0));
      dispatch_after(v7, self->_queue, block);
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)performBlock:(id)block
{
  if (block)
  {
    [(SVXQueuePerformer *)self _performBlock:block withOptions:self->_options];
  }
}

- (SVXQueuePerformer)initWithIdentifier:(id)identifier qosClass:(unsigned int)class relativePriority:(int)priority options:(unint64_t)options
{
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  uTF8String = [identifierCopy2 UTF8String];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_attr_make_with_qos_class(v14, class, priority);

  v16 = dispatch_queue_create(uTF8String, v15);
  dispatch_queue_set_specific(v16, SVXQueuePerformerIdentityKey, self, 0);
  v17 = [(SVXQueuePerformer *)self _initWithIdentifier:identifierCopy2 queue:v16 options:options];

  return v17;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v10.receiver = self;
  v10.super_class = SVXQueuePerformer;
  v4 = [(SVXQueuePerformer *)&v10 description];
  queue = self->_queue;
  identifier = self->_identifier;
  v7 = SVXPerformingOptionsGetNames(self->_options);
  v8 = [v3 initWithFormat:@"%@ {identifier = %@, queue = %@, options = (%@)}", v4, identifier, queue, v7];

  return v8;
}

+ (id)sharedMainQueuePerformer
{
  if (sharedMainQueuePerformer_onceToken != -1)
  {
    dispatch_once(&sharedMainQueuePerformer_onceToken, &__block_literal_global_6968);
  }

  v3 = sharedMainQueuePerformer_sharedMainQueuePerformer;

  return v3;
}

uint64_t __45__SVXQueuePerformer_sharedMainQueuePerformer__block_invoke()
{
  v0 = [_SVXMainQueuePerformer alloc];
  sharedMainQueuePerformer_sharedMainQueuePerformer = [(SVXQueuePerformer *)v0 _initWithIdentifier:@"Main Queue Performer" queue:MEMORY[0x277D85CD0] options:0];

  return MEMORY[0x2821F96F8]();
}

@end