@interface SUSSoftwareUpdateProactiveSuggestionCell
- (SUSSoftwareUpdateProactiveSuggestionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)_configureContentLabel;
- (id)_configureIconImage;
- (id)_configureTitleLabel;
- (void)_setupView;
- (void)setContent:(id)a3;
- (void)setSystemIconNamed:(id)a3 withTintColor:(id)a4;
- (void)setTitle:(id)a3;
@end

@implementation SUSSoftwareUpdateProactiveSuggestionCell

- (SUSSoftwareUpdateProactiveSuggestionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v5 = v15;
  v15 = 0;
  v10.receiver = v5;
  v10.super_class = SUSSoftwareUpdateProactiveSuggestionCell;
  v9 = [(PSTableCell *)&v10 initWithStyle:v13 reuseIdentifier:location specifier:v11];
  v15 = v9;
  objc_storeStrong(&v15, v9);
  if (v9)
  {
    [(SUSSoftwareUpdateProactiveSuggestionCell *)v15 setSelectionStyle:0];
    [(SUSSoftwareUpdateProactiveSuggestionCell *)v15 setHoverStyle:0];
    [(SUSSoftwareUpdateProactiveSuggestionCell *)v15 _setupView];
  }

  v7 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (void)_setupView
{
  if (!self->_titleLabel && !self->_contentLabel && !self->_iconImage)
  {
    v2 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self _configureTitleLabel];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v2;
    v4 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self _configureIconImage];
    iconImage = self->_iconImage;
    self->_iconImage = v4;
    v6 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self _configureContentLabel];
    contentLabel = self->_contentLabel;
    self->_contentLabel = v6;
    v14 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self contentView];
    [v14 addSubview:self->_titleLabel];
    v15 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self contentView];
    [v15 addSubview:self->_iconImage];
    v16 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self contentView];
    [v16 addSubview:self->_contentLabel];
    v20 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self contentView];
    v17 = MEMORY[0x277CCAAD0];
    v19 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelIcon.isa, self->_titleLabel, self->_iconImage, 0);
    v18 = [v17 constraintsWithVisualFormat:@"H:|-(margin)-[_titleLabel]-(>=iconToTitleSpacing)-[_iconImage(iconWidth)]-(margin)-|" options:? metrics:? views:?];
    [v20 addConstraints:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v22 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self contentView];
    v21 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconImage attribute:10 relatedBy:0 toItem:self->_titleLabel attribute:1.0 multiplier:0.0 constant:?];
    [v22 addConstraint:?];
    MEMORY[0x277D82BD8](v21);
    *&v8 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    v23 = MEMORY[0x277CCAAD0];
    v24 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelCont.isa, self->_titleLabel, v8, self->_contentLabel, 0);
    v9 = [v23 constraintsWithVisualFormat:@"V:|-(margin)-[_titleLabel]-(spacing)-[_contentLabel]-(margin)-|" options:0 metrics:&unk_287B77D28 views:?];
    titleAndContentVerticalConstaints = self->_titleAndContentVerticalConstaints;
    self->_titleAndContentVerticalConstaints = v9;
    MEMORY[0x277D82BD8](titleAndContentVerticalConstaints);
    *&v11 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    v25 = MEMORY[0x277CCAAD0];
    v26 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, self->_titleLabel, v11, 0);
    v12 = [v25 constraintsWithVisualFormat:@"V:|-(margin)-[_titleLabel]-(margin)-|" options:0 metrics:&unk_287B77D50 views:?];
    titleOnlyVerticalConstaints = self->_titleOnlyVerticalConstaints;
    self->_titleOnlyVerticalConstaints = v12;
    MEMORY[0x277D82BD8](titleOnlyVerticalConstaints);
    v30 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self contentView];
    v27 = MEMORY[0x277CCAAD0];
    v29 = _NSDictionaryOfVariableBindings(&cfstr_Contentlabel.isa, self->_contentLabel, 0);
    v28 = [v27 constraintsWithVisualFormat:@"H:|-(margin)-[_contentLabel]-(margin)-|" options:0 metrics:&unk_287B77D78 views:?];
    [v30 addConstraints:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    v31 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self contentView];
    [v31 addConstraints:self->_titleAndContentVerticalConstaints];
    v32 = [(SUSSoftwareUpdateProactiveSuggestionCell *)self contentView];
    [v32 addConstraints:self->_titleOnlyVerticalConstaints];
    [MEMORY[0x277CCAAD0] activateConstraints:{self->_titleOnlyVerticalConstaints, MEMORY[0x277D82BD8](v32).n128_f64[0]}];
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_titleAndContentVerticalConstaints];
  }
}

- (id)_configureTitleLabel
{
  v8[2] = self;
  v8[1] = a2;
  v8[0] = objc_alloc_init(MEMORY[0x277D756B8]);
  v5 = v8[0];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v5 setFont:?];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [v8[0] setNumberOfLines:{0, v2}];
  [v8[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8[0] setAdjustsFontForContentSizeCategory:1];
  [v8[0] setContentCompressionResistancePriority:? forAxis:?];
  LODWORD(v3) = 1148846080;
  [v8[0] setContentHuggingPriority:1 forAxis:v3];
  [v8[0] setAccessibilityIdentifier:@"SUProactiveSuggestionCellTitle"];
  v7 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

- (id)_configureIconImage
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = objc_alloc_init(MEMORY[0x277D755E8]);
  [v9[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9[0] setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  [v9[0] setContentMode:2];
  v5 = v9[0];
  v4 = MEMORY[0x277D755D0];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v6 = [v4 configurationWithFont:?];
  [v5 setSymbolConfiguration:?];
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [v9[0] sizeToFit];
  [v9[0] setAccessibilityIdentifier:@"SUProactiveSuggestionCellIcon"];
  v8 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v8;
}

- (id)_configureContentLabel
{
  v8[2] = self;
  v8[1] = a2;
  v8[0] = objc_alloc_init(MEMORY[0x277D756B8]);
  v5 = v8[0];
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 setFont:?];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [v8[0] setNumberOfLines:{0, v2}];
  [v8[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8[0] setAdjustsFontForContentSizeCategory:1];
  [v8[0] setContentCompressionResistancePriority:? forAxis:?];
  LODWORD(v3) = 1148846080;
  [v8[0] setContentHuggingPriority:1 forAxis:v3];
  [v8[0] setAccessibilityIdentifier:@"SUProactiveSuggestionCellContent"];
  v7 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

- (void)setTitle:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v4->_titleLabel setText:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setContent:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UILabel *)v5->_contentLabel setText:location[0]];
  if (!location[0] || ([location[0] isEqualToString:&stru_287B74428] & 1) != 0)
  {
    [MEMORY[0x277CCAAD0] activateConstraints:{v5->_titleOnlyVerticalConstaints, 0x277CCA000uLL}];
    [*(v3 + 2768) deactivateConstraints:v5->_titleAndContentVerticalConstaints];
  }

  else
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v5->_titleOnlyVerticalConstaints];
    [MEMORY[0x277CCAAD0] activateConstraints:v5->_titleAndContentVerticalConstaints];
  }

  objc_storeStrong(location, 0);
}

- (void)setSystemIconNamed:(id)a3 withTintColor:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v7 = MEMORY[0x277D755B8];
  v6 = location[0];
  v8 = [MEMORY[0x277D755D0] configurationWithWeight:2];
  v9 = [v7 systemImageNamed:v6 withConfiguration:?];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [(UIImageView *)v12->_iconImage setImage:v9, v4];
  [(UIImageView *)v12->_iconImage setTintColor:v10];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

@end