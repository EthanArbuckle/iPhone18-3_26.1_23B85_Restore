@interface SBRootFolderViewPageManagementLayoutManager
- (BOOL)_allowsCloseBoxForIconView:(id)view;
- (BOOL)_canRasterizeIconView:(id)view;
- (BOOL)iconDragManager:(id)manager canBeginIconDragForIconView:(id)view;
- (BOOL)isTrackingActiveOrDroppingIconDrags;
- (BOOL)pageContainsBookmarkIcons:(id)icons;
- (BOOL)pageManagementCellViewControllerShouldSuppressHighlight:(id)highlight;
- (SBIconDragManager)iconDragManager;
- (SBRootFolderView)rootFolderView;
- (SBRootFolderViewPageManagementLayoutManager)init;
- (UIViewController)alertPresentationViewController;
- (id)backgroundViewForSnapshotForPageManagementCellViewController:(id)controller;
- (id)customImageViewControllerForIconView:(id)view;
- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view;
- (id)iconDragManager:(id)manager dragPreviewForIconView:(id)view;
- (id)newCellBackgroundMaterialViewInFolderView:(id)view initialWeighting:(double)weighting;
- (id)parentViewControllerForCustomIconImageViewControllerForIconView:(id)view;
- (unint64_t)folderListIndexToAnimateOutForList:(id)list inFolder:(id)folder avoidingList:(id)avoidingList;
- (void)_removePageIcon:(id)icon;
- (void)_updateCloseBoxVisibilityWithAnimation:(int64_t)animation;
- (void)backgroundTapped:(id)tapped;
- (void)cleanUpViewsInFolderView:(id)view;
- (void)configureIconView:(id)view forIcon:(id)icon;
- (void)dominoPivotAnimator:(id)animator didLayOutIconView:(id)view;
- (void)focusModeOptionsButtonTapped:(id)tapped;
- (void)iconCloseBoxTapped:(id)tapped;
- (void)iconDragManager:(id)manager didPerformIconDrop:(id)drop withIcons:(id)icons inIconListView:(id)view;
- (void)iconDragManager:(id)manager iconListView:(id)view item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)iconDragManager:(id)manager iconView:(id)view item:(id)item willAnimateDragCancelWithAnimator:(id)animator;
- (void)iconDragManager:(id)manager iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session;
- (void)iconList:(id)list didMoveIcon:(id)icon;
- (void)iconList:(id)list didRemoveIcon:(id)icon;
- (void)layoutFooterViewsInFolderView:(id)view;
- (void)layoutHeaderViewsInFolderView:(id)view;
- (void)layoutScrollViewAndRootListViewInFolderView:(id)view;
- (void)makeRootListViewInFolderView:(id)view animated:(BOOL)animated;
- (void)pageManagementCellViewControllerDidReceiveTap:(id)tap;
- (void)presentPageDeleteConfirmationAlertForIconView:(id)view completion:(id)completion;
- (void)presentSecondPageDeleteConfirmationAlertBookmarksFoundForIconView:(id)view completion:(id)completion;
- (void)rasterizeIconViewsForImprovedLegibilityInScaledDownListViews;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setActiveFocusMode:(id)mode;
- (void)transitionToActive:(BOOL)active inFolderView:(id)view usingAnimator:(id)animator;
- (void)turnOffIconViewRazterizationForNormalSizeListViews;
@end

@implementation SBRootFolderViewPageManagementLayoutManager

- (SBRootFolderViewPageManagementLayoutManager)init
{
  v3.receiver = self;
  v3.super_class = SBRootFolderViewPageManagementLayoutManager;
  result = [(SBRootFolderViewPageManagementLayoutManager *)&v3 init];
  if (result)
  {
    result->_allowsPageHiding = 1;
  }

  return result;
}

- (void)setActiveFocusMode:(id)mode
{
  modeCopy = mode;
  p_activeFocusMode = &self->_activeFocusMode;
  if (self->_activeFocusMode != modeCopy)
  {
    v7 = modeCopy;
    objc_storeStrong(p_activeFocusMode, mode);
    p_activeFocusMode = [(SBRootFolderViewPageManagementLayoutManager *)self setAllowsPageHiding:[(SBHFocusMode *)v7 customizedHomeScreenPagesEnabled]^ 1];
    modeCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_activeFocusMode, modeCopy);
}

- (void)layoutScrollViewAndRootListViewInFolderView:(id)view
{
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  pageManagementScrollView = [(SBRootFolderViewPageManagementLayoutManager *)self pageManagementScrollView];
  [pageManagementScrollView setFrame:{v5, v7, v9, v11}];
  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  if ([(SBRootFolderViewPageManagementLayoutManager *)self layoutConfiguration]== 5)
  {
    [rootListView intrinsicContentSize];
    Height = v13;
  }

  else
  {
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    Height = CGRectGetHeight(v18);
  }

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  Width = CGRectGetWidth(v19);
  [pageManagementScrollView setContentSize:{Width, Height}];
  [rootListView setFrame:{0.0, 0.0, Width, Height}];
}

- (void)layoutHeaderViewsInFolderView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  traitCollection = [viewCopy traitCollection];
  [traitCollection displayScale];
  v30 = v14;

  [viewCopy safeAreaInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v6 + v18;
  v24 = v8 + v16;
  v25 = v10 - (v18 + v22);
  v26 = v12 - (v16 + v20);
  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  [rootListView rectForIconAtIndex:0];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  MinY = CGRectGetMinY(v33);
  v34.origin.x = v23;
  v34.origin.y = v24;
  v34.size.width = v25;
  v34.size.height = v26;
  v29 = MinY - CGRectGetMinY(v34);
  v35.origin.x = v23;
  v35.origin.y = v24;
  v35.size.width = v25;
  v35.size.height = v26;
  CGRectDivide(v35, &slice, &remainder, v29, CGRectMinYEdge);
  [(UIImageView *)self->_focusModeSymbolView sizeThatFits:v10, v12];
  UIRectCenteredIntegralRectScale();
  [(UIImageView *)self->_focusModeSymbolView setFrame:v30];
}

- (void)layoutFooterViewsInFolderView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  traitCollection = [viewCopy traitCollection];
  [traitCollection displayScale];
  v35 = v10;

  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  icons = [rootListView icons];
  [rootListView rectForIconAtIndex:{objc_msgSend(icons, "count") - 1}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [viewCopy maxDockHeight];
  v21 = v20;

  v22 = v21 * 0.25;
  [(SBTitledHomeScreenButton *)self->_focusModeOptionsButton sizeThatFits:v6, v8];
  UIRectCenteredXInRectScale();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v38.origin.x = v13;
  v38.origin.y = v15;
  v38.size.width = v17;
  v38.size.height = v19;
  v29 = v22 + CGRectGetMaxY(v38);
  pageManagementScrollView = [(SBRootFolderViewPageManagementLayoutManager *)self pageManagementScrollView];
  [pageManagementScrollView contentSize];
  v32 = v31;
  v39.origin.x = v24;
  v39.origin.y = v29;
  v39.size.width = v26;
  v39.size.height = v28;
  [pageManagementScrollView setContentSize:{v32, v22 + CGRectGetMaxY(v39)}];
  [(SBTitledHomeScreenButton *)self->_focusModeOptionsButton setBounds:v24, v29, v26, v28];
  focusModeOptionsButton = self->_focusModeOptionsButton;
  v40.origin.x = v24;
  v40.origin.y = v29;
  v40.size.width = v26;
  v40.size.height = v28;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v24;
  v41.origin.y = v29;
  v41.size.width = v26;
  v41.size.height = v28;
  [(SBTitledHomeScreenButton *)focusModeOptionsButton setCenter:MidX, CGRectGetMidY(v41)];
  [(SBTitledHomeScreenButton *)self->_focusModeOptionsButton setNeedsLayout];
  [(SBTitledHomeScreenButton *)self->_focusModeOptionsButton layoutIfNeeded];
}

