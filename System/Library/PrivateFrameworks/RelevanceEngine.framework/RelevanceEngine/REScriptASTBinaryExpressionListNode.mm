@interface REScriptASTBinaryExpressionListNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (REScriptASTBinaryExpressionListNode)initWithExpressions:(id)a3;
- (id)dependencies;
@end

@implementation REScriptASTBinaryExpressionListNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  [v5 push];
  v7 = [REScriptASTBinaryExpressionNode parseBuffer:v5 error:a4];
  if (v7)
  {
    v8 = v7;
    do
    {
      [v6 addObject:v8];
      [v5 consume];

      [v5 push];
      v8 = [REScriptASTBinaryExpressionNode parseBuffer:v5 error:a4];
    }

    while (v8);
  }

  [v5 pop];
  if ([v6 count] < 2)
  {
    v9 = [v6 firstObject];
  }

  else
  {
    v9 = [[REScriptASTBinaryExpressionListNode alloc] initWithExpressions:v6];
  }

  v10 = v9;

  return v10;
}

- (REScriptASTBinaryExpressionListNode)initWithExpressions:(id)a3
{
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = [v6 token];
  v10.receiver = self;
  v10.super_class = REScriptASTBinaryExpressionListNode;
  v8 = [(REScriptASTNode *)&v10 initWithToken:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_expressions, a3);
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

        v9 = [*(*(&v13 + 1) + 8 * i) dependencies];
        [v3 unionSet:v9];
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