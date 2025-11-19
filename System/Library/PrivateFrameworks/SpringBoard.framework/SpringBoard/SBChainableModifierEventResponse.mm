@interface SBChainableModifierEventResponse
+ (id)responseByAppendingResponse:(id)a3 toResponse:(id)a4;
- (BOOL)isValid;
- (NSArray)childResponses;
- (id)_initWithChildResponses:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)responseByTransformingResponseWithTransformer:(id)a3;
- (id)succinctDescription;
- (uint64_t)setConsumed:(uint64_t)result;
- (void)consumeWithReason:(id)a3;
- (void)enumerateChildResponsesUsingBlock:(id)a3;
- (void)enumerateResponseTreeUsingBlock:(id)a3 stop:(BOOL *)a4;
- (void)setChildResponses:(id)a3;
- (void)setDelay:(double)a3 withValidator:(id)a4;
@end

@implementation SBChainableModifierEventResponse

- (BOOL)isValid
{
  if (self->_consumed)
  {
    return 0;
  }

  validator = self->_validator;
  if (validator)
  {
    return validator[2]();
  }

  else
  {
    return 1;
  }
}

- (id)_initWithChildResponses:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBChainableModifierEventResponse;
  v5 = [(SBChainableModifierEventResponse *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_delay = 0.0;
    v5->_consumed = 0;
    if (v4)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    childResponses = v6->_childResponses;
    v6->_childResponses = v7;
  }

  return v6;
}

+ (id)responseByAppendingResponse:(id)a3 toResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!(v6 | v7))
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (!v6 && v7)
  {
    v9 = v7;
LABEL_9:
    v10 = v9;
    goto LABEL_11;
  }

  if (v6 && !v7)
  {
    v9 = v6;
    goto LABEL_9;
  }

  v10 = [a1 newEventResponse];
  [v10 addChildResponse:v8];
  [v10 addChildResponse:v6];
LABEL_11:

  return v10;
}

- (void)setChildResponses:(id)a3
{
  v4 = [a3 mutableCopy];
  childResponses = self->_childResponses;
  self->_childResponses = v4;
}

- (NSArray)childResponses
{
  v2 = [(NSMutableArray *)self->_childResponses copy];

  return v2;
}

- (id)responseByTransformingResponseWithTransformer:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_childResponses, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_childResponses;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) responseByTransformingResponseWithTransformer:{v4, v15}];
        if (v11)
        {
          [(NSMutableArray *)v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  childResponses = self->_childResponses;
  self->_childResponses = v5;

  v13 = v4[2](v4, self);

  return v13;
}

- (void)setDelay:(double)a3 withValidator:(id)a4
{
  self->_delay = a3;
  v5 = MEMORY[0x223D6F7F0](a4, a2);
  validator = self->_validator;
  self->_validator = v5;
}

- (void)consumeWithReason:(id)a3
{
  v5 = a3;
  if (self->_consumed)
  {
    [(SBChainableModifierEventResponse *)a2 consumeWithReason:?];
  }

  self->_consumed = 1;
  validator = self->_validator;
  self->_validator = 0;

  v7 = [(SBChainableModifierEventResponse *)self loggingCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SBChainableModifierEventResponse *)self consumeWithReason:v5, v7];
  }
}

- (void)enumerateChildResponsesUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_childResponses;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ((v14 & 1) == 0)
        {
          v4[2](v4, *(*(&v10 + 1) + 8 * i), &v14);
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)enumerateResponseTreeUsingBlock:(id)a3 stop:(BOOL *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v6[2](v6, self, a4);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_childResponses;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!*a4)
        {
          [*(*(&v12 + 1) + 8 * v11) enumerateResponseTreeUsingBlock:v6 stop:{a4, v12}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBChainableModifierEventResponse *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBChainableModifierEventResponse *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifierEventResponse *)self succinctDescriptionBuilder];
  v6 = [v5 appendBool:self->_consumed withName:@"consumed" ifEqualTo:1];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v7 = [v5 appendFloat:@"delay" withName:self->_delay];
  }

  if ([(NSMutableArray *)self->_childResponses count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__SBChainableModifierEventResponse_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_2783A8ED8;
    v10 = v4;
    v11 = self;
    v12 = v5;
    [v12 appendBodySectionWithName:0 multilinePrefix:v10 block:v9];
  }

  return v5;
}

void __74__SBChainableModifierEventResponse_descriptionBuilderWithMultilinePrefix___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 stringByAppendingString:@"\t"];
  }

  else
  {
    v3 = @"\t";
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1[5] + 8);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = a1[6];
        v10 = [*(*(&v12 + 1) + 8 * v8) descriptionWithMultilinePrefix:{v3, v12}];
        v11 = [v9 appendObject:v10 withName:&stru_283094718];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (uint64_t)setConsumed:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (void)consumeWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBChainableModifierEventResponse.m" lineNumber:111 description:@"Can't consume an response that has already been consumed."];
}

- (void)consumeWithReason:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 description];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "Consuming response: %@ for reason: %@", &v6, 0x16u);
}

@end