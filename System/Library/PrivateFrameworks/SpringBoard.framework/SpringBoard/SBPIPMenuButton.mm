@interface SBPIPMenuButton
+ (id)pipMenuButton;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation SBPIPMenuButton

+ (id)pipMenuButton
{
  v2 = [a1 buttonWithType:1];
  v3 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] buttonFontSize];
  v4 = [v3 systemFontOfSize:? weight:?];
  v5 = [MEMORY[0x277D755D0] configurationWithFont:v4];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.rectangle.on.rectangle" withConfiguration:v5];
  [v2 setImage:v6 forState:0];
  [v2 setShowsMenuAsPrimaryAction:1];
  v7 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v2 setBackgroundColor:v7];

  v8 = [MEMORY[0x277D75348] labelColor];
  [v2 setTintColor:v8];

  return v2;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v10.receiver = self;
  v10.super_class = SBPIPMenuButton;
  v8 = a5;
  [(SBPIPMenuButton *)&v10 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:v8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__SBPIPMenuButton_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  [v8 addAnimations:v9];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v10.receiver = self;
  v10.super_class = SBPIPMenuButton;
  v8 = a5;
  [(SBPIPMenuButton *)&v10 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:v8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SBPIPMenuButton_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  v9[3] = &unk_2783A8C18;
  v9[4] = self;
  [v8 addAnimations:v9];
}

@end