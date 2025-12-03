@interface _TVShelfViewController
+ (void)_contentForCell:(id)cell shouldHide:(BOOL)hide;
- (BOOL)hideHeader;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)expectedCellSizeForElement:(id)element atIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (__TVShelfViewControllerDelegate)delegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)makeCollectionViewWithFrame:(CGRect)frame;
- (id)preferredFocusEnvironments;
- (void)_delayedUpdatePreview;
- (void)_didSettleOnItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)didMoveToParentViewController:(id)controller;
- (void)dispatchEvent:(id)event forItemAtIndexPath:(id)path completionBlock:(id)block;
- (void)setDelegate:(id)delegate;
- (void)setHideHeader:(BOOL)header;
- (void)setSpeedBumpEdges:(unint64_t)edges;
- (void)updateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)updateViewLayoutAnimated:(BOOL)animated relayout:(BOOL)relayout;
- (void)updateWithViewElement:(id)element;
- (void)updateWithViewElement:(id)element cellMetrics:(TVCellMetrics *)metrics;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _TVShelfViewController

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  p_delegateFlags = &self->_delegateFlags;
  self->_delegateFlags.hasUpdateRelatedView = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.hasDidSettleOnItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.hasDidPlayItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  self->_delegateFlags.hasDidSelectItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  LOBYTE(self) = objc_opt_respondsToSelector();

  p_delegateFlags->hasDidSnapToItemAtIndexPath = self & 1;
  v6 = p_delegateFlags->hasUpdateRelatedView || p_delegateFlags->hasDidSettleOnItemAtIndexPath;
  p_delegateFlags->hasFocusDependentMethods = v6 & 1;
}

- (void)didMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = _TVShelfViewController;
  [(_TVShelfViewController *)&v7 didMoveToParentViewController:?];
  if (controller)
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout snapContent];
  }

  else
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
  }
}

- (void)updateWithViewElement:(id)element cellMetrics:(TVCellMetrics *)metrics
{
  v71 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  attributes = [elementCopy attributes];
  v8 = [attributes objectForKeyedSubscript:@"scrollPosition"];

  self->_autohighlightScrollPosition = 0;
  lowercaseString = [v8 lowercaseString];
  v10 = [lowercaseString isEqualToString:@"left"];

  if (v10)
  {
    v11 = 8;
LABEL_5:
    self->_autohighlightScrollPosition = v11;
    goto LABEL_6;
  }

  lowercaseString2 = [v8 lowercaseString];
  v13 = [lowercaseString2 isEqualToString:@"right"];

  if (v13)
  {
    v11 = 32;
    goto LABEL_5;
  }

LABEL_6:
  sections = [elementCopy sections];
  self->_prominentSectionIndex = [sections indexOfObjectPassingTest:&__block_literal_global_15];

  v69.receiver = self;
  v69.super_class = _TVShelfViewController;
  v15 = *&metrics->cellMargin.top;
  v68[6] = *&metrics->cellInsetAlt.bottom;
  v68[7] = v15;
  v68[8] = *&metrics->cellMargin.bottom;
  v16 = *&metrics->cellInset.top;
  v68[2] = *&metrics->cellPadding.bottom;
  v68[3] = v16;
  v17 = *&metrics->cellInsetAlt.top;
  v68[4] = *&metrics->cellInset.bottom;
  v68[5] = v17;
  v18 = *&metrics->cellPadding.top;
  v68[0] = metrics->cellSize;
  v68[1] = v18;
  [(_TVMLCollectionViewController *)&v69 updateWithViewElement:elementCopy cellMetrics:v68];
  if (self->_lastPreviewedIndexPath)
  {
    sections2 = [elementCopy sections];
    v20 = [sections2 count];
    section = [(NSIndexPath *)self->_lastPreviewedIndexPath section];

    if (v20 <= section || ([elementCopy sections], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "objectAtIndex:", -[NSIndexPath section](self->_lastPreviewedIndexPath, "section")), v23 = objc_claimAutoreleasedReturnValue(), v22, v24 = objc_msgSend(v23, "numberOfItems"), v25 = -[NSIndexPath item](self->_lastPreviewedIndexPath, "item"), v23, v24 <= v25))
    {
      lastPreviewedIndexPath = self->_lastPreviewedIndexPath;
      self->_lastPreviewedIndexPath = 0;
    }
  }

  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  if ([collectionElement updateType] == 2)
  {
    view = [(_TVShelfViewController *)self view];
    window = [view window];

    if (!window)
    {
      goto LABEL_23;
    }

    v61 = v8;
    v62 = elementCopy;
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    v31 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:?];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v31;
    v32 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v65;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v65 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v64 + 1) + 8 * i);
          collectionElement2 = [(_TVMLCollectionViewController *)self collectionElement];
          sections3 = [collectionElement2 sections];
          v39 = [sections3 objectAtIndex:{objc_msgSend(v36, "section")}];

          header = [v39 header];

          if (header)
          {
            collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
            v42 = [collectionView2 supplementaryViewForElementKind:@"TVShelfLayoutElementKindHeader" atIndexPath:v36];

            subviews = [v42 subviews];
            firstObject = [subviews firstObject];

            v45 = +[TVInterfaceFactory sharedInterfaceFactory];
            [v39 header];
            v47 = v46 = self;
            v48 = [v45 _viewFromElement:v47 existingView:firstObject];

            self = v46;
            [v48 setNeedsLayout];
          }
        }

        v33 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v33);
    }

    collectionElement = obj;

    v8 = v61;
    elementCopy = v62;
  }

