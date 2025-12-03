@interface WGMajorListViewController
- (BOOL)hasWidget;
- (BOOL)shouldAnimateFirstTwoViewsAsOne;
- (BOOL)shouldAnimateLastTwoViewsAsOne;
- (NSArray)extraViews;
- (NSArray)extraViewsContainers;
- (UIView)containerView;
- (id)editingMaterialViewForWidgetListFooterView:(id)view;
- (unint64_t)_insertionIndexofListItem:(id)item intoWidgetViews:(id)views withOrderedIdentifiers:(id)identifiers;
- (void)_configureStackView;
- (void)_insertHeaderView;
- (void)_repopulateStackViewWithWidgetIdentifiers:(id)identifiers;
- (void)_setFooterVisible:(BOOL)visible;
- (void)_updateEditButtonVisibilityAnimated:(BOOL)animated;
- (void)_updateFooterViewShouldBlurContent;
- (void)_updateFooterVisibility;
- (void)_updateHeaderVisibility;
- (void)editButtonTapped:(id)tapped;
- (void)enumerateWidgetWrapperViewsUsingBlock:(id)block;
- (void)invalidateVisibleWidgets;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setEditingIcons:(BOOL)icons;
- (void)setHeaderContentViewController:(id)controller;
- (void)setHeaderVisible:(BOOL)visible;
- (void)setShouldBlurContent:(BOOL)content;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)widgetDiscoveryController:(id)controller widgetWithIdentifier:(id)identifier shouldBecomeHiddenInGroup:(id)group;
- (void)widgetDiscoveryController:(id)controller widgetWithIdentifier:(id)identifier shouldBecomeVisibleInGroup:(id)group;
- (void)widgetListFooterViewAvailableNewWidgetsUpdated:(id)updated;
@end

@implementation WGMajorListViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v5 viewWillAppear:?];
  [(WGMajorListViewController *)self _updateHeaderVisibility];
  [(WGMajorListViewController *)self _updateFooterVisibility];
  [(WGMajorListViewController *)self _updateEditButtonVisibilityAnimated:0];
  [(UIViewController *)self->_headerContentViewController wg_beginAppearanceTransitionIfNecessary:1 animated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 viewDidAppear:appear];
  [(UIViewController *)self->_headerContentViewController wg_endAppearanceTransitionIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v5 viewWillDisappear:?];
  [(UIViewController *)self->_headerContentViewController wg_beginAppearanceTransitionIfNecessary:0 animated:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 viewDidDisappear:disappear];
  [(UIViewController *)self->_headerContentViewController wg_endAppearanceTransitionIfNecessary];
}

