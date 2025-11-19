@interface WFDeviceDetailsVariable
- (WFDeviceDetailsVariable)initWithAggrandizements:(id)a3;
- (id)icon;
- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4;
@end

@implementation WFDeviceDetailsVariable

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E0A90] currentDevice];
  v4 = [v3 symbolName];
  v5 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  v6 = [MEMORY[0x1E69E0B48] clearBackground];
  v7 = [v2 initWithSymbolName:v4 symbolColor:v5 background:v6];

  return v7;
}

- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = NSClassFromString(&cfstr_Wfdevicedetail.isa);
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E69E0A90] currentDevice];
    v8 = [MEMORY[0x1E69E0A90] currentDevice];
    v9 = [v8 name];
    v10 = [(objc_class *)v6 itemWithObject:v7 named:v9];

    v11 = MEMORY[0x1E6996D40];
    v17[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [v11 collectionWithItems:v12];
    v4[2](v4, v13, 0);

    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v16 = [MEMORY[0x1E6996D40] collectionWithItems:MEMORY[0x1E695E0F0]];
    (v4[2])(v4);

    v15 = *MEMORY[0x1E69E9840];
  }
}

- (WFDeviceDetailsVariable)initWithAggrandizements:(id)a3
{
  v4 = WFVariableDictionaryWithAggrandizements(a3);
  v5 = [(WFVariable *)self initWithDictionary:v4 variableProvider:0];

  return v5;
}

@end