@interface SBChainableModifierEventResponse
+ (id)responseByAppendingResponse:(id)response toResponse:(id)toResponse;
- (BOOL)isValid;
- (NSArray)childResponses;
- (id)_initWithChildResponses:(id)responses;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)responseByTransformingResponseWithTransformer:(id)transformer;
- (id)succinctDescription;
- (uint64_t)setConsumed:(uint64_t)result;
- (void)consumeWithReason:(id)reason;
- (void)enumerateChildResponsesUsingBlock:(id)block;
- (void)enumerateResponseTreeUsingBlock:(id)block stop:(BOOL *)stop;
- (void)setChildResponses:(id)responses;
- (void)setDelay:(double)delay withValidator:(id)validator;
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

- (id)_initWithChildResponses:(id)responses
{
  responsesCopy = responses;
  v10.receiver = self;
  v10.super_class = SBChainableModifierEventResponse;
  v5 = [(SBChainableModifierEventResponse *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_delay = 0.0;
    v5->_consumed = 0;
    if (responsesCopy)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:responsesCopy];
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

+ (id)responseByAppendingResponse:(id)response toResponse:(id)toResponse
{
  responseCopy = response;
  toResponseCopy = toResponse;
  v8 = toResponseCopy;
  if (!(responseCopy | toResponseCopy))
  {
    newEventResponse = 0;
    goto LABEL_11;
  }

  if (!responseCopy && toResponseCopy)
  {
    v9 = toResponseCopy;
LABEL_9:
    newEventResponse = v9;
    goto LABEL_11;
  }

  if (responseCopy && !toResponseCopy)
  {
    v9 = responseCopy;
    goto LABEL_9;
  }

  newEventResponse = [self newEventResponse];
  [newEventResponse addChildResponse:v8];
  [newEventResponse addChildResponse:responseCopy];
LABEL_11:

  return newEventResponse;
}

- (void)setChildResponses:(id)responses
{
  v4 = [responses mutableCopy];
  childResponses = self->_childResponses;
  self->_childResponses = v4;
}

- (NSArray)childResponses
{
  v2 = [(NSMutableArray *)self->_childResponses copy];

  return v2;
}

- (id)responseByTransformingResponseWithTransformer:(id)transformer
{
  v20 = *MEMORY[0x277D85DE8];
  transformerCopy = transformer;
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

        v11 = [*(*(&v15 + 1) + 8 * i) responseByTransformingResponseWithTransformer:{transformerCopy, v15}];
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

  v13 = transformerCopy[2](transformerCopy, self);

  return v13;
}

- (void)setDelay:(double)delay withValidator:(id)validator
{
  self->_delay = delay;
  v5 = MEMORY[0x223D6F7F0](validator, a2);
  validator = self->_validator;
  self->_validator = v5;
}

- (void)consumeWithReason:(id)reason
{
  reasonCopy = reason;
  if (self->_consumed)
  {
    [(SBChainableModifierEventResponse *)a2 consumeWithReason:?];
  }

  self->_consumed = 1;
  validator = self->_validator;
  self->_validator = 0;

  loggingCategory = [(SBChainableModifierEventResponse *)self loggingCategory];
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEBUG))
  {
    [(SBChainableModifierEventResponse *)self consumeWithReason:reasonCopy, loggingCategory];
  }
}

- (void)enumerateChildResponsesUsingBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
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
          blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * i), &v14);
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)enumerateResponseTreeUsingBlock:(id)block stop:(BOOL *)stop
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  blockCopy[2](blockCopy, self, stop);
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

        if (!*stop)
        {
          [*(*(&v12 + 1) + 8 * v11) enumerateResponseTreeUsingBlock:blockCopy stop:{stop, v12}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBChainableModifierEventResponse *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBChainableModifierEventResponse *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBChainableModifierEventResponse *)self succinctDescriptionBuilder];
  v6 = [succinctDescriptionBuilder appendBool:self->_consumed withName:@"consumed" ifEqualTo:1];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v7 = [succinctDescriptionBuilder appendFloat:@"delay" withName:self->_delay];
  }

  if ([(NSMutableArray *)self->_childResponses count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__SBChainableModifierEventResponse_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_2783A8ED8;
    v10 = prefixCopy;
    selfCopy = self;
    v12 = succinctDescriptionBuilder;
    [v12 appendBodySectionWithName:0 multilinePrefix:v10 block:v9];
  }

  return succinctDescriptionBuilder;
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