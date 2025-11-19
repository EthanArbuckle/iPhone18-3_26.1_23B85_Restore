@interface _TVCommonSenseTemplateController
- (id)_infoTableFromElement:(id)a3;
- (void)_loadTemplate;
- (void)_updateFooterWithElement:(id)a3;
- (void)_updateHeaderWithElement:(id)a3;
- (void)loadView;
- (void)updateWithCommonSenseTemplate:(id)a3;
@end

@implementation _TVCommonSenseTemplateController

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = _TVCommonSenseTemplateController;
  [(_TVCommonSenseTemplateController *)&v7 loadView];
  v3 = [(_TVCommonSenseTemplateController *)self view];
  [v3 setBackgroundColor:0];
  v4 = [_TVCommonSenseView alloc];
  [v3 bounds];
  v5 = [(_TVCommonSenseView *)v4 initWithFrame:?];
  commonSenseView = self->_commonSenseView;
  self->_commonSenseView = v5;

  [v3 addSubview:self->_commonSenseView];
  [(_TVCommonSenseTemplateController *)self _loadTemplate];
}

- (void)updateWithCommonSenseTemplate:(id)a3
{
  objc_storeStrong(&self->_templateElement, a3);
  if ([(_TVCommonSenseTemplateController *)self isViewLoaded])
  {

    [(_TVCommonSenseTemplateController *)self _loadTemplate];
  }
}

- (void)_loadTemplate
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(_TVCommonSenseTemplateController *)self templateElement];
  v4 = v3;
  if (v3 && [v3 tv_elementType] == 77)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v4 children];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 tv_elementType];
          switch(v12)
          {
            case 13:
              [(_TVCommonSenseTemplateController *)self _updateFooterWithElement:v11];
              break;
            case 20:
              v13 = [(_TVCommonSenseTemplateController *)self _infoTableFromElement:v11];
              [v5 addObject:v13];

              break;
            case 15:
              [(_TVCommonSenseTemplateController *)self _updateHeaderWithElement:v11];
              break;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v14 = [(_TVCommonSenseTemplateController *)self commonSenseView];
      [v14 setInfoViews:v5];
    }
  }
}

- (void)_updateHeaderWithElement:(id)a3
{
  v9 = a3;
  if ([v9 tv_elementType] == 15)
  {
    v4 = +[TVInterfaceFactory sharedInterfaceFactory];
    v5 = [(_TVCommonSenseTemplateController *)self commonSenseView];
    v6 = [v5 headerView];
    v7 = [v4 _viewFromElement:v9 existingView:v6];

    v8 = [(_TVCommonSenseTemplateController *)self commonSenseView];
    [v8 setHeaderView:v7];
  }
}

- (void)_updateFooterWithElement:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 tv_elementType] == 13)
  {
    v5 = [(_TVCommonSenseTemplateController *)self commonSenseView];
    v6 = [v5 footerView];
    v7 = v6;
    v20 = self;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(_TVCommonSenseFooterView);
    }

    v9 = v8;

    [(UIView *)v9 transferLayoutStylesFromElement:v4];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [v4 children];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if ([v15 tv_elementType] == 16)
          {
            v16 = +[TVInterfaceFactory sharedInterfaceFactory];
            v17 = [(_TVCommonSenseFooterView *)v9 logoView];
            v18 = [v16 _viewFromElement:v15 existingView:v17];

            [(_TVCommonSenseFooterView *)v9 setLogoView:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v19 = [(_TVCommonSenseTemplateController *)v20 commonSenseView];
    [v19 setFooterView:v9];
  }
}

- (id)_infoTableFromElement:(id)a3
{
  v3 = a3;
  if ([v3 tv_elementType] == 20)
  {
    v4 = +[TVInterfaceFactory sharedInterfaceFactory];
    v5 = [v4 _viewFromElement:v3 existingView:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end