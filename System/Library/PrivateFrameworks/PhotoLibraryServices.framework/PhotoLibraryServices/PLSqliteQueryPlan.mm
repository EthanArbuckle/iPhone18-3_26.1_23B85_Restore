@interface PLSqliteQueryPlan
- (NSString)graphDescription;
- (NSString)listDescription;
- (PLSqliteQueryPlan)init;
- (id)_stringRepresentationRegex;
- (void)_renderLevelWithParentIdentifier:(int)a3 prefix:(id)a4 intoLines:(id)a5;
- (void)addNodeWithIdentifier:(int)a3 parentIdentifier:(int)a4 unused:(int)a5 nodeDescription:(id)a6;
- (void)addNodeWithStringRepresentation:(id)a3;
@end

@implementation PLSqliteQueryPlan

- (void)_renderLevelWithParentIdentifier:(int)a3 prefix:(id)a4 intoLines:(id)a5
{
  v8 = a4;
  v9 = a5;
  nodes = self->_nodes;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__PLSqliteQueryPlan__renderLevelWithParentIdentifier_prefix_intoLines___block_invoke;
  v20[3] = &__block_descriptor_36_e31_B16__0__PLSqliteQueryPlanNode_8l;
  v21 = a3;
  v11 = [(NSMutableArray *)nodes _pl_filter:v20];
  v12 = [v11 count];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__PLSqliteQueryPlan__renderLevelWithParentIdentifier_prefix_intoLines___block_invoke_2;
  v15[3] = &unk_1E756D230;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v12;
  v13 = v9;
  v14 = v8;
  [v11 enumerateObjectsUsingBlock:v15];
}

void __71__PLSqliteQueryPlan__renderLevelWithParentIdentifier_prefix_intoLines___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 56) - 1;
  v6 = MEMORY[0x1E696AEC0];
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v8 nodeDescription];
  v10 = v9;
  if (v5 <= a3)
  {
  }

  else
  {
    v11 = @"|--";
  }

  if (v5 <= a3)
  {
    v12 = @"   ";
  }

  else
  {
    v12 = @"|  ";
  }

  v16 = [v6 stringWithFormat:@"%@%@%@", v7, v11, v9];

  [*(a1 + 40) addObject:v16];
  v13 = [*(a1 + 32) stringByAppendingString:v12];
  v14 = *(a1 + 48);
  v15 = [v8 identifier];

  [v14 _renderLevelWithParentIdentifier:v15 prefix:v13 intoLines:*(a1 + 40)];
}

- (NSString)graphDescription
{
  v2 = pl_result_with_autoreleasepool();

  return v2;
}

id __37__PLSqliteQueryPlan_graphDescription__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  [*(a1 + 32) _renderLevelWithParentIdentifier:0 prefix:&stru_1F0F06D80 intoLines:v2];
  v3 = [v2 componentsJoinedByString:@"\n"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)listDescription
{
  v2 = pl_result_with_autoreleasepool();

  return v2;
}

id __36__PLSqliteQueryPlan_listDescription__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(*(a1 + 32) + 8);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = MEMORY[0x1E696AEC0];
        v9 = [v7 identifier];
        v10 = [v7 parentIdentifier];
        v11 = [v7 unused];
        v12 = [v7 nodeDescription];
        v13 = [v8 stringWithFormat:@"%d|%d|%d|%@", v9, v10, v11, v12];

        [v2 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v14 = [v2 componentsJoinedByString:@"\n"];
  v15 = [v14 copy];

  return v15;
}

- (id)_stringRepresentationRegex
{
  stringRepresentationRegex = self->_stringRepresentationRegex;
  if (!stringRepresentationRegex)
  {
    v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\s*(\\d+)[ |\\|](\\d+)[ |\\|](\\d+)[ |\\|](.*)$" options:0 error:0];
    v5 = self->_stringRepresentationRegex;
    self->_stringRepresentationRegex = v4;

    stringRepresentationRegex = self->_stringRepresentationRegex;
  }

  return stringRepresentationRegex;
}

- (void)addNodeWithStringRepresentation:(id)a3
{
  v23 = a3;
  v4 = [(PLSqliteQueryPlan *)self _stringRepresentationRegex];
  v5 = [v4 firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 rangeAtIndex:1];
    if (v8)
    {
      v9 = [v23 substringWithRange:{v7, v8}];
      v10 = [v9 intValue];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 rangeAtIndex:2];
    if (v12)
    {
      v13 = [v23 substringWithRange:{v11, v12}];
      v14 = [v13 intValue];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v6 rangeAtIndex:3];
    if (v16)
    {
      v17 = [v23 substringWithRange:{v15, v16}];
      v18 = [v17 intValue];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v6 rangeAtIndex:4];
    if (v20)
    {
      v21 = [v23 substringWithRange:{v19, v20}];
      v22 = [v21 copy];
    }

    else
    {
      v22 = &stru_1F0F06D80;
    }

    [(PLSqliteQueryPlan *)self addNodeWithIdentifier:v10 parentIdentifier:v14 unused:v18 nodeDescription:v22];
  }
}

- (void)addNodeWithIdentifier:(int)a3 parentIdentifier:(int)a4 unused:(int)a5 nodeDescription:(id)a6
{
  v6 = *&a5;
  v7 = *&a4;
  v8 = *&a3;
  v10 = a6;
  v11 = [[PLSqliteQueryPlanNode alloc] initWithIdentifier:v8 parentIdentifier:v7 unused:v6 nodeDescription:v10];

  [(NSMutableArray *)self->_nodes addObject:v11];
}

- (PLSqliteQueryPlan)init
{
  v7.receiver = self;
  v7.super_class = PLSqliteQueryPlan;
  v2 = [(PLSqliteQueryPlan *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    nodes = v2->_nodes;
    v2->_nodes = v3;

    v5 = v2;
  }

  return v2;
}

@end