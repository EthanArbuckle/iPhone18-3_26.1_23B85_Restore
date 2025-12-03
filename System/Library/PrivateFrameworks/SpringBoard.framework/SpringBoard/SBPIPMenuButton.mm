@interface SBPIPMenuButton
+ (id)pipMenuButton;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation SBPIPMenuButton

+ (id)pipMenuButton
{
  v2 = [self buttonWithType:1];
  v3 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] buttonFontSize];
  v4 = [v3 systemFontOfSize:? weight:?];
  v5 = [MEMORY[0x277D755D0] configurationWithFont:v4];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.rectangle.on.rectangle" withConfiguration:v5];
  [v2 setImage:v6 forState:0];
  [v2 setShowsMenuAsPrimaryAction:1];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v2 setBackgroundColor:systemGroupedBackgroundColor];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v2 setTintColor:labelColor];

  return v2;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v10.receiver = self;
  v10.super_class = SBPIPMenuButton;
  animatorCopy = animator;
  [(SBPIPMenuButton *)&v10 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animatorCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__SBPIPMenuButton_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  [animatorCopy addAnimations:v9];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v10.receiver = self;
  v10.super_class = SBPIPMenuButton;
  animatorCopy = animator;
  [(SBPIPMenuButton *)&v10 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animatorCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SBPIPMenuButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  [animatorCopy addAnimations:v9];
}

@end