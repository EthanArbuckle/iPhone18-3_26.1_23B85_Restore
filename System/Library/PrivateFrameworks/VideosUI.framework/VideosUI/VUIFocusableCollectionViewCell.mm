@interface VUIFocusableCollectionViewCell
- (VUIFocusableCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_updateBackgroundAndHighlightColor;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation VUIFocusableCollectionViewCell

- (VUIFocusableCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VUIFocusableCollectionViewCell;
  v3 = [(VUIFocusableCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(VUIFocusableCollectionViewCell *)v3 setAutoresizingMask:1];
    v4->_allowsFocus = 1;
  }

  return v4;
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = VUIFocusableCollectionViewCell;
  [(VUIFocusableCollectionViewCell *)&v2 prepareForReuse];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = VUIFocusableCollectionViewCell;
  [(VUIFocusableCollectionViewCell *)&v16 setHighlighted:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentView = [(VUIFocusableCollectionViewCell *)self contentView];
  subviews = [contentView subviews];

  v7 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 setHighlighted:highlightedCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_updateBackgroundAndHighlightColor
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];
}

@end