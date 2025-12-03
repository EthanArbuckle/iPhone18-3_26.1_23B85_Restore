@interface PKTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (id)_checkmarkImage:(BOOL)image;
- (id)_disclosureChevronImage:(BOOL)image;
- (void)pk_applyAppearance:(id)appearance;
- (void)prepareForReuse;
- (void)setHighlightColor:(id)color;
- (void)setShowsActionSpinner:(BOOL)spinner;
@end

@implementation PKTableViewCell

- (void)pk_applyAppearance:(id)appearance
{
  v8.receiver = self;
  v8.super_class = PKTableViewCell;
  appearanceCopy = appearance;
  [(UITableViewCell *)&v8 pk_applyAppearance:appearanceCopy];
  tableViewCellHighlightColor = [appearanceCopy tableViewCellHighlightColor];
  [(PKTableViewCell *)self setHighlightColor:tableViewCellHighlightColor];

  tintColor = [appearanceCopy tintColor];
  [(PKTableViewCell *)self setCheckmarkAccessoryColor:tintColor];

  tableViewCellAccessoryColor = [appearanceCopy tableViewCellAccessoryColor];

  [(PKTableViewCell *)self setCustomAccessoryColor:tableViewCellAccessoryColor];
}

- (void)setHighlightColor:(id)color
{
  colorCopy = color;
  if (self->_highlightColor != colorCopy)
  {
    v8 = colorCopy;
    v5 = [(UIColor *)colorCopy copy];
    highlightColor = self->_highlightColor;
    self->_highlightColor = v5;

    if (self->_highlightColor)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      [v7 setBackgroundColor:self->_highlightColor];
      [(PKTableViewCell *)self setSelectedBackgroundView:v7];
    }

    else
    {
      [(PKTableViewCell *)self setSelectedBackgroundView:0];
    }

    colorCopy = v8;
  }
}

- (id)_checkmarkImage:(BOOL)image
{
  if (self->_checkmarkAccessoryColor)
  {
    v9.receiver = self;
    v9.super_class = PKTableViewCell;
    v4 = [(PKTableViewCell *)&v9 _checkmarkImage:image];
    checkmarkAccessoryColor = [(PKTableViewCell *)self checkmarkAccessoryColor];
    v6 = [v4 _flatImageWithColor:checkmarkAccessoryColor];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKTableViewCell;
    v6 = [(PKTableViewCell *)&v8 _checkmarkImage:image];
  }

  return v6;
}

- (id)_disclosureChevronImage:(BOOL)image
{
  if (self->_customAccessoryColor)
  {
    v9.receiver = self;
    v9.super_class = PKTableViewCell;
    v4 = [(PKTableViewCell *)&v9 _disclosureChevronImage:image];
    v5 = [v4 _flatImageWithColor:self->_customAccessoryColor];
    imageFlippedForRightToLeftLayoutDirection = [v5 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKTableViewCell;
    v4 = [(PKTableViewCell *)&v8 _disclosureChevronImage:image];
    imageFlippedForRightToLeftLayoutDirection = [v4 imageFlippedForRightToLeftLayoutDirection];
  }

  return imageFlippedForRightToLeftLayoutDirection;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKTableViewCell;
  [(PKTableViewCell *)&v3 prepareForReuse];
  [(PKTableViewCell *)self setShowsActionSpinner:0];
}

- (void)setShowsActionSpinner:(BOOL)spinner
{
  if (self->_showsActionSpinner != spinner)
  {
    self->_showsActionSpinner = spinner;
    if (spinner)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v5 startAnimating];
      [(PKTableViewCell *)self setEditingAccessoryView:v5];
      v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v4 startAnimating];
      [(PKTableViewCell *)self setAccessoryView:v4];
    }

    else
    {
      [(PKTableViewCell *)self setEditingAccessoryView:0];

      [(PKTableViewCell *)self setAccessoryView:0];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v6.receiver = self;
  v6.super_class = PKTableViewCell;
  [(PKTableViewCell *)&v6 sizeThatFits:fits.width, fits.height];
  if (self->_minimumHeight > minimumHeight)
  {
    minimumHeight = self->_minimumHeight;
  }

  result.height = minimumHeight;
  result.width = v4;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v8.receiver = self;
  v8.super_class = PKTableViewCell;
  [(PKTableViewCell *)&v8 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  if (self->_minimumHeight > minimumHeight)
  {
    minimumHeight = self->_minimumHeight;
  }

  result.height = minimumHeight;
  result.width = v6;
  return result;
}

@end