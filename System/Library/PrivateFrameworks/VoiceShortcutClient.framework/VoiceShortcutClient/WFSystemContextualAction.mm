@interface WFSystemContextualAction
- (WFSystemContextualAction)initWithType:(unint64_t)a3 identifier:(id)a4 displayString:(id)a5 inputTypes:(id)a6;
@end

@implementation WFSystemContextualAction

- (WFSystemContextualAction)initWithType:(unint64_t)a3 identifier:(id)a4 displayString:(id)a5 inputTypes:(id)a6
{
  v24[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  if (a3 - 1 > 8)
  {
    v17 = 0;
  }

  else
  {
    v14 = off_1E7B021C8[a3 - 1];
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

  if (v12)
  {
    v18 = [MEMORY[0x1E695DFD8] setWithArray:v12];
    v19 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v18 predicate:0];
  }

  else
  {
    v19 = +[WFContextualActionFilteringBehavior matchAllFiles];
  }

  LOBYTE(v23) = (a3 > 9) | (4u >> a3) & 1;
  v20 = [(WFContextualAction *)self initWithIdentifier:v17 wfActionIdentifier:0 type:0 correspondingSystemActionType:a3 associatedAppBundleIdentifier:0 resultFileOperation:1 alternate:v23 filteringBehavior:v19 parameters:0 displayString:v11 title:v11 subtitle:0 icon:0];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end