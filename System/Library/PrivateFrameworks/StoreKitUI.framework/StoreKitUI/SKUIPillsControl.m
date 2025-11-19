@interface SKUIPillsControl
- (CGRect)selectedPillFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIPillsControl)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadPills;
- (void)setColorScheme:(id)a3;
@end

@implementation SKUIPillsControl

- (SKUIPillsControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPillsControl initWithFrame:];
  }

  v16.receiver = self;
  v16.super_class = SKUIPillsControl;
  v8 = [(SKUIPillsControl *)&v16 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [SKUISegmentedControl alloc];
    v10 = [(SKUISegmentedControl *)v9 initWithItems:MEMORY[0x277CBEBF8]];
    segmentedControl = v8->_segmentedControl;
    v8->_segmentedControl = v10;

    [(SKUISegmentedControl *)v8->_segmentedControl addTarget:v8 action:sel__segmentedControlAction_ forControlEvents:4096];
    v12 = v8->_segmentedControl;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.588235294 alpha:1.0];
    [(SKUISegmentedControl *)v12 setTintColor:v13];

    [(SKUIPillsControl *)v8 addSubview:v8->_segmentedControl];
    v14 = [MEMORY[0x277D75348] whiteColor];
    [(SKUIPillsControl *)v8 setBackgroundColor:v14];
  }

  return v8;
}

- (void)dealloc
{
  [(SKUISegmentedControl *)self->_segmentedControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIPillsControl;
  [(SKUIPillsControl *)&v3 dealloc];
}

- (void)reloadPills
{
  [(SKUISegmentedControl *)self->_segmentedControl removeAllSegments];
  v3 = [(NSArray *)self->_titles count];
  v4 = v3;
  maximumNumberOfVisiblePills = self->_maximumNumberOfVisiblePills;
  if (maximumNumberOfVisiblePills >= v3 || maximumNumberOfVisiblePills <= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = maximumNumberOfVisiblePills - 1;
  }

  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      segmentedControl = self->_segmentedControl;
      v10 = [(NSArray *)self->_titles objectAtIndex:i];
      [(SKUISegmentedControl *)segmentedControl insertSegmentWithTitle:v10 atIndex:i animated:0];
    }

    maximumNumberOfVisiblePills = self->_maximumNumberOfVisiblePills;
  }

  if (maximumNumberOfVisiblePills)
  {
    v11 = maximumNumberOfVisiblePills < v4;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    [(SKUISegmentedControl *)self->_segmentedControl insertSegmentWithTitle:self->_moreListTitle atIndex:v7 animated:0];
  }

  [(SKUIPillsControl *)self setNeedsLayout];
}

- (CGRect)selectedPillFrame
{
  segmentedControl = self->_segmentedControl;
  v3 = [(SKUIPillsControl *)self selectedIndex];

  [(SKUISegmentedControl *)segmentedControl frameForSegmentAtIndex:v3];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setColorScheme:(id)a3
{
  v4 = a3;
  if (self->_colorScheme != v4)
  {
    v11 = v4;
    v5 = [(SKUIColorScheme *)v4 copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v5;

    segmentedControl = self->_segmentedControl;
    if (self->_colorScheme)
    {
      v8 = [(SKUIColorScheme *)v11 secondaryTextColor];
      [(SKUISegmentedControl *)segmentedControl setTintColor:v8];

      [(SKUIColorScheme *)v11 backgroundColor];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.588235294 alpha:1.0];
      [(SKUISegmentedControl *)segmentedControl setTintColor:v9];

      [MEMORY[0x277D75348] whiteColor];
    }
    v10 = ;
    [(SKUIPillsControl *)self setBackgroundColor:v10];

    v4 = v11;
  }
}

- (void)layoutSubviews
{
  [(SKUIPillsControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v3 - self->_contentInset.left - self->_contentInset.right;
  [(SKUISegmentedControl *)self->_segmentedControl frame];
  [(SKUISegmentedControl *)self->_segmentedControl sizeThatFits:v4, v6];
  v9 = v8;
  segmentedControl = self->_segmentedControl;
  top = self->_contentInset.top;
  left = self->_contentInset.left;

  [(SKUISegmentedControl *)segmentedControl setFrame:left, top, v7, v9];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SKUISegmentedControl *)self->_segmentedControl sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPillsControl initWithFrame:]";
}

@end