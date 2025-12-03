@interface _UIStatusBarMultilineStringView
- (_UIStatusBarMultilineStringView)initWithFrame:(CGRect)frame;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)applyStyleAttributes:(id)attributes;
- (void)setNumberOfLines:(int64_t)lines;
@end

@implementation _UIStatusBarMultilineStringView

- (_UIStatusBarMultilineStringView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = _UIStatusBarMultilineStringView;
  v3 = [(UIView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [UIStackView alloc];
  [(UIView *)v3 bounds];
  v5 = [(UIStackView *)v4 initWithFrame:?];
  stackView = v3->_stackView;
  v3->_stackView = v5;

  [(UIStackView *)v3->_stackView setAxis:1];
  [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v3 addSubview:v3->_stackView];
  array = [MEMORY[0x1E695DF70] array];
  leadingAnchor = [(UIView *)v3 leadingAnchor];
  leadingAnchor2 = [(UIView *)v3->_stackView leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v10];

  trailingAnchor = [(UIView *)v3 trailingAnchor];
  trailingAnchor2 = [(UIView *)v3->_stackView trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v13];

  topAnchor = [(UIView *)v3 topAnchor];
  topAnchor2 = [(UIView *)v3->_stackView topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v16];

  bottomAnchor = [(UIView *)v3 bottomAnchor];
  bottomAnchor2 = [(UIView *)v3->_stackView bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v19];

  [MEMORY[0x1E69977A0] activateConstraints:array];
  return v3;
}

- (void)setNumberOfLines:(int64_t)lines
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_numberOfLines != lines)
  {
    linesCopy = lines;
    self->_numberOfLines = lines;
    arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
    v6 = [arrangedSubviews copy];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(UIStackView *)self->_stackView removeArrangedSubview:*(*(&v13 + 1) + 8 * v11++), v13];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    if (linesCopy >= 1)
    {
      do
      {
        v12 = objc_alloc_init(_UIStatusBarStringView);
        [(UIStackView *)self->_stackView addArrangedSubview:v12];

        --linesCopy;
      }

      while (linesCopy);
    }
  }
}

- (void)applyStyleAttributes:(id)attributes
{
  v15 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  stringViews = [(_UIStatusBarMultilineStringView *)self stringViews];
  v6 = [stringViews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(stringViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) applyStyleAttributes:attributesCopy];
      }

      while (v7 != v9);
      v7 = [stringViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)viewForFirstBaselineLayout
{
  stringViews = [(_UIStatusBarMultilineStringView *)self stringViews];
  firstObject = [stringViews firstObject];

  return firstObject;
}

- (id)viewForLastBaselineLayout
{
  stringViews = [(_UIStatusBarMultilineStringView *)self stringViews];
  lastObject = [stringViews lastObject];

  return lastObject;
}

@end