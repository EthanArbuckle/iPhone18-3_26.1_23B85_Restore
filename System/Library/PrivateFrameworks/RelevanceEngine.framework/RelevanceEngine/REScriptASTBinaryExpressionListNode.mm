@interface REScriptASTBinaryExpressionListNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTBinaryExpressionListNode)initWithExpressions:(id)expressions;
- (id)dependencies;
@end

@implementation REScriptASTBinaryExpressionListNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  array = [MEMORY[0x277CBEB18] array];
  [bufferCopy push];
  v7 = [REScriptASTBinaryExpressionNode parseBuffer:bufferCopy error:error];
  if (v7)
  {
    v8 = v7;
    do
    {
      [array addObject:v8];
      [bufferCopy consume];

      [bufferCopy push];
      v8 = [REScriptASTBinaryExpressionNode parseBuffer:bufferCopy error:error];
    }

    while (v8);
  }

  [bufferCopy pop];
  if ([array count] < 2)
  {
    firstObject = [array firstObject];
  }

  else
  {
    firstObject = [[REScriptASTBinaryExpressionListNode alloc] initWithExpressions:array];
  }

  v10 = firstObject;

  return v10;
}

- (REScriptASTBinaryExpressionListNode)initWithExpressions:(id)expressions
{
  expressionsCopy = expressions;
  firstObject = [expressionsCopy firstObject];
  token = [firstObject token];
  v10.receiver = self;
  v10.super_class = REScriptASTBinaryExpressionListNode;
  v8 = [(REScriptASTNode *)&v10 initWithToken:token];

  if (v8)
  {
    objc_storeStrong(&v8->_expressions, expressions);
  }

  return v8;
}

- (id)dependencies
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_expressions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dependencies = [*(*(&v13 + 1) + 8 * i) dependencies];
        [v3 unionSet:dependencies];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end