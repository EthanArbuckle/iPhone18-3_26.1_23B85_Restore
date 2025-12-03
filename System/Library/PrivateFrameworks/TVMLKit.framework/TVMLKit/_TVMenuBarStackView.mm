@interface _TVMenuBarStackView
- (_TVMenuBarStackView)initWithCoder:(id)coder;
- (_TVMenuBarStackView)initWithFrame:(CGRect)frame;
- (_TVMenuBarStackViewDelegate)delegate;
- (void)_buttonEventTouchUpInside:(id)inside;
- (void)_configureView;
- (void)setSelectedIndex:(unint64_t)index;
- (void)setTabBarItems:(id)items;
@end

@implementation _TVMenuBarStackView

- (_TVMenuBarStackView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVMenuBarStackView;
  v3 = [(_TVMenuBarStackView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVMenuBarStackView *)v3 _configureView];
  }

  return v4;
}

- (_TVMenuBarStackView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _TVMenuBarStackView;
  v3 = [(_TVMenuBarStackView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_TVMenuBarStackView *)v3 _configureView];
  }

  return v4;
}

- (void)setSelectedIndex:(unint64_t)index
{
  if (self->_selectedIndex != index)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_selectedIndex = index;
    arrangedSubviews = [(_TVMenuBarStackView *)self arrangedSubviews];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40___TVMenuBarStackView_setSelectedIndex___block_invoke;
    v7[3] = &unk_279D6E820;
    v7[4] = self;
    [arrangedSubviews enumerateObjectsUsingBlock:v7];
  }
}

- (void)setTabBarItems:(id)items
{
  v32 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if (self->_tabBarItems != itemsCopy)
  {
    subviews = [(_TVMenuBarStackView *)self subviews];
    v6 = [subviews copy];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(_TVMenuBarStackView *)self removeArrangedSubview:*(*(&v26 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    v21 = itemsCopy;
    v12 = [(NSArray *)itemsCopy copy];
    tabBarItems = self->_tabBarItems;
    self->_tabBarItems = v12;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = self->_tabBarItems;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        v18 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * v18);
          v20 = [_TVMenuBarStackButton buttonWithType:1];
          [v20 setTabBarItem:v19];
          [v20 addTarget:self action:sel__buttonEventTouchUpInside_ forControlEvents:64];
          [(_TVMenuBarStackView *)self addArrangedSubview:v20];

          ++v18;
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    itemsCopy = v21;
  }
}

- (void)_buttonEventTouchUpInside:(id)inside
{
  insideCopy = inside;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  arrangedSubviews = [(_TVMenuBarStackView *)self arrangedSubviews];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __49___TVMenuBarStackView__buttonEventTouchUpInside___block_invoke;
  v14 = &unk_279D6E848;
  v6 = insideCopy;
  v15 = v6;
  v16 = &v17;
  [arrangedSubviews enumerateObjectsUsingBlock:&v11];

  v7 = [(_TVMenuBarStackView *)self delegate:v11];

  if (v7)
  {
    selectedIndex = [(_TVMenuBarStackView *)self selectedIndex];
    if (selectedIndex == v18[3])
    {
      delegate = [(_TVMenuBarStackView *)self delegate];
      [delegate stackView:self poppedToRootForIndex:v18[3]];
    }

    delegate2 = [(_TVMenuBarStackView *)self delegate];
    [delegate2 stackView:self selectedIndex:v18[3]];
  }

  [(_TVMenuBarStackView *)self setSelectedIndex:v18[3]];

  _Block_object_dispose(&v17, 8);
}

- (void)_configureView
{
  self->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(_TVMenuBarStackView *)self setAlignment:3];
  [(_TVMenuBarStackView *)self setAxis:0];
  LODWORD(v3) = 1132068864;
  [(_TVMenuBarStackView *)self setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1132068864;
  [(_TVMenuBarStackView *)self setContentHuggingPriority:1 forAxis:v4];
  [(_TVMenuBarStackView *)self setDistribution:0];

  [(_TVMenuBarStackView *)self setSpacing:36.0];
}

- (_TVMenuBarStackViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end