@interface SUSegmentedControl
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)items;
- (SUSegmentedControl)initWithFrame:(CGRect)frame;
- (id)_titlesForMoreList;
- (int64_t)numberOfVisibleSegments;
- (void)_applyStyling;
- (void)_destroyMenuViewController;
- (void)_destroyPopoverController;
- (void)_presentPopoverAnimated:(BOOL)animated;
- (void)_reloadData;
- (void)_setValue:(id)value forSegmentAtIndex:(unint64_t)index;
- (void)_showMoreList:(BOOL)list;
- (void)_valueChangedEvent:(id)event;
- (void)_windowDidRotateNotification:(id)notification;
- (void)_windowWillRotateNotification:(id)notification;
- (void)dealloc;
- (void)layoutSubviews;
- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)menuViewControllerDidCancel:(id)cancel;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)setCancelButtonTitle:(id)title;
- (void)setClientInterface:(id)interface;
- (void)setItems:(id)items;
- (void)setMaximumNumberOfItems:(int64_t)items;
- (void)setMaximumWidth:(double)width;
- (void)setMoreListTitle:(id)title;
- (void)setSegmentedControlStyle:(int64_t)style;
- (void)setSelectedItemIndex:(int64_t)index;
- (void)setTintColor:(id)color;
- (void)setTintStyle:(int64_t)style;
- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)showMoreList:(BOOL)list animated:(BOOL)animated;
- (void)showPopover:(id)popover fromSegmentIndex:(int64_t)index animated:(BOOL)animated;
- (void)sizeToFitUserInterfaceIdiom;
- (void)sizeToFitWithMinimumSegmentWidth:(double)width maximumTotalWidth:(double)totalWidth;
@end

@implementation SUSegmentedControl

- (SUSegmentedControl)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SUSegmentedControl;
  v3 = [(SUSegmentedControl *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF38]);
    [(SUSegmentedControl *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    v3->_segmentedControl = v5;
    [(UISegmentedControl *)v5 addTarget:v3 action:sel__valueChangedEvent_ forControlEvents:4096];
    [(UISegmentedControl *)v3->_segmentedControl setAutoresizingMask:18];
    [(UISegmentedControl *)v3->_segmentedControl _setAutosizeText:1];
    [(SUSegmentedControl *)v3 addSubview:v3->_segmentedControl];
    v3->_cancelButtonTitle = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SEGMENTED_CONTROL_MORE_CANCEL", &stru_1F41B3660, 0}];
    v3->_maximumNumberOfItems = 0x7FFFFFFFFFFFFFFFLL;
    v3->_moreListTitle = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"SEGMENTED_CONTROL_MORE_TITLE", &stru_1F41B3660, 0}];
    v3->_selectionIndex = [(UISegmentedControl *)v3->_segmentedControl selectedSegmentIndex];
    v3->_showsMoreListAutomatically = 1;
    v3->_tintStyle = _UIApplicationUsesLegacyUI();
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__windowDidRotateNotification_ name:*MEMORY[0x1E69DE7D0] object:0];
    [defaultCenter addObserver:v3 selector:sel__windowWillRotateNotification_ name:*MEMORY[0x1E69DE828] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE7D0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE828] object:0];
  [(UISegmentedControl *)self->_segmentedControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(SUMenuViewController *)self->_menuViewController setDelegate:0];
  [(UIPopoverController *)self->_popoverController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUSegmentedControl;
  [(SUSegmentedControl *)&v4 dealloc];
}

- (NSArray)items
{
  v2 = [(NSMutableArray *)self->_items copy];

  return v2;
}

- (int64_t)numberOfVisibleSegments
{
  maximumNumberOfItems = self->_maximumNumberOfItems;
  result = [(NSMutableArray *)self->_items count];
  if (maximumNumberOfItems < result)
  {
    return maximumNumberOfItems;
  }

  return result;
}

