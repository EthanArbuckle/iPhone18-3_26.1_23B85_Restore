@interface SKUINavigationBarSegmentsController
- (SKUINavigationBarSegmentsController)initWithViewElement:(id)a3;
- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)a3;
- (void)willAppearInNavigationBar;
@end

@implementation SKUINavigationBarSegmentsController

- (SKUINavigationBarSegmentsController)initWithViewElement:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUINavigationBarSegmentsController initWithViewElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUINavigationBarSegmentsController;
  v5 = [(SKUINavigationBarSegmentsController *)&v9 init];
  if (v5)
  {
    v6 = [[SKUISegmentedControlViewElementController alloc] initWithViewElement:v4];
    underlyingController = v5->_underlyingController;
    v5->_underlyingController = v6;

    [(SKUISegmentedControlViewElementController *)v5->_underlyingController setDesiredSegmentWidth:0.0];
  }

  return v5;
}

- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)a3
{
  underlyingController = self->_underlyingController;
  v5 = a3;
  [(SKUISegmentedControlViewElementController *)underlyingController reloadAfterDocumentUpdate];
  v6.receiver = self;
  v6.super_class = SKUINavigationBarSegmentsController;
  [(SKUINavigationBarSectionController *)&v6 reloadAfterDocumentUpdateWithNavigationItem:v5];
}

- (void)willAppearInNavigationBar
{
  v3 = [(SKUINavigationBarSectionController *)self context];
  [v3 maximumNavigationBarWidth];
  v5 = v4;
  v6 = [v3 parentViewController];
  if ([v6 isViewLoaded])
  {
    v7 = [v6 view];
    [v7 bounds];
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