- (void)transitionToActive:(BOOL)active inFolderView:(id)view usingAnimator:(id)animator
{
  activeCopy = active;
  v202 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  animatorCopy = animator;
  folder = [viewCopy folder];
  scrollView = [viewCopy scrollView];
  widgetButton = [viewCopy widgetButton];
  scrollAccessoryView = [viewCopy scrollAccessoryView];
  rootFolderVisualConfiguration = [viewCopy rootFolderVisualConfiguration];
  focusModeSymbolView = [(SBRootFolderViewPageManagementLayoutManager *)self focusModeSymbolView];
  focusModeOptionsButton = [(SBRootFolderViewPageManagementLayoutManager *)self focusModeOptionsButton];
  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  pageManagementScrollView = [(SBRootFolderViewPageManagementLayoutManager *)self pageManagementScrollView];
  backgroundTapGestureRecognizer = [(SBRootFolderViewPageManagementLayoutManager *)self backgroundTapGestureRecognizer];
  [rootFolderVisualConfiguration pageManagementPageCheckboxVerticalMargin];
  v16 = v15;
  v137 = rootFolderVisualConfiguration;
  [rootFolderVisualConfiguration pageManagementPageCheckboxDiameter];
  v18 = v17;
  activeTransitionCount = [(SBRootFolderViewPageManagementLayoutManager *)self activeTransitionCount];
  memset(__src, 0, 360);
  [viewCopy getMetrics:__src];
  v154 = viewCopy;
  v19 = [viewCopy iconListModelIndexForPageIndex:{objc_msgSend(viewCopy, "currentPageIndex")}];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    firstIconPageIndex = [viewCopy firstIconPageIndex];
    [viewCopy setCurrentPageIndex:firstIconPageIndex animated:0];
    v19 = [viewCopy iconListModelIndexForPageIndex:firstIconPageIndex];
  }

  if ([folder isTrailingEmptyListIndex:v19])
  {
    do
    {
      v21 = [folder precedingVisibleListIndexBeforeIndex:v19];
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v22 = v21;
      [v154 setCurrentPageIndex:objc_msgSend(v154 animated:{"pageIndexForIconListModelIndex:", v21), 0}];
      v19 = v22;
    }

    while (([folder isTrailingEmptyListIndex:v22] & 1) != 0);
  }

  v152 = v16 + v18;
  v23 = [folder listAtIndex:v19];
  v24 = v23;
  v138 = scrollAccessoryView;
  v144 = animatorCopy;
  if (activeCopy)
  {
    v133 = v23;
    currentIconListView = [v154 currentIconListView];
    [v154 setIncludesHiddenIconListPages:1];
    [v154 setAutomaticallyCreatesIconListViews:0];
    if (!self->_iconViewControllersByIcon)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      iconViewControllersByIcon = self->_iconViewControllersByIcon;
      self->_iconViewControllersByIcon = strongToStrongObjectsMapTable;
    }

    if (!self->_iconViewControllersByListModel)
    {
      strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      iconViewControllersByListModel = self->_iconViewControllersByListModel;
      self->_iconViewControllersByListModel = strongToStrongObjectsMapTable2;
    }

    if (self->_pageIconsByListModel)
    {
      if (pageManagementScrollView)
      {
        goto LABEL_13;
      }
    }

    else
    {
      strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      pageIconsByListModel = self->_pageIconsByListModel;
      self->_pageIconsByListModel = strongToStrongObjectsMapTable3;

      if (pageManagementScrollView)
      {
LABEL_13:
        if (rootListView)
        {
LABEL_14:
          v126 = folder;
          if (!backgroundTapGestureRecognizer)
          {
            backgroundTapGestureRecognizer = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_backgroundTapped_];
            [rootListView addGestureRecognizer:backgroundTapGestureRecognizer];
          }

          v136 = backgroundTapGestureRecognizer;
          v197 = 0u;
          v196 = 0u;
          v195 = 0u;
          v194 = 0u;
          additionalIconListViews = [v154 additionalIconListViews];
          v30 = [additionalIconListViews countByEnumeratingWithState:&v194 objects:v201 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v195;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v195 != v32)
                {
                  objc_enumerationMutation(additionalIconListViews);
                }

                v34 = *(*(&v194 + 1) + 8 * i);
                [v34 setEditing:0];
                [v34 updateEditingStateAnimated:animatorCopy != 0];
              }

              v31 = [additionalIconListViews countByEnumeratingWithState:&v194 objects:v201 count:16];
            }

            while (v31);
          }

          scalingView = [v154 scalingView];
          superview = [pageManagementScrollView superview];

          if (!superview)
          {
            [scalingView bounds];
            [pageManagementScrollView setFrame:?];
            [scalingView insertSubview:pageManagementScrollView aboveSubview:scrollView];
          }

          v125 = scalingView;
          superview2 = [rootListView superview];

          if (superview2 != pageManagementScrollView)
          {
            [pageManagementScrollView addSubview:rootListView];
          }

          v146 = pageManagementScrollView;
          [(SBRootFolderViewPageManagementLayoutManager *)self layoutScrollViewAndRootListViewInFolderView:v154];
          v148 = rootListView;
          [rootListView layoutIconsNow];
          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v38 = self->_iconViewControllersByIcon;
          v39 = [(NSMapTable *)v38 countByEnumeratingWithState:&v190 objects:v200 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v191;
            do
            {
              for (j = 0; j != v40; ++j)
              {
                if (*v191 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                v43 = [(NSMapTable *)self->_iconViewControllersByIcon objectForKey:*(*(&v190 + 1) + 8 * j)];
                [v43 bs_beginAppearanceTransition:1 animated:0];
                [v43 bs_endAppearanceTransition:1];
                listView = [v43 listView];
                v188[0] = MEMORY[0x1E69E9820];
                v188[1] = 3221225472;
                v188[2] = __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke;
                v188[3] = &unk_1E8089928;
                v189 = v43;
                v45 = v43;
                [listView enumerateKnownIconViewsUsingBlock:v188];
              }

              v40 = [(NSMapTable *)v38 countByEnumeratingWithState:&v190 objects:v200 count:16];
            }

            while (v40);
          }

          v46 = [(NSMapTable *)self->_pageIconsByListModel objectForKey:v133];
          pageManagementScrollView = v146;
          if (v46)
          {
            [rootListView rectForIcon:v46];
            v204 = CGRectInset(v203, -8.0, -8.0);
            [v146 scrollRectToVisible:0 animated:{v204.origin.x, v204.origin.y, v204.size.width, v204.size.height}];
          }

          activeFocusMode = [(SBRootFolderViewPageManagementLayoutManager *)self activeFocusMode];
          folder = v126;
          model2 = currentIconListView;
          if ([activeFocusMode customizedHomeScreenPagesEnabled])
          {
            v48 = focusModeSymbolView;
            if (!focusModeSymbolView)
            {
              symbol = [activeFocusMode symbol];
              v49 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58]];
              v50 = [MEMORY[0x1E69DCAB8] systemImageNamed:symbol withConfiguration:v49];
              v121 = v46;
              v51 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v50];
              systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
              [v51 setTintColor:systemWhiteColor];

              [(SBRootFolderViewPageManagementLayoutManager *)self setFocusModeSymbolView:v51];
              model2 = currentIconListView;

              v48 = v51;
              v46 = v121;
            }

            focusModeSymbolView = v48;
            [v146 insertSubview:? aboveSubview:?];
            if (!focusModeOptionsButton)
            {
              v123 = +[SBIconView componentBackgroundView];
              v53 = SBHBundle();
              v54 = [v53 localizedStringForKey:@"OPTIONS" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

              model2 = currentIconListView;
              [v137 pageManagementFocusModeOptionsButtonSize];
              v56 = v55;
              v58 = v57;
              v59 = [SBTitledHomeScreenButton alloc];
              v60 = v46;
              v61 = [(SBTitledHomeScreenButton *)v59 initWithFrame:v123 backgroundView:1 type:v54 content:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
              [(SBTitledHomeScreenButton *)v61 setPreferredContentFittingSize:v56, v58];
              [(SBTitledHomeScreenButton *)v61 addTarget:self action:sel_focusModeOptionsButtonTapped_ forControlEvents:0x2000];
              [(SBRootFolderViewPageManagementLayoutManager *)self setFocusModeOptionsButton:v61];
              focusModeOptionsButton = v61;
              v62 = v61;
              v46 = v60;
              [v146 insertSubview:v62 aboveSubview:rootListView];
              [(SBRootFolderViewPageManagementLayoutManager *)self layoutFooterViewsInFolderView:v154];
            }
          }

          dockOffscreenAssertion = [(SBRootFolderViewPageManagementLayoutManager *)self dockOffscreenAssertion];
          if (!dockOffscreenAssertion)
          {
            dockOffscreenAssertion = [v154 beginModifyingDockOffscreenFractionForReason:@"PageEditing"];
            [(SBRootFolderViewPageManagementLayoutManager *)self setDockOffscreenAssertion:dockOffscreenAssertion];
          }

          v124 = dockOffscreenAssertion;
          scrollAccessoryBorrowedAssertion = [(SBRootFolderViewPageManagementLayoutManager *)self scrollAccessoryBorrowedAssertion];

          if (!scrollAccessoryBorrowedAssertion)
          {
            v65 = [v154 borrowScrollAccessoryForReason:@"PageEditing"];
            [(SBRootFolderViewPageManagementLayoutManager *)self setScrollAccessoryBorrowedAssertion:v65];
          }

          pageDotsVisibilityAssertion = [(SBRootFolderViewPageManagementLayoutManager *)self pageDotsVisibilityAssertion];

          if (!pageDotsVisibilityAssertion)
          {
            v67 = [v154 requirePageDotsVisibilityForReason:@"PageEditing"];
            [(SBRootFolderViewPageManagementLayoutManager *)self setPageDotsVisibilityAssertion:v67];
          }

          [(SBRootFolderViewPageManagementLayoutManager *)self layoutHeaderViewsInFolderView:v154];
          if (animatorCopy)
          {
            v122 = v46;
            v186 = 0u;
            v187 = 0u;
            v184 = 0u;
            v185 = 0u;
            v68 = self->_iconViewControllersByIcon;
            v69 = [(NSMapTable *)v68 countByEnumeratingWithState:&v184 objects:v199 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v185;
              do
              {
                for (k = 0; k != v70; ++k)
                {
                  if (*v185 != v71)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v73 = *(*(&v184 + 1) + 8 * k);
                  v74 = [(NSMapTable *)self->_iconViewControllersByIcon objectForKey:v73];
                  [v74 setScalesListView:0];
                  listModel = [v73 listModel];
                  [v154 _frameForIconListAtIndex:{objc_msgSend(v126, "indexOfList:", listModel)}];
                  [v148 convertRect:scrollView fromView:?];
                  v77 = v76;
                  v79 = v78;
                  v81 = v80;
                  v83 = v82;
                  v84 = [v148 iconViewForIcon:v73];
                  [v84 iconImageInfo];
                  v86 = v85;
                  v205.origin.x = v77;
                  v205.origin.y = v79;
                  v205.size.width = v81;
                  v205.size.height = v83;
                  Width = CGRectGetWidth(v205);
                  v206.origin.x = v77;
                  v206.origin.y = v79;
                  v206.size.width = v81;
                  v206.size.height = v83;
                  v88 = v152 + CGRectGetHeight(v206);
                  [v84 _continuousCornerRadius];
                  [v84 setIconImageInfo:{Width, v88, v86, v89}];
                  [v84 layoutIfNeeded];
                  UIRectGetCenter();
                  [v84 setCenter:?];
                }

                v70 = [(NSMapTable *)v68 countByEnumeratingWithState:&v184 objects:v199 count:16];
              }

              while (v70);
            }

            [focusModeSymbolView setAlpha:0.0];
            [focusModeOptionsButton setAlpha:0.0];
            model2 = currentIconListView;
            model = [currentIconListView model];
            v91 = [v126 isTrailingEmptyList:model];

            animatorCopy = v144;
            pageManagementScrollView = v146;
            rootListView = v148;
            v46 = v122;
            if ((v91 & 1) == 0)
            {
              [currentIconListView addSubview:v138];
            }
          }

          else
          {
            [rootListView setEditing:self->_allowsEditing];
            [rootListView updateEditingStateAnimated:0];
          }

          v24 = v133;
          goto LABEL_69;
        }

