@interface STStorageAppHeaderCell
+ (id)specifierForAppBundleURL:(id)a3;
+ (id)specifierForAppIdentifier:(id)a3;
+ (id)specifierForAppProxy:(id)a3;
+ (id)specifierForStorageApp:(id)a3;
- (NSString)info;
- (NSString)title;
- (NSString)vendor;
- (STStorageAppHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateConstraints;
@end

@implementation STStorageAppHeaderCell

+ (id)specifierForStorageApp:(id)a3
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = a3;
  v5 = [v3 preferenceSpecifierNamed:&stru_282D51E38 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v5 setProperty:v4 forKey:@"stStorageApp"];

  return v5;
}

+ (id)specifierForAppIdentifier:(id)a3
{
  v3 = MEMORY[0x277D69950];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4];

  v6 = [STStorageAppHeaderCell specifierForStorageApp:v5];

  return v6;
}

+ (id)specifierForAppProxy:(id)a3
{
  v3 = [a3 bundleIdentifier];
  v4 = [STStorageAppHeaderCell specifierForAppIdentifier:v3];

  return v4;
}

+ (id)specifierForAppBundleURL:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithURL:a3];
  v4 = [v3 bundleIdentifier];
  v5 = [STStorageAppHeaderCell specifierForAppIdentifier:v4];

  return v5;
}

