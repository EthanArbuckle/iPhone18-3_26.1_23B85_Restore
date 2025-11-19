@interface ICQPreferencesRemoteUIDelegateTableCellButton
- (ICQPreferencesRemoteUIDelegateTableCellButton)initWithName:(id)a3 target:(id)a4 action:(SEL)a5;
@end

@implementation ICQPreferencesRemoteUIDelegateTableCellButton

- (ICQPreferencesRemoteUIDelegateTableCellButton)initWithName:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = ICQPreferencesRemoteUIDelegateTableCellButton;
  v10 = [(ICQPreferencesRemoteUIDelegateTableCellButton *)&v21 initWithFrame:0.0, 0.0, 0.0, 70.0];
  if (v10)
  {
    v11 = [ICQPreferencesRemoteUIDelegateBorderedButton buttonWithType:1];
    button = v10->_button;
    v10->_button = v11;

    [(UIButton *)v10->_button setFrame:0.0, 26.0, 0.0, 44.0];
    [(UIButton *)v10->_button addTarget:v9 action:a5 forControlEvents:64];
    [(UIButton *)v10->_button setTitle:v8 forState:0];
    v13 = v10->_button;
    v14 = [MEMORY[0x277D75348] systemRedColor];
    [(UIButton *)v13 setTitleColor:v14 forState:0];

    [(UIButton *)v10->_button setAutoresizingMask:2];
    v15 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v10->_button setBackgroundColor:v15];

    v16 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    v17 = [(UIButton *)v10->_button titleLabel];
    [v17 setFont:v16];

    v18 = [(UIButton *)v10->_button titleLabel];
    [v18 setTextAlignment:1];

    [(ICQPreferencesRemoteUIDelegateTableCellButton *)v10 addSubview:v10->_button];
    v19 = [MEMORY[0x277D75348] clearColor];
    [(ICQPreferencesRemoteUIDelegateTableCellButton *)v10 setBackgroundColor:v19];

    [(ICQPreferencesRemoteUIDelegateTableCellButton *)v10 setAutoresizingMask:2];
  }

  return v10;
}

@end