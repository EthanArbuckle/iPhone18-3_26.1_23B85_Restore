@interface WFShortcutInputVariable
- (WFShortcutInputVariable)initWithDictionary:(id)dictionary variableProvider:(id)provider;
- (WFShortcutInputVariable)initWithVariableProvider:(id)provider aggrandizements:(id)aggrandizements;
- (id)icon;
- (id)possibleContentClasses;
- (id)variableProvider;
- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler;
@end

@implementation WFShortcutInputVariable

- (id)variableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_variableProvider);

  return WeakRetained;
}

- (id)possibleContentClasses
{
  v3 = objc_alloc(MEMORY[0x1E695DFB8]);
  variableProvider = [(WFShortcutInputVariable *)self variableProvider];
  workflowInputClasses = [variableProvider workflowInputClasses];
  v6 = [v3 initWithArray:workflowInputClasses];

  return v6;
}

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  clearBackground = [MEMORY[0x1E69E0B48] clearBackground];
  v5 = [v2 initWithSymbolName:@"arrow.down.app.2.stack.3d" symbolColor:v3 background:clearBackground];

  return v5;
}

- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler
{
  handlerCopy = handler;
  workflowInput = [source workflowInput];
  (*(handler + 2))(handlerCopy, workflowInput, 0);
}

- (WFShortcutInputVariable)initWithDictionary:(id)dictionary variableProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = WFShortcutInputVariable;
  v7 = [(WFVariable *)&v11 initWithDictionary:dictionary variableProvider:providerCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_variableProvider, providerCopy);
    v9 = v8;
  }

  return v8;
}

- (WFShortcutInputVariable)initWithVariableProvider:(id)provider aggrandizements:(id)aggrandizements
{
  providerCopy = provider;
  v7 = WFVariableDictionaryWithAggrandizements(aggrandizements);
  v8 = [(WFShortcutInputVariable *)self initWithDictionary:v7 variableProvider:providerCopy];

  return v8;
}

@end