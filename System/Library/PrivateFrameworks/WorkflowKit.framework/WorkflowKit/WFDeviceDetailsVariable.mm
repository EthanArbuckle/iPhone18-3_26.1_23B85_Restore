@interface WFDeviceDetailsVariable
- (WFDeviceDetailsVariable)initWithAggrandizements:(id)aggrandizements;
- (id)icon;
- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler;
@end

@implementation WFDeviceDetailsVariable

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  symbolName = [currentDevice symbolName];
  v5 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  clearBackground = [MEMORY[0x1E69E0B48] clearBackground];
  v7 = [v2 initWithSymbolName:symbolName symbolColor:v5 background:clearBackground];

  return v7;
}

- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = NSClassFromString(&cfstr_Wfdevicedetail.isa);
  if (v5)
  {
    v6 = v5;
    currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
    currentDevice2 = [MEMORY[0x1E69E0A90] currentDevice];
    name = [currentDevice2 name];
    v10 = [(objc_class *)v6 itemWithObject:currentDevice named:name];

    v11 = MEMORY[0x1E6996D40];
    v17[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v13 = [v11 collectionWithItems:v12];
    handlerCopy[2](handlerCopy, v13, 0);

    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v16 = [MEMORY[0x1E6996D40] collectionWithItems:MEMORY[0x1E695E0F0]];
    (handlerCopy[2])(handlerCopy);

    v15 = *MEMORY[0x1E69E9840];
  }
}

- (WFDeviceDetailsVariable)initWithAggrandizements:(id)aggrandizements
{
  v4 = WFVariableDictionaryWithAggrandizements(aggrandizements);
  v5 = [(WFVariable *)self initWithDictionary:v4 variableProvider:0];

  return v5;
}

@end