LABEL_23:
  if ([(_TVShelfViewController *)self isViewLoaded])
  {
    if (self->_configureForListTemplate)
    {
      selfCopy = self;
      listTemplateAlignment = self->_listTemplateAlignment;
      view2 = [(_TVShelfViewController *)selfCopy view];
      semanticContentAttribute = [view2 semanticContentAttribute];
      v53 = listTemplateAlignment;
      self = selfCopy;
      v54 = [TVMLUtilities semanticAlignmentForAlignment:v53 semanticContentAttribute:semanticContentAttribute];

      collectionWrappingView = [(_TVMLCollectionViewController *)selfCopy collectionWrappingView];
      v56 = collectionWrappingView;
      if (v54 == 1)
      {
        v57 = 8;
      }

      else
      {
        v57 = 16;
      }
    }

    else
    {
      collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
      v56 = collectionWrappingView;
      v57 = 0;
    }

    [collectionWrappingView setCollectionGradientMask:v57];

    lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    if (self->_delegateFlags.hasFocusDependentMethods)
    {
      pendingPreviewedIndexPath = self->_pendingPreviewedIndexPath;
      if (pendingPreviewedIndexPath != lastFocusedIndexPath && ([(NSIndexPath *)pendingPreviewedIndexPath isEqual:lastFocusedIndexPath]& 1) == 0)
      {
        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
        v60 = self->_lastPreviewedIndexPath;
        self->_lastPreviewedIndexPath = 0;

        objc_storeStrong(&self->_pendingPreviewedIndexPath, lastFocusedIndexPath);
        if (self->_pendingPreviewedIndexPath)
        {
          [(_TVShelfViewController *)self _delayedUpdatePreview];
        }
      }
    }
  }
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = _TVShelfViewController;
  [(_TVMLCollectionViewController *)&v10 viewDidLoad];
  if (self->_configureForListTemplate)
  {
    listTemplateAlignment = self->_listTemplateAlignment;
    view = [(_TVShelfViewController *)self view];
    v5 = +[TVMLUtilities semanticAlignmentForAlignment:semanticContentAttribute:](TVMLUtilities, "semanticAlignmentForAlignment:semanticContentAttribute:", listTemplateAlignment, [view semanticContentAttribute]);

    collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
    v7 = collectionWrappingView;
    if (v5 == 1)
    {
      v8 = 8;
    }

    else
    {
      v8 = 16;
    }

    [collectionWrappingView setCollectionGradientMask:v8];
  }

  view2 = [(_TVShelfViewController *)self view];
  [view2 _setSpeedBumpEdges:self->_speedBumpEdges];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = _TVShelfViewController;
  [(_TVMLCollectionViewController *)&v7 viewDidLayoutSubviews];
  if (self->_delegateFlags.hasFocusDependentMethods && !self->_lastPreviewedIndexPath)
  {
    lastFocusedIndexPath = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
    lastPreviewedIndexPath = self->_lastPreviewedIndexPath;
    self->_lastPreviewedIndexPath = lastFocusedIndexPath;

    if (lastFocusedIndexPath)
    {
      lastFocusedIndexPath2 = [(_TVMLCollectionViewController *)self lastFocusedIndexPath];
      v6 = self->_lastPreviewedIndexPath;
      self->_lastPreviewedIndexPath = lastFocusedIndexPath2;

      [(_TVShelfViewController *)self _didSettleOnItemAtIndexPath:lastFocusedIndexPath2];
    }
  }
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  if (collectionView)
  {
    collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
    v7[0] = collectionView2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  indexPathForSnappedContent = [collectionViewLayout indexPathForSnappedContent];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77___TVShelfViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_279D6F010;
  v12 = indexPathForSnappedContent;
  v13 = collectionViewLayout;
  v9 = collectionViewLayout;
  v10 = indexPathForSnappedContent;
  [coordinatorCopy animateAlongsideTransition:v11 completion:0];
}

