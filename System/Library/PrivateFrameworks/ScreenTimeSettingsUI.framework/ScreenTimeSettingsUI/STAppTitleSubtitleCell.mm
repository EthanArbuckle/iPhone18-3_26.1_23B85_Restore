@interface STAppTitleSubtitleCell
- (void)_didFetchAppInfoOrIcon:(id)a3;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setSpecifier:(id)a3;
@end

@implementation STAppTitleSubtitleCell

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = STAppTitleSubtitleCell;
  [(PSTableCell *)&v14 layoutSubviews];
  if ([objc_opt_class() cellStyle] == 3 && !-[STAppTitleSubtitleCell hasSubtitle](self, "hasSubtitle"))
  {
    v3 = [(STAppTitleSubtitleCell *)self textLabel];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [(STAppTitleSubtitleCell *)self contentView];
    [v10 bounds];
    v12 = round((v11 - v9) * 0.5);

    v13 = [(STAppTitleSubtitleCell *)self textLabel];
    [v13 setFrame:{v5, v12, v7, v9}];
  }
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSTableCell *)self specifier];
  v6 = [v5 objectForKeyedSubscript:@"STAppBundleID"];

  v10.receiver = self;
  v10.super_class = STAppTitleSubtitleCell;
  [(PSTableCell *)&v10 setSpecifier:v4];
  if ([(STAppTitleSubtitleCell *)self isAppCell])
  {
    v7 = [v4 objectForKeyedSubscript:@"STAppBundleID"];
    if (v7 == v6)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = [MEMORY[0x277D4BD98] sharedCache];
    v9 = [MEMORY[0x277D4B8C0] sharedCache];
    if (v6)
    {
      if ([v7 isEqualToString:v6])
      {
LABEL_8:

        goto LABEL_9;
      }

      [v8 removeObserver:self bundleIdentifier:v6];
      [v9 removeObserver:self bundleIdentifier:v6];
    }

    if (v7)
    {
      [v8 addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v7];
      [v9 addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v7];
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = STAppTitleSubtitleCell;
  [(PSTableCell *)&v17 refreshCellContentsWithSpecifier:v4];
  if ([objc_opt_class() cellStyle] == 3)
  {
    v5 = [(STAppTitleSubtitleCell *)self detailTextLabel];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [v5 setFont:v6];

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D40160]];
    [(STAppTitleSubtitleCell *)self setHasSubtitle:v7 != 0];
    if ([(STAppTitleSubtitleCell *)self hasSubtitle])
    {
      [v5 setText:v7];
      v8 = [MEMORY[0x277D75348] grayColor];
      [v5 setTextColor:v8];
    }

    else
    {
      [v5 setText:@" "];
    }
  }

  if ([(STAppTitleSubtitleCell *)self isAppCell])
  {
    v9 = [v4 objectForKeyedSubscript:@"STAppBundleID"];
    if (v9)
    {
      v10 = [MEMORY[0x277D4B8C0] sharedCache];
      v11 = [v10 appInfoForBundleIdentifier:v9];
      v12 = [v11 displayName];

      v13 = [MEMORY[0x277D4BD98] sharedCache];
      v14 = [v13 imageForBundleIdentifier:v9];
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = [(STAppTitleSubtitleCell *)self textLabel];
    [v15 setText:v12];

    v16 = [(STAppTitleSubtitleCell *)self imageView];
    [v16 setImage:v14];
  }

  [(STAppTitleSubtitleCell *)self setNeedsLayout];
}

- (void)_didFetchAppInfoOrIcon:(id)a3
{
  v4 = [(PSTableCell *)self specifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(STAppTitleSubtitleCell *)self refreshCellContentsWithSpecifier:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

@end