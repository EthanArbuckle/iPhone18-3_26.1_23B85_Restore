@interface WFClipboardVariable
- (BOOL)requiresModernVariableSupport;
- (WFClipboardVariable)initWithAggrandizements:(id)a3;
- (id)icon;
- (id)possibleContentClasses;
- (id)requiredAccessResources;
- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4;
@end

@implementation WFClipboardVariable

- (id)requiredAccessResources
{
  v2 = [(objc_class *)getUIPasteboardClass_64408() generalPasteboard];
  v3 = [MEMORY[0x1E6996D40] requiredResourcesForContentInPasteboard:v2];

  return v3;
}

- (id)possibleContentClasses
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = objc_opt_class();

  return [v2 orderedSetWithObject:v3];
}

- (BOOL)requiresModernVariableSupport
{
  v2 = [(WFVariable *)self aggrandizements];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  v4 = [MEMORY[0x1E69E0B48] clearBackground];
  v5 = [v2 initWithSymbolName:@"clipboard" symbolColor:v3 background:v4];

  return v5;
}

- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4
{
  v4 = getUIPasteboardClass_64408;
  v5 = a4;
  v6 = [v4() generalPasteboard];
  [MEMORY[0x1E6996D40] generateCollectionFromPasteboard:v6 completionHandler:v5];
}

- (WFClipboardVariable)initWithAggrandizements:(id)a3
{
  v4 = WFVariableDictionaryWithAggrandizements(a3);
  v5 = [(WFVariable *)self initWithDictionary:v4 variableProvider:0];

  return v5;
}

@end