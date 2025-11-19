@interface WGMajorListViewController
- (BOOL)hasWidget;
- (BOOL)shouldAnimateFirstTwoViewsAsOne;
- (BOOL)shouldAnimateLastTwoViewsAsOne;
- (NSArray)extraViews;
- (NSArray)extraViewsContainers;
- (UIView)containerView;
- (id)editingMaterialViewForWidgetListFooterView:(id)a3;
- (unint64_t)_insertionIndexofListItem:(id)a3 intoWidgetViews:(id)a4 withOrderedIdentifiers:(id)a5;
- (void)_configureStackView;
- (void)_insertHeaderView;
- (void)_repopulateStackViewWithWidgetIdentifiers:(id)a3;
- (void)_setFooterVisible:(BOOL)a3;
- (void)_updateEditButtonVisibilityAnimated:(BOOL)a3;
- (void)_updateFooterViewShouldBlurContent;
- (void)_updateFooterVisibility;
- (void)_updateHeaderVisibility;
- (void)editButtonTapped:(id)a3;
- (void)enumerateWidgetWrapperViewsUsingBlock:(id)a3;
- (void)invalidateVisibleWidgets;
- (void)scrollViewDidScroll:(id)a3;
- (void)setEditingIcons:(BOOL)a3;
- (void)setHeaderContentViewController:(id)a3;
- (void)setHeaderVisible:(BOOL)a3;
- (void)setShouldBlurContent:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)widgetDiscoveryController:(id)a3 widgetWithIdentifier:(id)a4 shouldBecomeHiddenInGroup:(id)a5;
- (void)widgetDiscoveryController:(id)a3 widgetWithIdentifier:(id)a4 shouldBecomeVisibleInGroup:(id)a5;
- (void)widgetListFooterViewAvailableNewWidgetsUpdated:(id)a3;
@end

@implementation WGMajorListViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v5 viewWillAppear:?];
  [(WGMajorListViewController *)self _updateHeaderVisibility];
  [(WGMajorListViewController *)self _updateFooterVisibility];
  [(WGMajorListViewController *)self _updateEditButtonVisibilityAnimated:0];
  [(UIViewController *)self->_headerContentViewController wg_beginAppearanceTransitionIfNecessary:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 viewDidAppear:a3];
  [(UIViewController *)self->_headerContentViewController wg_endAppearanceTransitionIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v5 viewWillDisappear:?];
  [(UIViewController *)self->_headerContentViewController wg_beginAppearanceTransitionIfNecessary:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 viewDidDisappear:a3];
  [(UIViewController *)self->_headerContentViewController wg_endAppearanceTransitionIfNecessary];
}

- (void)setHeaderContentViewController:(id)a3
{
  v5 = a3;
  headerContentViewController = self->_headerContentViewController;
  if (headerContentViewController != v5)
  {
    if (headerContentViewController && self->_headerView)
    {
      [(WGMajorListViewController *)self bs_removeChildViewController:?];
      [(WGWidgetListHeaderView *)self->_headerView removeFromSuperview];
    }

    objc_storeStrong(&self->_headerContentViewController, a3);
    v7 = self->_headerContentViewController;
    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __60__WGMajorListViewController_setHeaderContentViewController___block_invoke;
      v8[3] = &unk_279ED17F0;
      v8[4] = self;
      [(WGMajorListViewController *)self bs_addChildViewController:v7 withSuperview:0 animated:0 transitionBlock:v8];
    }
  }
}

void __60__WGMajorListViewController_setHeaderContentViewController___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 1136) view];
  v2 = [[WGWidgetListHeaderView alloc] initWithContentView:v5];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1144);
  *(v3 + 1144) = v2;

  [*(a1 + 32) _insertHeaderView];
  [*(a1 + 32) _didUpdateStackViewArrangedSubviews];
}

