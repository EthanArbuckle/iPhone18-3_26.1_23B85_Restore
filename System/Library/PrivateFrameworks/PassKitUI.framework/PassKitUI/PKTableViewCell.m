@interface PKTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (id)_checkmarkImage:(BOOL)a3;
- (id)_disclosureChevronImage:(BOOL)a3;
- (void)pk_applyAppearance:(id)a3;
- (void)prepareForReuse;
- (void)setHighlightColor:(id)a3;
- (void)setShowsActionSpinner:(BOOL)a3;
@end

@implementation PKTableViewCell

- (void)pk_applyAppearance:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKTableViewCell;
  v4 = a3;
  [(UITableViewCell *)&v8 pk_applyAppearance:v4];
  v5 = [v4 tableViewCellHighlightColor];
  [(PKTableViewCell *)self setHighlightColor:v5];

  v6 = [v4 tintColor];
  [(PKTableViewCell *)self setCheckmarkAccessoryColor:v6];

  v7 = [v4 tableViewCellAccessoryColor];

  [(PKTableViewCell *)self setCustomAccessoryColor:v7];
}

- (void)setHighlightColor:(id)a3
{
  v4 = a3;
  if (self->_highlightColor != v4)
  {
    v8 = v4;
    v5 = [(UIColor *)v4 copy];
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

    v4 = v8;
  }
}

- (id)_checkmarkImage:(BOOL)a3
{
  if (self->_checkmarkAccessoryColor)
  {
    v9.receiver = self;
    v9.super_class = PKTableViewCell;
    v4 = [(PKTableViewCell *)&v9 _checkmarkImage:a3];
    v5 = [(PKTableViewCell *)self checkmarkAccessoryColor];
    v6 = [v4 _flatImageWithColor:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKTableViewCell;
    v6 = [(PKTableViewCell *)&v8 _checkmarkImage:a3];
  }

  return v6;
}

- (id)_disclosureChevronImage:(BOOL)a3
{
  if (self->_customAccessoryColor)
  {
    v9.receiver = self;
    v9.super_class = PKTableViewCell;
    v4 = [(PKTableViewCell *)&v9 _disclosureChevronImage:a3];
    v5 = [v4 _flatImageWithColor:self->_customAccessoryColor];
    v6 = [v5 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKTableViewCell;
    v4 = [(PKTableViewCell *)&v8 _disclosureChevronImage:a3];
    v6 = [v4 imageFlippedForRightToLeftLayoutDirection];
  }

  return v6;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKTableViewCell;
  [(PKTableViewCell *)&v3 prepareForReuse];
  [(PKTableViewCell *)self setShowsActionSpinner:0];
}

- (void)setShowsActionSpinner:(BOOL)a3
{
  if (self->_showsActionSpinner != a3)
  {
    self->_showsActionSpinner = a3;
    if (a3)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  v6.receiver = self;
  v6.super_class = PKTableViewCell;
  [(PKTableViewCell *)&v6 sizeThatFits:a3.width, a3.height];
  if (self->_minimumHeight > minimumHeight)
  {
    minimumHeight = self->_minimumHeight;
  }

  result.height = minimumHeight;
  result.width = v4;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v8.receiver = self;
  v8.super_class = PKTableViewCell;
  [(PKTableViewCell *)&v8 systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  if (self->_minimumHeight > minimumHeight)
  {
    minimumHeight = self->_minimumHeight;
  }

  result.height = minimumHeight;
  result.width = v6;
  return result;
}

@end