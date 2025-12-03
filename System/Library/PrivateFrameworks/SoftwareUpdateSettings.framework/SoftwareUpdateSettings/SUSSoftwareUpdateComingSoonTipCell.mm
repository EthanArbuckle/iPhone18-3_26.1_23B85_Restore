@interface SUSSoftwareUpdateComingSoonTipCell
- (SUSSoftwareUpdateComingSoonTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (double)preferredHeightWithTable:(id)table;
- (id)createDynamicColor:(id)color withDarkStyleVariant:(id)variant;
- (id)createTipView;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation SUSSoftwareUpdateComingSoonTipCell

- (SUSSoftwareUpdateComingSoonTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  selfCopy = self;
  v24 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v21 = 0;
  objc_storeStrong(&v21, specifier);
  v5 = selfCopy;
  selfCopy = 0;
  v20.receiver = v5;
  v20.super_class = SUSSoftwareUpdateComingSoonTipCell;
  selfCopy = [(PSTableCell *)&v20 initWithStyle:styleCopy reuseIdentifier:location specifier:v21];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy setHoverStyle:0];
    createTipView = [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy createTipView];
    tipView = selfCopy->_tipView;
    selfCopy->_tipView = createTipView;
    *&v8 = MEMORY[0x277D82BD8](tipView).n128_u64[0];
    v14 = selfCopy->_tipView;
    v13 = selfCopy;
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v15 = [(SUSSoftwareUpdateComingSoonTipCell *)v13 createDynamicColor:systemWhiteColor withDarkStyleVariant:?];
    [(UIView *)v14 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](secondarySystemBackgroundColor);
    *&v9 = MEMORY[0x277D82BD8](systemWhiteColor).n128_u64[0];
    contentView = [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy contentView];
    [contentView addSubview:selfCopy->_tipView];
    *&v10 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
    [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy updateConstraints];
  }

  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (id)createDynamicColor:(id)color withDarkStyleVariant:(id)variant
{
  v13[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  v10 = 0;
  objc_storeStrong(&v10, variant);
  v9 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:?];
  v12[0] = v9;
  v13[0] = location[0];
  v12[1] = v8;
  v13[1] = v10;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v6 = [MEMORY[0x277D75348] _dynamicColorWithColorsByTraitCollection:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateConstraints
{
  selfCopy = self;
  v39 = a2;
  v37 = 0u;
  v38 = 0u;
  [(UIView *)self->_tipView frame];
  *&v38 = v2;
  *(&v38 + 1) = v3;
  contentView = [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy contentView];
  [contentView frame];
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  *&v4 = v4;
  *&v37 = floorf(*&v4);
  contentView2 = [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy contentView];
  [contentView2 frame];
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  *&v8 = v9;
  *(&v37 + 1) = floorf(*&v8);
  MEMORY[0x277D82BD8](contentView2);
  [(UIView *)selfCopy->_tipView setFrame:v37, v38];
  [(UIView *)selfCopy->_tipView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v12) = 1148846080;
  [(UIView *)selfCopy->_tipView setContentHuggingPriority:1 forAxis:v12];
  bottomAnchor = [(UIView *)selfCopy->_tipView bottomAnchor];
  contentView3 = [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v16 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
  [v16 setActive:1];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](contentView3);
  leadingAnchor = [(UIView *)selfCopy->_tipView leadingAnchor];
  contentView4 = [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v20 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:?];
  [v20 setActive:1];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](contentView4);
  trailingAnchor = [(UIView *)selfCopy->_tipView trailingAnchor];
  contentView5 = [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v24 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:?];
  [v24 setActive:1];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](contentView5);
  *&v13 = MEMORY[0x277D82BD8](trailingAnchor).n128_u64[0];
  v28.receiver = selfCopy;
  v28.super_class = SUSSoftwareUpdateComingSoonTipCell;
  [(SUSSoftwareUpdateComingSoonTipCell *)&v28 updateConstraints];
}

- (double)preferredHeightWithTable:(id)table
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  [(SUSSoftwareUpdateComingSoonTipCell *)selfCopy bounds];
  CGSizeMake_1();
  v8 = v3;
  v9 = v4;
  [(UIView *)selfCopy->_tipView layoutIfNeeded];
  [(UIView *)selfCopy->_tipView sizeThatFits:v8, v9];
  v7 = v5;
  objc_storeStrong(location, 0);
  return v7;
}

- (void)layoutSubviews
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = SUSSoftwareUpdateComingSoonTipCell;
  [(SUSSoftwareUpdateComingSoonTipCell *)&v3 updateConstraints];
  v2.receiver = selfCopy;
  v2.super_class = SUSSoftwareUpdateComingSoonTipCell;
  [(PSTableCell *)&v2 layoutSubviews];
}

- (id)createTipView
{
  v2 = sub_26AC83158();
  v3 = *((*MEMORY[0x277D85000] & **v2) + 0x90);
  v4 = *v2;
  v3(v8);

  v5 = objc_allocWithZone(sub_26AC861E8());
  v6 = sub_26AC861F8();

  return v6;
}

@end