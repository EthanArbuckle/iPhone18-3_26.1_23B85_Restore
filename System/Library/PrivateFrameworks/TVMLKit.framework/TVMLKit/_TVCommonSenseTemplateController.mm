@interface _TVCommonSenseTemplateController
- (id)_infoTableFromElement:(id)element;
- (void)_loadTemplate;
- (void)_updateFooterWithElement:(id)element;
- (void)_updateHeaderWithElement:(id)element;
- (void)loadView;
- (void)updateWithCommonSenseTemplate:(id)template;
@end

@implementation _TVCommonSenseTemplateController

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = _TVCommonSenseTemplateController;
  [(_TVCommonSenseTemplateController *)&v7 loadView];
  view = [(_TVCommonSenseTemplateController *)self view];
  [view setBackgroundColor:0];
  v4 = [_TVCommonSenseView alloc];
  [view bounds];
  v5 = [(_TVCommonSenseView *)v4 initWithFrame:?];
  commonSenseView = self->_commonSenseView;
  self->_commonSenseView = v5;

  [view addSubview:self->_commonSenseView];
  [(_TVCommonSenseTemplateController *)self _loadTemplate];
}

- (void)updateWithCommonSenseTemplate:(id)template
{
  objc_storeStrong(&self->_templateElement, template);
  if ([(_TVCommonSenseTemplateController *)self isViewLoaded])
  {

    [(_TVCommonSenseTemplateController *)self _loadTemplate];
  }
}

- (void)_loadTemplate
{
  v20 = *MEMORY[0x277D85DE8];
  templateElement = [(_TVCommonSenseTemplateController *)self templateElement];
  v4 = templateElement;
  if (templateElement && [templateElement tv_elementType] == 77)
  {
    array = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    children = [v4 children];
    v7 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(children);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          tv_elementType = [v11 tv_elementType];
          switch(tv_elementType)
          {
            case 13:
              [(_TVCommonSenseTemplateController *)self _updateFooterWithElement:v11];
              break;
            case 20:
              v13 = [(_TVCommonSenseTemplateController *)self _infoTableFromElement:v11];
              [array addObject:v13];

              break;
            case 15:
              [(_TVCommonSenseTemplateController *)self _updateHeaderWithElement:v11];
              break;
          }
        }

        v8 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    if ([array count])
    {
      commonSenseView = [(_TVCommonSenseTemplateController *)self commonSenseView];
      [commonSenseView setInfoViews:array];
    }
  }
}

- (void)_updateHeaderWithElement:(id)element
{
  elementCopy = element;
  if ([elementCopy tv_elementType] == 15)
  {
    v4 = +[TVInterfaceFactory sharedInterfaceFactory];
    commonSenseView = [(_TVCommonSenseTemplateController *)self commonSenseView];
    headerView = [commonSenseView headerView];
    v7 = [v4 _viewFromElement:elementCopy existingView:headerView];

    commonSenseView2 = [(_TVCommonSenseTemplateController *)self commonSenseView];
    [commonSenseView2 setHeaderView:v7];
  }
}

- (void)_updateFooterWithElement:(id)element
{
  v26 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  if ([elementCopy tv_elementType] == 13)
  {
    commonSenseView = [(_TVCommonSenseTemplateController *)self commonSenseView];
    footerView = [commonSenseView footerView];
    v7 = footerView;
    selfCopy = self;
    if (footerView)
    {
      v8 = footerView;
    }

    else
    {
      v8 = objc_alloc_init(_TVCommonSenseFooterView);
    }

    v9 = v8;

    [(UIView *)v9 transferLayoutStylesFromElement:elementCopy];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    children = [elementCopy children];
    v11 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(children);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if ([v15 tv_elementType] == 16)
          {
            v16 = +[TVInterfaceFactory sharedInterfaceFactory];
            logoView = [(_TVCommonSenseFooterView *)v9 logoView];
            v18 = [v16 _viewFromElement:v15 existingView:logoView];

            [(_TVCommonSenseFooterView *)v9 setLogoView:v18];
          }
        }

        v12 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    commonSenseView2 = [(_TVCommonSenseTemplateController *)selfCopy commonSenseView];
    [commonSenseView2 setFooterView:v9];
  }
}

- (id)_infoTableFromElement:(id)element
{
  elementCopy = element;
  if ([elementCopy tv_elementType] == 20)
  {
    v4 = +[TVInterfaceFactory sharedInterfaceFactory];
    v5 = [v4 _viewFromElement:elementCopy existingView:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end