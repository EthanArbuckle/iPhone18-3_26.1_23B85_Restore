@interface _TVDivTemplateController
- (CGSize)_backgroundImageProxySize;
- (_TVDivTemplateController)init;
- (id)preferredFocusEnvironments;
- (void)_configureWithBgImage:(id)a3 backdropImage:(id)a4;
- (void)_updateContentView;
- (void)loadView;
- (void)updateWithViewElement:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation _TVDivTemplateController

- (_TVDivTemplateController)init
{
  v8.receiver = self;
  v8.super_class = _TVDivTemplateController;
  v2 = [(_TVDivTemplateController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D755E8]);
    backgroundImageView = v2->_backgroundImageView;
    v2->_backgroundImageView = v3;

    v5 = objc_alloc_init(_TVOrganizerView);
    contentView = v2->_contentView;
    v2->_contentView = v5;
  }

  return v2;
}

- (void)updateWithViewElement:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = self;
  v36.receiver = self;
  v36.super_class = _TVDivTemplateController;
  [(_TVBgImageLoadingViewController *)&v36 updateWithViewElement:v4];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v4;
  obj = [v4 children];
  v5 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 tv_elementType] == 4)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v11 = [v10 children];
          v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v29;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v28 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = [v26 appDocument];
                  [v17 tv_adjustedWindowSize];
                  v19 = v18;
                  v21 = v20;

                  v22 = objc_opt_new();
                  [v22 setImageSize:{v19, v21}];
                  v23 = [TVImageLayout layoutWithLayout:v22 element:v16];
                  v24 = [v16 tv_imageProxyWithLayout:v22];

                  v7 = v24;
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [(_TVDivTemplateController *)v25 setBackgroundImageProxy:v7];
  [(_TVDivTemplateController *)v25 setViewElement:v26];
  [(_TVDivTemplateController *)v25 _updateContentView];
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(_TVDivTemplateController *)self contentView];
  [v4 addSubview:v3];

  [(_TVDivTemplateController *)self setView:v4];
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = _TVDivTemplateController;
  [(_TVBgImageLoadingViewController *)&v10 viewDidLayoutSubviews];
  v3 = [(_TVDivTemplateController *)self backgroundImageProxy];

  v4 = [(_TVDivTemplateController *)self backgroundImageView];
  v5 = v4;
  if (v3)
  {
    v6 = [(_TVDivTemplateController *)self view];
    [v6 bounds];
    [v5 setFrame:?];

    v5 = [(_TVDivTemplateController *)self view];
    v7 = [(_TVDivTemplateController *)self backgroundImageView];
    [v5 insertSubview:v7 atIndex:0];
  }

  else
  {
    [v4 removeFromSuperview];
  }

  v8 = [(_TVDivTemplateController *)self contentView];
  v9 = [(_TVDivTemplateController *)self view];
  [v9 bounds];
  [v8 setFrame:?];
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [(_TVDivTemplateController *)self contentView];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (CGSize)_backgroundImageProxySize
{
  v2 = [(_TVDivTemplateController *)self viewElement];
  v3 = [v2 appDocument];
  [v3 tv_adjustedWindowSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_configureWithBgImage:(id)a3 backdropImage:(id)a4
{
  v5 = a3;
  v6 = [(_TVDivTemplateController *)self backgroundImageView];
  [v6 setImage:v5];
}

- (void)_updateContentView
{
  v2 = self;
  v92 = *MEMORY[0x277D85DE8];
  v3 = [(_TVDivTemplateController *)self viewElement];
  v4 = [(_TVDivTemplateController *)v2 contentView];
  v57 = [v3 tv_semanticContentAttribute];
  [v4 setSemanticContentAttribute:?];
  v5 = [(_TVDivTemplateController *)v2 viewControllers];
  v6 = [v5 mutableCopy];

  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __46___TVDivTemplateController__updateContentView__block_invoke;
  v85[3] = &unk_279D6FCA8;
  v54 = v6;
  v86 = v54;
  v7 = MEMORY[0x26D6AFBB0](v85);
  v52 = v4;
  v8 = [v4 components];
  v9 = [v8 mutableCopy];

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __46___TVDivTemplateController__updateContentView__block_invoke_2;
  v83[3] = &unk_279D6FCF8;
  v51 = v9;
  v84 = v51;
  v10 = MEMORY[0x26D6AFBB0](v83);
  v58 = [MEMORY[0x277CBEB18] array];
  v59 = [MEMORY[0x277CBEB18] array];
  v53 = v3;
  [v3 children];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v82 = 0u;
  v11 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
  v55 = v10;
  v56 = v7;
  if (v11)
  {
    v12 = v11;
    v13 = *v80;
    v60 = 0;
    v14 = 0x279D6D000uLL;
    v15 = v7;
    do
    {
      v16 = 0;
      v61 = v12;
      do
      {
        if (*v80 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v79 + 1) + 8 * v16);
        if ([v17 tv_elementType] != 4)
        {
          v18 = v13;
          v19 = v2;
          v20 = [v17 autoHighlightIdentifier];

          if (v20)
          {
            [v17 resetProperty:1];
          }

          v21 = v15[2](v15, v17);
          [*(v14 + 1176) sharedInterfaceFactory];
          v23 = v22 = v14;
          v24 = [v23 _viewControllerFromElement:v17 existingController:v21];

          if (v24)
          {
            if (v24 == v21)
            {
              [v54 removeObject:v21];
            }

            [v58 addObject:v24];
            v25 = [v24 view];
          }

          else
          {
            v26 = v55[2](v55, [v17 tv_elementType]);
            v27 = [*(v22 + 1176) sharedInterfaceFactory];
            v25 = [v27 _viewFromElement:v17 existingView:v26];

            v15 = v56;
          }

          v2 = v19;
          v13 = v18;
          if (v25)
          {
            [v25 setSemanticContentAttribute:v57];
            [v59 addObject:v25];
            v14 = 0x279D6D000;
            v12 = v61;
            if (!v60 && v20)
            {
              v60 = v25;
            }
          }

          else
          {
            v14 = 0x279D6D000;
            v12 = v61;
          }
        }

        ++v16;
      }

      while (v12 != v16);
      v12 = [obj countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v12);
  }

  else
  {
    v60 = 0;
  }

  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v58, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v29 = v58;
  v30 = [v29 countByEnumeratingWithState:&v75 objects:v90 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v76;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v76 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v75 + 1) + 8 * i);
        v35 = [v34 parentViewController];

        if (v35 != v2)
        {
          [v28 addObject:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v75 objects:v90 count:16];
    }

    while (v31);
  }

  [(_TVDivTemplateController *)v2 setViewControllers:v29];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v36 = v54;
  v37 = [v36 countByEnumeratingWithState:&v71 objects:v89 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v72;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v72 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [*(*(&v71 + 1) + 8 * j) willMoveToParentViewController:0];
      }

      v38 = [v36 countByEnumeratingWithState:&v71 objects:v89 count:16];
    }

    while (v38);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v41 = v28;
  v42 = [v41 countByEnumeratingWithState:&v67 objects:v88 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v68;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v68 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(_TVDivTemplateController *)v2 addChildViewController:*(*(&v67 + 1) + 8 * k)];
      }

      v43 = [v41 countByEnumeratingWithState:&v67 objects:v88 count:16];
    }

    while (v43);
  }

  [v52 setComponents:v59];
  if (v60)
  {
    [v52 setPreferredFocusedComponent:?];
  }

  [v52 transferLayoutStylesFromElement:v53];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v46 = v41;
  v47 = [v46 countByEnumeratingWithState:&v63 objects:v87 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v64;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [*(*(&v63 + 1) + 8 * m) didMoveToParentViewController:v2];
      }

      v48 = [v46 countByEnumeratingWithState:&v63 objects:v87 count:16];
    }

    while (v48);
  }
}

@end