LABEL_65:
        [(SBRootFolderViewPageManagementLayoutManager *)self makeRootListViewInFolderView:v154 animated:animatorCopy != 0];
        rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
        goto LABEL_14;
      }
    }

    pageManagementScrollView = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [pageManagementScrollView setDelegate:self];
    [pageManagementScrollView setShowsVerticalScrollIndicator:0];
    [pageManagementScrollView setShowsHorizontalScrollIndicator:0];
    [(SBRootFolderViewPageManagementLayoutManager *)self setPageManagementScrollView:pageManagementScrollView];
    if (rootListView)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

  [(SBRootFolderViewPageManagementLayoutManager *)self turnOffIconViewRazterizationForNormalSizeListViews];
  if ([v24 isHidden])
  {
    v92 = [folder precedingVisibleListIndexBeforeIndex:v19];
    if (v92 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v92 = [folder nextVisibleListIndexAfterIndex:v19];
    }

    v93 = [folder listAtIndex:v92];

    [v154 setCurrentPageIndex:objc_msgSend(v154 animated:{"pageIndexForIconListModelIndex:", v92), 0}];
    v24 = v93;
  }

  v136 = backgroundTapGestureRecognizer;
  [rootListView setEditing:0];
  [rootListView updateEditingStateAnimated:animatorCopy != 0];
  model2 = [rootListView model];
  [model2 removeListObserver:self];
  if (animatorCopy)
  {
    v94 = [(NSMapTable *)self->_iconViewControllersByListModel objectForKey:v24];
    listView2 = [v94 listView];
    [listView2 addSubview:scrollAccessoryView];
    [scrollAccessoryView setAlpha:0.0];
    [listView2 removeIconViewConfigurationOption:2];
    [listView2 setContentVisibility:0];
    [listView2 enumerateIconViewsUsingBlock:&__block_literal_global_55];
  }

  else
  {
    [(SBRootFolderViewPageManagementLayoutManager *)self cleanUpViewsInFolderView:v154];
  }

LABEL_69:

  v130 = [(SBRootFolderViewPageManagementLayoutManager *)self transitionCount]+ 1;
  [(SBRootFolderViewPageManagementLayoutManager *)self setTransitionCount:?];
  v98 = [(NSMapTable *)self->_iconViewControllersByListModel objectForKey:v24];
  v99 = [(NSMapTable *)self->_pageIconsByListModel objectForKey:v24];
  v134 = v98;
  listView3 = [v98 listView];
  v149 = v99;
  [(SBIconListView *)self->_rootListView coordinateForIcon:v99];
  v101 = v100;
  iconColumnsForCurrentOrientation = [(SBIconListView *)self->_rootListView iconColumnsForCurrentOrientation];
  if (iconColumnsForCurrentOrientation)
  {
    v103 = iconColumnsForCurrentOrientation;
    v104 = 1;
    do
    {
      v101 = [(SBIconListView *)self->_rootListView iconViewForCoordinate:v104, v101];
      [(SBIconListView *)self->_rootListView bringSubviewToFront:v101];

      ++v104;
      --v103;
    }

    while (v103);
  }

  v106 = v24;
  if (animatorCopy)
  {
    [(SBRootFolderViewPageManagementLayoutManager *)self setActiveTransitionCount:activeTransitionCount + 1];
    [(SBRootFolderViewPageManagementLayoutManager *)self setLatestActiveTransitionAnimator:animatorCopy];
  }

  v147 = pageManagementScrollView;
  if (activeCopy)
  {
    v107 = 1.0;
  }

  else
  {
    v107 = 0.0;
  }

  if (activeCopy)
  {
    v108 = 0.0;
  }

  else
  {
    v108 = 1.0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_2;
  aBlock[3] = &unk_1E808E588;
  v132 = animatorCopy;
  v175 = v132;
  selfCopy = self;
  v183[360] = activeCopy;
  v109 = v154;
  v177 = v109;
  v181 = v108;
  v155 = focusModeSymbolView;
  v178 = v155;
  v182 = v107;
  v140 = focusModeOptionsButton;
  v179 = v140;
  v143 = widgetButton;
  v180 = v143;
  memcpy(v183, __src, 0x168uLL);
  v110 = _Block_copy(aBlock);
  if (animatorCopy && activeCopy)
  {
    v111 = [[SBIconListViewDominoPivotAnimator alloc] initWithPivotIcon:v149];
    [(SBIconListViewDominoPivotAnimator *)v111 setDelegate:self];
    [rootListView setIconsNeedLayout];
    [(SBRootFolderViewPageManagementLayoutManager *)self setLayoutAction:1];
    [rootListView layoutIconsIfNeededUsingAnimator:v111 options:0];
    [(SBRootFolderViewPageManagementLayoutManager *)self setLayoutAction:0];
  }

  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_4;
  v162[3] = &unk_1E808E5B0;
  v173 = activeCopy;
  v162[4] = self;
  v163 = folder;
  v112 = v106;
  v164 = v106;
  v113 = v109;
  v165 = v113;
  v114 = rootListView;
  v166 = v114;
  v167 = scrollView;
  v170 = v152;
  v171 = v107;
  v115 = listView3;
  v168 = v115;
  v172 = v108;
  v116 = v110;
  v169 = v116;
  v153 = scrollView;
  v151 = v112;
  v117 = folder;
  [v132 addAnimations:v162];
  if (!v144)
  {
    [v113 setIncludesHiddenIconListPages:0];
    [(SBRootFolderViewPageManagementLayoutManager *)self _updateCloseBoxVisibilityWithAnimation:0];
    v116[2](v116);
  }

  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_7;
  v156[3] = &unk_1E808E5D8;
  v159 = v113;
  v160 = v130;
  v156[4] = self;
  v157 = v114;
  v161 = activeCopy;
  v158 = v115;
  v118 = v113;
  v119 = v115;
  v120 = v114;
  [v132 addCompletion:v156];
  if (!v144 && activeCopy)
  {
    [(SBRootFolderViewPageManagementLayoutManager *)self rasterizeIconViewsForImprovedLegibilityInScaledDownListViews];
  }
}

void __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 customIconImageViewController];
  if (v3)
  {
    [*(a1 + 32) bs_addChildViewController:v3];
    v4 = SBLogRootController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_cold_1(v3, v4);
    }

    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v3 setForcesVisible:1];
    }
  }
}

void __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_45(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setIconLabelAlpha:0.0];
  [v2 layoutIfNeeded];
}

void __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_2(uint64_t a1)
{
  v2 = +[SBHHomeScreenDomain rootSettings];
  v3 = [v2 iconEditingSettings];
  [v3 defaultSpringDuration];
  v5 = v4;
  [v3 defaultSpringDampingRatio];
  v7 = v6;
  v8 = objc_alloc(MEMORY[0x1E69DD278]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_3;
  v16[3] = &unk_1E808E588;
  v9 = *(a1 + 32);
  v23[360] = *(a1 + 456);
  *&v10 = v9;
  *(&v10 + 1) = *(a1 + 40);
  v15 = v10;
  v11 = *(a1 + 48);
  v21 = *(a1 + 80);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v17 = v15;
  v18 = v13;
  v22 = *(a1 + 88);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  memcpy(v23, (a1 + 96), 0x168uLL);
  v14 = [v8 initWithDuration:v16 dampingRatio:v5 animations:v7];
  [v14 startAnimation];
}

uint64_t __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) dockOffscreenAssertion];
    v3 = v2;
    v4 = 0.0;
    if (*(a1 + 456))
    {
      v4 = 1.0;
    }

    [v2 setDockOffscreenFraction:v4];
    [v3 layoutIfNeededForDockOffscreenFractionChanged];
  }

  else
  {
    v3 = [*(a1 + 48) dockView];
    [v3 setAlpha:*(a1 + 80)];
  }

  [*(a1 + 56) setAlpha:*(a1 + 88)];
  [*(a1 + 64) setAlpha:*(a1 + 88)];
  v5 = [*(a1 + 48) scrollAccessoryView];
  [v5 setAlpha:*(a1 + 80)];

  result = [*(a1 + 72) setAlpha:*(a1 + 80)];
  if (*(a1 + 32))
  {
    UIRectGetCenter();
    v8 = v7;
    v10 = v9;
    if (*(a1 + 456) == 1)
    {
      memset(&v12, 0, sizeof(v12));
      CGAffineTransformMakeScale(&v12, 0.01, 0.01);
      [*(a1 + 72) setBounds:{0.0, 0.0, *(a1 + 184) * v12.c + v12.a * *(a1 + 176), *(a1 + 184) * v12.d + v12.b * *(a1 + 176)}];
      return [*(a1 + 72) setCenter:{v8, -v10}];
    }

    else
    {
      [*(a1 + 72) setBounds:{0.0, 0.0, *(a1 + 176), *(a1 + 184)}];
      v11 = *(a1 + 72);

      return [v11 setCenter:{v8, v10}];
    }
  }

  return result;
}

