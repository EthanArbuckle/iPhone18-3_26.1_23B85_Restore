@interface ICQBackupDeleteButton
- (ICQBackupDeleteButton)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (void)layoutSubviews;
@end

@implementation ICQBackupDeleteButton

- (ICQBackupDeleteButton)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v25.receiver = self;
  v25.super_class = ICQBackupDeleteButton;
  v5 = [(ICQBackupDeleteButton *)&v25 init];
  if (v5)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ICQBackupDeleteButton *)v5 setBackgroundColor:clearColor];

    v7 = [MEMORY[0x277D75220] buttonWithType:0];
    deleteButton = v5->_deleteButton;
    v5->_deleteButton = v7;

    titleLabel = [(UIButton *)v5->_deleteButton titleLabel];
    [titleLabel setTextAlignment:1];

    v10 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesDeleteButtonNormal.png"];
    [v10 size];
    *&v11 = (v11 + -1.0) * 0.5;
    v12 = v5->_deleteButton;
    v13 = vcvtms_s32_f32(*&v11);
    v14 = [v10 stretchableImageWithLeftCapWidth:v13 topCapHeight:0];
    [(UIButton *)v12 setBackgroundImage:v14 forState:0];

    v15 = [MEMORY[0x277D755B8] kitImageNamed:@"UIPreferencesDeleteButtonPressed.png"];

    v16 = v5->_deleteButton;
    v17 = [v15 stretchableImageWithLeftCapWidth:v13 topCapHeight:0];
    [(UIButton *)v16 setBackgroundImage:v17 forState:1];

    v18 = [MEMORY[0x277D74300] boldSystemFontOfSize:20.0];
    titleLabel2 = [(UIButton *)v5->_deleteButton titleLabel];
    [titleLabel2 setFont:v18];

    v20 = v5->_deleteButton;
    v21 = [specifierCopy propertyForKey:*MEMORY[0x277D40170]];
    [(UIButton *)v20 setTitle:v21 forState:0];

    v22 = v5->_deleteButton;
    WeakRetained = objc_loadWeakRetained(&specifierCopy[*MEMORY[0x277D3FCB8]]);
    [(UIButton *)v22 addTarget:WeakRetained action:*&specifierCopy[*MEMORY[0x277D3FCB0]] forControlEvents:64];

    [(ICQBackupDeleteButton *)v5 addSubview:v5->_deleteButton];
    [(ICQBackupDeleteButton *)v5 setNeedsLayout];
  }

  return v5;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ICQBackupDeleteButton;
  [(ICQBackupDeleteButton *)&v7 layoutSubviews];
  superview = [(ICQBackupDeleteButton *)self superview];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [superview _backgroundInset];
    v5 = v4;
    [(ICQBackupDeleteButton *)self bounds];
    [(UIButton *)self->_deleteButton setFrame:v5 + v6];
  }
}

- (double)preferredHeightForWidth:(double)width
{
  v3 = objc_opt_class();

  [v3 usageDeleteButtonHeight];
  return result;
}

@end