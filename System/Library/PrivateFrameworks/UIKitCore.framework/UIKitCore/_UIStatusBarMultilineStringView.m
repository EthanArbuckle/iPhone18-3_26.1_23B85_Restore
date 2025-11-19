@interface _UIStatusBarMultilineStringView
- (_UIStatusBarMultilineStringView)initWithFrame:(CGRect)a3;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)applyStyleAttributes:(id)a3;
- (void)setNumberOfLines:(int64_t)a3;
@end

@implementation _UIStatusBarMultilineStringView

- (_UIStatusBarMultilineStringView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = _UIStatusBarMultilineStringView;
  v3 = [(UIView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [UIStackView alloc];
  [(UIView *)v3 bounds];
  v5 = [(UIStackView *)v4 initWithFrame:?];
  stackView = v3->_stackView;
  v3->_stackView = v5;

  [(UIStackView *)v3->_stackView setAxis:1];
  [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v3 addSubview:v3->_stackView];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(UIView *)v3 leadingAnchor];
  v9 = [(UIView *)v3->_stackView leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v7 addObject:v10];

  v11 = [(UIView *)v3 trailingAnchor];
  v12 = [(UIView *)v3->_stackView trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v7 addObject:v13];

  v14 = [(UIView *)v3 topAnchor];
  v15 = [(UIView *)v3->_stackView topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v7 addObject:v16];

  v17 = [(UIView *)v3 bottomAnchor];
  v18 = [(UIView *)v3->_stackView bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v7 addObject:v19];

  [MEMORY[0x1E69977A0] activateConstraints:v7];
  return v3;
}

- (void)setNumberOfLines:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_numberOfLines != a3)
  {
    v3 = a3;
    self->_numberOfLines = a3;
    v5 = [(UIStackView *)self->_stackView arrangedSubviews];
    v6 = [v5 copy];

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

    if (v3 >= 1)
    {
      do
      {
        v12 = objc_alloc_init(_UIStatusBarStringView);
        [(UIStackView *)self->_stackView addArrangedSubview:v12];

        --v3;
      }

      while (v3);
    }
  }
}

- (void)applyStyleAttributes:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(_UIStatusBarMultilineStringView *)self stringViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) applyStyleAttributes:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)viewForFirstBaselineLayout
{
  v2 = [(_UIStatusBarMultilineStringView *)self stringViews];
  v3 = [v2 firstObject];

  return v3;
}

- (id)viewForLastBaselineLayout
{
  v2 = [(_UIStatusBarMultilineStringView *)self stringViews];
  v3 = [v2 lastObject];

  return v3;
}

@end