- (void)setHeaderContentViewController:(id)controller
{
  controllerCopy = controller;
  headerContentViewController = self->_headerContentViewController;
  if (headerContentViewController != controllerCopy)
  {
    if (headerContentViewController && self->_headerView)
    {
      [(WGMajorListViewController *)self bs_removeChildViewController:?];
      [(WGWidgetListHeaderView *)self->_headerView removeFromSuperview];
    }

    objc_storeStrong(&self->_headerContentViewController, controller);
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
  contentView = [(WGWidgetListHeaderView *)self->_headerView contentView];
  [(UIStackView *)self->super._stackView insertArrangedSubview:self->_headerView atIndex:0];
  [(WGWidgetListViewController *)self _didUpdateStackViewArrangedSubviews];
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass = [mEMORY[0x277CF0CA8] deviceClass];
  if (deviceClass != 2)
  {
    LODWORD(v6) = 0;
    goto LABEL_7;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (CGRectGetHeight(v64) <= 1194.0)
  {
    LODWORD(v6) = 0;
    goto LABEL_7;
  }

  mEMORY[0x277CF0CA8]2 = [MEMORY[0x277CF0CA8] sharedInstance];
  if ([mEMORY[0x277CF0CA8]2 homeButtonType] != 2)
  {
    v51 = mEMORY[0x277CF0CA8]2;
    LODWORD(v6) = 1;
LABEL_7:
    mEMORY[0x277CF0CA8]3 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass2 = [mEMORY[0x277CF0CA8]3 deviceClass];
    if (deviceClass2 == 2)
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
      if (CGRectGetHeight(v65) <= 1024.0)
      {
        v57 = mainScreen2;
        v10 = 0;
      }

      else
      {
        mEMORY[0x277CF0CA8]4 = [MEMORY[0x277CF0CA8] sharedInstance];
        if ([mEMORY[0x277CF0CA8]4 homeButtonType] == 2)
        {

          v5 = 44.0;
          if ((v6 & 1) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_28;
        }

        v54 = mEMORY[0x277CF0CA8]4;
        v57 = mainScreen2;
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    mEMORY[0x277CF0CA8]5 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass3 = [mEMORY[0x277CF0CA8]5 deviceClass];
    v13 = deviceClass3;
    if (deviceClass3 == 2)
    {
      mainScreen4 = deviceClass3;
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 _referenceBounds];
      if (CGRectGetHeight(v66) > 1194.0)
      {

        v15 = 0x4040000000000000;
        goto LABEL_23;
      }

      v50 = mainScreen3;
      v13 = mainScreen4;
    }

    mEMORY[0x277CF0CA8]6 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass4 = [mEMORY[0x277CF0CA8]6 deviceClass];
    if (deviceClass4 == 2)
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
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

      v46 = mainScreen4;
    }

    mEMORY[0x277CF0CA8]7 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass5 = [mEMORY[0x277CF0CA8]7 deviceClass];
    if (deviceClass5 == 2)
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
      if (CGRectGetHeight(v68) > 1024.0)
      {

        if (deviceClass4 == 2)
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

      v39 = mainScreen4;
    }

    mEMORY[0x277CF0CA8]8 = [MEMORY[0x277CF0CA8] sharedInstance];
    v5 = 29.0;
    if ([mEMORY[0x277CF0CA8]8 deviceClass] == 2)
    {
      goto LABEL_79;
    }

    v49 = mEMORY[0x277CF0CA8]8;
    v47 = v10;
    v48 = v6;
    mEMORY[0x277CF0CA8]9 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass6 = [mEMORY[0x277CF0CA8]9 deviceClass];
    if (deviceClass6)
    {
      mEMORY[0x277CF0CA8]10 = [MEMORY[0x277CF0CA8] sharedInstance];
      v6 = mEMORY[0x277CF0CA8]8;
      if ([mEMORY[0x277CF0CA8]10 deviceClass] != 1)
      {
        v42 = 0;
        v43 = 0;
        goto LABEL_66;
      }
    }

    else
    {
      v6 = mEMORY[0x277CF0CA8]8;
    }

    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 _referenceBounds];
    if (CGRectGetHeight(v69) <= 812.0)
    {
      v42 = 0;
      v43 = 1;
    }

    else
    {
      mEMORY[0x277CF0CA8]11 = [MEMORY[0x277CF0CA8] sharedInstance];
      if ([mEMORY[0x277CF0CA8]11 homeButtonType] == 2 && _BSUI_Private_IsN84())
      {

        if (deviceClass6)
        {
        }

        LODWORD(v6) = v48;
        v16 = v54;
        if (deviceClass5 == 2)
        {
        }

        if (deviceClass4 == 2)
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
    mEMORY[0x277CF0CA8]12 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass7 = [mEMORY[0x277CF0CA8]12 deviceClass];
    if (!deviceClass7 || ([MEMORY[0x277CF0CA8] sharedInstance], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "deviceClass") == 1))
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
      if (CGRectGetHeight(v70) > 812.0)
      {
        mainScreen4 = [MEMORY[0x277CF0CA8] sharedInstance];
        v6 = v48;
        if ([mainScreen4 homeButtonType] == 2)
        {

          if (deviceClass7)
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
            if (deviceClass6)
            {
            }

            v5 = 0.0;
            mEMORY[0x277CF0CA8]8 = v49;
LABEL_79:

            if (deviceClass5 == 2)
            {
            }

            v16 = v54;
            if (deviceClass4 == 2)
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
            if (deviceClass2 == 2)
            {
            }

            if (!v6)
            {
LABEL_29:
              if (deviceClass != 2)
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
        mEMORY[0x277CF0CA8]13 = [MEMORY[0x277CF0CA8] sharedInstance];
        deviceClass8 = [mEMORY[0x277CF0CA8]13 deviceClass];
        if (!deviceClass8 || ([MEMORY[0x277CF0CA8] sharedInstance], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "deviceClass") == 1))
        {
          mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen7 _referenceBounds];
          if (CGRectGetHeight(v71) <= 736.0)
          {
            v33 = 0x100000000;
          }

          else
          {
            mEMORY[0x277CF0CA8]8 = [MEMORY[0x277CF0CA8] sharedInstance];
            if ([mEMORY[0x277CF0CA8]8 homeButtonType] == 2)
            {

              if (deviceClass8)
              {
              }

              if (v37)
              {
LABEL_129:

                if ((v37 & 0x100000000) == 0)
                {
LABEL_100:
                  if (deviceClass7)
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

        mEMORY[0x277CF0CA8]14 = [MEMORY[0x277CF0CA8] sharedInstance];
        deviceClass9 = [mEMORY[0x277CF0CA8]14 deviceClass];
        if (!deviceClass9 || ([MEMORY[0x277CF0CA8] sharedInstance], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "deviceClass") == 1))
        {
          mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen8 _referenceBounds];
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

        mEMORY[0x277CF0CA8]15 = [MEMORY[0x277CF0CA8] sharedInstance];
        deviceClass10 = [mEMORY[0x277CF0CA8]15 deviceClass];
        if (deviceClass10 && ([MEMORY[0x277CF0CA8] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "deviceClass") != 1) || (objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "_referenceBounds"), CGRectGetHeight(v73), v21, deviceClass10))
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
        if (deviceClass9)
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
        if (deviceClass8)
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
  [contentView layoutMargins];
  [(UIStackView *)self->super._stackView setCustomSpacing:self->_headerView afterView:v5 - v17];
}

- (void)setHeaderVisible:(BOOL)visible
{
  if (self->_headerVisible != visible)
  {
    self->_headerVisible = visible;
    delegate = [(WGWidgetListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate majorListViewControllerDidChangeHeaderVisibility:self];
    }
  }
}

- (void)_setFooterVisible:(BOOL)visible
{
  if (self->_footerVisible != visible)
  {
    self->_footerVisible = visible;
    v5 = [(WGMajorListViewController *)self _appearState]!= 0;

    [(WGMajorListViewController *)self _updateEditButtonVisibilityAnimated:v5];
  }
}

- (void)enumerateWidgetWrapperViewsUsingBlock:(id)block
{
  blockCopy = block;
  arrangedSubviews = [(UIStackView *)self->super._stackView arrangedSubviews];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__WGMajorListViewController_enumerateWidgetWrapperViewsUsingBlock___block_invoke;
  v7[3] = &unk_279ED1818;
  v8 = blockCopy;
  v6 = blockCopy;
  [arrangedSubviews enumerateObjectsUsingBlock:v7];
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
  enabledWidgetIdentifiersForAllGroups = [(WGWidgetDiscoveryController *)self->super._discoveryController enabledWidgetIdentifiersForAllGroups];
  v4 = [enabledWidgetIdentifiersForAllGroups count];
  disabledWidgetIdentifiers = [(WGWidgetDiscoveryController *)self->super._discoveryController disabledWidgetIdentifiers];
  LOBYTE(v4) = v4 + [disabledWidgetIdentifiers count] != 0;

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
  selfCopy = self;
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
  extraViews = [(WGMajorListViewController *)self extraViews];
  if ([extraViews count] < 2)
  {
    v7 = 0;
  }

  else
  {
    lastObject = [extraViews lastObject];
    v4 = objc_opt_class();
    v5 = lastObject;
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
      lastObject2 = [extraViews lastObject];
      v19 = objc_opt_class();
      v20 = lastObject2;
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
        contentView = [v22 contentView];
        v24 = contentView;
        if (contentView)
        {
          [contentView transform];
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
  extraViews = [(WGMajorListViewController *)self extraViews];
  if ([extraViews count] < 2)
  {
    v7 = 0;
  }

  else
  {
    firstObject = [extraViews firstObject];
    v4 = objc_opt_class();
    v5 = firstObject;
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
      platterView = [v8 platterView];
      [platterView bounds];
      v7 = v12 != v15 || v10 != v14;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v16 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
    if (coordinatorCopy)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __80__WGMajorListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
      v10[3] = &unk_279ED0C60;
      v11 = v8;
      [coordinatorCopy animateAlongsideTransition:0 completion:v10];
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
  editButton = [(WGWidgetListFooterView *)self->_footerView editButton];
  [editButton addTarget:self action:sel_editButtonTapped_ forControlEvents:64];

  widgetAvailableButton = [(WGWidgetListFooterView *)self->_footerView widgetAvailableButton];
  [widgetAvailableButton addTarget:self action:sel_editButtonTapped_ forControlEvents:64];

  customizeButton = [(WGWidgetListFooterView *)self->_footerView customizeButton];
  [customizeButton addTarget:self action:sel_presentEditView_ forControlEvents:64];

  [(WGMajorListViewController *)self _updateFooterViewShouldBlurContent];
  [(WGMajorListViewController *)self invalidateVisibleWidgets];
}

- (void)_repopulateStackViewWithWidgetIdentifiers:(id)identifiers
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 _repopulateStackViewWithWidgetIdentifiers:identifiers];
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

- (unint64_t)_insertionIndexofListItem:(id)item intoWidgetViews:(id)views withOrderedIdentifiers:(id)identifiers
{
  v10.receiver = self;
  v10.super_class = WGMajorListViewController;
  v6 = [(WGWidgetListViewController *)&v10 _insertionIndexofListItem:item intoWidgetViews:views withOrderedIdentifiers:identifiers];
  if (self->_headerContentViewController)
  {
    if (self->_headerView)
    {
      arrangedSubviews = [(UIStackView *)self->super._stackView arrangedSubviews];
      v8 = [arrangedSubviews containsObject:self->_headerView];

      if ((v8 & (v6 == 0)) != 0)
      {
        return 1;
      }
    }
  }

  return v6;
}

- (void)setShouldBlurContent:(BOOL)content
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 setShouldBlurContent:content];
  [(WGMajorListViewController *)self _updateFooterViewShouldBlurContent];
}

- (void)setEditingIcons:(BOOL)icons
{
  iconsCopy = icons;
  isEditingIcons = [(WGWidgetListViewController *)self isEditingIcons];
  v6.receiver = self;
  v6.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v6 setEditingIcons:iconsCopy];
  if (isEditingIcons != iconsCopy)
  {
    [(WGMajorListViewController *)self _updateFooterVisibility];
    [(WGMajorListViewController *)self _updateEditButtonVisibilityAnimated:1];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4.receiver = self;
  v4.super_class = WGMajorListViewController;
  [(WGWidgetListViewController *)&v4 scrollViewDidScroll:scroll];
  [(WGMajorListViewController *)self _updateHeaderVisibility];
  [(WGMajorListViewController *)self _updateFooterVisibility];
}

- (void)widgetListFooterViewAvailableNewWidgetsUpdated:(id)updated
{
  editButton = [(WGWidgetListFooterView *)self->_footerView editButton];
  [editButton addTarget:self action:sel_editButtonTapped_ forControlEvents:64];

  widgetAvailableButton = [(WGWidgetListFooterView *)self->_footerView widgetAvailableButton];
  [widgetAvailableButton addTarget:self action:sel_editButtonTapped_ forControlEvents:64];
}

- (id)editingMaterialViewForWidgetListFooterView:(id)view
{
  delegate = [(WGWidgetListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate editingMaterialViewForWidgetListViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)editButtonTapped:(id)tapped
{
  delegate = [(WGWidgetListViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate editButtonTappedFromWidgetListViewController:self];
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

- (void)widgetDiscoveryController:(id)controller widgetWithIdentifier:(id)identifier shouldBecomeVisibleInGroup:(id)group
{
  identifierCopy = identifier;
  groupCopy = group;
  _group = [(WGMajorListViewController *)self _group];
  v9 = [groupCopy isEqual:_group];

  if (v9)
  {
    v10 = [(WGWidgetListViewController *)self _platterViewForWidgetWithIdentifier:identifierCopy creatingIfNecessary:0];
    if (!v10 || (-[WGWidgetListViewController _wrapperViewForWidgetPlatterView:](self, "_wrapperViewForWidgetPlatterView:", v10), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, -[UIStackView arrangedSubviews](self->super._stackView, "arrangedSubviews"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v12], v13, v12, (v14 & 1) == 0))
    {
      _appearState = [(WGMajorListViewController *)self _appearState];
      v16 = [(WGWidgetListViewController *)self _listItemViewControllerForWidgetWithIdentifier:identifierCopy creatingIfNecessary:1];
      visibleWidgetIdentifiers = [(WGWidgetListViewController *)self visibleWidgetIdentifiers];
      v18 = [(WGWidgetListViewController *)self _insert:1 listItem:v16 withOrderedIdentifiers:visibleWidgetIdentifiers animated:_appearState == 2];

      if (_appearState == 2)
      {
        [v16 wg_beginAppearanceTransitionIfNecessary:1 animated:1];
      }

      if (v18)
      {
        v18[2](v18);
      }

      if (_appearState == 2)
      {
        [v16 wg_endAppearanceTransitionIfNecessary];
      }

      [(WGMajorListViewController *)self invalidateVisibleWidgets];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)widgetDiscoveryController:(id)controller widgetWithIdentifier:(id)identifier shouldBecomeHiddenInGroup:(id)group
{
  identifierCopy = identifier;
  groupCopy = group;
  _group = [(WGMajorListViewController *)self _group];
  v9 = [groupCopy isEqual:_group];

  if (v9)
  {
    _appearState = [(WGMajorListViewController *)self _appearState];
    v11 = [(WGWidgetListViewController *)self _listItemViewControllerForWidgetWithIdentifier:identifierCopy creatingIfNecessary:1];
    visibleWidgetIdentifiers = [(WGWidgetListViewController *)self visibleWidgetIdentifiers];
    v13 = [(WGWidgetListViewController *)self _insert:0 listItem:v11 withOrderedIdentifiers:visibleWidgetIdentifiers animated:_appearState == 2];

    if (_appearState == 2)
    {
      [v11 wg_beginAppearanceTransitionIfNecessary:0 animated:1];
    }

    if (v13)
    {
      v13[2](v13);
    }

    if (_appearState == 2)
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
    headerContentViewController = [(WGMajorListViewController *)self headerContentViewController];
    view = [headerContentViewController view];

    [(WGWidgetListHeaderView *)self->_headerView frame];
    MaxY = CGRectGetMaxY(v12);
    [view origin];
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
    contentView = [(WGWidgetListFooterView *)self->_footerView contentView];
    [contentView origin];
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
    contentView2 = [(WGWidgetListFooterView *)self->_footerView contentView];
    [contentView2 alpha];
    v16 = v15;

    v17 = v16 > 0.1 && v13;
  }

  else
  {
    v17 = 0;
  }

  [(WGMajorListViewController *)self _setFooterVisible:v17];
}

- (void)_updateEditButtonVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(WGWidgetListViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate isWidgetListViewControllerEditable:self])
  {
    editButton = [(WGWidgetListViewController *)self editButton];
    [editButton setAlpha:0.0];

    footerView = [(WGMajorListViewController *)self footerView];
    editButton2 = [footerView editButton];
    [editButton2 setAlpha:0.0];

    footerView2 = [(WGMajorListViewController *)self footerView];
    customizeButton = [footerView2 customizeButton];
    [customizeButton setAlpha:0.0];
  }

  else
  {
    if ([(WGWidgetListViewController *)self isEditingIcons])
    {
      _isFooterVisible = [(WGMajorListViewController *)self _isFooterVisible];
      if (_isFooterVisible)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = 1.0;
      }

      if (_isFooterVisible)
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

    isEditingIcons = [(WGWidgetListViewController *)self isEditingIcons];
    if (isEditingIcons)
    {
      LOBYTE(isEditingIcons) = [(WGMajorListViewController *)self hasWidget];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__WGMajorListViewController__updateEditButtonVisibilityAnimated___block_invoke;
    v16[3] = &unk_279ED1890;
    v16[4] = self;
    *&v16[5] = v7;
    *&v16[6] = v8;
    v17 = isEditingIcons;
    v10 = MEMORY[0x2743E8C10](v16);
    footerView2 = v10;
    if (animatedCopy)
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