void __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v26 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v26.minimum;
  maximum = v26.maximum;
  preferred = v26.preferred;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_5;
  v18[3] = &unk_1E808E5B0;
  v25 = *(a1 + 120);
  v17 = *(a1 + 32);
  v6 = *(&v17 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v19 = v17;
  v20 = v9;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v23 = *(a1 + 96);
  v12 = *(a1 + 80);
  v24 = *(a1 + 112);
  v13 = *(a1 + 88);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v21 = v15;
  v22 = v14;
  *&v14 = minimum;
  *&v15 = maximum;
  *&v16 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114129 updateReason:v18 animations:{*&v14, *&v15, v16}];
}

uint64_t __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_5(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 120) & 1) == 0)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v2 = *(*(a1 + 32) + 8);
    v3 = [v2 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v41;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v41 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v40 + 1) + 8 * i);
          v8 = [*(*(a1 + 32) + 8) objectForKey:v7];
          [v8 setScalesListView:0];
          v9 = [v7 listModel];
          v10 = [*(a1 + 32) folderListIndexToAnimateOutForList:v9 inFolder:*(a1 + 40) avoidingList:*(a1 + 48)];
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = [v8 view];
            [v11 setAlpha:0.0];
          }

          else
          {
            [*(a1 + 56) _frameForIconListAtIndex:v10];
            [*(a1 + 64) convertRect:*(a1 + 72) fromView:?];
            v13 = v12;
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v11 = [*(a1 + 64) iconViewForIcon:v7];
            [v11 iconImageInfo];
            v21 = v20;
            v47.origin.x = v13;
            v47.origin.y = v15;
            v47.size.width = v17;
            v47.size.height = v19;
            Width = CGRectGetWidth(v47);
            v48.origin.x = v13;
            v48.origin.y = v15;
            v48.size.width = v17;
            v48.size.height = v19;
            v23 = CGRectGetHeight(v48) + *(a1 + 96);
            [v11 _continuousCornerRadius];
            [v11 setIconImageInfo:{Width, v23, v21, v24}];
            [v11 layoutIfNeeded];
            UIRectGetCenter();
            [v11 setCenter:?];
          }

          if ([v9 isHidden])
          {
            v25 = [v8 listView];
            [v25 setAlpha:*(a1 + 104)];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v4);
    }

    v26 = [*(a1 + 56) isEditing];
    [*(a1 + 80) setEditing:v26];
    [*(a1 + 80) updateEditingStateAnimated:1];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = [*(a1 + 56) additionalIconListViews];
    v28 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v37;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v36 + 1) + 8 * j);
          [v32 setEditing:v26];
          [v32 updateEditingStateAnimated:1];
        }

        v29 = [v27 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v29);
    }

    [*(a1 + 56) setIncludesHiddenIconListPages:0];
  }

  v33 = *(a1 + 80);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_6;
  v35[3] = &__block_descriptor_40_e27_v32__0__SBIconView_8Q16_B24l;
  v35[4] = *(a1 + 112);
  [v33 enumerateIconViewsUsingBlock:v35];
  return (*(*(a1 + 88) + 16))();
}

void __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setActiveTransitionCount:{objc_msgSend(*(a1 + 32), "activeTransitionCount") - 1}];
  [*(a1 + 32) setLatestActiveTransitionAnimator:0];
  if ([*(a1 + 32) transitionCount] == *(a1 + 64))
  {
    if (*(a1 + 72) == 1)
    {
      v2 = *(*(a1 + 32) + 48);
    }

    else
    {
      v2 = 0;
    }

    [*(a1 + 40) setEditing:v2 & 1];
    [*(a1 + 40) updateEditingStateAnimated:1];
    [*(a1 + 32) _updateCloseBoxVisibilityWithAnimation:0];
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 48) addIconViewConfigurationOption:2];
      [*(a1 + 48) enumerateIconViewsUsingBlock:&__block_literal_global_53];
      v3 = *(a1 + 32);

      [v3 rasterizeIconViewsForImprovedLegibilityInScaledDownListViews];
    }

    else
    {
      [*(a1 + 32) cleanUpViewsInFolderView:*(a1 + 56)];
      v4 = [*(a1 + 32) alertPresentationViewController];
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)rasterizeIconViewsForImprovedLegibilityInScaledDownListViews
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_iconViewControllersByIcon;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_iconViewControllersByIcon objectForKey:*(*(&v11 + 1) + 8 * v7)];
        listView = [v8 listView];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __107__SBRootFolderViewPageManagementLayoutManager_rasterizeIconViewsForImprovedLegibilityInScaledDownListViews__block_invoke;
        v10[3] = &unk_1E808AEC0;
        v10[4] = self;
        [listView enumerateIconViewsUsingBlock:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __107__SBRootFolderViewPageManagementLayoutManager_rasterizeIconViewsForImprovedLegibilityInScaledDownListViews__block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  if ([*(a1 + 32) _canRasterizeIconView:?])
  {
    v3 = [v14 layer];
    v4 = [SBHPageManagementIconViewScalingAttributes alloc];
    v5 = [v3 minificationFilter];
    v6 = [v3 shouldRasterize];
    [v3 rasterizationScale];
    v8 = -[SBHPageManagementIconViewScalingAttributes initWithMinificationFilter:shouldRasterize:rasterizationScale:allowsEdgeAntialiasing:](v4, "initWithMinificationFilter:shouldRasterize:rasterizationScale:allowsEdgeAntialiasing:", v5, v6, [v3 allowsEdgeAntialiasing], v7);

    v9 = *(*(a1 + 32) + 32);
    if (!v9)
    {
      v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v11 = *(a1 + 32);
      v12 = *(v11 + 32);
      *(v11 + 32) = v10;

      v9 = *(*(a1 + 32) + 32);
    }

    [v9 setObject:v8 forKey:v14];
    [v3 setMinificationFilter:*MEMORY[0x1E6979820]];
    [v3 setShouldRasterize:1];
    v13 = [v14 traitCollection];
    [v13 displayScale];
    [v3 setRasterizationScale:?];

    [v3 setAllowsEdgeAntialiasing:1];
  }
}

