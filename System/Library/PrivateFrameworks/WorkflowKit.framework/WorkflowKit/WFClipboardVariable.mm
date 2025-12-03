@interface WFClipboardVariable
- (BOOL)requiresModernVariableSupport;
- (WFClipboardVariable)initWithAggrandizements:(id)aggrandizements;
- (id)icon;
- (id)possibleContentClasses;
- (id)requiredAccessResources;
- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler;
@end

@implementation WFClipboardVariable

- (id)requiredAccessResources
{
  generalPasteboard = [(objc_class *)getUIPasteboardClass_64408() generalPasteboard];
  v3 = [MEMORY[0x1E6996D40] requiredResourcesForContentInPasteboard:generalPasteboard];

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
  aggrandizements = [(WFVariable *)self aggrandizements];
  v3 = [aggrandizements count] != 0;

  return v3;
}

- (id)icon
{
  v2 = objc_alloc(MEMORY[0x1E69E0D70]);
  v3 = [MEMORY[0x1E69E09E0] colorWithSystemColor:1];
  clearBackground = [MEMORY[0x1E69E0B48] clearBackground];
  v5 = [v2 initWithSymbolName:@"clipboard" symbolColor:v3 background:clearBackground];

  return v5;
}

- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler
{
  v4 = getUIPasteboardClass_64408;
  handlerCopy = handler;
  generalPasteboard = [v4() generalPasteboard];
  [MEMORY[0x1E6996D40] generateCollectionFromPasteboard:generalPasteboard completionHandler:handlerCopy];
}

- (WFClipboardVariable)initWithAggrandizements:(id)aggrandizements
{
  v4 = WFVariableDictionaryWithAggrandizements(aggrandizements);
  v5 = [(WFVariable *)self initWithDictionary:v4 variableProvider:0];

  return v5;
}

@end