- (void)setCancelButtonTitle:(id)title
{
  cancelButtonTitle = self->_cancelButtonTitle;
  if (cancelButtonTitle != title)
  {

    self->_cancelButtonTitle = [title copy];
    if (![objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
    {
      menuViewController = self->_menuViewController;

      [(SUSimpleMenuViewController *)menuViewController setCancelButtonTitle:title];
    }
  }
}

- (void)setClientInterface:(id)interface
{
  clientInterface = self->_clientInterface;
  if (clientInterface != interface)
  {

    self->_clientInterface = interface;

    [(SUSegmentedControl *)self _applyStyling];
  }
}

- (void)setItems:(id)items
{
  items = self->_items;
  if (items != items)
  {

    v6 = [items mutableCopy];
    self->_items = v6;
    selectionIndex = self->_selectionIndex;
    if (selectionIndex >= [(NSMutableArray *)v6 count])
    {
      self->_selectionIndex = -1;
    }

    [(SUSegmentedControl *)self _reloadData];
  }
}

- (void)setMaximumNumberOfItems:(int64_t)items
{
  if (self->_maximumNumberOfItems != items)
  {
    self->_maximumNumberOfItems = items;
    [(SUSegmentedControl *)self _reloadData];
  }
}

- (void)setMoreListTitle:(id)title
{
  moreListTitle = self->_moreListTitle;
  if (moreListTitle != title)
  {

    self->_moreListTitle = [title copy];

    [(SUSegmentedControl *)self _reloadData];
  }
}

- (void)setMaximumWidth:(double)width
{
  if (self->_maximumWidth != width)
  {
    [(SUSegmentedControl *)self frame];
    self->_maximumWidth = width;
    if (width > 0.00000011920929 && v5 > width)
    {

      [(SUSegmentedControl *)self setFrame:?];
    }
  }
}

- (void)setSegmentedControlStyle:(int64_t)style
{
  [(UISegmentedControl *)self->_segmentedControl setSegmentedControlStyle:style];

  [(SUSegmentedControl *)self _applyStyling];
}

- (void)setSelectedItemIndex:(int64_t)index
{
  self->_selectionIndex = index;
  v4 = [(NSMutableArray *)self->_items count];
  maximumNumberOfItems = self->_maximumNumberOfItems;
  if (self->_selectionIndex >= (maximumNumberOfItems - 1) && v4 > maximumNumberOfItems)
  {
    selectionIndex = -1;
  }

  else
  {
    selectionIndex = self->_selectionIndex;
  }

  segmentedControl = self->_segmentedControl;

  [(UISegmentedControl *)segmentedControl setSelectedSegmentIndex:selectionIndex];
}

- (void)setTintColor:(id)color
{
  [(UISegmentedControl *)self->_segmentedControl setTintColor:color];

  [(SUSegmentedControl *)self _applyStyling];
}

- (void)setTintStyle:(int64_t)style
{
  if (self->_tintStyle != style)
  {
    self->_tintStyle = style;
    [(SUSegmentedControl *)self _applyStyling];
  }
}

- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  v7 = objc_opt_respondsToSelector();
  segmentedControl = self->_segmentedControl;
  if (v7)
  {

    [(UISegmentedControl *)segmentedControl _setTitleTextAttributes:attributes forState:state];
  }

  else
  {

    [(UISegmentedControl *)segmentedControl setTitleTextAttributes:attributes forState:state];
  }
}

- (void)showMoreList:(BOOL)list animated:(BOOL)animated
{
  animatedCopy = animated;
  listCopy = list;
  if ([(NSMutableArray *)self->_items count]> self->_maximumNumberOfItems)
  {
    menuViewController = self->_menuViewController;
    if (listCopy)
    {
      if (!menuViewController)
      {

        [(SUSegmentedControl *)self _showMoreList:animatedCopy];
      }
    }

    else if (menuViewController)
    {
      [(SUSegmentedControl *)self setSelectedItemIndex:self->_selectionIndex];
      [(UIViewController *)self->_menuViewController dismissAnimated:animatedCopy];
      [(SUSegmentedControl *)self _destroyMenuViewController];

      [(SUSegmentedControl *)self _destroyPopoverController];
    }
  }
}

- (void)showPopover:(id)popover fromSegmentIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  [(SUSegmentedControl *)self bounds];
  v10 = v9;
  v12 = v11 / [(SUSegmentedControl *)self numberOfVisibleSegments];
  v13 = index * floorf(v12);

  [popover presentPopoverFromRect:self inView:1 permittedArrowDirections:animatedCopy animated:{v13, v10}];
}

