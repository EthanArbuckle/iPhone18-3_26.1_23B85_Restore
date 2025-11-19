@interface WFShortcutInputVariable
- (WFShortcutInputVariable)initWithDictionary:(id)a3 variableProvider:(id)a4;
- (WFShortcutInputVariable)initWithVariableProvider:(id)a3 aggrandizements:(id)a4;
- (id)icon;
- (id)possibleContentClasses;
- (id)variableProvider;
- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4;
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
  v4 = [(WFShortcutInputVariable *)self variableProvider];
  v5 = [v4 workflowInputClasses];
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  v4 = [MEMORY[0x1E69E0B48] clearBackground];
  v5 = [v2 initWithSymbolName:@"arrow.down.app.2.stack.3d" symbolColor:v3 background:v4];

  return v5;
}

- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 workflowInput];
  (*(a4 + 2))(v6, v7, 0);
}

- (WFShortcutInputVariable)initWithDictionary:(id)a3 variableProvider:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = WFShortcutInputVariable;
  v7 = [(WFVariable *)&v11 initWithDictionary:a3 variableProvider:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_variableProvider, v6);
    v9 = v8;
  }

  return v8;
}

- (WFShortcutInputVariable)initWithVariableProvider:(id)a3 aggrandizements:(id)a4
{
  v6 = a3;
  v7 = WFVariableDictionaryWithAggrandizements(a4);
  v8 = [(WFShortcutInputVariable *)self initWithDictionary:v7 variableProvider:v6];

  return v8;
}

@end