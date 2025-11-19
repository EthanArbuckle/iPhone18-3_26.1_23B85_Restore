@interface SKUISegmentedControlViewElementController
- (SKUISegmentedControlViewElementController)initWithViewElement:(id)a3 segmentedControl:(id)a4;
- (UIViewController)parentViewController;
- (id)_segmentedControl;
- (void)_cancelMenuAction:(id)a3;
- (void)_connectToSegmentedControl:(id)a3;
- (void)_destroyMenuSheetViewController;
- (void)_destroyPopoverController;
- (void)_reloadPropertiesForSegmentedControl:(id)a3;
- (void)_showMoreListSheetWithTitles:(id)a3 selectedIndex:(int64_t)a4;
- (void)_showPopoverMoreListWithTitles:(id)a3;
- (void)dealloc;
- (void)menuPopover:(id)a3 didSelectMenuItemAtIndex:(int64_t)a4;
- (void)menuPopover:(id)a3 willRepositionToRect:(CGRect *)a4 inView:(id *)a5;
- (void)menuPopoverDidCancel:(id)a3;
- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)reloadAfterDocumentUpdate;
- (void)segmentedControl:(id)a3 showMoreListWithTitles:(id)a4;
- (void)setDefaultMaximumNumberOfVisibleItems:(int64_t)a3;
- (void)setDesiredSegmentWidth:(double)a3;
@end

@implementation SKUISegmentedControlViewElementController

- (SKUISegmentedControlViewElementController)initWithViewElement:(id)a3 segmentedControl:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUISegmentedControlViewElementController initWithViewElement:segmentedControl:];
  }

  v12.receiver = self;
  v12.super_class = SKUISegmentedControlViewElementController;
  v9 = [(SKUISegmentedControlViewElementController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_defaultMaximumNumberOfVisibleItems = -1;
    v9->_desiredSegmentWidth = 100.0;
    objc_storeStrong(&v9->_viewElement, a3);
    if (v8)
    {
      objc_storeStrong(&v10->_segmentedControl, a4);
      [(SKUISegmentedControlViewElementController *)v10 _connectToSegmentedControl:v8];
    }
  }

  return v10;
}

- (void)dealloc
{
  [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setTarget:0];
  [(SKUIMenuViewController *)self->_menuSheetViewController setDelegate:0];
  [(SKUIMenuPopoverController *)self->_popoverMenuViewController setDelegate:0];
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUISegmentedControlViewElementController;
  [(SKUISegmentedControlViewElementController *)&v3 dealloc];
}

- (void)reloadAfterDocumentUpdate
{
  if (self->_segmentedControl && [(SKUISegmentedControlViewElement *)self->_viewElement updateType])
  {
    segmentedControl = self->_segmentedControl;

    [(SKUISegmentedControlViewElementController *)self _connectToSegmentedControl:segmentedControl];
  }
}

- (void)setDefaultMaximumNumberOfVisibleItems:(int64_t)a3
{
  if (self->_defaultMaximumNumberOfVisibleItems != a3)
  {
    self->_defaultMaximumNumberOfVisibleItems = a3;
    [(SKUISegmentedControlViewElementController *)self _reloadPropertiesForSegmentedControl:self->_segmentedControl];
  }
}

- (void)setDesiredSegmentWidth:(double)a3
{
  if (self->_desiredSegmentWidth != a3)
  {
    self->_desiredSegmentWidth = a3;
    [(SKUIFlexibleSegmentedControl *)self->_segmentedControl setDesiredSegmentWidth:?];
  }
}

- (void)segmentedControl:(id)a3 showMoreListWithTitles:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    [(SKUISegmentedControlViewElementController *)self _showPopoverMoreListWithTitles:v6];
  }

  else
  {
    v7 = [v8 itemTitles];
    -[SKUISegmentedControlViewElementController _showMoreListSheetWithTitles:selectedIndex:](self, "_showMoreListSheetWithTitles:selectedIndex:", v7, [v8 selectedSegmentIndex]);
  }
}