- (void)_insertHeaderView
{
  v62 = [(WGWidgetListHeaderView *)self->_headerView contentView];
  [(UIStackView *)self->super._stackView insertArrangedSubview:self->_headerView atIndex:0];
  [(WGWidgetListViewController *)self _didUpdateStackViewArrangedSubviews];
  v61 = [MEMORY[0x277CF0CA8] sharedInstance];
  v60 = [v61 deviceClass];
  if (v60 != 2)
  {
    LODWORD(v6) = 0;
    goto LABEL_7;
  }

  v56 = [MEMORY[0x277D759A0] mainScreen];
  [v56 _referenceBounds];
  if (CGRectGetHeight(v64) <= 1194.0)
  {
    LODWORD(v6) = 0;
    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CF0CA8] sharedInstance];
  if ([v4 homeButtonType] != 2)
  {
    v51 = v4;
    LODWORD(v6) = 1;
LABEL_7:
    v7 = [MEMORY[0x277CF0CA8] sharedInstance];
    v59 = [v7 deviceClass];
    if (v59 == 2)
    {
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 _referenceBounds];
      if (CGRectGetHeight(v65) <= 1024.0)
      {
        v57 = v8;
        v10 = 0;
      }

      else
      {
        v9 = [MEMORY[0x277CF0CA8] sharedInstance];
        if ([v9 homeButtonType] == 2)
        {

          v5 = 44.0;
          if ((v6 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        v54 = v9;
        v57 = v8;
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [MEMORY[0x277CF0CA8] sharedInstance];
    v12 = [v11 deviceClass];
    v13 = v12;
    if (v12 == 2)
    {
      v2 = v12;
      v14 = [MEMORY[0x277D759A0] mainScreen];
      [v14 _referenceBounds];
      if (CGRectGetHeight(v66) > 1194.0)
      {

        v15 = 0x4040000000000000;
        goto LABEL_23;
      }

      v50 = v14;
      v13 = v2;
    }

    v58 = [MEMORY[0x277CF0CA8] sharedInstance];
    v55 = [v58 deviceClass];
    if (v55 == 2)
    {
      v2 = [MEMORY[0x277D759A0] mainScreen];
      [v2 _referenceBounds];
      if (CGRectGetHeight(v67) > 1080.0)
      {

        if (v13 == 2)
        {
        }

        v15 = 0x4046000000000000;
LABEL_23:
        v5 = *&v15;
        v16 = v54;
        if ((v10 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v46 = v2;
    }

    v53 = [MEMORY[0x277CF0CA8] sharedInstance];
    v52 = [v53 deviceClass];
    if (v52 == 2)
    {
      v2 = [MEMORY[0x277D759A0] mainScreen];
      [v2 _referenceBounds];
      if (CGRectGetHeight(v68) > 1024.0)
      {

        if (v55 == 2)
        {
        }

        v16 = v54;
        if (v13 == 2)
        {
        }

        v5 = 37.0;
        if ((v10 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_24:

        goto LABEL_25;
      }

      v39 = v2;
    }

    v18 = [MEMORY[0x277CF0CA8] sharedInstance];
    v5 = 29.0;
    if ([v18 deviceClass] == 2)
    {
      goto LABEL_79;
    }

    v49 = v18;
    v47 = v10;
    v48 = v6;
    v45 = [MEMORY[0x277CF0CA8] sharedInstance];
    v44 = [v45 deviceClass];
    if (v44)
    {
      v38 = [MEMORY[0x277CF0CA8] sharedInstance];
      v6 = v18;
      if ([v38 deviceClass] != 1)
      {
        v42 = 0;
        v43 = 0;
        goto LABEL_66;
      }
    }

    else
    {
      v6 = v18;
    }

    v30 = [MEMORY[0x277D759A0] mainScreen];
    [v30 _referenceBounds];
    if (CGRectGetHeight(v69) <= 812.0)
    {
      v42 = 0;
      v43 = 1;
    }

    else
    {
      v26 = [MEMORY[0x277CF0CA8] sharedInstance];
      if ([v26 homeButtonType] == 2 && _BSUI_Private_IsN84())
      {

        if (v44)
        {
        }

        LODWORD(v6) = v48;
        v16 = v54;
        if (v52 == 2)
        {
        }

        if (v55 == 2)
        {
        }

        if (v13 == 2)
        {
        }

        v5 = 0.0;
        if (v10)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v42 = 1;
      v43 = 1;
    }

LABEL_66:
    v41 = [MEMORY[0x277CF0CA8] sharedInstance];
    v40 = [v41 deviceClass];
    if (!v40 || ([MEMORY[0x277CF0CA8] sharedInstance], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "deviceClass") == 1))
    {
      v28 = [MEMORY[0x277D759A0] mainScreen];
      [v28 _referenceBounds];
      if (CGRectGetHeight(v70) > 812.0)
      {
        v2 = [MEMORY[0x277CF0CA8] sharedInstance];
        v6 = v48;
        if ([v2 homeButtonType] == 2)
        {

          if (v40)
          {
          }

          if (v42)
          {
LABEL_103:

            if ((v43 & 1) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_74:
          if (!v43)
          {
LABEL_76:
            if (v44)
            {
            }

            v5 = 0.0;
            v18 = v49;
LABEL_79:

            if (v52 == 2)
            {
            }

            v16 = v54;
            if (v55 == 2)
            {
            }

            if (v13 == 2)
            {
            }

            if (v10)
            {
              goto LABEL_24;
            }

LABEL_25:
            if (v59 == 2)
            {
            }

            if (!v6)
            {
LABEL_29:
              if (v60 != 2)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_29;
          }

LABEL_75:

          goto LABEL_76;
        }

        v37 = 0x100000001;
LABEL_90:
        v36 = [MEMORY[0x277CF0CA8] sharedInstance];
        v35 = [v36 deviceClass];
        if (!v35 || ([MEMORY[0x277CF0CA8] sharedInstance], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "deviceClass") == 1))
        {
          v27 = [MEMORY[0x277D759A0] mainScreen];
          [v27 _referenceBounds];
          if (CGRectGetHeight(v71) <= 736.0)
          {
            v33 = 0x100000000;
          }

          else
          {
            v18 = [MEMORY[0x277CF0CA8] sharedInstance];
            if ([v18 homeButtonType] == 2)
            {

              if (v35)
              {
              }

              if (v37)
              {
LABEL_129:

                if ((v37 & 0x100000000) == 0)
                {
LABEL_100:
                  if (v40)
                  {
                  }

                  if (v42)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_74;
                }

LABEL_99:

                goto LABEL_100;
              }

LABEL_98:
              if (!HIDWORD(v37))
              {
                goto LABEL_100;
              }

              goto LABEL_99;
            }

            v33 = 0x100000001;
          }
        }

        else
        {
          v33 = 0;
        }

        v31 = [MEMORY[0x277CF0CA8] sharedInstance];
        v32 = [v31 deviceClass];
        if (!v32 || ([MEMORY[0x277CF0CA8] sharedInstance], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "deviceClass") == 1))
        {
          v25 = [MEMORY[0x277D759A0] mainScreen];
          [v25 _referenceBounds];
          if (CGRectGetHeight(v72) > 667.0)
          {
LABEL_117:

            goto LABEL_120;
          }

          v23 = 1;
          v24 = v13;
        }

        else
        {
          v23 = 0;
          v24 = v13;
        }

        v19 = [MEMORY[0x277CF0CA8] sharedInstance];
        v20 = [v19 deviceClass];
        if (v20 && ([MEMORY[0x277CF0CA8] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "deviceClass") != 1) || (objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "_referenceBounds"), CGRectGetHeight(v73), v21, v20))
        {

          if (v23)
          {
LABEL_116:
            v10 = v47;
            LODWORD(v6) = v48;
            v13 = v24;
            goto LABEL_117;
          }
        }

        else
        {

          if (v23)
          {
            goto LABEL_116;
          }
        }

        v10 = v47;
        LODWORD(v6) = v48;
        v13 = v24;
LABEL_120:
        if (v32)
        {
        }

        if (v33)
        {
        }

        else if (!HIDWORD(v33))
        {
          goto LABEL_126;
        }

LABEL_126:
        if (v35)
        {
        }

        if (v37)
        {
          goto LABEL_129;
        }

        goto LABEL_98;
      }

      v37 = 0x100000000;
    }

    else
    {
      v37 = 0;
    }

    v6 = v48;
    goto LABEL_90;
  }

  v5 = 32.0;
LABEL_30:

LABEL_31:
  [v62 layoutMargins];
  [(UIStackView *)self->super._stackView setCustomSpacing:self->_headerView afterView:v5 - v17];
}

- (void)setHeaderVisible:(BOOL)a3
{
  if (self->_headerVisible != a3)
  {
    self->_headerVisible = a3;
    v5 = [(WGWidgetListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 majorListViewControllerDidChangeHeaderVisibility:self];
    }
  }
}

- (void)_setFooterVisible:(BOOL)a3
{
  if (self->_footerVisible != a3)
  {
    self->_footerVisible = a3;
    v5 = [(WGMajorListViewController *)self _appearState]!= 0;

    [(WGMajorListViewController *)self _updateEditButtonVisibilityAnimated:v5];
  }
}

- (void)enumerateWidgetWrapperViewsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(UIStackView *)self->super._stackView arrangedSubviews];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__WGMajorListViewController_enumerateWidgetWrapperViewsUsingBlock___block_invoke;
  v7[3] = &unk_279ED1818;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __67__WGMajorListViewController_enumerateWidgetWrapperViewsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)hasWidget
{
  v3 = [(WGWidgetDiscoveryController *)self->super._discoveryController enabledWidgetIdentifiersForAllGroups];
  v4 = [v3 count];
  v5 = [(WGWidgetDiscoveryController *)self->super._discoveryController disabledWidgetIdentifiers];
  LOBYTE(v4) = v4 + [v5 count] != 0;

  return v4;
}

- (NSArray)extraViewsContainers
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->super._stackView;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (NSArray)extraViews
{
  v3 = objc_opt_new();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__WGMajorListViewController_extraViews__block_invoke;
  v11 = &unk_279ED1840;
  v12 = self;
  v4 = v3;
  v13 = v4;
  [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:&v8];
  if ([(WGMajorListViewController *)self isHeaderVisible:v8])
  {
    [(NSArray *)v4 insertObject:self->_headerView atIndex:0];
  }

  if ([(WGMajorListViewController *)self _isFooterVisible])
  {
    [(NSArray *)v4 addObject:self->_footerView];
  }

  v5 = v13;
  v6 = v4;

  return v4;
}

void __39__WGMajorListViewController_extraViews__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _wrapperViewForWidgetPlatterView:a2];
  [*(a1 + 40) addObject:v3];
}

- (BOOL)shouldAnimateLastTwoViewsAsOne
{
  v2 = [(WGMajorListViewController *)self extraViews];
  if ([v2 count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v3 = [v2 lastObject];
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (!v8 || ([v8 bounds], v10 = v9, v12 = v11, objc_msgSend(v8, "platterView"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bounds"), v15 = v14, v17 = v16, v13, v7 = 1, v10 == v15) && v12 == v17)
    {
      v18 = [v2 lastObject];
      v19 = objc_opt_class();
      v20 = v18;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (v22)
      {
        v23 = [v22 contentView];
        v24 = v23;
        if (v23)
        {
          [v23 transform];
        }

        v7 = BSFloatLessThanFloat();
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (BOOL)shouldAnimateFirstTwoViewsAsOne
{
  v2 = [(WGMajorListViewController *)self extraViews];
  if ([v2 count] < 2)
  {
    v7 = 0;
  }

  else
  {
    v3 = [v2 firstObject];
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (v8)
    {
      [v8 bounds];
      v10 = v9;
      v12 = v11;
      v13 = [v8 platterView];
      [v13 bounds];
      v7 = v12 != v15 || v10 != v14;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v16 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(UIViewController *)self wg_isAppearingOrAppeared])
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__4;
    v14[4] = __Block_byref_object_dispose__4;
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __80__WGMajorListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v13[3] = &unk_279ED1408;
    v13[4] = v14;
    [(WGWidgetListViewController *)self _invokeBlockWithPlatterViewsVisibleInBounds:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__WGMajorListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v12[3] = &unk_279ED1868;
    v12[4] = self;
    v12[5] = v14;
    v8 = MEMORY[0x2743E8C10](v12);
    v9 = v8;
    if (v7)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __80__WGMajorListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
      v10[3] = &unk_279ED0C60;
      v11 = v8;
      [v7 animateAlongsideTransition:0 completion:v10];
    }

    else
    {
      v8[2](v8);
    }

    _Block_object_dispose(v14, 8);
  }
}

uint64_t __80__WGMajorListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 listItem];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __80__WGMajorListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__WGMajorListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v13[3] = &unk_279ED1408;
  v13[4] = *(a1 + 40);
  [v2 _invokeBlockWithPlatterViewsVisibleInBounds:v13];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 wg_beginAppearanceTransitionIfNecessary:0 animated:{0, v9}];
        [v8 wg_endAppearanceTransitionIfNecessary];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

uint64_t __80__WGMajorListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 listItem];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    if ([*(*(*(a1 + 32) + 8) + 40) containsObject:v3])
    {
      v3 = [*(*(*(a1 + 32) + 8) + 40) removeObject:v6];
    }

    else
    {
      [v6 wg_beginAppearanceTransitionIfNecessary:1 animated:0];
      v3 = [v6 wg_endAppearanceTransitionIfNecessary];
    }

    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_configureStackView
{
  v8.receiver = self;
  v8.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v8 _configureStackView];
  v3 = objc_alloc_init(WGWidgetListFooterView);
  footerView = self->_footerView;
  self->_footerView = v3;

  [(WGWidgetListFooterView *)self->_footerView setDelegate:self];
  v5 = [(WGWidgetListFooterView *)self->_footerView editButton];
  [v5 addTarget:self action:sel_editButtonTapped_ forControlEvents:64];

  v6 = [(WGWidgetListFooterView *)self->_footerView widgetAvailableButton];
  [v6 addTarget:self action:sel_editButtonTapped_ forControlEvents:64];

  v7 = [(WGWidgetListFooterView *)self->_footerView customizeButton];
  [v7 addTarget:self action:sel_presentEditView_ forControlEvents:64];

  [(WGMajorListViewController *)self _updateFooterViewShouldBlurContent];
  [(WGMajorListViewController *)self invalidateVisibleWidgets];
}

- (void)_repopulateStackViewWithWidgetIdentifiers:(id)a3
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 _repopulateStackViewWithWidgetIdentifiers:a3];
  if (self->_headerView)
  {
    [(WGMajorListViewController *)self _insertHeaderView];
  }

  if (self->_footerView)
  {
    [(UIStackView *)self->super._stackView addArrangedSubview:?];
  }

  [(WGWidgetListViewController *)self _didUpdateStackViewArrangedSubviews];
}

- (unint64_t)_insertionIndexofListItem:(id)a3 intoWidgetViews:(id)a4 withOrderedIdentifiers:(id)a5
{
  v10.receiver = self;
  v10.super_class = WGMajorListViewController;
  v6 = [(WGWidgetListViewController *)&v10 _insertionIndexofListItem:a3 intoWidgetViews:a4 withOrderedIdentifiers:a5];
  if (self->_headerContentViewController)
  {
    if (self->_headerView)
    {
      v7 = [(UIStackView *)self->super._stackView arrangedSubviews];
      v8 = [v7 containsObject:self->_headerView];

      if ((v8 & (v6 == 0)) != 0)
      {
        return 1;
      }
    }
  }

  return v6;
}

- (void)setShouldBlurContent:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 setShouldBlurContent:a3];
  [(WGMajorListViewController *)self _updateFooterViewShouldBlurContent];
}

- (void)setEditingIcons:(BOOL)a3
{
  v3 = a3;
  v5 = [(WGWidgetListViewController *)self isEditingIcons];
  v6.receiver = self;
  v6.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v6 setEditingIcons:v3];
  if (v5 != v3)
  {
    [(WGMajorListViewController *)self _updateFooterVisibility];
    [(WGMajorListViewController *)self _updateEditButtonVisibilityAnimated:1];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 scrollViewDidScroll:a3];
  [(WGMajorListViewController *)self _updateHeaderVisibility];
  [(WGMajorListViewController *)self _updateFooterVisibility];
}

- (void)widgetListFooterViewAvailableNewWidgetsUpdated:(id)a3
{
  v4 = [(WGWidgetListFooterView *)self->_footerView editButton];
  [v4 addTarget:self action:sel_editButtonTapped_ forControlEvents:64];

  v5 = [(WGWidgetListFooterView *)self->_footerView widgetAvailableButton];
  [v5 addTarget:self action:sel_editButtonTapped_ forControlEvents:64];
}

- (id)editingMaterialViewForWidgetListFooterView:(id)a3
{
  v4 = [(WGWidgetListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 editingMaterialViewForWidgetListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)editButtonTapped:(id)a3
{
  v4 = [(WGWidgetListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 editButtonTappedFromWidgetListViewController:self];
  }
}

- (void)_updateFooterViewShouldBlurContent
{
  [(WGWidgetListFooterView *)self->_footerView setShouldBlurContent:[(WGWidgetListViewController *)self shouldBlurContent]];
  footerView = self->_footerView;

  [(WGWidgetListFooterView *)footerView setMaterialGroupNameBase:@"WGWidgetListViewControllerGroupName"];
}

- (void)invalidateVisibleWidgets
{
  v3 = [(WGWidgetDiscoveryController *)self->super._discoveryController visibleWidgetIdentifiersForGroup:@"TodayGroup"];
  v4 = [(WGWidgetDiscoveryController *)self->super._discoveryController visibleWidgetIdentifiersForGroup:@"WidgetGroup"];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  [(WGWidgetListFooterView *)self->_footerView setVisibleWidgetsIDs:v5];
}

- (void)widgetDiscoveryController:(id)a3 widgetWithIdentifier:(id)a4 shouldBecomeVisibleInGroup:(id)a5
{
  v19 = a4;
  v7 = a5;
  v8 = [(WGMajorListViewController *)self _group];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(WGWidgetListViewController *)self _platterViewForWidgetWithIdentifier:v19 creatingIfNecessary:0];
    if (!v10 || (-[WGWidgetListViewController _wrapperViewForWidgetPlatterView:](self, "_wrapperViewForWidgetPlatterView:", v10), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, -[UIStackView arrangedSubviews](self->super._stackView, "arrangedSubviews"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v12], v13, v12, (v14 & 1) == 0))
    {
      v15 = [(WGMajorListViewController *)self _appearState];
      v16 = [(WGWidgetListViewController *)self _listItemViewControllerForWidgetWithIdentifier:v19 creatingIfNecessary:1];
      v17 = [(WGWidgetListViewController *)self visibleWidgetIdentifiers];
      v18 = [(WGWidgetListViewController *)self _insert:1 listItem:v16 withOrderedIdentifiers:v17 animated:v15 == 2];

      if (v15 == 2)
      {
        [v16 wg_beginAppearanceTransitionIfNecessary:1 animated:1];
      }

      if (v18)
      {
        v18[2](v18);
      }

      if (v15 == 2)
      {
        [v16 wg_endAppearanceTransitionIfNecessary];
      }

      [(WGMajorListViewController *)self invalidateVisibleWidgets];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)widgetDiscoveryController:(id)a3 widgetWithIdentifier:(id)a4 shouldBecomeHiddenInGroup:(id)a5
{
  v14 = a4;
  v7 = a5;
  v8 = [(WGMajorListViewController *)self _group];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(WGMajorListViewController *)self _appearState];
    v11 = [(WGWidgetListViewController *)self _listItemViewControllerForWidgetWithIdentifier:v14 creatingIfNecessary:1];
    v12 = [(WGWidgetListViewController *)self visibleWidgetIdentifiers];
    v13 = [(WGWidgetListViewController *)self _insert:0 listItem:v11 withOrderedIdentifiers:v12 animated:v10 == 2];

    if (v10 == 2)
    {
      [v11 wg_beginAppearanceTransitionIfNecessary:0 animated:1];
    }

    if (v13)
    {
      v13[2](v13);
    }

    if (v10 == 2)
    {
      [v11 wg_endAppearanceTransitionIfNecessary];
    }

    [(WGWidgetListViewController *)self _pruneAlternateCaptureOnlyMaterialViews];
    [(WGMajorListViewController *)self invalidateVisibleWidgets];
  }
}

- (void)_updateHeaderVisibility
{
  if (self->_headerContentViewController)
  {
    v3 = [(WGMajorListViewController *)self headerContentViewController];
    v10 = [v3 view];

    [(WGWidgetListHeaderView *)self->_headerView frame];
    MaxY = CGRectGetMaxY(v12);
    [v10 origin];
    v6 = MaxY + v5;
    [(UIScrollView *)self->super._scrollView contentOffset];
    v8 = v7;
    [(UIScrollView *)self->super._scrollView contentInset];
    [(WGMajorListViewController *)self setHeaderVisible:v6 > v8 + v9];
  }

  else
  {

    [(WGMajorListViewController *)self setHeaderVisible:0];
  }
}

- (void)_updateFooterVisibility
{
  footerView = self->_footerView;
  if (footerView)
  {
    [(WGWidgetListFooterView *)footerView frame];
    MinY = CGRectGetMinY(v19);
    v5 = [(WGWidgetListFooterView *)self->_footerView contentView];
    [v5 origin];
    v7 = MinY + v6;

    [(UIScrollView *)self->super._scrollView contentOffset];
    if (v8 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    [(UIScrollView *)self->super._scrollView contentInset];
    v11 = v9 + v10;
    [(UIScrollView *)self->super._scrollView bounds];
    v13 = v7 <= v11 + v12;
    v14 = [(WGWidgetListFooterView *)self->_footerView contentView];
    [v14 alpha];
    v16 = v15;

    v17 = v16 > 0.1 && v13;
  }

  else
  {
    v17 = 0;
  }

  [(WGMajorListViewController *)self _setFooterVisible:v17];
}

- (void)_updateEditButtonVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(WGWidgetListViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 isWidgetListViewControllerEditable:self])
  {
    v12 = [(WGWidgetListViewController *)self editButton];
    [v12 setAlpha:0.0];

    v13 = [(WGMajorListViewController *)self footerView];
    v14 = [v13 editButton];
    [v14 setAlpha:0.0];

    v11 = [(WGMajorListViewController *)self footerView];
    v15 = [v11 customizeButton];
    [v15 setAlpha:0.0];
  }

  else
  {
    if ([(WGWidgetListViewController *)self isEditingIcons])
    {
      v6 = [(WGMajorListViewController *)self _isFooterVisible];
      if (v6)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = 1.0;
      }

      if (v6)
      {
        v8 = 0.01;
      }

      else
      {
        v8 = 1.0;
      }
    }

    else
    {
      v7 = 0.0;
      v8 = 0.01;
    }

    v9 = [(WGWidgetListViewController *)self isEditingIcons];
    if (v9)
    {
      LOBYTE(v9) = [(WGMajorListViewController *)self hasWidget];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__WGMajorListViewController__updateEditButtonVisibilityAnimated___block_invoke;
    v16[3] = &unk_279ED1890;
    v16[4] = self;
    *&v16[5] = v7;
    *&v16[6] = v8;
    v17 = v9;
    v10 = MEMORY[0x2743E8C10](v16);
    v11 = v10;
    if (v3)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v10 animations:0.2];
    }

    else
    {
      (*(v10 + 16))(v10);
    }
  }
}

void __65__WGMajorListViewController__updateEditButtonVisibilityAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) editButton];
  [v2 setAlpha:*(a1 + 40)];

  v3 = [*(a1 + 32) editButton];
  CGAffineTransformMakeScale(&v11, *(a1 + 48), *(a1 + 48));
  [v3 setTransform:&v11];

  v4 = [*(a1 + 32) footerView];
  v5 = [v4 editButton];
  if ([*(a1 + 32) isEditingIcons])
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v5 setAlpha:v6];

  v7 = [*(a1 + 32) footerView];
  v8 = [v7 customizeButton];
  v9 = v8;
  if (*(a1 + 56))
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  [v8 setAlpha:v10];
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end