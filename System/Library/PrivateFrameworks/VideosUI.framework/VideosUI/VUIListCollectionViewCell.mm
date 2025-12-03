@interface VUIListCollectionViewCell
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setShouldAppearSelected:(BOOL)selected;
@end

@implementation VUIListCollectionViewCell

- (void)setShouldAppearSelected:(BOOL)selected
{
  if (self->_shouldAppearSelected != selected)
  {
    self->_shouldAppearSelected = selected;
    [(VUIListCollectionViewCell *)self setSelected:?];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4 = self->_shouldAppearSelected || highlighted;
  v7.receiver = self;
  v7.super_class = VUIListCollectionViewCell;
  [(VUIListCollectionViewCell *)&v7 setHighlighted:v4];
  if (self->_highlightedBackgroundColor && self->_backgroundColor)
  {
    contentView = [(VUIListCollectionViewCell *)self contentView];
    if ((v4 | [(VUIListCollectionViewCell *)self isSelected]))
    {
      p_highlightedBackgroundColor = &self->_highlightedBackgroundColor;
    }

    else
    {
      p_highlightedBackgroundColor = &self->_backgroundColor;
    }

    [contentView setBackgroundColor:*p_highlightedBackgroundColor];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VUIListCollectionViewCell;
  [(VUIListCollectionViewCell *)&v18 setSelected:?];
  if (self->_highlightedBackgroundColor && self->_backgroundColor)
  {
    contentView = [(VUIListCollectionViewCell *)self contentView];
    v6 = contentView;
    if (selectedCopy)
    {
      p_highlightedBackgroundColor = &self->_highlightedBackgroundColor;
    }

    else
    {
      p_highlightedBackgroundColor = &self->_backgroundColor;
    }

    [contentView setBackgroundColor:*p_highlightedBackgroundColor];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  contentView2 = [(VUIListCollectionViewCell *)self contentView];
  subviews = [contentView2 subviews];

  v10 = [subviews countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v14 + 1) + 8 * v13++) setHighlighted:selectedCopy];
      }

      while (v11 != v13);
      v11 = [subviews countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = VUIListCollectionViewCell;
  [(VUIListCollectionViewCell *)&v3 prepareForReuse];
  self->_shouldAppearSelected = 0;
  if ([(VUIListCollectionViewCell *)self isHighlighted])
  {
    [(VUIListCollectionViewCell *)self setHighlighted:0];
  }

  if ([(VUIListCollectionViewCell *)self isSelected])
  {
    [(VUIListCollectionViewCell *)self setSelected:0];
  }
}

@end