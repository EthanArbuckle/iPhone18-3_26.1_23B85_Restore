@interface STWrappingTitleSubtitleCell
- (STWrappingTitleSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation STWrappingTitleSubtitleCell

- (STWrappingTitleSubtitleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = STWrappingTitleSubtitleCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    titleLabel = [(PSTableCell *)v5 titleLabel];
    [titleLabel setNumberOfLines:0];
    [titleLabel setLineBreakMode:0];
    detailTextLabel = [(STWrappingTitleSubtitleCell *)v6 detailTextLabel];
    [detailTextLabel setNumberOfLines:0];
    [detailTextLabel setLineBreakMode:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = STWrappingTitleSubtitleCell;
  [(STAppTitleSubtitleCell *)&v16 layoutSubviews];
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  if (!UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    superview = [(STWrappingTitleSubtitleCell *)self superview];

    if (!superview)
    {
      return;
    }

    preferredContentSizeCategory = [(PSTableCell *)self specifier];
    v5 = [preferredContentSizeCategory objectForKeyedSubscript:@"UseIconAsSeparatorInset"];
    if ([v5 BOOLValue])
    {
      if ([(STWrappingTitleSubtitleCell *)self effectiveUserInterfaceLayoutDirection]== 1)
      {
        [(STWrappingTitleSubtitleCell *)self frame];
        CGRectGetMaxX(v17);
        iconImageView = [(PSTableCell *)self iconImageView];
        [iconImageView frame];
        CGRectGetMaxX(v18);
      }

      else
      {
        iconImageView = [(PSTableCell *)self iconImageView];
        [iconImageView frame];
        CGRectGetMinX(v19);
      }

      [(STWrappingTitleSubtitleCell *)self separatorInset];
      [(STWrappingTitleSubtitleCell *)self setSeparatorInset:?];
    }

    v7 = [preferredContentSizeCategory objectForKeyedSubscript:@"AlternateShorterSubtitle"];
    v8 = [preferredContentSizeCategory objectForKeyedSubscript:@"MaximumNumberOfLines"];
    v9 = v8;
    if (v7 && v8)
    {
      detailTextLabel = [(STWrappingTitleSubtitleCell *)self detailTextLabel];
      [detailTextLabel frame];
      Height = CGRectGetHeight(v20);
      font = [detailTextLabel font];
      [font lineHeight];
      v14 = round(Height / v13);

      [v9 doubleValue];
      if (v14 > v15)
      {
        [detailTextLabel setText:v7];
        [preferredContentSizeCategory setObject:v7 forKeyedSubscript:*MEMORY[0x277D40160]];
      }
    }
  }
}

@end