- (void)updateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  view = [(_TVShelfViewController *)self view];
  window = [view window];
  if (window)
  {
    v10 = window;
    nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];

    if (nextFocusedIndexPath)
    {
      nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];
      [(_TVMLCollectionViewController *)self setLastFocusedIndexPath:nextFocusedIndexPath2];

      if (self->_delegateFlags.hasFocusDependentMethods)
      {
        nextFocusedIndexPath3 = [contextCopy nextFocusedIndexPath];
        v14 = [nextFocusedIndexPath3 copy];
        pendingPreviewedIndexPath = self->_pendingPreviewedIndexPath;
        self->_pendingPreviewedIndexPath = v14;

        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedUpdatePreview object:0];
        previouslyFocusedIndexPath = [contextCopy previouslyFocusedIndexPath];
        if (previouslyFocusedIndexPath)
        {
        }

        else if (!self->_lastPreviewedIndexPath)
        {
          [(_TVShelfViewController *)self _delayedUpdatePreview];
          goto LABEL_17;
        }

        previouslyFocusedIndexPath2 = [contextCopy previouslyFocusedIndexPath];
        if (previouslyFocusedIndexPath2)
        {
        }

        else
        {
          nextFocusedIndexPath4 = [contextCopy nextFocusedIndexPath];
          v20 = [nextFocusedIndexPath4 isEqual:self->_lastPreviewedIndexPath];

          if (v20)
          {
            objc_initWeak(&location, self);
            nextFocusedIndexPath5 = [contextCopy nextFocusedIndexPath];
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __72___TVShelfViewController_updateFocusInContext_withAnimationCoordinator___block_invoke;
            v24[3] = &unk_279D6F038;
            objc_copyWeak(&v26, &location);
            v25 = contextCopy;
            [(_TVShelfViewController *)self dispatchEvent:@"highlight" forItemAtIndexPath:nextFocusedIndexPath5 completionBlock:v24];

            objc_destroyWeak(&v26);
            objc_destroyWeak(&location);
            goto LABEL_17;
          }
        }

        [contextCopy _focusVelocity];
        if (fabs(v22) >= 7500.0)
        {
          v23 = 0.6;
        }

        else
        {
          v23 = dbl_26CE87CC0[self->_lastPreviewDelay == 0.6];
        }

        self->_lastPreviewDelay = v23;
        [(_TVShelfViewController *)self performSelector:sel__delayedUpdatePreview withObject:0 afterDelay:?];
      }

      else
      {
        nextFocusedIndexPath6 = [contextCopy nextFocusedIndexPath];
        [(_TVShelfViewController *)self dispatchEvent:@"highlight" forItemAtIndexPath:nextFocusedIndexPath6 completionBlock:0];
      }
    }
  }

  else
  {
  }