- (void)turnOffIconViewRazterizationForNormalSizeListViews
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_initialScalingAttributesByIconView;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_initialScalingAttributesByIconView objectForKey:v8, v12];
        layer = [v8 layer];
        minificationFilter = [v9 minificationFilter];
        [layer setMinificationFilter:minificationFilter];

        [layer setShouldRasterize:{objc_msgSend(v9, "shouldRasterize")}];
        [v9 rasterizationScale];
        [layer setRasterizationScale:?];
        [layer setAllowsEdgeAntialiasing:{objc_msgSend(v9, "allowsEdgeAntialiasing")}];
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)makeRootListViewInFolderView:(id)view animated:(BOOL)animated
{
  v138[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  folder = [viewCopy folder];
  [folder addFolderObserver:self];
  activeFocusMode = [(SBRootFolderViewPageManagementLayoutManager *)self activeFocusMode];
  customizedHomeScreenPagesEnabled = [activeFocusMode customizedHomeScreenPagesEnabled];
  if (customizedHomeScreenPagesEnabled)
  {
    visibleListCount = [folder visibleListCount];
  }

  else
  {
    visibleListCount = [folder listCount];
  }

  v11 = visibleListCount;
  hiddenListCount = [folder hiddenListCount];
  trailingEmptyListCount = [folder trailingEmptyListCount];
  v14 = 1;
  if (v11 != trailingEmptyListCount)
  {
    v14 = trailingEmptyListCount + hiddenListCount == v11;
  }

  if (!trailingEmptyListCount)
  {
    v14 = 0;
  }

  v100 = v14;
  v15 = v11 - trailingEmptyListCount + v14;
  v16 = 2;
  if (v15 >= 5)
  {
    v16 = 3;
  }

  if (v15 >= 3)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v15 % v17)
  {
    v18 = v15 / v17 + 1;
  }

  else
  {
    v18 = v15 / v17;
  }

  v105 = v18;
  v19 = [[SBIconListModel alloc] initWithFolder:0 gridSize:(v18 << 16) | v17];
  [(SBIconListModel *)v19 setAllowsRotatedLayout:0];
  v102 = v19;
  [(SBIconListModel *)v19 addListObserver:self];
  currentIconListModel = [viewCopy currentIconListModel];
  traitCollection = [viewCopy traitCollection];
  [viewCopy bounds];
  v21 = v20;
  v97 = v23;
  v98 = v22;
  rect = v24;
  [viewCopy safeAreaInsets];
  v108 = v25;
  [viewCopy _iconListViewSize];
  v27 = v26;
  v113 = v28;
  rootListLayout = [viewCopy rootListLayout];
  firstIconListView = [viewCopy firstIconListView];
  orientation = [firstIconListView orientation];

  [rootListLayout layoutInsetsForOrientation:orientation];
  v106 = v31;
  v103 = v32;
  v34 = v33;
  SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(rootListLayout, orientation, @"SBHIconGridSizeClassSmall");
  v36 = v35;
  v109 = orientation;
  SBHIconListLayoutIconImageInfoForGridSizeClassAndOrientation(rootListLayout, orientation, @"SBHIconGridSizeClassDefault");
  v38 = v37;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v40 = (v36 - v38) * 0.5;
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v96 = v113 - v106 - v34 + v40 * 2.0 + (v106 - v40) * 2.0;
  }

  else
  {
    [viewCopy maxDockHeight];
    v96 = v113 - v108 - v42;
  }

  rootFolderVisualConfiguration = [viewCopy rootFolderVisualConfiguration];
  v43 = 0.0;
  v44 = 0.0;
  if ([(SBRootFolderViewPageManagementLayoutManager *)self allowsPageHiding])
  {
    [rootFolderVisualConfiguration pageManagementPageCheckboxDiameter];
    v44 = v45;
    [rootFolderVisualConfiguration pageManagementPageCheckboxVerticalMargin];
    v43 = v46;
  }

  if (v17 >= 2)
  {
    if (v17 == 2)
    {
      if (v105 < 2)
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }
    }

    else if (v105 >= 3)
    {
      if (v105 == 3)
      {
        v47 = 4;
      }

      else
      {
        v47 = 5;
      }
    }

    else
    {
      v47 = 3;
    }
  }

  else
  {
    v47 = 0;
  }

  [(SBRootFolderViewPageManagementLayoutManager *)self setLayoutConfiguration:v47];
  [rootFolderVisualConfiguration pageManagementLayoutMetricsForLayoutConfiguration:v47];
  v95 = v48;
  v104 = v49;
  v107 = v50;
  v52 = v51;
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  selfCopy = self;
  v55 = customizedHomeScreenPagesEnabled;
  v56 = activeFocusMode;
  v57 = v21;
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v59 = 0.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v59 = -(v106 * v52 - (v27 * 0.03 * 0.5 + v103 * v52));
  }

  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x2020000000;
  v136[3] = v100;
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __85__SBRootFolderViewPageManagementLayoutManager_makeRootListViewInFolderView_animated___block_invoke;
  v115[3] = &unk_1E808E600;
  v60 = folder;
  v116 = v60;
  v122 = v136;
  v61 = viewCopy;
  v117 = v61;
  animatedCopy = animated;
  v101 = currentIconListModel;
  v118 = v101;
  v135 = v55;
  v123 = v27;
  v124 = v113;
  v125 = v27 * v52;
  v126 = v113 * v52;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = v59;
  v132 = v44;
  v133 = v43;
  v114 = v56;
  v119 = v114;
  v120 = selfCopy;
  v62 = selfCopy;
  v63 = v102;
  v121 = v63;
  [v60 enumerateListsWithOptions:4 usingBlock:v115];
  currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  v66 = v43 + v44;
  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v67 = v66 + v96 * v52;
  }

  else
  {
    [traitCollection displayCornerRadius];
    v67 = v66 + v96 * (v52 + 0.03);
    if ((BSFloatIsZero() & 1) == 0)
    {
      [rootListLayout iconImageInfo];
    }
  }

  v68 = v57 + 0.0;
  if (v47 > 3)
  {
    currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    v71 = 0.0;
    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v72 = 140.0;
    }

    else
    {
      v139.origin.x = v68;
      v139.origin.y = v98 + v108;
      v139.size.width = rect;
      v139.size.height = v97 - (v108 + 0.0);
      v76 = CGRectGetHeight(v139) - v67 - v104 - v67 - v104 - v67 - v107;
      if (![(SBRootFolderViewPageManagementLayoutManager *)selfCopy allowsPageHiding])
      {
        [rootFolderVisualConfiguration pageManagementPageCheckboxDiameter];
        v78 = v77;
        [rootFolderVisualConfiguration pageManagementPageCheckboxVerticalMargin];
        v76 = v76 - (v79 * 3.0 + v78 * 3.0);
      }

      v72 = v108 + v76;
    }
  }

  else
  {
    if ((v47 - 2) >= 2 || ([MEMORY[0x1E69DC938] currentDevice], v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v69, "userInterfaceIdiom"), v69, (v70 & 0xFFFFFFFFFFFFFFFBLL) == 1))
    {
      v72 = *MEMORY[0x1E69DDCE0];
      v71 = *(MEMORY[0x1E69DDCE0] + 8);
      v73 = *(MEMORY[0x1E69DDCE0] + 24);
      v107 = *(MEMORY[0x1E69DDCE0] + 16);
      goto LABEL_51;
    }

    v140.origin.x = v57 + 0.0;
    v140.origin.y = v98 + v108;
    v140.size.width = rect;
    v140.size.height = v97 - (v108 + 0.0);
    v80 = CGRectGetHeight(v140) - v67 - v104 - v67 - v107;
    if (![(SBRootFolderViewPageManagementLayoutManager *)selfCopy allowsPageHiding])
    {
      [rootFolderVisualConfiguration pageManagementPageCheckboxDiameter];
      v82 = v81;
      [rootFolderVisualConfiguration pageManagementPageCheckboxVerticalMargin];
      v80 = v80 - (v83 + v83 + v82 * 2.0);
    }

    v72 = v108 + v80;
    v71 = 0.0;
  }

  v73 = 0.0;
LABEL_51:
  v84 = objc_alloc_init(SBIconListGridLayoutConfiguration);
  v85 = v84;
  if ((v109 - 1) > 1)
  {
    [(SBIconListGridLayoutConfiguration *)v84 setNumberOfLandscapeColumns:v17];
    [(SBIconListGridLayoutConfiguration *)v85 setNumberOfLandscapeRows:v105];
    [(SBIconListGridLayoutConfiguration *)v85 setLandscapeLayoutInsets:v72, v71, v107, v73];
  }

  else
  {
    [(SBIconListGridLayoutConfiguration *)v84 setNumberOfPortraitColumns:v17];
    [(SBIconListGridLayoutConfiguration *)v85 setNumberOfPortraitRows:v105];
    [(SBIconListGridLayoutConfiguration *)v85 setPortraitLayoutInsets:v72, v71, v107, v73];
  }

  [traitCollection displayScale];
  UISizeRoundToScale();
  [(SBIconListGridLayoutConfiguration *)v85 setIconImageInfo:?];
  v86 = [[SBIconListGridLayout alloc] initWithLayoutConfiguration:v85];
  v87 = [SBHCustomIconListLayoutProvider alloc];
  v137 = @"SBRootFolderViewPageManagement";
  v138[0] = v86;
  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:&v137 count:1];
  v89 = [(SBHCustomIconListLayoutProvider *)v87 initWithListLayouts:v88];

  v90 = [[SBIconListView alloc] initWithModel:v63 layoutProvider:v89 iconLocation:@"SBRootFolderViewPageManagement" orientation:v109 iconViewProvider:selfCopy];
  iconDragManager = [(SBRootFolderViewPageManagementLayoutManager *)selfCopy iconDragManager];
  [(SBIconListView *)v90 setDragDelegate:iconDragManager];

  [(SBIconListView *)v90 setAutomaticallyAdjustsLayoutMetricsToFit:0];
  [(SBIconListView *)v90 setIconSpacing:v95, v104];
  [(SBIconListView *)v90 setLayoutInsetsMode:2];
  [(SBIconListView *)v90 setIconViewConfigurationOptions:82];
  if (selfCopy->_allowsEditing)
  {
    [(SBIconListView *)v90 setIconDragTypeIdentifier:@"com.apple.SpringBoardHome.PageReordering"];
  }

  [v61 bounds];
  [(SBIconListView *)v90 setFrame:?];
  [(SBRootFolderViewPageManagementLayoutManager *)selfCopy setRootListView:v90];
  [(SBRootFolderViewPageManagementLayoutManager *)selfCopy setPageManagementListModel:v63];
  window = [v61 window];
  rootViewController = [window rootViewController];
  [(SBRootFolderViewPageManagementLayoutManager *)v62 setAlertPresentationViewController:rootViewController];

  _Block_object_dispose(v136, 8);
}

void __85__SBRootFolderViewPageManagementLayoutManager_makeRootListViewInFolderView_animated___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) isTrailingEmptyList:v6])
  {
    v7 = *(*(a1 + 80) + 8);
    v8 = *(v7 + 24);
    if (!v8)
    {
      *a4 = 1;
      goto LABEL_14;
    }

    *(v7 + 24) = v8 - 1;
  }

  v9 = [*(a1 + 40) iconListViewWithList:v6];
  if (v9)
  {
    v10 = v9;
    [v9 setEditing:0];
    [v10 updateEditingStateAnimated:*(a1 + 208)];
    [v10 ignoreNextWindowChange];
    [*(a1 + 40) _removeIconListView:v10 purge:0];
  }

  else
  {
    v10 = [*(a1 + 40) _createIconListViewForList:v6];
  }

  if (*(a1 + 208) == 1 && *(a1 + 48) == v6)
  {
    v11 = 20;
  }

  else
  {
    v11 = 22;
  }

  [v10 addIconViewConfigurationOption:v11];
  [v10 setContentVisibility:1];
  [v10 showAllIcons];
  [v10 enumerateKnownIconViewsUsingBlock:&__block_literal_global_58_0];
  v12 = [*(a1 + 56) wantsListVisible:v6];
  if (*(a1 + 209) != 1 || v12)
  {
    v13 = [SBHPageManagementCellViewController alloc];
    v14 = *(a1 + 32);
    v15 = [*(a1 + 64) allowsPageHiding];
    v16 = *(a1 + 168);
    v22[4] = *(a1 + 152);
    v22[5] = v16;
    v22[6] = *(a1 + 184);
    v23 = *(a1 + 200);
    v17 = *(a1 + 104);
    v22[0] = *(a1 + 88);
    v22[1] = v17;
    v18 = *(a1 + 136);
    v22[2] = *(a1 + 120);
    v22[3] = v18;
    v19 = [(SBHPageManagementCellViewController *)v13 initWithListView:v10 folder:v14 metrics:v22 toggleButtonAllowed:v15];
    [(SBHPageManagementCellViewController *)v19 setDelegate:*(a1 + 64)];
    v20 = [[SBHPageManagementIcon alloc] initWithListModel:v6];
    v21 = [*(a1 + 72) addIcon:v20];
    [*(*(a1 + 64) + 8) setObject:v19 forKey:v20];
    [*(*(a1 + 64) + 16) setObject:v19 forKey:v6];
    [*(*(a1 + 64) + 24) setObject:v20 forKey:v6];
  }

LABEL_14:
}

