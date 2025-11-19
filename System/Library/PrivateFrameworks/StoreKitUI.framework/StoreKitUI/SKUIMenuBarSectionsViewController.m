@interface SKUIMenuBarSectionsViewController
- (SKUIMenuBarSectionsViewController)initWithLayoutStyle:(int64_t)a3;
- (id)defaultSectionForComponent:(id)a3;
@end

@implementation SKUIMenuBarSectionsViewController

- (SKUIMenuBarSectionsViewController)initWithLayoutStyle:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMenuBarSectionsViewController initWithLayoutStyle:];
  }

  v6.receiver = self;
  v6.super_class = SKUIMenuBarSectionsViewController;
  result = [(SKUIStorePageSectionsViewController *)&v6 initWithLayoutStyle:a3];
  if (result)
  {
    result->_numberOfIterationsForShelfPageSections = 1;
  }

  return result;
}

- (id)defaultSectionForComponent:(id)a3
{
  v4 = a3;
  if ([v4 componentType] == 22)
  {
    v5 = [[SKUIMenuBarTemplateShelfPageSectionConfiguration alloc] initWithNumberOfIterations:[(SKUIMenuBarSectionsViewController *)self numberOfIterationsForShelfPageSections]];
    v6 = objc_opt_class();
    v7 = [v4 viewElement];
    v8 = [v7 isDynamicContainer];

    if (v8)
    {
      v6 = objc_opt_class();
    }

    v9 = [[v6 alloc] initWithPageComponent:v4 configuration:v5];
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