LABEL_17:
}

- (id)makeCollectionViewWithFrame:(CGRect)frame
{
  v3 = [[_TVMLShelfView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_TVMLShelfView *)v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"TVShelfLayoutElementKindHeader" withReuseIdentifier:@"ShelfViewSectionHeaderIdentifier"];
  [(_TVMLShelfView *)v3 setAlwaysBounceHorizontal:1];
  collectionViewLayout = [(_TVMLShelfView *)v3 collectionViewLayout];
  [collectionViewLayout setShouldSnapContent:1];

  return v3;
}

- (CGSize)expectedCellSizeForElement:(id)element atIndexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  if (-[_TVShelfViewController prominentSectionIndex](self, "prominentSectionIndex") == 0x7FFFFFFFFFFFFFFFLL || (v8 = -[_TVShelfViewController prominentSectionIndex](self, "prominentSectionIndex"), v8 == [pathCopy section]))
  {
    v19.receiver = self;
    v19.super_class = _TVShelfViewController;
    [(_TVMLCollectionViewController *)&v19 expectedCellSizeForElement:elementCopy atIndexPath:pathCopy];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [elementCopy objectForKeyedSubscript:@"TVFactoryKeyCellMetrics"];
    v14 = v13;
    if (v13)
    {
      [v13 tv_cellMetricsValue];
      v12 = v18;
      v10 = v17;
    }

    else
    {
      v12 = 0.0;
      v10 = 0.0;
    }
  }

  v15 = v10;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)updateViewLayoutAnimated:(BOOL)animated relayout:(BOOL)relayout
{
  animatedCopy = animated;
  if (animated)
  {
    collectionViewLayout = objc_alloc_init(_TVMLShelfViewLayout);
  }

  else
  {
    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
  }

  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  style = [collectionElement style];

  [style tv_interitemSpacing];
  v12 = v11;
  v13 = [style valueForStyle:@"tv-line-spacing"];
  if (v13)
  {
    [style tv_lineSpacing];
    v15 = v14;
  }

  else
  {
    v15 = NAN;
  }

  collectionElement2 = [(_TVMLCollectionViewController *)self collectionElement];
  attributes = [collectionElement2 attributes];
  v18 = [attributes objectForKeyedSubscript:@"rowCount"];
  intValue = [v18 intValue];

  if (intValue)
  {
    tv_rowCount = intValue;
  }

  else
  {
    collectionElement3 = [(_TVMLCollectionViewController *)self collectionElement];
    style2 = [collectionElement3 style];
    tv_rowCount = [style2 tv_rowCount];
  }

  collectionView2 = [(_TVMLCollectionViewController *)self collectionView];
  v24 = [collectionView2 visibleSupplementaryViewsOfKind:@"TVShelfLayoutElementKindHeader"];

  v27 = relayout || (-[_TVShelfViewLayout minimumInteritemSpacing](collectionViewLayout, "minimumInteritemSpacing"), v25 != v12) || (-[_TVShelfViewLayout minimumLineSpacing](collectionViewLayout, "minimumLineSpacing"), v26 != v15) || [v24 count] != 0;
  [(_TVMLCollectionViewController *)self cellMetrics];
  [(_TVMLShelfViewLayout *)collectionViewLayout setCellMetrics:&v39];
  if (tv_rowCount <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = tv_rowCount;
  }

  [(_TVShelfViewLayout *)collectionViewLayout setRowCount:v28];
  [(_TVShelfViewLayout *)collectionViewLayout setProminentSectionIndex:[(_TVShelfViewController *)self prominentSectionIndex]];
  [(_TVShelfViewLayout *)collectionViewLayout setMinimumInteritemSpacing:v12];
  [(_TVShelfViewLayout *)collectionViewLayout setMinimumLineSpacing:v15];
  if (animatedCopy)
  {
    collectionView3 = [(_TVMLCollectionViewController *)self collectionView];
    [(TVShelfViewLayoutInvalidationContext *)collectionView3 setCollectionViewLayout:collectionViewLayout animated:1];
  }

  else
  {
    if (!v27)
    {
      goto LABEL_22;
    }

    collectionView3 = objc_alloc_init(TVShelfViewLayoutInvalidationContext);
    [(TVShelfViewLayoutInvalidationContext *)collectionView3 setInvalidateLayout:1];
    [(_TVMLShelfViewLayout *)collectionViewLayout invalidateLayoutWithContext:collectionView3];
  }

LABEL_22:
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [collectionWrappingView setCentered:{-[_TVShelfViewController isCentered](self, "isCentered")}];

  collectionElement4 = [(_TVMLCollectionViewController *)self collectionElement];
  appDocument = [collectionElement4 appDocument];
  templateElement = [appDocument templateElement];

  style3 = [templateElement style];
  tv_searchStyle = [style3 tv_searchStyle];
  v36 = [tv_searchStyle isEqualToString:@"partial"];

  collectionWrappingView2 = [(_TVMLCollectionViewController *)self collectionWrappingView];
  v38 = 1.0;
  if ((v36 & 1) == 0)
  {
    +[_TVShelfViewLayout defaultHeaderSelectionMargin];
  }

  [collectionWrappingView2 setHeaderSelectionMargin:v38];
}