void __85__SBRootFolderViewPageManagementLayoutManager_makeRootListViewInFolderView_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 customIconImageViewController];
  if (v2)
  {
    v7 = v2;
    v3 = objc_opt_class();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    [v6 setWantsEditingDisplayStyle:1 animated:0];
    v2 = v7;
  }
}

- (id)newCellBackgroundMaterialViewInFolderView:(id)view initialWeighting:(double)weighting
{
  traitCollection = [view traitCollection];
  v6 = [SBIconView componentBackgroundViewOfType:2 compatibleWithTraitCollection:traitCollection initialWeighting:weighting];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__SBRootFolderViewPageManagementLayoutManager_newCellBackgroundMaterialViewInFolderView_initialWeighting___block_invoke;
  v8[3] = &__block_descriptor_40_e8_d16__0d8l;
  v8[4] = 0x3FC0000000000000;
  [v6 setBackdropScaleAdjustment:v8];
  return v6;
}

double __106__SBRootFolderViewPageManagementLayoutManager_newCellBackgroundMaterialViewInFolderView_initialWeighting___block_invoke(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  result = v2 / a2;
  v4 = v2 * 4.0;
  if (result > v4)
  {
    return v4;
  }

  return result;
}

- (unint64_t)folderListIndexToAnimateOutForList:(id)list inFolder:(id)folder avoidingList:(id)avoidingList
{
  listCopy = list;
  folderCopy = folder;
  avoidingListCopy = avoidingList;
  v10 = [folderCopy indexOfList:listCopy];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  v12 = v10;
  v13 = [folderCopy listAtIndex:v10];
  v14 = v13;
  if (listCopy != avoidingListCopy && v13 == avoidingListCopy)
  {
LABEL_9:

    goto LABEL_10;
  }

  v15 = v12 - 1;
  while ([v14 isHidden])
  {
    if (v15 != -1)
    {

      v16 = [folderCopy listAtIndex:v15];
      v14 = v16;
      --v15;
      if (listCopy == avoidingListCopy || v16 != avoidingListCopy)
      {
        continue;
      }
    }

    goto LABEL_9;
  }

  v11 = [folderCopy indexOfList:v14];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    listCount = [folderCopy listCount];
    v18 = v12 + 1;
    if (v18 >= listCount)
    {
LABEL_15:
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (!avoidingListCopy)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v19 = listCount;
      while (1)
      {
        v20 = [folderCopy listAtIndex:v18];
        v21 = v20;
        if (v20 == avoidingListCopy)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_21;
        }

        if (([v20 isHidden] & 1) == 0)
        {
          break;
        }

        if (v19 == ++v18)
        {
          goto LABEL_15;
        }
      }

      v11 = [folderCopy indexOfList:v21];
LABEL_21:

      if (!avoidingListCopy)
      {
        goto LABEL_24;
      }
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [folderCopy indexOfList:avoidingListCopy];
    }
  }

LABEL_24:

  return v11;
}

- (void)cleanUpViewsInFolderView:(id)view
{
  v50 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  folder = [viewCopy folder];
  focusModeSymbolView = [(SBRootFolderViewPageManagementLayoutManager *)self focusModeSymbolView];
  [focusModeSymbolView removeFromSuperview];
  focusModeOptionsButton = [(SBRootFolderViewPageManagementLayoutManager *)self focusModeOptionsButton];
  [focusModeOptionsButton removeFromSuperview];
  widgetButton = [viewCopy widgetButton];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v47[0] = *MEMORY[0x1E695EFD0];
  v47[1] = v7;
  v47[2] = *(MEMORY[0x1E695EFD0] + 32);
  [widgetButton setTransform:v47];
  v29 = widgetButton;
  [widgetButton setAlpha:1.0];
  dockOffscreenAssertion = [(SBRootFolderViewPageManagementLayoutManager *)self dockOffscreenAssertion];
  [dockOffscreenAssertion invalidate];
  [(SBRootFolderViewPageManagementLayoutManager *)self setDockOffscreenAssertion:0];
  dockView = [viewCopy dockView];
  [dockView setAlpha:1.0];

  scrollAccessoryBorrowedAssertion = [(SBRootFolderViewPageManagementLayoutManager *)self scrollAccessoryBorrowedAssertion];
  [scrollAccessoryBorrowedAssertion invalidate];
  [(SBRootFolderViewPageManagementLayoutManager *)self setScrollAccessoryBorrowedAssertion:0];
  pageDotsVisibilityAssertion = [(SBRootFolderViewPageManagementLayoutManager *)self pageDotsVisibilityAssertion];
  [pageDotsVisibilityAssertion invalidate];
  selfCopy = self;
  [(SBRootFolderViewPageManagementLayoutManager *)self setPageDotsVisibilityAssertion:0];
  [viewCopy setPageControlAlpha:1.0];
  currentIconListModel = [viewCopy currentIconListModel];
  v36 = viewCopy;
  isEditing = [viewCopy isEditing];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v32 = folder;
  obj = [folder visibleLists];
  v10 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * i) != currentIconListModel;
        v15 = [(NSMapTable *)selfCopy->_iconViewControllersByListModel objectForKey:?];
        listView = [v15 listView];
        [v15 cleanUpListView];
        [viewCopy _addIconListView:listView atEnd:0];
        [listView removeIconViewConfigurationOption:22];
        [listView setEditing:isEditing];
        [listView updateEditingStateAnimated:1];
        [listView setContentVisibility:2 * v14];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __72__SBRootFolderViewPageManagementLayoutManager_cleanUpViewsInFolderView___block_invoke;
        v41[3] = &unk_1E8089928;
        v42 = v15;
        v17 = v15;
        [listView enumerateKnownIconViewsUsingBlock:v41];
      }

      v11 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v11);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  additionalIconListViews = [viewCopy additionalIconListViews];
  v19 = [additionalIconListViews countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(additionalIconListViews);
        }

        v23 = *(*(&v37 + 1) + 8 * j);
        [v23 setEditing:isEditing];
        [v23 updateEditingStateAnimated:1];
      }

      v20 = [additionalIconListViews countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v20);
  }

  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)selfCopy rootListView];
  [rootListView removeFromSuperview];
  pageManagementScrollView = [(SBRootFolderViewPageManagementLayoutManager *)selfCopy pageManagementScrollView];
  [pageManagementScrollView removeFromSuperview];
  [v36 setAutomaticallyCreatesIconListViews:1];
}

void __72__SBRootFolderViewPageManagementLayoutManager_cleanUpViewsInFolderView___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 customIconImageViewController];
  if (v3)
  {
    v4 = SBLogRootController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __72__SBRootFolderViewPageManagementLayoutManager_cleanUpViewsInFolderView___block_invoke_cold_1(v3, v4);
    }

    [*(a1 + 32) bs_removeChildViewController:v3];
    v5 = objc_opt_class();
    v6 = v3;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 setWantsEditingDisplayStyle:0 animated:1];
    v9 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v6 setForcesVisible:0];
    }
  }
}

- (BOOL)pageContainsBookmarkIcons:(id)icons
{
  listModel = [icons listModel];
  v4 = objc_opt_self();
  v5 = [listModel iconsOfClass:v4];

  LOBYTE(v4) = [v5 count] != 0;
  return v4;
}

- (id)parentViewControllerForCustomIconImageViewControllerForIconView:(id)view
{
  v26 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_iconViewControllersByIcon;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = [(NSMapTable *)self->_iconViewControllersByIcon objectForKey:*(*(&v21 + 1) + 8 * v8)];
      [v9 bs_beginAppearanceTransition:1 animated:0];
      [v9 bs_endAppearanceTransition:1];
      listView = [v9 listView];
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __111__SBRootFolderViewPageManagementLayoutManager_parentViewControllerForCustomIconImageViewControllerForIconView___block_invoke;
      v14[3] = &unk_1E8089768;
      v15 = viewCopy;
      v16 = &v17;
      [listView enumerateKnownIconViewsUsingBlock:v14];
      v11 = *(v18 + 24);
      if (v11 == 1)
      {
        v13 = v9;
      }

      _Block_object_dispose(&v17, 8);
      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  return v13;
}

uint64_t __111__SBRootFolderViewPageManagementLayoutManager_parentViewControllerForCustomIconImageViewControllerForIconView___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)isTrackingActiveOrDroppingIconDrags
{
  iconDragManager = [(SBRootFolderViewPageManagementLayoutManager *)self iconDragManager];
  isTrackingActiveOrDroppingIconDrags = [iconDragManager isTrackingActiveOrDroppingIconDrags];

  return isTrackingActiveOrDroppingIconDrags;
}

- (BOOL)_canRasterizeIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  if ([icon isFolderIcon])
  {
    v5 = 0;
  }

  else
  {
    effectiveIconImageAppearance = [viewCopy effectiveIconImageAppearance];
    v5 = ([effectiveIconImageAppearance appearanceType] - 7) < 0xFFFFFFFFFFFFFFFBLL;
  }

  return v5;
}

- (void)_removePageIcon:(id)icon
{
  iconCopy = icon;
  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  model = [rootListView model];
  icon = [iconCopy icon];
  [iconCopy setAllowsEditingAnimation:0];

  rootListView2 = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  [rootListView2 markIcon:icon asNeedingAnimation:0];
  rootFolderView = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView];
  folder = [rootFolderView folder];
  v10 = [folder startCoalescingContentChangesForReason:@"SBPageManagementIconCoalesceID"];
  [folder removeIcon:icon options:0];
  [model removeIcon:icon];
  [v10 invalidate];
  [rootListView2 setIconsNeedLayout];
  [rootListView2 layoutIconsIfNeededWithAnimationType:2 options:1];
}

