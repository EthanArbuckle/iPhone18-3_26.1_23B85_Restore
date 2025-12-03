@interface _TVSplitTemplateController
- (void)updateWithSplitTemplate:(id)template;
@end

@implementation _TVSplitTemplateController

- (void)updateWithSplitTemplate:(id)template
{
  v21[2] = *MEMORY[0x277D85DE8];
  templateCopy = template;
  displayMode = [templateCopy displayMode];
  if ([displayMode isEqualToString:@"hidden"])
  {
    v6 = 1;
  }

  else if ([displayMode isEqualToString:@"all"])
  {
    v6 = 2;
  }

  else if ([displayMode isEqualToString:@"overlay"])
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(_TVSplitTemplateController *)self setPreferredDisplayMode:v6];
  style = [templateCopy style];
  [style tv_width];
  v9 = v8;

  if (v9 >= 1.0)
  {
    [(_TVSplitTemplateController *)self setMaximumPrimaryColumnWidth:v9];
    [(_TVSplitTemplateController *)self setMinimumPrimaryColumnWidth:v9];
    v9 = *MEMORY[0x277D76EE0];
  }

  else
  {
    if (v9 >= 0.00000011920929)
    {
      [(_TVSplitTemplateController *)self setMaximumPrimaryColumnWidth:1.79769313e308];
      v11 = *MEMORY[0x277D76EE0];
      selfCopy2 = self;
    }

    else
    {
      v9 = *MEMORY[0x277D76EE0];
      [(_TVSplitTemplateController *)self setMaximumPrimaryColumnWidth:*MEMORY[0x277D76EE0]];
      selfCopy2 = self;
      v11 = v9;
    }

    [(_TVSplitTemplateController *)selfCopy2 setMinimumPrimaryColumnWidth:v11];
  }

  [(_TVSplitTemplateController *)self setPreferredPrimaryColumnWidthFraction:v9];
  viewControllers = [(_TVSplitTemplateController *)self viewControllers];
  v13 = [viewControllers count];

  if (!v13)
  {
    v14 = objc_alloc_init(_TVAppNavigationController_iOS);
    v21[0] = v14;
    v15 = objc_alloc_init(_TVAppNavigationController_iOS);
    v21[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

    [(_TVSplitTemplateController *)self setViewControllers:v16];
    leftNavigationDocument = [templateCopy leftNavigationDocument];
    v18 = [v16 objectAtIndexedSubscript:0];
    [leftNavigationDocument setNavigationController:v18];

    rightNavigationDocument = [templateCopy rightNavigationDocument];
    v20 = [v16 objectAtIndexedSubscript:1];
    [rightNavigationDocument setNavigationController:v20];
  }
}

@end