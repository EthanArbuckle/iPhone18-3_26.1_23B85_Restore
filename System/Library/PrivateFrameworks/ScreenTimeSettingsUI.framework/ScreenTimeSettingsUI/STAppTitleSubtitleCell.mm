@interface STAppTitleSubtitleCell
- (void)_didFetchAppInfoOrIcon:(id)icon;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
@end

@implementation STAppTitleSubtitleCell

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = STAppTitleSubtitleCell;
  [(PSTableCell *)&v14 layoutSubviews];
  if ([objc_opt_class() cellStyle] == 3 && !-[STAppTitleSubtitleCell hasSubtitle](self, "hasSubtitle"))
  {
    textLabel = [(STAppTitleSubtitleCell *)self textLabel];
    [textLabel frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    contentView = [(STAppTitleSubtitleCell *)self contentView];
    [contentView bounds];
    v12 = round((v11 - v9) * 0.5);

    textLabel2 = [(STAppTitleSubtitleCell *)self textLabel];
    [textLabel2 setFrame:{v5, v12, v7, v9}];
  }
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  specifier = [(PSTableCell *)self specifier];
  v6 = [specifier objectForKeyedSubscript:@"STAppBundleID"];

  v10.receiver = self;
  v10.super_class = STAppTitleSubtitleCell;
  [(PSTableCell *)&v10 setSpecifier:specifierCopy];
  if ([(STAppTitleSubtitleCell *)self isAppCell])
  {
    v7 = [specifierCopy objectForKeyedSubscript:@"STAppBundleID"];
    if (v7 == v6)
    {
LABEL_9:

      goto LABEL_10;
    }

    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
    if (v6)
    {
      if ([v7 isEqualToString:v6])
      {
LABEL_8:

        goto LABEL_9;
      }

      [mEMORY[0x277D4BD98] removeObserver:self bundleIdentifier:v6];
      [mEMORY[0x277D4B8C0] removeObserver:self bundleIdentifier:v6];
    }

    if (v7)
    {
      [mEMORY[0x277D4BD98] addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v7];
      [mEMORY[0x277D4B8C0] addObserver:self selector:sel__didFetchAppInfoOrIcon_ bundleIdentifier:v7];
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v17.receiver = self;
  v17.super_class = STAppTitleSubtitleCell;
  [(PSTableCell *)&v17 refreshCellContentsWithSpecifier:specifierCopy];
  if ([objc_opt_class() cellStyle] == 3)
  {
    detailTextLabel = [(STAppTitleSubtitleCell *)self detailTextLabel];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [detailTextLabel setFont:v6];

    v7 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D40160]];
    [(STAppTitleSubtitleCell *)self setHasSubtitle:v7 != 0];
    if ([(STAppTitleSubtitleCell *)self hasSubtitle])
    {
      [detailTextLabel setText:v7];
      grayColor = [MEMORY[0x277D75348] grayColor];
      [detailTextLabel setTextColor:grayColor];
    }

    else
    {
      [detailTextLabel setText:@" "];
    }
  }

  if ([(STAppTitleSubtitleCell *)self isAppCell])
  {
    v9 = [specifierCopy objectForKeyedSubscript:@"STAppBundleID"];
    if (v9)
    {
      mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
      v11 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:v9];
      displayName = [v11 displayName];

      mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
      v14 = [mEMORY[0x277D4BD98] imageForBundleIdentifier:v9];
    }

    else
    {
      displayName = 0;
      v14 = 0;
    }

    textLabel = [(STAppTitleSubtitleCell *)self textLabel];
    [textLabel setText:displayName];

    imageView = [(STAppTitleSubtitleCell *)self imageView];
    [imageView setImage:v14];
  }

  [(STAppTitleSubtitleCell *)self setNeedsLayout];
}

- (void)_didFetchAppInfoOrIcon:(id)icon
{
  specifier = [(PSTableCell *)self specifier];
  v5 = specifier;
  if (specifier)
  {
    v6 = specifier;
    specifier = [(STAppTitleSubtitleCell *)self refreshCellContentsWithSpecifier:specifier];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](specifier, v5);
}

@end