- (void)backgroundTapped:(id)tapped
{
  tappedCopy = tapped;
  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  [tappedCopy locationInView:rootListView];
  v5 = [rootListView iconAtPoint:0 index:?];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [rootListView iconViewForIcon:v5];
  customIconImageViewController = [v6 customIconImageViewController];
  view = [customIconImageViewController view];

  if (!view)
  {

    goto LABEL_6;
  }

  [tappedCopy locationInView:view];
  v10 = v9;
  v12 = v11;
  [view bounds];
  v17.x = v10;
  v17.y = v12;
  v13 = CGRectContainsPoint(v18, v17);

  if (!v13)
  {
LABEL_6:
    rootFolderView = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView];
    [rootFolderView exitPageManagementUIWithCompletionHandler:0];
  }
}

- (void)focusModeOptionsButtonTapped:(id)tapped
{
  activeFocusMode = [(SBRootFolderViewPageManagementLayoutManager *)self activeFocusMode];
  v4 = MEMORY[0x1E695DFF8];
  v5 = MEMORY[0x1E696AEC0];
  identifier = [activeFocusMode identifier];
  v7 = [v5 stringWithFormat:@"prefs:root=DO_NOT_DISTURB&path=%@", identifier];
  v8 = [v4 URLWithString:v7];

  [(SBRootFolderViewPageManagementLayoutManager *)self setCompletionURL:v8];
  rootFolderView = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView];
  [rootFolderView exitPageManagementUIWithCompletionHandler:0];
}

- (void)presentPageDeleteConfirmationAlertForIconView:(id)view completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E69DC650];
  v7 = SBHBundle();
  v8 = [v7 localizedStringForKey:@"REMOVE_PAGE_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v9 = SBHBundle();
  v10 = [v9 localizedStringForKey:@"REMOVE_PAGE_BODY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x1E69DC648];
  v13 = SBHBundle();
  v14 = [v13 localizedStringForKey:@"REMOVE_PAGE_BUTTON" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__SBRootFolderViewPageManagementLayoutManager_presentPageDeleteConfirmationAlertForIconView_completion___block_invoke;
  v22[3] = &unk_1E808E628;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = [v12 actionWithTitle:v14 style:2 handler:v22];

  [v11 addAction:v16];
  v17 = MEMORY[0x1E69DC648];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v19 = [mainBundle localizedStringForKey:@"CANCEL" value:&stru_1F3D472A8 table:@"SpringBoard"];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];

  [v11 addAction:v20];
  [v11 setPreferredAction:v20];
  alertPresentationViewController = [(SBRootFolderViewPageManagementLayoutManager *)self alertPresentationViewController];
  [alertPresentationViewController presentViewController:v11 animated:1 completion:0];
}

- (void)presentSecondPageDeleteConfirmationAlertBookmarksFoundForIconView:(id)view completion:(id)completion
{
  completionCopy = completion;
  v6 = MEMORY[0x1E69DC650];
  v7 = SBHBundle();
  v8 = [v7 localizedStringForKey:@"REMOVE_PAGE_BOOKMARKS_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v9 = SBHBundle();
  v10 = [v9 localizedStringForKey:@"REMOVE_PAGE_BOOKMARKS_BODY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x1E69DC648];
  v13 = SBHBundle();
  v14 = [v13 localizedStringForKey:@"REMOVE_PAGE_BUTTON" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __124__SBRootFolderViewPageManagementLayoutManager_presentSecondPageDeleteConfirmationAlertBookmarksFoundForIconView_completion___block_invoke;
  v22[3] = &unk_1E808E628;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = [v12 actionWithTitle:v14 style:2 handler:v22];

  [v11 addAction:v16];
  v17 = MEMORY[0x1E69DC648];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v19 = [mainBundle localizedStringForKey:@"CANCEL" value:&stru_1F3D472A8 table:@"SpringBoard"];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];

  [v11 addAction:v20];
  [v11 setPreferredAction:v20];
  alertPresentationViewController = [(SBRootFolderViewPageManagementLayoutManager *)self alertPresentationViewController];
  [alertPresentationViewController presentViewController:v11 animated:1 completion:0];
}

- (BOOL)_allowsCloseBoxForIconView:(id)view
{
  icon = [view icon];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    listModel = [icon listModel];
    isHidden = [listModel isHidden];
  }

  else
  {
    isHidden = 0;
  }

  return isHidden;
}

- (void)_updateCloseBoxVisibilityWithAnimation:(int64_t)animation
{
  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__SBRootFolderViewPageManagementLayoutManager__updateCloseBoxVisibilityWithAnimation___block_invoke;
  v6[3] = &unk_1E808E650;
  v6[4] = self;
  v6[5] = animation;
  [rootListView enumerateIconViewsUsingBlock:v6];
}

void __86__SBRootFolderViewPageManagementLayoutManager__updateCloseBoxVisibilityWithAnimation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAllowsCloseBox:objc_msgSend(v3 withAnimation:{"_allowsCloseBoxForIconView:", v4), *(a1 + 40)}];
}

- (void)configureIconView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  [viewCopy setStartsDragMoreQuickly:1];
  [viewCopy setDelegate:self];
  [viewCopy setEditingAnimationStrength:0.25];
  [viewCopy setAllowsCloseBox:0];
}

- (id)customImageViewControllerForIconView:(id)view
{
  icon = [view icon];
  v5 = [(NSMapTable *)self->_iconViewControllersByIcon objectForKey:icon];

  return v5;
}

- (BOOL)iconDragManager:(id)manager canBeginIconDragForIconView:(id)view
{
  v31 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_allowsEditing)
  {
    rootFolderView = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView];
    isPageManagementUIVisible = [rootFolderView isPageManagementUIVisible];
    isPageManagementUITransitioningOutOfVisible = [rootFolderView isPageManagementUITransitioningOutOfVisible];
    isTrackingActiveOrDroppingIconDrags = [(SBRootFolderViewPageManagementLayoutManager *)self isTrackingActiveOrDroppingIconDrags];
    icon = [viewCopy icon];
    v7 = [(NSMapTable *)self->_iconViewControllersByIcon objectForKey:?];
    listContainerView = [v7 listContainerView];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    gestureRecognizers = [viewCopy gestureRecognizers];
    v10 = [gestureRecognizers countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      v13 = 1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([v15 state] == 1)
          {
            [v15 locationInView:viewCopy];
            v17 = v16;
            v19 = v18;
            [listContainerView bounds];
            v32.x = v17;
            v32.y = v19;
            v13 = CGRectContainsPoint(v33, v32);
          }
        }

        v11 = [gestureRecognizers countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 1;
    }

    if (isPageManagementUITransitioningOutOfVisible & 1 | ((isPageManagementUIVisible & 1) == 0))
    {
      v20 = 0;
    }

    else
    {
      v20 = !isTrackingActiveOrDroppingIconDrags && v13;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (SBIconDragManager)iconDragManager
{
  iconDragManager = self->_iconDragManager;
  if (!iconDragManager)
  {
    v4 = objc_alloc_init(SBIconDragManager);
    v5 = self->_iconDragManager;
    self->_iconDragManager = v4;

    [(SBIconDragManager *)self->_iconDragManager setDelegate:self];
    iconDragManager = self->_iconDragManager;
  }

  return iconDragManager;
}

- (id)iconDragManager:(id)manager dragItemsForIconView:(id)view
{
  v9[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  icon = [viewCopy icon];
  v6 = SBHIconDragItemWithIconAndIconView(icon, viewCopy, @"com.apple.SpringBoardHome.PageReordering");

  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v7;
}

- (void)iconDragManager:(id)manager iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session
{
  animatorCopy = animator;
  icon = [view icon];
  listModel = [icon listModel];
  v11 = [(NSMapTable *)self->_iconViewControllersByListModel objectForKey:listModel];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __112__SBRootFolderViewPageManagementLayoutManager_iconDragManager_iconView_willAnimateDragLiftWithAnimator_session___block_invoke;
  v13[3] = &unk_1E8088C90;
  v14 = v11;
  v12 = v11;
  [animatorCopy addAnimations:v13];

  [(SBRootFolderViewPageManagementLayoutManager *)self setDraggingIcon:icon];
}

- (void)iconDragManager:(id)manager iconView:(id)view item:(id)item willAnimateDragCancelWithAnimator:(id)animator
{
  v19 = *MEMORY[0x1E69E9840];
  [(SBRootFolderViewPageManagementLayoutManager *)self _updateCloseBoxVisibilityWithAnimation:0, view, item, animator];
  if ([(SBRootFolderViewPageManagementLayoutManager *)self allowsPageHiding])
  {
    objectEnumerator = [(NSMapTable *)self->_iconViewControllersByListModel objectEnumerator];
    allObjects = [objectEnumerator allObjects];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = allObjects;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) setToggleButtonAlpha:{1.0, v14}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)iconDragManager:(id)manager didPerformIconDrop:(id)drop withIcons:(id)icons inIconListView:(id)view
{
  v7 = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView:manager];
  folder = [v7 folder];
  draggingIcon = [(SBRootFolderViewPageManagementLayoutManager *)self draggingIcon];
  rootListView = [(SBRootFolderViewPageManagementLayoutManager *)self rootListView];
  model = [rootListView model];
  listModel = [draggingIcon listModel];
  v13 = [folder indexOfList:listModel];

  v14 = [model indexForIcon:draggingIcon];
  activeFocusMode = [(SBRootFolderViewPageManagementLayoutManager *)self activeFocusMode];
  if ([activeFocusMode customizedHomeScreenPagesEnabled])
  {
    v32 = activeFocusMode;
    lists = [folder lists];
    v31 = [lists copy];

    v33 = rootListView;
    if (v14)
    {
      [model iconAtIndex:v14 - 1];
    }

    else
    {
      [model firstIcon];
    }
    v17 = ;
    v18 = objc_opt_class();
    v19 = v17;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v30 = v19;

    v34 = v21;
    if (v21)
    {
      if (v14 + 1 >= [model numberOfIcons])
      {
        v22 = 0;
      }

      else
      {
        v22 = [model iconAtIndex:v14 + 1];
      }

      v23 = objc_opt_class();
      v24 = v22;
      if (v23)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (v24)
      {
        listModel2 = [v26 listModel];
        v28 = [folder indexOfList:listModel2];

        v14 = (__PAIR128__(v28, v13) - v28) >> 64;
      }

      else
      {
        listModel3 = [v34 listModel];
        v14 = [folder indexOfList:listModel3];
      }
    }

    else
    {
      v14 = 0;
    }

    rootListView = v33;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [folder moveListAtIndex:v13 toIndex:v14];
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __107__SBRootFolderViewPageManagementLayoutManager_iconDragManager_didPerformIconDrop_withIcons_inIconListView___block_invoke;
    v35[3] = &unk_1E808E678;
    v36 = folder;
    [v31 enumerateObjectsWithOptions:2 * (v14 > v13) usingBlock:v35];

    activeFocusMode = v32;
  }

  else if (v13 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [folder moveListAtIndex:v13 toIndex:v14];
  }

  if ([v7 iconListModelIndexForPageIndex:{objc_msgSend(v7, "currentPageIndex", v30)}] == v13)
  {
    [v7 setCurrentPageIndex:objc_msgSend(v7 animated:{"pageIndexForIconListModelIndex:", v14), 0}];
  }

  [(SBRootFolderViewPageManagementLayoutManager *)self setDraggingIcon:0];
}

void __107__SBRootFolderViewPageManagementLayoutManager_iconDragManager_didPerformIconDrop_withIcons_inIconListView___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([v6 isHidden])
  {
    v5 = [*(a1 + 32) indexOfList:v6];
    if (v5 != a3)
    {
      [*(a1 + 32) moveListAtIndex:v5 toIndex:a3];
    }
  }
}

