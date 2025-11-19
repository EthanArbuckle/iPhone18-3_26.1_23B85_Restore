@interface SUSSoftwareUpdateComingSoonTipCell
- (SUSSoftwareUpdateComingSoonTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (double)preferredHeightWithTable:(id)a3;
- (id)createDynamicColor:(id)a3 withDarkStyleVariant:(id)a4;
- (id)createTipView;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation SUSSoftwareUpdateComingSoonTipCell

- (SUSSoftwareUpdateComingSoonTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v5 = v25;
  v25 = 0;
  v20.receiver = v5;
  v20.super_class = SUSSoftwareUpdateComingSoonTipCell;
  v25 = [(PSTableCell *)&v20 initWithStyle:v23 reuseIdentifier:location specifier:v21];
  objc_storeStrong(&v25, v25);
  if (v25)
  {
    [(SUSSoftwareUpdateComingSoonTipCell *)v25 setHoverStyle:0];
    v6 = [(SUSSoftwareUpdateComingSoonTipCell *)v25 createTipView];
    tipView = v25->_tipView;
    v25->_tipView = v6;
    *&v8 = MEMORY[0x277D82BD8](tipView).n128_u64[0];
    v14 = v25->_tipView;
    v13 = v25;
    v17 = [MEMORY[0x277D75348] systemWhiteColor];
    v16 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v15 = [(SUSSoftwareUpdateComingSoonTipCell *)v13 createDynamicColor:v17 withDarkStyleVariant:?];
    [(UIView *)v14 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    *&v9 = MEMORY[0x277D82BD8](v17).n128_u64[0];
    v18 = [(SUSSoftwareUpdateComingSoonTipCell *)v25 contentView];
    [v18 addSubview:v25->_tipView];
    *&v10 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    [(SUSSoftwareUpdateComingSoonTipCell *)v25 updateConstraints];
  }

  v12 = MEMORY[0x277D82BE0](v25);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v25, 0);
  return v12;
}

- (id)createDynamicColor:(id)a3 withDarkStyleVariant:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
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
  v40 = self;
  v39 = a2;
  v37 = 0u;
  v38 = 0u;
  [(UIView *)self->_tipView frame];
  *&v38 = v2;
  *(&v38 + 1) = v3;
  v14 = [(SUSSoftwareUpdateComingSoonTipCell *)v40 contentView];
  [v14 frame];
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  *&v4 = v4;
  *&v37 = floorf(*&v4);
  v15 = [(SUSSoftwareUpdateComingSoonTipCell *)v40 contentView];
  [v15 frame];
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  *&v8 = v9;
  *(&v37 + 1) = floorf(*&v8);
  MEMORY[0x277D82BD8](v15);
  [(UIView *)v40->_tipView setFrame:v37, v38];
  [(UIView *)v40->_tipView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v12) = 1148846080;
  [(UIView *)v40->_tipView setContentHuggingPriority:1 forAxis:v12];
  v19 = [(UIView *)v40->_tipView bottomAnchor];
  v18 = [(SUSSoftwareUpdateComingSoonTipCell *)v40 contentView];
  v17 = [v18 bottomAnchor];
  v16 = [(NSLayoutYAxisAnchor *)v19 constraintEqualToAnchor:?];
  [v16 setActive:1];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v23 = [(UIView *)v40->_tipView leadingAnchor];
  v22 = [(SUSSoftwareUpdateComingSoonTipCell *)v40 contentView];
  v21 = [v22 leadingAnchor];
  v20 = [(NSLayoutXAxisAnchor *)v23 constraintEqualToAnchor:?];
  [v20 setActive:1];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  v27 = [(UIView *)v40->_tipView trailingAnchor];
  v26 = [(SUSSoftwareUpdateComingSoonTipCell *)v40 contentView];
  v25 = [v26 trailingAnchor];
  v24 = [(NSLayoutXAxisAnchor *)v27 constraintEqualToAnchor:?];
  [v24 setActive:1];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  *&v13 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  v28.receiver = v40;
  v28.super_class = SUSSoftwareUpdateComingSoonTipCell;
  [(SUSSoftwareUpdateComingSoonTipCell *)&v28 updateConstraints];
}

- (double)preferredHeightWithTable:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSSoftwareUpdateComingSoonTipCell *)v11 bounds];
  CGSizeMake_1();
  v8 = v3;
  v9 = v4;
  [(UIView *)v11->_tipView layoutIfNeeded];
  [(UIView *)v11->_tipView sizeThatFits:v8, v9];
  v7 = v5;
  objc_storeStrong(location, 0);
  return v7;
}

- (void)layoutSubviews
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = SUSSoftwareUpdateComingSoonTipCell;
  [(SUSSoftwareUpdateComingSoonTipCell *)&v3 updateConstraints];
  v2.receiver = v5;
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