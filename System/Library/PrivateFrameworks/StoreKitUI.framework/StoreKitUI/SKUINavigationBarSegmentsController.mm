@interface SKUINavigationBarSegmentsController
- (SKUINavigationBarSegmentsController)initWithViewElement:(id)element;
- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)item;
- (void)willAppearInNavigationBar;
@end

@implementation SKUINavigationBarSegmentsController

- (SKUINavigationBarSegmentsController)initWithViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUINavigationBarSegmentsController initWithViewElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUINavigationBarSegmentsController;
  v5 = [(SKUINavigationBarSegmentsController *)&v9 init];
  if (v5)
  {
    v6 = [[SKUISegmentedControlViewElementController alloc] initWithViewElement:elementCopy];
    underlyingController = v5->_underlyingController;
    v5->_underlyingController = v6;

    [(SKUISegmentedControlViewElementController *)v5->_underlyingController setDesiredSegmentWidth:0.0];
  }

  return v5;
}

- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)item
{
  underlyingController = self->_underlyingController;
  itemCopy = item;
  [(SKUISegmentedControlViewElementController *)underlyingController reloadAfterDocumentUpdate];
  v6.receiver = self;
  v6.super_class = SKUINavigationBarSegmentsController;
  [(SKUINavigationBarSectionController *)&v6 reloadAfterDocumentUpdateWithNavigationItem:itemCopy];
}

- (void)willAppearInNavigationBar
{
  context = [(SKUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v5 = v4;
  parentViewController = [context parentViewController];
  if ([parentViewController isViewLoaded])
  {
    view = [parentViewController view];
    [view bounds];
    v5 = v8;
  }

  if (v5 <= 320.0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 5;
  }

  [(SKUISegmentedControlViewElementController *)self->_underlyingController setDefaultMaximumNumberOfVisibleItems:v9];
  v10.receiver = self;
  v10.super_class = SKUINavigationBarSegmentsController;
  [(SKUINavigationBarSectionController *)&v10 willAppearInNavigationBar];
}

- (void)initWithViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationBarSegmentsController initWithViewElement:]";
}

@end