- (STStorageAppHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v43[5] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v41.receiver = self;
  v41.super_class = STStorageAppHeaderCell;
  v9 = [(PSTableCell *)&v41 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(STStorageAppHeaderCell *)v9 contentView];
    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v10->_infoHidden = [v8 versionLabelEnabled] ^ 1;
    v14 = objc_alloc(MEMORY[0x277D756B8]);
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], v16, v17, v18}];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v19;

    v40 = v12;
    [(UILabel *)v10->_titleLabel setFont:v12];
    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_titleLabel setAccessibilityIdentifier:@"Title"];
    [(UILabel *)v10->_titleLabel setNumberOfLines:1];
    [(UILabel *)v10->_titleLabel setLineBreakMode:4];
    [(UILabel *)v10->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [v11 addSubview:v10->_titleLabel];
    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
    infoLabel = v10->_infoLabel;
    v10->_infoLabel = v21;

    [(UILabel *)v10->_infoLabel setFont:v13];
    v23 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v10->_infoLabel setTextColor:v23];

    [(UILabel *)v10->_infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_infoLabel setAccessibilityIdentifier:@"Info"];
    [(UILabel *)v10->_infoLabel setNumberOfLines:1];
    [(UILabel *)v10->_infoLabel setLineBreakMode:4];
    [(UILabel *)v10->_infoLabel setAllowsDefaultTighteningForTruncation:1];
    [v11 addSubview:v10->_infoLabel];
    v24 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v15, v16, v17, v18}];
    vendorLabel = v10->_vendorLabel;
    v10->_vendorLabel = v24;

    [(UILabel *)v10->_vendorLabel setFont:v13];
    v26 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v10->_vendorLabel setTextColor:v26];

    [(UILabel *)v10->_vendorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_vendorLabel setAccessibilityIdentifier:@"Creator"];
    [(UILabel *)v10->_vendorLabel setNumberOfLines:1];
    [(UILabel *)v10->_vendorLabel setLineBreakMode:4];
    [(UILabel *)v10->_vendorLabel setAllowsDefaultTighteningForTruncation:1];
    [v11 addSubview:v10->_vendorLabel];
    v27 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v15, v16, v17, v18}];
    appIconView = v10->_appIconView;
    v10->_appIconView = v27;

    [(UIImageView *)v10->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v10->_appIconView setAccessibilityIdentifier:@"Icon"];
    [(UIImageView *)v10->_appIconView setContentMode:1];
    [v11 addSubview:v10->_appIconView];
    v29 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v15, v16, v17, v18}];
    cloudIconView = v10->_cloudIconView;
    v10->_cloudIconView = v29;

    [(UIImageView *)v10->_cloudIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v10->_cloudIconView setAccessibilityIdentifier:@"CloudIcon"];
    [(UIImageView *)v10->_cloudIconView setContentMode:1];
    [(UIImageView *)v10->_cloudIconView setHidden:1];
    v31 = [MEMORY[0x277D755B8] systemImageNamed:@"icloud.and.arrow.down"];
    [(UIImageView *)v10->_cloudIconView setImage:v31];

    v32 = [MEMORY[0x277D75348] systemGray2Color];
    [(UIImageView *)v10->_cloudIconView setTintColor:v32];

    [v11 addSubview:v10->_cloudIconView];
    v33 = v10->_titleLabel;
    if (v10->_infoHidden)
    {
      v42[0] = v10->_titleLabel;
      v42[1] = v10->_vendorLabel;
      v42[2] = v10->_appIconView;
      v42[3] = v10->_cloudIconView;
      v34 = MEMORY[0x277CBEA60];
      v35 = v42;
      v36 = 4;
    }

    else
    {
      v43[0] = v10->_titleLabel;
      v43[1] = v10->_infoLabel;
      v43[2] = v10->_vendorLabel;
      v43[3] = v10->_appIconView;
      v43[4] = v10->_cloudIconView;
      v34 = MEMORY[0x277CBEA60];
      v35 = v43;
      v36 = 5;
    }

    v37 = [v34 arrayWithObjects:v35 count:{v36, 1257}];
    [v11 setAccessibilityElements:v37];

    [(STStorageAppHeaderCell *)v10 setNeedsUpdateConstraints];
    [(STStorageAppHeaderCell *)v10 refreshCellContentsWithSpecifier:v8];
  }

  v38 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateConstraints
{
  titleLabel = self->_titleLabel;
  if (self->_infoHidden)
  {
    vendorLabel = self->_vendorLabel;
    _NSDictionaryOfVariableBindings(&cfstr_TitlelabelVend.isa, titleLabel, vendorLabel, self->_appIconView, self->_cloudIconView, 0);
  }

  else
  {
    _NSDictionaryOfVariableBindings(&cfstr_TitlelabelInfo.isa, titleLabel, self->_infoLabel, self->_vendorLabel, self->_appIconView, self->_cloudIconView, 0);
  }
  v5 = ;
  if ([(NSMutableArray *)self->_constraints count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
  }

  v6 = [MEMORY[0x277CBEB18] array];
  constraints = self->_constraints;
  self->_constraints = v6;

  v8 = self->_constraints;
  v9 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-15-[_appIconView(==58)]" options:0 metrics:0 views:v5];
  [(NSMutableArray *)v8 addObjectsFromArray:v9];

  v10 = self->_constraints;
  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-16-[_appIconView(==58)]-(>=16)-|" options:0 metrics:0 views:v5];
  [(NSMutableArray *)v10 addObjectsFromArray:v11];

  if (self->_isDemoted)
  {
    v12 = @"H:|-84-[_cloudIconView(==22)]-5-[_titleLabel]-(>=15)-|";
  }

  else
  {
    v12 = @"H:|-84-[_titleLabel]-15-|";
  }

  v13 = self->_constraints;
  v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v12 options:0 metrics:0 views:v5];
  [(NSMutableArray *)v13 addObjectsFromArray:v14];

  v15 = self->_constraints;
  if (self->_infoHidden)
  {
    v16 = @"V:|-16-[_titleLabel]-2-[_vendorLabel]-(>=16)-|";
  }

  else
  {
    v16 = @"V:|-16-[_titleLabel]-2-[_infoLabel]-2-[_vendorLabel]-(>=16)-|";
  }

  v17 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v16 options:0 metrics:0 views:v5];
  [(NSMutableArray *)v15 addObjectsFromArray:v17];

  v18 = self->_constraints;
  v19 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_cloudIconView attribute:12 relatedBy:0 toItem:self->_titleLabel attribute:12 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v18 addObject:v19];

  v20 = self->_constraints;
  v21 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_cloudIconView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:22.0];
  [(NSMutableArray *)v20 addObject:v21];

  if (!self->_infoHidden)
  {
    v22 = self->_constraints;
    v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-84-[_infoLabel]-15-|" options:0 metrics:0 views:v5];
    [(NSMutableArray *)v22 addObjectsFromArray:v23];
  }

  v24 = self->_constraints;
  v25 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-84-[_vendorLabel]-15-|" options:0 metrics:0 views:v5];
  [(NSMutableArray *)v24 addObjectsFromArray:v25];

  [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];
  v26.receiver = self;
  v26.super_class = STStorageAppHeaderCell;
  [(STStorageAppHeaderCell *)&v26 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = STStorageAppHeaderCell;
  [(PSTableCell *)&v20 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"stStorageApp"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isDemoted];
    v8 = [v6 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.Health"];

    if (v9 && [v6 isDemoted])
    {
      v10 = [MEMORY[0x277D3F930] settingsIconCache];
      v11 = [v10 imageForKey:*MEMORY[0x277D3FD28]];

      [(STStorageAppHeaderCell *)self setIcon:v11];
      v7 = 0;
    }

    v12 = [(STStorageAppHeaderCell *)self icon];

    if (!v12)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __59__STStorageAppHeaderCell_refreshCellContentsWithSpecifier___block_invoke;
      v19[3] = &unk_2782E2840;
      v19[4] = self;
      STLoadHeaderIconForApp(v6, v19);
    }

    v13 = [v6 name];
    [(STStorageAppHeaderCell *)self setTitle:v13];

    if ([v4 versionLabelEnabled])
    {
      v14 = [v6 versionString];
      [(STStorageAppHeaderCell *)self setInfo:v14];
    }

    else
    {
      [(STStorageAppHeaderCell *)self setInfo:0];
    }

    v15 = [v6 vendorName];
    if (v15)
    {
      v16 = [v6 appIdentifier];
      v17 = [v16 hasPrefix:@"com.apple."];

      if (v17)
      {
        v18 = *MEMORY[0x277D699D8];

        v15 = v18;
      }
    }

    [(STStorageAppHeaderCell *)self setVendor:v15];
    if (self->_isDemoted != v7)
    {
      self->_isDemoted = v7;
      [(STStorageAppHeaderCell *)self setNeedsUpdateConstraints];
    }

    [(UIImageView *)self->_cloudIconView setHidden:v7 ^ 1u];
  }

  [(STStorageAppHeaderCell *)self setNeedsDisplay];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(UILabel *)self->_titleLabel setText:v4];
}

- (NSString)title
{
  v2 = [(UILabel *)self->_titleLabel text];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_282D51E38;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)vendor
{
  v2 = [(UILabel *)self->_vendorLabel text];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_282D51E38;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)info
{
  v2 = [(UILabel *)self->_infoLabel text];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_282D51E38;
  }

  v5 = v4;

  return &v4->isa;
}

@end