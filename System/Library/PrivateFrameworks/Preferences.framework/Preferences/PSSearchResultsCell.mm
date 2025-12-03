@interface PSSearchResultsCell
- (PSSearchResultsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation PSSearchResultsCell

- (PSSearchResultsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v24.receiver = self;
  v24.super_class = PSSearchResultsCell;
  v4 = [(PSSearchResultsCell *)&v24 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(PSSearchResultsCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    textLabel2 = [(PSSearchResultsCell *)v5 textLabel];
    [textLabel2 setBackgroundColor:clearColor];

    detailTextLabel = [(PSSearchResultsCell *)v5 detailTextLabel];
    [detailTextLabel setNumberOfLines:1];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    detailTextLabel2 = [(PSSearchResultsCell *)v5 detailTextLabel];
    [detailTextLabel2 setBackgroundColor:clearColor2];

    v12 = +[PSListController appearance];
    textColor = [v12 textColor];

    if (textColor)
    {
      v14 = [(PSSearchResultsCell *)v5 _accessibilityHigherContrastTintColorForColor:textColor];
      textLabel3 = [(PSSearchResultsCell *)v5 textLabel];
      [textLabel3 setTextColor:v14];
    }

    v16 = +[PSListController appearance];
    altTextColor = [v16 altTextColor];

    if (altTextColor)
    {
      v18 = [(PSSearchResultsCell *)v5 _accessibilityHigherContrastTintColorForColor:altTextColor];
      detailTextLabel3 = [(PSSearchResultsCell *)v5 detailTextLabel];
      [detailTextLabel3 setTextColor:v18];
    }

    v20 = +[PSListController appearance];
    cellHighlightColor = [v20 cellHighlightColor];

    if (cellHighlightColor)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [v22 setBackgroundColor:cellHighlightColor];
      [(PSSearchResultsCell *)v5 setSelectedBackgroundView:v22];
    }
  }

  return v5;
}

- (void)prepareForReuse
{
  self->_shouldIndentContent = 0;
  self->_shouldIndentSeparator = 0;
  v2.receiver = self;
  v2.super_class = PSSearchResultsCell;
  [(PSSearchResultsCell *)&v2 prepareForReuse];
}

@end