- (void)sizeToFitUserInterfaceIdiom
{
  v3 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  [(SUSegmentedControl *)self maximumWidth];
  v5 = 300.0;
  if (v4 >= 0.00000011920929)
  {
    v5 = v4;
  }

  if (v3 == 1)
  {
    v5 = v4;
  }

  [(SUSegmentedControl *)self sizeToFitWithMinimumSegmentWidth:100.0 maximumTotalWidth:v5];
}

- (void)sizeToFitWithMinimumSegmentWidth:(double)width maximumTotalWidth:(double)totalWidth
{
  [(SUSegmentedControl *)self sizeToFit];
  [(SUSegmentedControl *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (width > 0.00000011920929)
  {
    numberOfVisibleSegments = [(SUSegmentedControl *)self numberOfVisibleSegments];
    if (v12 < numberOfVisibleSegments * width)
    {
      v12 = numberOfVisibleSegments * width;
    }
  }

  if (v12 >= totalWidth)
  {
    totalWidthCopy = totalWidth;
  }

  else
  {
    totalWidthCopy = v12;
  }

  if (totalWidth <= 0.00000011920929)
  {
    v17 = v12;
  }

  else
  {
    v17 = totalWidthCopy;
  }

  [(SUSegmentedControl *)self setFrame:v8, v10, v17, v14];
}

- (void)layoutSubviews
{
  segmentedControl = self->_segmentedControl;
  [(SUSegmentedControl *)self bounds];
  [(UISegmentedControl *)segmentedControl setFrame:?];
  v4.receiver = self;
  v4.super_class = SUSegmentedControl;
  [(SUSegmentedControl *)&v4 layoutSubviews];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UISegmentedControl *)self->_segmentedControl sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  if ([(UISegmentedControl *)self->_segmentedControl segmentControlStyle]== 7)
  {
    [MEMORY[0x1E69DCF38] defaultHeightForStyle:7];
    v7 = v8;
  }

  [(SUSegmentedControl *)self maximumWidth];
  if (v9 >= v5 || v9 <= 0.00000011920929)
  {
    v9 = v5;
  }

  v11 = v7;
  result.height = v11;
  result.width = v9;
  return result;
}

- (void)_valueChangedEvent:(id)event
{
  selectedSegmentIndex = [(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex];
  [(UIPopoverController *)self->_popoverController dismissPopoverAnimated:1];
  [(SUSegmentedControl *)self _destroyPopoverController];
  v5 = [(NSMutableArray *)self->_items count];
  maximumNumberOfItems = self->_maximumNumberOfItems;
  if (v5 > maximumNumberOfItems && selectedSegmentIndex == maximumNumberOfItems - 1)
  {
    if ([(SUSegmentedControl *)self showsMoreListAutomatically])
    {
      [(SUSegmentedControl *)self _showMoreList:1];
    }
  }

  else
  {
    self->_selectionIndex = selectedSegmentIndex;
    [(UIViewController *)self->_menuViewController dismissAnimated:1];
    [(SUSegmentedControl *)self _destroyMenuViewController];
    [(SUSegmentedControl *)self _destroyPopoverController];
  }

  [(SUSegmentedControl *)self sendActionsForControlEvents:4096];
}

- (void)_windowDidRotateNotification:(id)notification
{
  if (self->_hidingPopoverForRotation)
  {
    self->_hidingPopoverForRotation = 0;
    if ([(UISegmentedControl *)self->_segmentedControl window])
    {

      [(SUSegmentedControl *)self _presentPopoverAnimated:1];
    }

    else
    {
      [(SUSegmentedControl *)self setSelectedItemIndex:self->_selectionIndex];
      [(SUSegmentedControl *)self _destroyMenuViewController];

      [(SUSegmentedControl *)self _destroyPopoverController];
    }
  }
}

- (void)_windowWillRotateNotification:(id)notification
{
  object = [notification object];
  if (self->_popoverController && [(SUSegmentedControl *)self isDescendantOfView:object])
  {
    self->_hidingPopoverForRotation = 1;
    popoverController = self->_popoverController;

    [(UIPopoverController *)popoverController dismissPopoverAnimated:0];
  }
}

- (void)menuViewControllerDidCancel:(id)cancel
{
  [(SUSegmentedControl *)self setSelectedItemIndex:self->_selectionIndex];
  [cancel dismissAnimated:1];
  [(SUSegmentedControl *)self _destroyMenuViewController];

  [(SUSegmentedControl *)self _destroyPopoverController];
}

- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  if (index + self->_maximumNumberOfItems - 1 != self->_selectionIndex)
  {
    [(SUSegmentedControl *)self setSelectedItemIndex:?];
    [(SUSegmentedControl *)self sendActionsForControlEvents:4096];
  }

  [controller dismissAnimated:1];
  [(SUSegmentedControl *)self _destroyMenuViewController];

  [(SUSegmentedControl *)self _destroyPopoverController];
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  [(SUSegmentedControl *)self setSelectedItemIndex:self->_selectionIndex];
  [(SUSegmentedControl *)self _destroyMenuViewController];

  [(SUSegmentedControl *)self _destroyPopoverController];
}

- (void)_applyStyling
{
  if ([(UISegmentedControl *)self->_segmentedControl tintColor])
  {
    if (objc_opt_respondsToSelector())
    {
      [(UISegmentedControl *)self->_segmentedControl _setOptionsBackgroundImage:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [(UISegmentedControl *)self->_segmentedControl _setBackgroundImage:0 forState:0 barMetrics:0];
      [(UISegmentedControl *)self->_segmentedControl _setBackgroundImage:0 forState:4 barMetrics:0];
    }

    if (objc_opt_respondsToSelector())
    {
      [(UISegmentedControl *)self->_segmentedControl _setDividerImage:0 forLeftSegmentState:0 rightSegmentState:0 barMetrics:0];
      segmentedControl = self->_segmentedControl;

      [(UISegmentedControl *)segmentedControl _setDividerImage:0 forLeftSegmentState:0 rightSegmentState:4 barMetrics:0];
    }
  }

  else
  {
    appearance = [(SUClientInterface *)[(SUSegmentedControl *)self clientInterface] appearance];
    if (!appearance)
    {
      appearance = +[SUUIAppearance defaultAppearance];
    }

    v5 = self->_segmentedControl;
    tintStyle = self->_tintStyle;

    [(SUUIAppearance *)appearance styleSegmentedControl:v5 tintStyle:tintStyle];
  }
}

- (void)_destroyMenuViewController
{
  [(SUMenuViewController *)self->_menuViewController setDelegate:0];

  self->_menuViewController = 0;
}

- (void)_destroyPopoverController
{
  [(UIPopoverController *)self->_popoverController setDelegate:0];

  self->_popoverController = 0;
}

- (void)_presentPopoverAnimated:(BOOL)animated
{
  if (self->_popoverController)
  {
    animatedCopy = animated;
    if ([(UISegmentedControl *)self->_segmentedControl window])
    {
      v5 = [(UISegmentedControl *)self->_segmentedControl infoViewForSegment:self->_maximumNumberOfItems - 1];
      [v5 frame];
      -[UISegmentedControl convertRect:fromView:](self->_segmentedControl, "convertRect:fromView:", [v5 superview], v6, v7, v8, v9);
      v11 = v10;
      [(UISegmentedControl *)self->_segmentedControl bounds];
      popoverController = self->_popoverController;
      segmentedControl = self->_segmentedControl;

      [(UIPopoverController *)popoverController presentPopoverFromRect:segmentedControl inView:1 permittedArrowDirections:animatedCopy animated:v11];
    }
  }
}

- (void)_reloadData
{
  [(UISegmentedControl *)self->_segmentedControl removeAllSegments];
  v3 = [(NSMutableArray *)self->_items count];
  maximumNumberOfItems = self->_maximumNumberOfItems;
  if (v3 <= maximumNumberOfItems)
  {
    v5 = v3;
  }

  else
  {
    v5 = maximumNumberOfItems - 1;
  }

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSMutableArray *)self->_items objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UISegmentedControl *)self->_segmentedControl insertSegmentWithTitle:v7 atIndex:i animated:0];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v7 atIndex:i animated:0];
        }
      }
    }
  }

  if (v5 < [(NSMutableArray *)self->_items count])
  {
    [(UISegmentedControl *)self->_segmentedControl insertSegmentWithTitle:self->_moreListTitle atIndex:self->_maximumNumberOfItems animated:0];
  }

  menuViewController = self->_menuViewController;
  if (menuViewController)
  {
    [(SUSimpleMenuViewController *)menuViewController setTitles:[(SUSegmentedControl *)self _titlesForMoreList]];
    [(UISegmentedControl *)self->_segmentedControl setSelectedSegment:self->_maximumNumberOfItems - 1];
  }

  else
  {
    [(SUSegmentedControl *)self setSelectedItemIndex:self->_selectionIndex];
  }

  [(SUSegmentedControl *)self setNeedsLayout];
}

