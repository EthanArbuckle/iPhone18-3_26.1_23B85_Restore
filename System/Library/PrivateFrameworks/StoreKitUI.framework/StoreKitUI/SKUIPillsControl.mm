@interface SKUIPillsControl
- (CGRect)selectedPillFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIPillsControl)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadPills;
- (void)setColorScheme:(id)scheme;
@end

@implementation SKUIPillsControl

- (SKUIPillsControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPillsControl initWithFrame:];
  }

  v16.receiver = self;
  v16.super_class = SKUIPillsControl;
  height = [(SKUIPillsControl *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = [SKUISegmentedControl alloc];
    v10 = [(SKUISegmentedControl *)v9 initWithItems:MEMORY[0x277CBEBF8]];
    segmentedControl = height->_segmentedControl;
    height->_segmentedControl = v10;

    [(SKUISegmentedControl *)height->_segmentedControl addTarget:height action:sel__segmentedControlAction_ forControlEvents:4096];
    v12 = height->_segmentedControl;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.588235294 alpha:1.0];
    [(SKUISegmentedControl *)v12 setTintColor:v13];

    [(SKUIPillsControl *)height addSubview:height->_segmentedControl];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SKUIPillsControl *)height setBackgroundColor:whiteColor];
  }

  return height;
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
  selectedIndex = [(SKUIPillsControl *)self selectedIndex];

  [(SKUISegmentedControl *)segmentedControl frameForSegmentAtIndex:selectedIndex];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v11 = schemeCopy;
    v5 = [(SKUIColorScheme *)schemeCopy copy];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v5;

    segmentedControl = self->_segmentedControl;
    if (self->_colorScheme)
    {
      secondaryTextColor = [(SKUIColorScheme *)v11 secondaryTextColor];
      [(SKUISegmentedControl *)segmentedControl setTintColor:secondaryTextColor];

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

    schemeCopy = v11;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SKUISegmentedControl *)self->_segmentedControl sizeThatFits:fits.width, fits.height];
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