@interface VFInvocationToken
+ (id)tokenWithInvocationBlock:(id)block;
+ (id)tokenWithLabel:(id)label invocationBlock:(id)block;
- (BOOL)isInvoked;
- (NSString)description;
- (VFInvocationToken)initWithInvocationBlock:(id)block;
- (VFInvocationToken)initWithLabel:(id)label;
- (id)_nts_consumeBlocks;
- (void)addInvocable:(id)invocable;
- (void)addInvocationBlock:(id)block;
- (void)invoke;
- (void)removeAllInvocationBlocks;
@end

@implementation VFInvocationToken

+ (id)tokenWithLabel:(id)label invocationBlock:(id)block
{
  blockCopy = block;
  labelCopy = label;
  v8 = [[self alloc] initWithLabel:labelCopy];

  [v8 addInvocationBlock:blockCopy];

  return v8;
}

+ (id)tokenWithInvocationBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithInvocationBlock:blockCopy];

  return v5;
}

- (VFInvocationToken)initWithLabel:(id)label
{
  labelCopy = label;
  v13.receiver = self;
  v13.super_class = VFInvocationToken;
  v5 = [(VFInvocationToken *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blocks = v5->_blocks;
    v5->_blocks = v8;

    v10 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v10;
  }

  return v5;
}

- (VFInvocationToken)initWithInvocationBlock:(id)block
{
  blockCopy = block;
  v5 = [(VFInvocationToken *)self initWithLabel:0];
  v6 = v5;
  if (v5)
  {
    [(VFInvocationToken *)v5 addInvocationBlock:blockCopy];
  }

  return v6;
}

- (NSString)description
{
  label = [(VFInvocationToken *)self label];

  if (label)
  {
    v4 = MEMORY[0x277CCACA8];
    label2 = [(VFInvocationToken *)self label];
    v6 = [v4 stringWithFormat:@" (%@)", label2];
  }

  else
  {
    v6 = &stru_288159858;
  }

  [(NSLock *)self->_lock lock];
  isInvoked = self->_isInvoked;
  v8 = [(NSMutableArray *)self->_blocks count];
  [(NSLock *)self->_lock unlock];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  if (isInvoked)
  {
    v11 = &stru_288159858;
  }

  else
  {
    v11 = @"not ";
  }

  _descriptionString = [objc_opt_class() _descriptionString];
  v13 = [v9 stringWithFormat:@"<%@: %p%@> %@%@ - %lu blocks", v10, self, v6, v11, _descriptionString, v8];

  return v13;
}

- (id)_nts_consumeBlocks
{
  if (self->_isInvoked)
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v2 = self->_blocks;
    blocks = self->_blocks;
    self->_blocks = 0;
  }

  return v2;
}

- (void)removeAllInvocationBlocks
{
  [(NSLock *)self->_lock lock];
  if (!self->_isInvoked)
  {
    [(NSMutableArray *)self->_blocks removeAllObjects];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)invoke
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_lock lock];
  _nts_consumeBlocks = [(VFInvocationToken *)self _nts_consumeBlocks];
  self->_isInvoked = 1;
  [(NSLock *)self->_lock unlock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = _nts_consumeBlocks;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInvoked
{
  [(NSLock *)self->_lock lock];
  isInvoked = self->_isInvoked;
  [(NSLock *)self->_lock unlock];
  return isInvoked;
}

- (void)addInvocationBlock:(id)block
{
  blockCopy = block;
  [(NSLock *)self->_lock lock];
  if (self->_isInvoked)
  {
    [(NSLock *)self->_lock unlock];
    blockCopy[2]();
  }

  else
  {
    blocks = self->_blocks;
    v5 = MEMORY[0x2743C3100](blockCopy);
    [(NSMutableArray *)blocks addObject:v5];

    [(NSLock *)self->_lock unlock];
  }
}

- (void)addInvocable:(id)invocable
{
  invocableCopy = invocable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__VFInvocationToken_addInvocable___block_invoke;
  v6[3] = &unk_279E33588;
  v7 = invocableCopy;
  v5 = invocableCopy;
  [(VFInvocationToken *)self addInvocationBlock:v6];
}

@end