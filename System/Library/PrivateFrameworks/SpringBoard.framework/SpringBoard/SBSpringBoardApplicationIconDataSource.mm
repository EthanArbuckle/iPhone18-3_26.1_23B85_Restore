@interface SBSpringBoardApplicationIconDataSource
- (id)icon:(id)icon displayNameForLocation:(id)location;
@end

@implementation SBSpringBoardApplicationIconDataSource

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"COMMAND_TAB_SPRINGBOARD_DISPLAY_NAME" value:&stru_283094718 table:@"SpringBoard"];

  return v5;
}

@end