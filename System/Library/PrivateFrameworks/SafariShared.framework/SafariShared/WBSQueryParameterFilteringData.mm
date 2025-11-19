@interface WBSQueryParameterFilteringData
- (WBSQueryParameterFilteringData)init;
- (int64_t)numberOfFilteredQueryParameters;
- (void)addAdjustedURL:(id)a3 originalURL:(id)a4;
- (void)addData:(id)a3;
@end

@implementation WBSQueryParameterFilteringData

- (WBSQueryParameterFilteringData)init
{
  v7.receiver = self;
  v7.super_class = WBSQueryParameterFilteringData;
  v2 = [(WBSQueryParameterFilteringData *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA0] orderedSet];
    originalAndAdjustedURLs = v2->_originalAndAdjustedURLs;
    v2->_originalAndAdjustedURLs = v3;

    v5 = v2;
  }

  return v2;
}

- (void)addAdjustedURL:(id)a3 originalURL:(id)a4
{
  originalAndAdjustedURLs = self->_originalAndAdjustedURLs;
  v6 = MEMORY[0x1E69C88F0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithFirst:v7 second:v8];

  [(NSMutableOrderedSet *)originalAndAdjustedURLs addObject:v9];
}

- (void)addData:(id)a3
{
  originalAndAdjustedURLs = self->_originalAndAdjustedURLs;
  v4 = [*(a3 + 1) array];
  [(NSMutableOrderedSet *)originalAndAdjustedURLs addObjectsFromArray:v4];
}

- (int64_t)numberOfFilteredQueryParameters
{
  v3 = [MEMORY[0x1E695DFA8] set];
  originalAndAdjustedURLs = self->_originalAndAdjustedURLs;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__WBSQueryParameterFilteringData_numberOfFilteredQueryParameters__block_invoke;
  v8[3] = &unk_1E7FC9A00;
  v9 = v3;
  v5 = v3;
  [(NSMutableOrderedSet *)originalAndAdjustedURLs enumerateObjectsUsingBlock:v8];
  v6 = [v5 count];

  return v6;
}

void __65__WBSQueryParameterFilteringData_numberOfFilteredQueryParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = [v3 first];
  v4 = [v3 second];

  v5 = [MEMORY[0x1E696AF20] componentsWithURL:v15 resolvingAgainstBaseURL:0];
  v6 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:0];
  v7 = MEMORY[0x1E695DFA8];
  v8 = [v5 queryItems];
  v9 = [v8 valueForKey:@"name"];
  v10 = [v7 setWithArray:v9];

  v11 = MEMORY[0x1E695DFD8];
  v12 = [v6 queryItems];
  v13 = [v12 valueForKey:@"name"];
  v14 = [v11 setWithArray:v13];
  [v10 minusSet:v14];

  [*(a1 + 32) unionSet:v10];
}

@end