- (void)menuPopoverDidCancel:(id)a3
{
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];

  [(SKUISegmentedControlViewElementController *)self _destroyPopoverController];
}

- (void)menuPopover:(id)a3 didSelectMenuItemAtIndex:(int64_t)a4
{
  v6 = [(SKUIFlexibleSegmentedControl *)self->_segmentedControl moreListIndex];
  [(SKUISegmentedControlViewElement *)self->_viewElement dispatchEventOfType:2 forItemAtIndex:v6 + a4];
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:v6 + a4];

  [(SKUISegmentedControlViewElementController *)self _destroyPopoverController];
}

- (void)menuPopover:(id)a3 willRepositionToRect:(CGRect *)a4 inView:(id *)a5
{
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl frameForSegmentWithIndex:[(SKUIFlexibleSegmentedControl *)self->_segmentedControl moreListIndex:a3]];
  a4->origin.x = v6;
  a4->origin.y = v7;
  a4->size.width = v8;
  a4->size.height = v9;
}

- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  [(SKUISegmentedControlViewElement *)self->_viewElement dispatchEventOfType:2 forItemAtIndex:?];
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:a4];
  [(SKUIMenuViewController *)self->_menuSheetViewController dismissViewControllerAnimated:1 completion:0];

  [(SKUISegmentedControlViewElementController *)self _destroyMenuSheetViewController];
}

