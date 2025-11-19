@interface STWrappingTitleSubtitleCell
- (STWrappingTitleSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation STWrappingTitleSubtitleCell

- (STWrappingTitleSubtitleCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v10.receiver = self;
  v10.super_class = STWrappingTitleSubtitleCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(PSTableCell *)v5 titleLabel];
    [v7 setNumberOfLines:0];
    [v7 setLineBreakMode:0];
    v8 = [(STWrappingTitleSubtitleCell *)v6 detailTextLabel];
    [v8 setNumberOfLines:0];
    [v8 setLineBreakMode:0];
  }

  return v6;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = STWrappingTitleSubtitleCell;
  [(STAppTitleSubtitleCell *)&v16 layoutSubviews];
  v3 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  if (!UIContentSizeCategoryIsAccessibilityCategory(v3))
  {
    v4 = [(STWrappingTitleSubtitleCell *)self superview];

    if (!v4)
    {
      return;
    }

    v3 = [(PSTableCell *)self specifier];
    v5 = [v3 objectForKeyedSubscript:@"UseIconAsSeparatorInset"];
    if ([v5 BOOLValue])
    {
      if ([(STWrappingTitleSubtitleCell *)self effectiveUserInterfaceLayoutDirection]== 1)
      {
        [(STWrappingTitleSubtitleCell *)self frame];
        CGRectGetMaxX(v17);
        v6 = [(PSTableCell *)self iconImageView];
        [v6 frame];
        CGRectGetMaxX(v18);
      }

      else
      {
        v6 = [(PSTableCell *)self iconImageView];
        [v6 frame];
        CGRectGetMinX(v19);
      }

      [(STWrappingTitleSubtitleCell *)self separatorInset];
      [(STWrappingTitleSubtitleCell *)self setSeparatorInset:?];
    }

    v7 = [v3 objectForKeyedSubscript:@"AlternateShorterSubtitle"];
    v8 = [v3 objectForKeyedSubscript:@"MaximumNumberOfLines"];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [(STWrappingTitleSubtitleCell *)self detailTextLabel];
      [v10 frame];
      Height = CGRectGetHeight(v20);
      v12 = [v10 font];
      [v12 lineHeight];
      v14 = round(Height / v13);

      [v9 doubleValue];
      if (v14 > v15)
      {
        [v10 setText:v7];
        [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D40160]];
      }
    }
  }
}

@end