- (void)iconCloseBoxTapped:(id)tapped
{
  tappedCopy = tapped;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__SBRootFolderViewPageManagementLayoutManager_iconCloseBoxTapped___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = tappedCopy;
  selfCopy = self;
  v5 = tappedCopy;
  [(SBRootFolderViewPageManagementLayoutManager *)self presentPageDeleteConfirmationAlertForIconView:v5 completion:v6];
}

void __66__SBRootFolderViewPageManagementLayoutManager_iconCloseBoxTapped___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) icon];
  v3 = [*(a1 + 40) pageContainsBookmarkIcons:v2];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__SBRootFolderViewPageManagementLayoutManager_iconCloseBoxTapped___block_invoke_2;
    v6[3] = &unk_1E8088F18;
    v6[4] = v5;
    v7 = v4;
    [v5 presentSecondPageDeleteConfirmationAlertBookmarksFoundForIconView:v7 completion:v6];
  }

  else
  {
    [*(a1 + 40) _removePageIcon:v4];
  }
}

- (void)iconDragManager:(id)manager iconListView:(id)view item:(id)item willAnimateDropWithAnimator:(id)animator
{
  animatorCopy = animator;
  sbh_appDragLocalContext = [item sbh_appDragLocalContext];
  uniqueIdentifier = [sbh_appDragLocalContext uniqueIdentifier];
  pageManagementListModel = [(SBRootFolderViewPageManagementLayoutManager *)self pageManagementListModel];
  v12 = [pageManagementListModel directlyContainedIconWithIdentifier:uniqueIdentifier];
  v13 = objc_opt_class();
  v14 = v12;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  listModel = [v16 listModel];

  v18 = [(NSMapTable *)self->_iconViewControllersByListModel objectForKey:listModel];
  [v18 setToggleButtonAlpha:0.0];
  v19 = MEMORY[0x1E69DD250];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__SBRootFolderViewPageManagementLayoutManager_iconDragManager_iconListView_item_willAnimateDropWithAnimator___block_invoke;
  v22[3] = &unk_1E8088C90;
  v23 = v18;
  v20 = v18;
  [v19 animateWithDuration:v22 animations:0.2];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __109__SBRootFolderViewPageManagementLayoutManager_iconDragManager_iconListView_item_willAnimateDropWithAnimator___block_invoke_2;
  v21[3] = &unk_1E8089000;
  v21[4] = self;
  [animatorCopy addCompletion:v21];
}

- (void)pageManagementCellViewControllerDidReceiveTap:(id)tap
{
  tapCopy = tap;
  rootFolderView = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView];
  folder = [rootFolderView folder];
  listView = [tapCopy listView];

  model = [listView model];
  v8 = [folder indexOfList:model];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [rootFolderView setCurrentPageIndex:objc_msgSend(rootFolderView animated:{"pageIndexForIconListModelIndex:", v8), 0}];
  }

  [rootFolderView exitPageManagementUIWithCompletionHandler:0];
}

- (BOOL)pageManagementCellViewControllerShouldSuppressHighlight:(id)highlight
{
  rootFolderView = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView];
  isPageManagementUITransitioningOutOfVisible = [rootFolderView isPageManagementUITransitioningOutOfVisible];
  latestActiveTransitionAnimator = [(SBRootFolderViewPageManagementLayoutManager *)self latestActiveTransitionAnimator];
  [latestActiveTransitionAnimator fractionComplete];

  v7 = BSFloatGreaterThanFloat();
  if (v7)
  {
    LOBYTE(v7) = BSFloatLessThanFloat();
  }

  v8 = isPageManagementUITransitioningOutOfVisible | v7;

  return v8 & 1;
}

- (id)backgroundViewForSnapshotForPageManagementCellViewController:(id)controller
{
  rootFolderView = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView];
  v5 = [(SBRootFolderViewPageManagementLayoutManager *)self newCellBackgroundMaterialViewInFolderView:rootFolderView initialWeighting:1.0];

  return v5;
}

- (id)iconDragManager:(id)manager dragPreviewForIconView:(id)view
{
  viewCopy = view;
  v5 = [[SBHPageManagementCellDragPreview alloc] initWithReferenceIconView:viewCopy];
  [viewCopy iconImageCenter];
  v7 = v6;
  v9 = v8;
  window = [viewCopy window];
  [viewCopy convertPoint:window toView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  [(SBHPageManagementCellDragPreview *)v5 setCenter:v12, v14];

  return v5;
}

- (void)iconList:(id)list didMoveIcon:(id)icon
{
  mEMORY[0x1E69D3F90] = [MEMORY[0x1E69D3F90] sharedInstance];
  [mEMORY[0x1E69D3F90] emitEvent:54];
}

- (void)iconList:(id)list didRemoveIcon:(id)icon
{
  v40 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    rootFolderView = [(SBRootFolderViewPageManagementLayoutManager *)self rootFolderView];
    folder = [rootFolderView folder];
    v10 = objc_opt_class();
    v11 = iconCopy;
    v34 = iconCopy;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    ignoredList = [folder ignoredList];
    v33 = v13;
    listModel = [v13 listModel];
    v16 = objc_opt_self();
    v17 = [listModel iconsOfClass:v16];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          if ([v23 isApplicationIcon] && objc_msgSend(ignoredList, "isAllowedToContainIcon:", v23))
          {
            v24 = [ignoredList addIcon:v23];
          }

          if (([v23 isWidgetIcon] & 1) != 0 || objc_msgSend(v23, "isBookmarkIcon"))
          {
            [v23 setUninstalled];
            [v23 completeUninstall];
            [listModel removeIcon:v23];
            model = [folder model];
            [model removeIcon:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v20);
    }

    v26 = [rootFolderView iconListModelIndexForPageIndex:{objc_msgSend(rootFolderView, "currentPageIndex")}];
    v27 = [folder indexOfList:listModel];
    if (v26 <= v27)
    {
      v31 = v33;
      iconCopy = v34;
      if (v26 != v27)
      {
LABEL_28:
        [folder removeList:listModel];
        mEMORY[0x1E69D3F90] = [MEMORY[0x1E69D3F90] sharedInstance];
        [mEMORY[0x1E69D3F90] emitEvent:53];

        goto LABEL_29;
      }

      firstIconPageIndex = [rootFolderView firstIconPageIndex];
    }

    else
    {
      firstIconPageIndex = [rootFolderView pageIndexForIconListModelIndex:v26 - 1];
      iconCopy = v34;
      if (firstIconPageIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = SBLogCommon();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);

        if (v30)
        {
          NSLog(&cfstr_NoPrecedingPag.isa);
        }
      }

      v31 = v33;
    }

    [rootFolderView setCurrentPageIndex:firstIconPageIndex animated:0];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_iconViewControllersByIcon;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMapTable *)self->_iconViewControllersByIcon objectForKey:*(*(&v10 + 1) + 8 * v8), v10];
        [v9 cancelGestures];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)dominoPivotAnimator:(id)animator didLayOutIconView:(id)view
{
  viewCopy = view;
  if ([(SBRootFolderViewPageManagementLayoutManager *)self layoutAction]== 1)
  {
    icon = [viewCopy icon];
    v6 = [(NSMapTable *)self->_iconViewControllersByIcon objectForKey:icon];
    [v6 setScalesListView:1];
    [viewCopy clearIconImageInfo];
    view = [v6 view];
    [view layoutIfNeeded];
  }
}

- (SBRootFolderView)rootFolderView
{
  WeakRetained = objc_loadWeakRetained(&self->_rootFolderView);

  return WeakRetained;
}

- (UIViewController)alertPresentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertPresentationViewController);

  return WeakRetained;
}

void __93__SBRootFolderViewPageManagementLayoutManager_transitionToActive_inFolderView_usingAnimator___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "Adding %p as a child of page hiding page controller", &v2, 0xCu);
}

void __72__SBRootFolderViewPageManagementLayoutManager_cleanUpViewsInFolderView___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "Removing %p as a child of page hiding page controller", &v2, 0xCu);
}

@end