- (void)_cancelMenuAction:(id)a3
{
  [(SKUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];
  [(SKUIMenuViewController *)self->_menuSheetViewController dismissViewControllerAnimated:1 completion:0];

  [(SKUISegmentedControlViewElementController *)self _destroyMenuSheetViewController];
}

- (void)_connectToSegmentedControl:(id)a3
{
  v8 = a3;
  [v8 setDelegate:self];
  [v8 setDesiredSegmentWidth:self->_desiredSegmentWidth];
  v4 = [(SKUISegmentedControlViewElement *)self->_viewElement segmentItemTitles];
  [v8 setItemTitles:v4];

  v5 = [(SKUISegmentedControlViewElement *)self->_viewElement moreListTitle];
  [v8 setMoreListTitle:v5];

  [v8 setSelectedSegmentIndex:{-[SKUISegmentedControlViewElement initialSelectedItemIndex](self->_viewElement, "initialSelectedItemIndex")}];
  v6 = [(SKUISegmentedControlViewElement *)self->_viewElement style];
  v7 = SKUIViewElementPlainColorWithStyle(v6, 0);
  [v8 setTintColor:v7];

  [(SKUISegmentedControlViewElementController *)self _reloadPropertiesForSegmentedControl:v8];
}

- (void)_destroyMenuSheetViewController
{
  [(SKUIMenuViewController *)self->_menuSheetViewController setDelegate:0];
  [(SKUIMenuViewController *)self->_menuSheetViewController dismissViewControllerAnimated:1 completion:0];
  menuSheetViewController = self->_menuSheetViewController;
  self->_menuSheetViewController = 0;

  [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setTarget:0];
  menuSheetCancelButtonItem = self->_menuSheetCancelButtonItem;
  self->_menuSheetCancelButtonItem = 0;
}

- (void)_destroyPopoverController
{
  [(SKUIMenuPopoverController *)self->_popoverMenuViewController setDelegate:0];
  popoverMenuViewController = self->_popoverMenuViewController;
  self->_popoverMenuViewController = 0;
}

- (void)_reloadPropertiesForSegmentedControl:(id)a3
{
  v8 = a3;
  defaultMaximumNumberOfVisibleItems = [(SKUISegmentedControlViewElement *)self->_viewElement maximumNumberOfVisibleItems];
  if (defaultMaximumNumberOfVisibleItems > 0 || (defaultMaximumNumberOfVisibleItems = self->_defaultMaximumNumberOfVisibleItems, defaultMaximumNumberOfVisibleItems >= 1))
  {
    [v8 setMaximumNumberOfVisibleItems:defaultMaximumNumberOfVisibleItems];
  }

  v5 = [(SKUISegmentedControlViewElement *)self->_viewElement style];
  v6 = [v5 valueForStyle:@"itml-segmented-control-width"];
  v7 = [v6 isEqualToString:@"full"];

  [v8 setSizesSegmentsToFitWidth:v7];
}

- (id)_segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = objc_alloc_init(SKUIFlexibleSegmentedControl);
    v5 = self->_segmentedControl;
    self->_segmentedControl = v4;

    [(SKUISegmentedControlViewElementController *)self _connectToSegmentedControl:self->_segmentedControl];
    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (void)_showMoreListSheetWithTitles:(id)a3 selectedIndex:(int64_t)a4
{
  if (!self->_menuSheetViewController)
  {
    v7 = a3;
    v27 = [(SKUISegmentedControlViewElementController *)self parentViewController];
    v8 = [v27 navigationController];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 navigationBar];
      v11 = [v10 barStyle];
    }

    else
    {
      v11 = 0;
    }

    v12 = [[SKUIMenuViewController alloc] initWithMenuTitles:v7];

    menuSheetViewController = self->_menuSheetViewController;
    self->_menuSheetViewController = v12;

    [(SKUIMenuViewController *)self->_menuSheetViewController setDelegate:self];
    [(SKUIMenuViewController *)self->_menuSheetViewController setIndexOfCheckedTitle:a4];
    v14 = self->_menuSheetViewController;
    v15 = [(SKUIFlexibleSegmentedControl *)self->_segmentedControl moreListTitle];
    [(SKUIMenuViewController *)v14 setTitle:v15];

    if (v11 == 1)
    {
      [(SKUIMenuViewController *)self->_menuSheetViewController setMenuStyle:1];
    }

    v16 = objc_alloc_init(MEMORY[0x277D751E0]);
    menuSheetCancelButtonItem = self->_menuSheetCancelButtonItem;
    self->_menuSheetCancelButtonItem = v16;

    [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setAction:sel__cancelMenuAction_];
    [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setStyle:2];
    [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setTarget:self];
    v18 = self->_menuSheetCancelButtonItem;
    v19 = [(SKUISegmentedControlViewElementController *)self clientContext];
    v20 = v19;
    if (v19)
    {
      [v19 localizedStringForKey:@"CANCEL"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CANCEL" inBundles:0];
    }
    v21 = ;
    [(UIBarButtonItem *)v18 setTitle:v21];

    v22 = [(SKUIMenuViewController *)self->_menuSheetViewController navigationItem];
    [v22 setLeftBarButtonItem:self->_menuSheetCancelButtonItem];

    v23 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_menuSheetViewController];
    v24 = [v23 navigationBar];
    [v24 setBarStyle:v11];

    v25 = [v23 view];
    [v25 setSemanticContentAttribute:storeSemanticContentAttribute()];

    v26 = [v23 navigationBar];
    [v26 setSemanticContentAttribute:storeSemanticContentAttribute()];

    [v27 presentViewController:v23 animated:1 completion:0];
  }
}

- (void)_showPopoverMoreListWithTitles:(id)a3
{
  if (!self->_popoverMenuViewController)
  {
    v5 = a3;
    v6 = [[SKUIMenuPopoverController alloc] initWithMenuTitles:v5];

    popoverMenuViewController = self->_popoverMenuViewController;
    self->_popoverMenuViewController = v6;

    [(SKUIMenuPopoverController *)self->_popoverMenuViewController setDelegate:self];
    [(SKUIFlexibleSegmentedControl *)self->_segmentedControl frameForSegmentWithIndex:[(SKUIFlexibleSegmentedControl *)self->_segmentedControl moreListIndex]];
    v8 = self->_popoverMenuViewController;
    segmentedControl = self->_segmentedControl;

    [(SKUIMenuPopoverController *)v8 presentFromRect:segmentedControl inView:15 permittedArrowDirections:1 animated:?];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)initWithViewElement:segmentedControl:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISegmentedControlViewElementController initWithViewElement:segmentedControl:]";
}

@end