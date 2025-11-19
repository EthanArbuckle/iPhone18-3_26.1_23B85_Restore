@interface VUIListCollectionViewCell
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShouldAppearSelected:(BOOL)a3;
@end

@implementation VUIListCollectionViewCell

- (void)setShouldAppearSelected:(BOOL)a3
{
  if (self->_shouldAppearSelected != a3)
  {
    self->_shouldAppearSelected = a3;
    [(VUIListCollectionViewCell *)self setSelected:?];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self->_shouldAppearSelected || a3;
  v7.receiver = self;
  v7.super_class = VUIListCollectionViewCell;
  [(VUIListCollectionViewCell *)&v7 setHighlighted:v4];
  if (self->_highlightedBackgroundColor && self->_backgroundColor)
  {
    v5 = [(VUIListCollectionViewCell *)self contentView];
    if ((v4 | [(VUIListCollectionViewCell *)self isSelected]))
    {
      p_highlightedBackgroundColor = &self->_highlightedBackgroundColor;
    }

    else
    {
      p_highlightedBackgroundColor = &self->_backgroundColor;
    }

    [v5 setBackgroundColor:*p_highlightedBackgroundColor];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VUIListCollectionViewCell;
  [(VUIListCollectionViewCell *)&v18 setSelected:?];
  if (self->_highlightedBackgroundColor && self->_backgroundColor)
  {
    v5 = [(VUIListCollectionViewCell *)self contentView];
    v6 = v5;
    if (v3)
    {
      p_highlightedBackgroundColor = &self->_highlightedBackgroundColor;
    }

    else
    {
      p_highlightedBackgroundColor = &self->_backgroundColor;
    }

    [v5 setBackgroundColor:*p_highlightedBackgroundColor];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(VUIListCollectionViewCell *)self contentView];
  v9 = [v8 subviews];

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) setHighlighted:v3];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
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