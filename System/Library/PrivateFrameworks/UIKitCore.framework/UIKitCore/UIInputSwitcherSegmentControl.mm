@interface UIInputSwitcherSegmentControl
- (UIInputSwitcherSegmentControl)initWithFrame:(CGRect)frame;
- (unint64_t)numberOfSegments;
- (void)_populateSegmentViewsWithCount:(unint64_t)count;
- (void)_removeAllSegmentViews;
- (void)layoutSubviews;
- (void)setSegmentImages:(id)images;
- (void)setSegmentTitles:(id)titles;
- (void)setSelectedSegmentIndex:(int64_t)index;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateSelectionWithPoint:(CGPoint)point;
@end

@implementation UIInputSwitcherSegmentControl

- (UIInputSwitcherSegmentControl)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UIInputSwitcherSegmentControl;
  v3 = [(UIControl *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIStackView alloc];
    v5 = [(UIStackView *)v4 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
    stackView = v3->_stackView;
    v3->_stackView = v5;

    [(UIStackView *)v3->_stackView setAxis:0];
    [(UIStackView *)v3->_stackView setDistribution:1];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setSpacing:9.0];
    [(UIView *)v3->_stackView setSemanticContentAttribute:2];
    [(UIView *)v3 addSubview:v3->_stackView];
  }

  return v3;
}

- (void)setSelectedSegmentIndex:(int64_t)index
{
  self->_selectedSegmentIndex = index;
  stackView = [(UIInputSwitcherSegmentControl *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];
  v7 = [arrangedSubviews count];

  if (v7)
  {
    v8 = 0;
    do
    {
      stackView2 = [(UIInputSwitcherSegmentControl *)self stackView];
      arrangedSubviews2 = [stackView2 arrangedSubviews];
      v11 = [arrangedSubviews2 objectAtIndexedSubscript:v8];

      [v11 setSelected:index == v8];
      ++v8;
      stackView3 = [(UIInputSwitcherSegmentControl *)self stackView];
      arrangedSubviews3 = [stackView3 arrangedSubviews];
      v14 = [arrangedSubviews3 count];
    }

    while (v8 < v14);
  }

  [(UIControl *)self sendActionsForControlEvents:4096];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIInputSwitcherSegmentControl;
  [(UIView *)&v3 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_stackView setFrame:?];
}

- (void)_removeAllSegmentViews
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  stackView = [(UIInputSwitcherSegmentControl *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];

  v5 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        stackView2 = [(UIInputSwitcherSegmentControl *)self stackView];
        [stackView2 removeArrangedSubview:v9];

        [v9 removeFromSuperview];
        ++v8;
      }

      while (v6 != v8);
      v6 = [arrangedSubviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_populateSegmentViewsWithCount:(unint64_t)count
{
  if (count)
  {
    countCopy = count;
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v9 = [[UIInputSwitcherTableCellSegmentView alloc] initWithFrame:v5, v6, v7, v8];
      [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      stackView = [(UIInputSwitcherSegmentControl *)self stackView];
      [stackView addArrangedSubview:v9];

      backgroundView = [(UIInputSwitcherTableCellSegmentView *)v9 backgroundView];
      [backgroundView setRoundedCorners:-1];

      [(UIInputSwitcherTableCellSegmentView *)v9 setUsesDarkTheme:[(UIInputSwitcherSegmentControl *)self usesDarkTheme]];
      topAnchor = [(UIView *)v9 topAnchor];
      stackView2 = [(UIInputSwitcherSegmentControl *)self stackView];
      topAnchor2 = [stackView2 topAnchor];
      v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v15 setActive:1];

      bottomAnchor = [(UIView *)v9 bottomAnchor];
      stackView3 = [(UIInputSwitcherSegmentControl *)self stackView];
      bottomAnchor2 = [stackView3 bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v19 setActive:1];

      --countCopy;
    }

    while (countCopy);
  }
}

- (void)setSegmentTitles:(id)titles
{
  titlesCopy = titles;
  [(UIInputSwitcherSegmentControl *)self _removeAllSegmentViews];
  -[UIInputSwitcherSegmentControl _populateSegmentViewsWithCount:](self, "_populateSegmentViewsWithCount:", [titlesCopy count]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__UIInputSwitcherSegmentControl_setSegmentTitles___block_invoke;
  v5[3] = &unk_1E70FA6E8;
  v5[4] = self;
  [titlesCopy enumerateObjectsUsingBlock:v5];
}

void __50__UIInputSwitcherSegmentControl_setSegmentTitles___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 stackView];
  v7 = [v6 arrangedSubviews];
  v9 = [v7 objectAtIndex:a3];

  v8 = [v9 label];
  [v8 setText:v5];
}

- (void)setSegmentImages:(id)images
{
  imagesCopy = images;
  [(UIInputSwitcherSegmentControl *)self _removeAllSegmentViews];
  -[UIInputSwitcherSegmentControl _populateSegmentViewsWithCount:](self, "_populateSegmentViewsWithCount:", [imagesCopy count]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__UIInputSwitcherSegmentControl_setSegmentImages___block_invoke;
  v5[3] = &unk_1E710E3F8;
  v5[4] = self;
  [imagesCopy enumerateObjectsUsingBlock:v5];
}

void __50__UIInputSwitcherSegmentControl_setSegmentImages___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 stackView];
  v7 = [v6 arrangedSubviews];
  v9 = [v7 objectAtIndex:a3];

  v8 = [v9 imageView];
  [v8 setImage:v5];
}

- (void)updateSelectionWithPoint:(CGPoint)point
{
  x = point.x;
  [(UIView *)self bounds:point.x];
  v6 = (x / (v5 / [(UIInputSwitcherSegmentControl *)self numberOfSegments]));
  if ([(UIInputSwitcherSegmentControl *)self numberOfSegments]> v6)
  {

    [(UIInputSwitcherSegmentControl *)self setSelectedSegmentIndex:v6];
  }
}

- (unint64_t)numberOfSegments
{
  stackView = [(UIInputSwitcherSegmentControl *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];
  v4 = [arrangedSubviews count];

  return v4;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  [anyObject locationInView:self];
  [(UIInputSwitcherSegmentControl *)self updateSelectionWithPoint:?];

  v9.receiver = self;
  v9.super_class = UIInputSwitcherSegmentControl;
  [(UIControl *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  anyObject = [movedCopy anyObject];
  [anyObject locationInView:self];
  [(UIInputSwitcherSegmentControl *)self updateSelectionWithPoint:?];

  v9.receiver = self;
  v9.super_class = UIInputSwitcherSegmentControl;
  [(UIControl *)&v9 touchesMoved:movedCopy withEvent:eventCopy];
}

@end