- (void)dispatchEvent:(id)event forItemAtIndexPath:(id)path completionBlock:(id)block
{
  eventCopy = event;
  pathCopy = path;
  blockCopy = block;
  if (@"select" == eventCopy && self->_delegateFlags.hasDidSelectItemAtIndexPath)
  {
    delegate = [(_TVShelfViewController *)self delegate];
    [delegate shelfViewController:self didSelectItemAtIndexPath:pathCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (@"play" == eventCopy && self->_delegateFlags.hasDidPlayItemAtIndexPath)
  {
    delegate = [(_TVShelfViewController *)self delegate];
    [delegate shelfViewController:self didPlayItemAtIndexPath:pathCopy];
    goto LABEL_7;
  }

LABEL_8:
  v12.receiver = self;
  v12.super_class = _TVShelfViewController;
  [(_TVMLCollectionViewController *)&v12 dispatchEvent:eventCopy forItemAtIndexPath:pathCopy completionBlock:blockCopy];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = _TVShelfViewController;
  v4 = [(_TVMLCollectionViewController *)&v6 collectionView:view cellForItemAtIndexPath:path];
  [objc_opt_class() _contentForCell:v4 shouldHide:1];

  return v4;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v12 = [sections objectAtIndex:section];

  header = [v12 header];

  if (header)
  {
    header2 = [v12 header];
    style = [header2 style];
    [style tv_width];
    v17 = v16;

    style2 = [header2 style];
    [style2 tv_height];
    v20 = v19;

    if (v20 <= 0.0 || v17 <= 0.0)
    {
      v21 = +[TVInterfaceFactory sharedInterfaceFactory];
      header3 = [v12 header];
      v23 = [v21 _viewFromElement:header3 existingView:0];

      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      if (layoutCopy)
      {
        [layoutCopy cellMetrics];
      }

      [viewCopy bounds];
      [v23 sizeThatFits:{CGRectGetWidth(v37) - (0.0 + 0.0), 0.0}];
      v17 = v24;
      v20 = v25;
    }
  }

  else
  {
    v17 = *MEMORY[0x277CBF3A8];
    v20 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v26 = v17;
  v27 = v20;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)setHideHeader:(BOOL)header
{
  headerCopy = header;
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  [collectionWrappingView setHeaderHidden:headerCopy];
}

- (BOOL)hideHeader
{
  collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
  isHeaderHidden = [collectionWrappingView isHeaderHidden];

  return isHeaderHidden;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v9 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v10 = [v9 prototypeForItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  [(_TVShelfViewController *)self expectedCellSizeForElement:v10 atIndexPath:pathCopy];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = [(_TVMLCollectionViewController *)self collectionElement:view];
  sections = [v6 sections];
  v8 = [sections objectAtIndex:index];

  style = [v8 style];
  [style tv_margin];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = _TVShelfViewController;
  cellCopy = cell;
  [(_TVMLCollectionViewController *)&v9 collectionView:view willDisplayCell:cellCopy forItemAtIndexPath:path];
  [cellCopy _setSpeedBumpEdges:{self->_speedBumpEdges, v9.receiver, v9.super_class}];
  [objc_opt_class() _contentForCell:cellCopy shouldHide:0];
}

- (void)setSpeedBumpEdges:(unint64_t)edges
{
  self->_speedBumpEdges = edges;
  if ([(_TVShelfViewController *)self isViewLoaded])
  {
    view = [(_TVShelfViewController *)self view];
    [view _setSpeedBumpEdges:self->_speedBumpEdges];

    collectionView = [(_TVMLCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44___TVShelfViewController_setSpeedBumpEdges___block_invoke;
    v7[3] = &unk_279D6F060;
    v7[4] = self;
    [visibleCells enumerateObjectsUsingBlock:v7];
  }
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  viewCopy = view;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v13 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"ShelfViewSectionHeaderIdentifier" forIndexPath:pathCopy];

  subviews = [v14 subviews];
  firstObject = [subviews firstObject];

  subviews2 = [v14 subviews];
  [subviews2 makeObjectsPerformSelector:sel_removeFromSuperview];

  header = [v13 header];

  if (header)
  {
    [firstObject tv_setAssociatedIKViewElement:0];
    v19 = +[TVInterfaceFactory sharedInterfaceFactory];
    header2 = [v13 header];
    v21 = [v19 _viewFromElement:header2 existingView:firstObject];

    [v14 addSubview:v21];
    [v14 bounds];
    [v21 setFrame:?];
  }

  return v14;
}

- (void)_delayedUpdatePreview
{
  view = [(_TVShelfViewController *)self view];
  window = [view window];

  if (window)
  {
    pendingPreviewedIndexPath = self->_pendingPreviewedIndexPath;
    v6 = pendingPreviewedIndexPath;
    v7 = self->_pendingPreviewedIndexPath;
    self->_pendingPreviewedIndexPath = 0;

    self->_lastPreviewDelay = 0.0;
    if (([(NSIndexPath *)self->_lastPreviewedIndexPath isEqual:v6]& 1) == 0)
    {
      objc_storeStrong(&self->_lastPreviewedIndexPath, pendingPreviewedIndexPath);
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47___TVShelfViewController__delayedUpdatePreview__block_invoke;
      v8[3] = &unk_279D6F038;
      objc_copyWeak(&v10, &location);
      v9 = v6;
      [(_TVShelfViewController *)self dispatchEvent:@"highlight" forItemAtIndexPath:v9 completionBlock:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_didSettleOnItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_delegateFlags.hasDidSettleOnItemAtIndexPath)
  {
    delegate = [(_TVShelfViewController *)self delegate];
    [delegate shelfViewController:self didSettleOnItemAtIndexPath:pathCopy];
  }

  if (self->_delegateFlags.hasUpdateRelatedView)
  {
    delegate2 = [(_TVShelfViewController *)self delegate];
    [delegate2 shelfViewController:self updateRelatedView:0];
  }
}

+ (void)_contentForCell:(id)cell shouldHide:(BOOL)hide
{
  hideCopy = hide;
  cellCopy = cell;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    contentView = [cellCopy contentView];
    v6 = contentView;
    if (hideCopy)
    {
      [contentView removeFromSuperview];
    }

    else
    {
      [cellCopy addSubview:contentView];
    }
  }
}

- (void)updateWithViewElement:(id)element
{
  elementCopy = element;
  [_TVLockupFactory cellMetricsForCollectionElement:elementCopy];
  [(_TVShelfViewController *)self updateWithViewElement:elementCopy cellMetrics:&v5];
}

- (__TVShelfViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end