- (void)_setValue:(id)value forSegmentAtIndex:(unint64_t)index
{
  if (value)
  {
    [(NSMutableArray *)self->_items replaceObjectAtIndex:index withObject:value];
    if ([(UISegmentedControl *)self->_segmentedControl numberOfSegments]> index)
    {
      segmentedControl = self->_segmentedControl;

      [(UISegmentedControl *)segmentedControl setImage:value forSegmentAtIndex:index];
    }
  }
}

- (void)_showMoreList:(BOOL)list
{
  listCopy = list;
  v5 = [[SUSimpleMenuViewController alloc] initWithTitles:[(SUSegmentedControl *)self _titlesForMoreList]];
  self->_menuViewController = v5;
  [(SUViewController *)v5 setClientInterface:[(SUSegmentedControl *)self clientInterface]];
  [(SUMenuViewController *)self->_menuViewController setDelegate:self];
  [(SUViewController *)self->_menuViewController setTitle:self->_moreListTitle];
  v6 = self->_maximumNumberOfItems - 1;
  selectionIndex = self->_selectionIndex;
  v8 = selectionIndex - v6;
  if (selectionIndex >= v6)
  {
    [(SUMenuViewController *)self->_menuViewController setSelectedIndex:v8];
  }

  if ([objc_msgSend(MEMORY[0x1E69DC938] currentDevice])
  {
    v9 = [objc_alloc(MEMORY[0x1E69DCDD8]) initWithContentViewController:self->_menuViewController];
    self->_popoverController = v9;
    [(UIPopoverController *)v9 _setPopoverBackgroundStyle:3];
    [(UIPopoverController *)self->_popoverController setDelegate:self];
    -[UIPopoverController setPassthroughViews:](self->_popoverController, "setPassthroughViews:", [MEMORY[0x1E695DEC8] arrayWithObject:self->_segmentedControl]);

    [(SUSegmentedControl *)self _presentPopoverAnimated:listCopy];
  }

  else
  {
    v10 = [[SUNavigationController alloc] initWithRootViewController:self->_menuViewController];
    [(SUNavigationController *)v10 setClientInterface:[(SUSegmentedControl *)self clientInterface]];
    [(SUSimpleMenuViewController *)self->_menuViewController setCancelButtonTitle:self->_cancelButtonTitle];
    [objc_msgSend(-[SUSegmentedControl window](self "window")];
  }
}

- (id)_titlesForMoreList
{
  v2 = self->_maximumNumberOfItems - 1;
  items = self->_items;
  v4 = [(NSMutableArray *)items count]- v2;

  return [(NSMutableArray *)items subarrayWithRange:v2, v4];
}

@end