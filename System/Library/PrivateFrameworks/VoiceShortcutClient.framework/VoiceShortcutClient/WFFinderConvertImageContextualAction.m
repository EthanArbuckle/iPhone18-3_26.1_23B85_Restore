@interface WFFinderConvertImageContextualAction
- (WFFinderConvertImageContextualAction)init;
@end

@implementation WFFinderConvertImageContextualAction

- (WFFinderConvertImageContextualAction)init
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = WFLocalizedString(@"Convert Image");
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6982E30]];
  v5 = [WFContextualActionFilteringBehavior filteringWithMatchingTypes:v4 predicate:0];

  v6 = [[WFContextualActionParameter alloc] initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"WFSize" askEachTime:1];
  v14[0] = v6;
  v7 = [[WFContextualActionParameter alloc] initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"WFFileFormat" askEachTime:1];
  v14[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v9 = [WFContextualActionIcon iconWithSystemName:@"photo.on.rectangle.angled"];
  LOBYTE(v13) = 0;
  v10 = [(WFContextualAction *)self initWithIdentifier:@"is.workflow.actions.image.convert.finder" wfActionIdentifier:@"is.workflow.actions.image.convert.finder" type:0 correspondingSystemActionType:9 associatedAppBundleIdentifier:@"com.apple.mobileslideshow" resultFileOperation:1 alternate:v13 filteringBehavior:v5 parameters:v8 displayString:v3 title:v3 subtitle:0 icon:v9, v14[0]];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end