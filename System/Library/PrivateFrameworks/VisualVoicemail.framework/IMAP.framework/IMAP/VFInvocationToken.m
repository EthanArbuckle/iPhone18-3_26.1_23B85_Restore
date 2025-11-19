@interface VFInvocationToken
+ (id)tokenWithInvocationBlock:(id)a3;
+ (id)tokenWithLabel:(id)a3 invocationBlock:(id)a4;
- (BOOL)isInvoked;
- (NSString)description;
- (VFInvocationToken)initWithInvocationBlock:(id)a3;
- (VFInvocationToken)initWithLabel:(id)a3;
- (id)_nts_consumeBlocks;
- (void)addInvocable:(id)a3;
- (void)addInvocationBlock:(id)a3;
- (void)invoke;
- (void)removeAllInvocationBlocks;
@end

@implementation VFInvocationToken

+ (id)tokenWithLabel:(id)a3 invocationBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithLabel:v7];

  [v8 addInvocationBlock:v6];

  return v8;
}

+ (id)tokenWithInvocationBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithInvocationBlock:v4];

  return v5;
}

- (VFInvocationToken)initWithLabel:(id)a3
{
  v4 = a3;
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

    v10 = [v4 copy];
    label = v5->_label;
    v5->_label = v10;
  }

  return v5;
}

- (VFInvocationToken)initWithInvocationBlock:(id)a3
{
  v4 = a3;
  v5 = [(VFInvocationToken *)self initWithLabel:0];
  v6 = v5;
  if (v5)
  {
    [(VFInvocationToken *)v5 addInvocationBlock:v4];
  }

  return v6;
}

- (NSString)description
{
  v3 = [(VFInvocationToken *)self label];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(VFInvocationToken *)self label];
    v6 = [v4 stringWithFormat:@" (%@)", v5];
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

  v12 = [objc_opt_class() _descriptionString];
  v13 = [v9 stringWithFormat:@"<%@: %p%@> %@%@ - %lu blocks", v10, self, v6, v11, v12, v8];

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
  v3 = [(VFInvocationToken *)self _nts_consumeBlocks];
  self->_isInvoked = 1;
  [(NSLock *)self->_lock unlock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
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

- (void)addInvocationBlock:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_isInvoked)
  {
    [(NSLock *)self->_lock unlock];
    v6[2]();
  }

  else
  {
    blocks = self->_blocks;
    v5 = MEMORY[0x2743C3100](v6);
    [(NSMutableArray *)blocks addObject:v5];

    [(NSLock *)self->_lock unlock];
  }
}

- (void)addInvocable:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__VFInvocationToken_addInvocable___block_invoke;
  v6[3] = &unk_279E33588;
  v7 = v4;
  v5 = v4;
  [(VFInvocationToken *)self addInvocationBlock:v6];
}

@end