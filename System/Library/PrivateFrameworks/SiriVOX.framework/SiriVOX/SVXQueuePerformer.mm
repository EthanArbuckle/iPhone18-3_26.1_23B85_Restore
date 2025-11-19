@interface SVXQueuePerformer
+ (id)sharedMainQueuePerformer;
- (NSString)description;
- (SVXQueuePerformer)initWithIdentifier:(id)a3 qosClass:(unsigned int)a4 relativePriority:(int)a5 options:(unint64_t)a6;
- (id)_initWithIdentifier:(id)a3 queue:(id)a4 options:(unint64_t)a5;
- (void)_performBlock:(id)a3 withOptions:(unint64_t)a4;
- (void)_performBlockSync:(id)a3 withOptions:(unint64_t)a4;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 afterDelay:(double)a4;
- (void)performBlock:(id)a3 afterGroup:(id)a4;
- (void)performBlock:(id)a3 withOptions:(unint64_t)a4;
- (void)performBlockSync:(id)a3;
@end

@implementation SVXQueuePerformer

- (void)_performBlockSync:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v9 = v6;
  if ((v4 & 2) != 0 && (v7 = [(SVXQueuePerformer *)self _isExecutingInContext], v6 = v9, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v9[2]();
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    dispatch_sync(self->_queue, v6);
  }
}

- (void)_performBlock:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v10 = v6;
  if ((v4 & 2) != 0 && (v7 = [(SVXQueuePerformer *)self _isExecutingInContext], v6 = v10, v7))
  {
    v8 = objc_autoreleasePoolPush();
    v10[2]();
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    queue = self->_queue;
    if (v4)
    {
      dispatch_sync(queue, v6);
    }

    else
    {
      dispatch_async(queue, v6);
    }
  }
}

- (id)_initWithIdentifier:(id)a3 queue:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SVXQueuePerformer;
  v10 = [(SVXQueuePerformer *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_queue, a4);
    v10->_options = a5;
  }

  return v10;
}

- (void)performBlockSync:(id)a3
{
  if (a3)
  {
    [(SVXQueuePerformer *)self _performBlockSync:a3 withOptions:self->_options];
  }
}

- (void)performBlock:(id)a3 afterGroup:(id)a4
{
  block = a3;
  v6 = a4;
  if (block)
  {
    if ((self->_options & 2) != 0 && !dispatch_group_wait(v6, 0))
    {
      [(SVXQueuePerformer *)self _performBlock:block withOptions:self->_options];
    }

    else
    {
      dispatch_group_notify(v6, self->_queue, block);
    }
  }
}

- (void)performBlock:(id)a3 withOptions:(unint64_t)a4
{
  if (a3)
  {
    [(SVXQueuePerformer *)self _performBlock:a3 withOptions:a4];
  }
}

- (void)performBlock:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  if (v6)
  {
    block = v6;
    if (a4 == 0.0)
    {
      [(SVXQueuePerformer *)self _performBlock:v6 withOptions:self->_options];
    }

    else
    {
      v7 = dispatch_time(0, (a4 * 1000000000.0));
      dispatch_after(v7, self->_queue, block);
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)performBlock:(id)a3
{
  if (a3)
  {
    [(SVXQueuePerformer *)self _performBlock:a3 withOptions:self->_options];
  }
}

- (SVXQueuePerformer)initWithIdentifier:(id)a3 qosClass:(unsigned int)a4 relativePriority:(int)a5 options:(unint64_t)a6
{
  v11 = a3;
  v12 = a3;
  v13 = [v12 UTF8String];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_attr_make_with_qos_class(v14, a4, a5);

  v16 = dispatch_queue_create(v13, v15);
  dispatch_queue_set_specific(v16, SVXQueuePerformerIdentityKey, self, 0);
  v17 = [(SVXQueuePerformer *)self _initWithIdentifier:v12 queue:v16 options:a6];

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