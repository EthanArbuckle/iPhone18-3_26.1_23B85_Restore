@interface WFSystemContextualAction
- (WFSystemContextualAction)initWithType:(unint64_t)type identifier:(id)identifier displayString:(id)string inputTypes:(id)types;
@end

@implementation WFSystemContextualAction

- (WFSystemContextualAction)initWithType:(unint64_t)type identifier:(id)identifier displayString:(id)string inputTypes:(id)types
{
  v24[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  stringCopy = string;
  typesCopy = types;
  v13 = identifierCopy;
  if (type - 1 > 8)
  {
    v17 = 0;
  }

  else
  {
    v14 = off_1E7B021C8[type - 1];
    v24[0] = @"com.apple.shortcuts.systemContextualAction";
    v24[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v16 = [v15 mutableCopy];

    if (v13)
    {
      [v16 addObject:v13];
    }

    v17 = [v16 componentsJoinedByString:@"."];
  }

  if (typesCopy)
  {
    v18 = [MEMORY[0x1E695DFD8] setWithArray:typesCopy];
    v19 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v18 predicate:0];
  }

  else
  {
    v19 = +[WFContextualActionFilteringBehavior matchAllFiles];
  }

  LOBYTE(v23) = (type > 9) | (4u >> type) & 1;
  v20 = [(WFContextualAction *)self initWithIdentifier:v17 wfActionIdentifier:0 type:0 correspondingSystemActionType:type associatedAppBundleIdentifier:0 resultFileOperation:1 alternate:v23 filteringBehavior:v19 parameters:0 displayString:stringCopy title:stringCopy subtitle:0 icon:0];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end