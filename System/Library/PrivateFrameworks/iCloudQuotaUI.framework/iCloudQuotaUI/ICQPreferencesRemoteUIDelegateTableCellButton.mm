@interface ICQPreferencesRemoteUIDelegateTableCellButton
- (ICQPreferencesRemoteUIDelegateTableCellButton)initWithName:(id)name target:(id)target action:(SEL)action;
@end

@implementation ICQPreferencesRemoteUIDelegateTableCellButton

- (ICQPreferencesRemoteUIDelegateTableCellButton)initWithName:(id)name target:(id)target action:(SEL)action
{
  nameCopy = name;
  targetCopy = target;
  v21.receiver = self;
  v21.super_class = ICQPreferencesRemoteUIDelegateTableCellButton;
  v10 = [(ICQPreferencesRemoteUIDelegateTableCellButton *)&v21 initWithFrame:0.0, 0.0, 0.0, 70.0];
  if (v10)
  {
    v11 = [ICQPreferencesRemoteUIDelegateBorderedButton buttonWithType:1];
    button = v10->_button;
    v10->_button = v11;

    [(UIButton *)v10->_button setFrame:0.0, 26.0, 0.0, 44.0];
    [(UIButton *)v10->_button addTarget:targetCopy action:action forControlEvents:64];
    [(UIButton *)v10->_button setTitle:nameCopy forState:0];
    v13 = v10->_button;
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(UIButton *)v13 setTitleColor:systemRedColor forState:0];

    [(UIButton *)v10->_button setAutoresizingMask:2];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v10->_button setBackgroundColor:whiteColor];

    v16 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    titleLabel = [(UIButton *)v10->_button titleLabel];
    [titleLabel setFont:v16];

    titleLabel2 = [(UIButton *)v10->_button titleLabel];
    [titleLabel2 setTextAlignment:1];

    [(ICQPreferencesRemoteUIDelegateTableCellButton *)v10 addSubview:v10->_button];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ICQPreferencesRemoteUIDelegateTableCellButton *)v10 setBackgroundColor:clearColor];

    [(ICQPreferencesRemoteUIDelegateTableCellButton *)v10 setAutoresizingMask:2];
  }

  return v10;
}

@end