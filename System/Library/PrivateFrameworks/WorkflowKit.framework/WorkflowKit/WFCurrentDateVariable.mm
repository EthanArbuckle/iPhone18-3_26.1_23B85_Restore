@interface WFCurrentDateVariable
- (WFCurrentDateVariable)initWithAggrandizements:(id)a3;
- (id)icon;
- (id)possibleContentClasses;
- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4;
@end

@implementation WFCurrentDateVariable

- (id)possibleContentClasses
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = objc_opt_class();

  return [v2 orderedSetWithObject:v3];
}

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  v4 = [MEMORY[0x1E69E0B48] clearBackground];
  v5 = [v2 initWithSymbolName:@"calendar" symbolColor:v3 background:v4];

  return v5;
}

- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6996DB8];
  v5 = MEMORY[0x1E695DF00];
  v6 = a4;
  v7 = [v5 date];
  v8 = [v4 itemWithObject:v7];

  v9 = MEMORY[0x1E6996D40];
  v13[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [v9 collectionWithItems:v10];
  v6[2](v6, v11, 0);

  v12 = *MEMORY[0x1E69E9840];
}

- (WFCurrentDateVariable)initWithAggrandizements:(id)a3
{
  v4 = WFVariableDictionaryWithAggrandizements(a3);
  v5 = [(WFVariable *)self initWithDictionary:v4 variableProvider:0];

  return v5;
}

@end