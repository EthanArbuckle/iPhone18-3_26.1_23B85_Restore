@interface SBSpringBoardApplicationIconDataSource
- (id)icon:(id)a3 displayNameForLocation:(id)a4;
@end

@implementation SBSpringBoardApplicationIconDataSource

- (id)icon:(id)a3 displayNameForLocation:(id)a4
{
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"COMMAND_TAB_SPRINGBOARD_DISPLAY_NAME" value:&stru_283094718 table:@"SpringBoard"];

  return v5;
}

@end