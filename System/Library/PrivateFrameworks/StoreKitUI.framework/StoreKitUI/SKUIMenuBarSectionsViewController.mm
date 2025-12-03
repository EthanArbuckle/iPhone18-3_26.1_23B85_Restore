@interface SKUIMenuBarSectionsViewController
- (SKUIMenuBarSectionsViewController)initWithLayoutStyle:(int64_t)style;
- (id)defaultSectionForComponent:(id)component;
@end

@implementation SKUIMenuBarSectionsViewController

- (SKUIMenuBarSectionsViewController)initWithLayoutStyle:(int64_t)style
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuBarSectionsViewController initWithLayoutStyle:];
  }

  v6.receiver = self;
  v6.super_class = SKUIMenuBarSectionsViewController;
  result = [(SKUIStorePageSectionsViewController *)&v6 initWithLayoutStyle:style];
  if (result)
  {
    result->_numberOfIterationsForShelfPageSections = 1;
  }

  return result;
}

- (id)defaultSectionForComponent:(id)component
{
  componentCopy = component;
  if ([componentCopy componentType] == 22)
  {
    v5 = [[SKUIMenuBarTemplateShelfPageSectionConfiguration alloc] initWithNumberOfIterations:[(SKUIMenuBarSectionsViewController *)self numberOfIterationsForShelfPageSections]];
    v6 = objc_opt_class();
    viewElement = [componentCopy viewElement];
    isDynamicContainer = [viewElement isDynamicContainer];

    if (isDynamicContainer)
    {
      v6 = objc_opt_class();
    }

    v9 = [[v6 alloc] initWithPageComponent:componentCopy configuration:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithLayoutStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMenuBarSectionsViewController initWithLayoutStyle:]";
}

@end