@interface PSUICellularUpdateStateMessageTableCell
+ (id)specifierForUpdateState:(id)a3 details:(id)a4 target:(id)a5 action:(SEL)a6;
- (void)_setupView:(id)a3 Context:(id)a4 target:(id)a5 CloseAction:(SEL)a6;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUICellularUpdateStateMessageTableCell

+ (id)specifierForUpdateState:(id)a3 details:(id)a4 target:(id)a5 action:(SEL)a6
{
  v16 = a6;
  v8 = MEMORY[0x277D3FAD8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:4 edit:{0, v16}];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
  [v12 setProperty:v13 forKey:*MEMORY[0x277D40140]];

  [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v12 setProperty:v11 forKey:@"CellularUpdateStateMessageTitleKey"];

  [v12 setProperty:v10 forKey:@"CellularUpdateStateMessageContextKey"];
  [v12 setProperty:v9 forKey:@"PSUICellularUpdateStateMessageCloseTarget"];

  v14 = [MEMORY[0x277CCAE60] valueWithBytes:&v16 objCType:":"];
  [v12 setProperty:v14 forKey:@"PSUICellularUpdateStateMessageCloseAction"];

  return v12;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v10.receiver = self;
  v10.super_class = PSUICellularUpdateStateMessageTableCell;
  v4 = a3;
  [(PSTableCell *)&v10 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"CellularUpdateStateMessageTitleKey"];
  v6 = [v4 propertyForKey:@"CellularUpdateStateMessageContextKey"];
  v9 = 0;
  v7 = [v4 propertyForKey:@"PSUICellularUpdateStateMessageCloseAction"];
  [v7 getValue:&v9];

  v8 = [v4 propertyForKey:@"PSUICellularUpdateStateMessageCloseTarget"];

  [(PSUICellularUpdateStateMessageTableCell *)self _setupView:v5 Context:v6 target:v8 CloseAction:v9];
  [(PSUICellularUpdateStateMessageTableCell *)self layoutIfNeeded];
}

- (void)_setupView:(id)a3 Context:(id)a4 target:(id)a5 CloseAction:(SEL)a6
{
  v87[12] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  title = self->_title;
  if (!title)
  {
    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    v15 = self->_title;
    self->_title = v14;

    [(UILabel *)self->_title setNumberOfLines:0];
    [(UILabel *)self->_title setText:v10];
    v16 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    [(UILabel *)self->_title setFont:v16];

    [(UILabel *)self->_title setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
    [v17 addSubview:self->_title];

    title = self->_title;
  }

  [(UILabel *)title setText:v10];
  label = self->_label;
  if (!label)
  {
    v19 = objc_alloc_init(MEMORY[0x277D756B8]);
    v20 = self->_label;
    self->_label = v19;

    [(UILabel *)self->_label setNumberOfLines:0];
    [(UILabel *)self->_label setText:v11];
    v21 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
    [(UILabel *)self->_label setFont:v21];

    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
    [v22 addSubview:self->_label];

    label = self->_label;
  }

  v86 = v10;
  [(UILabel *)label setText:v11];
  closeButton = self->_closeButton;
  v85 = v11;
  if (!closeButton)
  {
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    v25 = [v24 imageWithRenderingMode:2];

    v26 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:10.0];
    v27 = [v25 imageByApplyingSymbolConfiguration:v26];
    v28 = [MEMORY[0x277D75220] systemButtonWithImage:v27 target:v12 action:a6];
    v29 = self->_closeButton;
    self->_closeButton = v28;

    v30 = [MEMORY[0x277D75348] tertiaryLabelColor];
    [(UIButton *)self->_closeButton setTintColor:v30];

    v31 = [(UIButton *)self->_closeButton imageView];
    [v31 setContentMode:4];

    v32 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
    [v32 addSubview:self->_closeButton];

    [(UIButton *)self->_closeButton setContentHorizontalAlignment:2];
    [(UIButton *)self->_closeButton setContentVerticalAlignment:1];

    closeButton = self->_closeButton;
  }

  [(UIButton *)closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = MEMORY[0x277CCAAD0];
  v83 = [(UILabel *)self->_title leadingAnchor];
  v84 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v82 = [v84 layoutMarginsGuide];
  v81 = [v82 leadingAnchor];
  v80 = [v83 constraintEqualToAnchor:v81];
  v87[0] = v80;
  v78 = [(UILabel *)self->_title topAnchor];
  v79 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v77 = [v79 topAnchor];
  v76 = [v78 constraintEqualToAnchor:v77 constant:10.0];
  v87[1] = v76;
  v74 = [(UILabel *)self->_title leadingAnchor];
  v75 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v73 = [v75 layoutMarginsGuide];
  v72 = [v73 leadingAnchor];
  v71 = [v74 constraintEqualToAnchor:v72];
  v87[2] = v71;
  v69 = [(UILabel *)self->_title trailingAnchor];
  v70 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v68 = [v70 layoutMarginsGuide];
  v67 = [v68 trailingAnchor];
  v66 = [v69 constraintEqualToAnchor:v67];
  v87[3] = v66;
  v64 = [(UILabel *)self->_label topAnchor];
  v63 = [(UILabel *)self->_title bottomAnchor];
  v62 = [v64 constraintEqualToAnchor:v63 constant:7.0];
  v87[4] = v62;
  v59 = [(UILabel *)self->_label bottomAnchor];
  v61 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v58 = [v61 bottomAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:-8.0];
  v87[5] = v57;
  v55 = [(UILabel *)self->_label leadingAnchor];
  v56 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v54 = [v56 layoutMarginsGuide];
  v53 = [v54 leadingAnchor];
  v52 = [v55 constraintEqualToAnchor:v53];
  v87[6] = v52;
  v50 = [(UILabel *)self->_label trailingAnchor];
  v51 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v49 = [v51 layoutMarginsGuide];
  v48 = [v49 trailingAnchor];
  v47 = [v50 constraintEqualToAnchor:v48];
  v87[7] = v47;
  v45 = [(UIButton *)self->_closeButton topAnchor];
  v46 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v44 = [v46 topAnchor];
  v33 = [v45 constraintEqualToAnchor:v44 constant:10.0];
  v87[8] = v33;
  [(UIButton *)self->_closeButton trailingAnchor];
  v34 = v60 = v12;
  v35 = [(PSUICellularUpdateStateMessageTableCell *)self contentView];
  v36 = [v35 trailingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36 constant:-20.0];
  v87[9] = v37;
  v38 = [(UIButton *)self->_closeButton widthAnchor];
  v39 = [v38 constraintEqualToConstant:44.0];
  v87[10] = v39;
  v40 = [(UIButton *)self->_closeButton heightAnchor];
  v41 = [v40 constraintEqualToConstant:44.0];
  v87[11] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:12];
  [v65 activateConstraints:v42];

  v43 = *MEMORY[0x277D85DE8];
}

@end