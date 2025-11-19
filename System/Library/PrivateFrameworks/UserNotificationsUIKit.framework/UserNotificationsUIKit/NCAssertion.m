@interface NCAssertion
- (NCAssertion)initWithInstantiationReason:(id)a3;
- (NSString)description;
- (void)addInvalidationBlock:(id)a3;
- (void)dealloc;
- (void)invalidateWithReason:(id)a3;
@end

@implementation NCAssertion

- (NCAssertion)initWithInstantiationReason:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NCAssertion;
  v5 = [(NCAssertion *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_valid = 1;
    v7 = [v4 copy];
    instantiationReason = v6->_instantiationReason;
    v6->_instantiationReason = v7;
  }

  return v6;
}

- (void)dealloc
{
  if ([(NCAssertion *)self isValid])
  {
    [(NCAssertion *)self invalidateWithReason:@"deallocation"];
  }

  v3.receiver = self;
  v3.super_class = NCAssertion;
  [(NCAssertion *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; instantiationReason: %@", self->_instantiationReason];
  v4 = [(NCAssertion *)self isValid];
  v5 = NSStringFromBOOL();
  [v3 appendFormat:@"; isValid: %@", v5];

  if (!v4 && self->_invalidationReason)
  {
    [v3 appendFormat:@"; invalidationReason: %@", self->_invalidationReason];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)addInvalidationBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    aBlock = v4;
    v5 = self;
    objc_sync_enter(v5);
    invalidationBlocks = v5->_invalidationBlocks;
    if (!invalidationBlocks)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
      v8 = v5->_invalidationBlocks;
      v5->_invalidationBlocks = v7;

      invalidationBlocks = v5->_invalidationBlocks;
    }

    v9 = _Block_copy(aBlock);
    [(NSMutableOrderedSet *)invalidationBlocks addObject:v9];

    objc_sync_exit(v5);
    v4 = aBlock;
  }
}

- (void)invalidateWithReason:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NCAssertion *)self isValid])
  {
    v5 = self;
    objc_sync_enter(v5);
    v5->_valid = 0;
    v6 = [v4 copy];
    invalidationReason = v5->_invalidationReason;
    v5->_invalidationReason = v6;

    v8 = *MEMORY[0x277D77DF0];
    if (os_log_type_enabled(*MEMORY[0x277D77DF0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Assertion did invalidate: %{public}@", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v5->_invalidationBlocks;
    v10 = [(NSMutableOrderedSet *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v15 + 1) + 8 * v12) + 16))(*(*(&v15 + 1) + 8 * v12));
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableOrderedSet *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    invalidationBlocks = v5->_invalidationBlocks;
    v5->_invalidationBlocks = 0;

    objc_sync_exit(v5);
  }

  else
  {
    v14 = *MEMORY[0x277D77DF0];
    if (os_log_type_enabled(*MEMORY[0x277D77DF0], OS_LOG_TYPE_ERROR))
    {
      [(NCAssertion *)self invalidateWithReason:v14];
    }
  }
}

- (void)invalidateWithReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21E77E000, a2, OS_LOG_TYPE_ERROR, "Attempt to invalidate invalid assertion: %{public}@", &v2, 0xCu);
}

@end