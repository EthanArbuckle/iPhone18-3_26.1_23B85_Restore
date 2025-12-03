@interface SKUINavigationBarController
- (NSArray)existingSearchBarControllers;
- (SKUINavigationBarController)initWithNavigationBarViewElement:(id)element;
- (SKUINavigationBarControllerDelegate)delegate;
- (UIView)navigationPaletteView;
- (UIViewController)parentViewController;
- (double)_availableWidth;
- (id)_addSearchBarControllerWithViewElement:(id)element;
- (id)_attributedStringForButton:(id)button;
- (id)_attributedStringForButtonText:(id)text type:(int64_t)type style:(id)style;
- (id)_barButtonItemWithButtonViewElement:(id)element;
- (id)_barButtonItemWithSearchBarViewElement:(id)element;
- (id)_barButtonItemWithViewElement:(id)element;
- (id)_buttonWithElement:(id)element width:(double)width;
- (id)_navigationBarContext;
- (id)_resourceImageForImageElement:(id)element;
- (id)barButtonItemForElementIdentifier:(id)identifier;
- (id)titleViewWithViewElement:(id)element;
- (id)viewForElementIdentifier:(id)identifier;
- (void)_fullyReloadSections:(id)sections withNavigationItem:(id)item;
- (void)_titleButtonAction:(id)action;
- (void)_viewElementEventNotification:(id)notification;
- (void)attachToNavigationItem:(id)item;
- (void)dealloc;
- (void)detachFromNavigationItem:(id)item;
- (void)detachNavigationItemControllers;
- (void)itemOfferButtonWillAnimateTransition:(id)transition;
- (void)layoutCacheDidFinishBatch:(id)batch;
- (void)setReusableSearchBarControllers:(id)controllers;
- (void)updateNavigationItem:(id)item;
@end

@implementation SKUINavigationBarController

- (SKUINavigationBarController)initWithNavigationBarViewElement:(id)element
{
  elementCopy = element;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUINavigationBarController initWithNavigationBarViewElement:];
  }

  v11.receiver = self;
  v11.super_class = SKUINavigationBarController;
  v6 = [(SKUINavigationBarController *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = v6->_sections;
    v6->_sections = v7;

    objc_storeStrong(&v6->_viewElement, element);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__viewElementEventNotification_ name:0x282804928 object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0x282804928 object:0];
  [(SKUINavigationBarButtonsController *)self->_buttonsController disconnectAllButtons];
  textLayoutCache = [(SKUINavigationBarContext *)self->_navigationBarContext textLayoutCache];
  [textLayoutCache setDelegate:0];

  v5.receiver = self;
  v5.super_class = SKUINavigationBarController;
  [(SKUINavigationBarController *)&v5 dealloc];
}

- (void)attachToNavigationItem:(id)item
{
  v80 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__45;
  v76 = __Block_byref_object_dispose__45;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__45;
  v70 = __Block_byref_object_dispose__45;
  v71 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__45;
  v64 = __Block_byref_object_dispose__45;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__45;
  v58 = __Block_byref_object_dispose__45;
  v59 = 0;
  viewElement = self->_viewElement;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __54__SKUINavigationBarController_attachToNavigationItem___block_invoke;
  v46[3] = &unk_2781FD3C8;
  v51 = &v72;
  v52 = &v60;
  v50 = &v66;
  v46[4] = self;
  v9 = v5;
  v47 = v9;
  v10 = v7;
  v48 = v10;
  v37 = v6;
  v49 = v37;
  v53 = &v54;
  [(SKUIViewElement *)viewElement enumerateChildrenUsingBlock:v46];
  if (!v55[5])
  {
    fallbackTitleView = [(SKUINavigationBarController *)self fallbackTitleView];
    v12 = v55[5];
    v55[5] = fallbackTitleView;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v14 = [WeakRetained additionalLeftBarButtonItemForNavigationBarController:self];
    if (v14)
    {
      [v9 insertObject:v14 atIndex:0];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [WeakRetained additionalRightBarButtonItemForNavigationBarController:self];
    if (v15)
    {
      [v10 insertObject:v15 atIndex:0];
    }
  }

  _navigationBarContext = [(SKUINavigationBarController *)self _navigationBarContext];
  if (v67[5])
  {
    v17 = [SKUINavigationBarSegmentsController alloc];
    v18 = [(SKUINavigationBarSegmentsController *)v17 initWithViewElement:v67[5]];
    [(SKUINavigationBarSectionController *)v18 setContext:_navigationBarContext];
    [(NSMutableArray *)self->_sections addObject:v18];
    view = [(SKUINavigationBarSegmentsController *)v18 view];
    v20 = v55[5];
    v55[5] = view;
  }

  if (!v55[5] && [v37 count])
  {
    v21 = [[SKUINavigationBarMenusController alloc] initWithMenuViewElements:v37];
    [(SKUINavigationBarSectionController *)v21 setContext:_navigationBarContext];
    [(NSMutableArray *)self->_sections addObject:v21];
    view2 = [(SKUINavigationBarMenusController *)v21 view];
    v23 = v55[5];
    v55[5] = view2;
  }

  if (self->_buttonsController)
  {
    [(NSMutableArray *)self->_sections addObject:?];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = self->_sections;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v42 objects:v79 count:16];
  if (v25)
  {
    v26 = *v43;
    do
    {
      v27 = 0;
      do
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v42 + 1) + 8 * v27++) willAppearInNavigationBar];
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v42 objects:v79 count:16];
    }

    while (v25);
  }

  if (![v61[5] length])
  {
    v28 = objc_loadWeakRetained(&self->_parentViewController);
    title = [v28 title];
    v30 = v61[5];
    v61[5] = title;
  }

  SKUINavigationBarController_SetTitleView(itemCopy, v55[5]);
  v31 = v73[5];
  if (!v31)
  {
    v31 = v61[5];
  }

  [itemCopy setBackButtonTitle:v31];
  [itemCopy setLeftItemsSupplementBackButton:1];
  [itemCopy setLeftBarButtonItems:v9 animated:0];
  [itemCopy setRightBarButtonItems:v10 animated:0];
  [itemCopy setTitle:v61[5]];
  textLayoutCache = [_navigationBarContext textLayoutCache];
  [textLayoutCache commitLayoutRequests];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v33 = self->_sections;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v38 objects:v78 count:16];
  if (v34)
  {
    v35 = *v39;
    do
    {
      v36 = 0;
      do
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v38 + 1) + 8 * v36++) reloadSectionViews];
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v38 objects:v78 count:16];
    }

    while (v34);
  }

  [(SKUINavigationPaletteController *)self->_paletteController reloadSectionViews];
  [v55[5] sizeToFit];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);
}

void __54__SKUINavigationBarController_attachToNavigationItem___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v4 = [v21 elementType];
  if (v4 == 138)
  {
    v9 = v21;
    v10 = [v9 labelViewStyle];
    if (v10 == 2)
    {
      v11 = 72;
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_18;
      }

      v11 = 80;
    }

    v14 = [v9 text];
    v15 = [v14 string];
    v16 = *(*(a1 + v11) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    goto LABEL_18;
  }

  v5 = v4;
  if (v4 == 109)
  {
    v6 = *(*(a1 + 64) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a2);
    }

    goto LABEL_19;
  }

  v12 = [v21 style];
  v13 = [v12 elementAlignment];

  if (v13 > 2)
  {
    if ((v13 - 4) < 2)
    {
      goto LABEL_15;
    }

    if (v13 != 3)
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) _barButtonItemWithViewElement:v21];
    if (v9)
    {
      [*(a1 + 48) insertObject:v9 atIndex:0];
    }

LABEL_18:

    goto LABEL_19;
  }

  switch(v13)
  {
    case 0:
LABEL_15:
      NSLog(&cfstr_InvalidAlignme.isa, v21);
      break;
    case 1:
      v9 = [*(a1 + 32) _barButtonItemWithViewElement:v21];
      if (v9)
      {
        [*(a1 + 40) addObject:v9];
      }

      goto LABEL_18;
    case 2:
      if (v5 == 69)
      {
        [*(a1 + 56) addObject:v21];
      }

      else if (!*(*(*(a1 + 64) + 8) + 40) && !*(*(*(a1 + 88) + 8) + 40))
      {
        v18 = [*(a1 + 32) titleViewWithViewElement:v21];
        v19 = *(*(a1 + 88) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;
      }

      break;
  }

LABEL_19:
}

- (id)barButtonItemForElementIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_sections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) barButtonItemForElementIdentifier:{identifierCopy, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)detachFromNavigationItem:(id)item
{
  itemCopy = item;
  [(SKUINavigationBarController *)self detachNavigationItemControllers];
  [itemCopy setLeftBarButtonItems:0 animated:0];
  [itemCopy setRightBarButtonItems:0 animated:0];
  [itemCopy setTitle:0];
  SKUINavigationBarController_SetTitleView(itemCopy, 0);
}

- (void)detachNavigationItemControllers
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_sections removeAllObjects];
  [(SKUINavigationBarButtonsController *)self->_buttonsController disconnectAllButtons];
  buttonsController = self->_buttonsController;
  self->_buttonsController = 0;

  paletteController = self->_paletteController;
  self->_paletteController = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_searchBarControllers;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_searchBarControllers objectForKey:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 setParentViewController:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMapTable *)self->_searchBarControllers removeAllObjects];
}

- (NSArray)existingSearchBarControllers
{
  v26 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_searchBarControllers;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMapTable *)self->_searchBarControllers objectForKey:*(*(&v20 + 1) + 8 * i)];
        [array addObject:v9];
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_reusableSearchBarControllers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [array addObject:{*(*(&v16 + 1) + 8 * j), v16}];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  return array;
}

- (UIView)navigationPaletteView
{
  paletteController = self->_paletteController;
  if (!paletteController)
  {
    navigationPalettes = [(SKUINavigationBarViewElement *)self->_viewElement navigationPalettes];
    firstObject = [navigationPalettes firstObject];

    if (firstObject)
    {
      flattenedChildren = [firstObject flattenedChildren];
      v7 = [flattenedChildren count];

      if (v7)
      {
        _navigationBarContext = [(SKUINavigationBarController *)self _navigationBarContext];
        v9 = [[SKUINavigationPaletteController alloc] initWithPaletteViewElement:firstObject];
        v10 = self->_paletteController;
        self->_paletteController = v9;

        [(SKUINavigationBarSectionController *)self->_paletteController setContext:_navigationBarContext];
        [(SKUINavigationPaletteController *)self->_paletteController willAppearInNavigationBar];
        textLayoutCache = [_navigationBarContext textLayoutCache];
        [textLayoutCache commitLayoutRequests];
      }
    }

    paletteController = self->_paletteController;
  }

  return [(SKUINavigationPaletteController *)paletteController view];
}

- (void)setReusableSearchBarControllers:(id)controllers
{
  if (self->_reusableSearchBarControllers != controllers)
  {
    v5 = [controllers mutableCopy];
    reusableSearchBarControllers = self->_reusableSearchBarControllers;
    self->_reusableSearchBarControllers = v5;

    MEMORY[0x2821F96F8](v5, reusableSearchBarControllers);
  }
}

- (id)titleViewWithViewElement:(id)element
{
  elementCopy = element;
  [(SKUINavigationBarController *)self _availableWidth];
  v7 = v6;
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    [keyWindow bounds];
    v11 = v10;
    v12 = SKUICompactThreshold();

    if (v7 > 314.0 && v11 > v12)
    {
      v7 = 314.0;
    }
  }

  if ([elementCopy elementType] == 106)
  {
    v14 = [(SKUINavigationBarController *)self _addSearchBarControllerWithViewElement:elementCopy];
    searchBar = [v14 searchBar];
    searchField = [searchBar searchField];
    if (([searchField isDescendantOfView:searchBar] & 1) == 0)
    {
      [searchBar addSubview:searchField];
    }

    [searchBar setPretendsIsInBar:1];
    style = [elementCopy style];
    itemWidth = [style itemWidth];

    if (itemWidth)
    {
      style2 = [elementCopy style];
      itemWidth2 = [style2 itemWidth];
      [itemWidth2 floatValue];
      v22 = v21;

      v23 = *MEMORY[0x277CBF3A0];
      v24 = *(MEMORY[0x277CBF3A0] + 8);
      [searchBar sizeThatFits:{v22, 1.79769313e308}];
      v26 = v25;
      [searchBar setFrame:{v23, v24, v22, v25}];
      [searchBar setAutoresizingMask:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [searchBar setIntrinsicWidth:v22];
      }

      v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v23, v24, v22, v26}];
      [v27 addSubview:searchBar];
    }

    else
    {
      v27 = searchBar;
      v36 = *MEMORY[0x277CBF3A0];
      v37 = *(MEMORY[0x277CBF3A0] + 8);
      [v27 sizeThatFits:{v7, 1.79769313e308}];
      [v27 setFrame:{v36, v37, v7, v38}];
    }
  }

  else
  {
    if ([elementCopy elementType] != 12)
    {
      v27 = 0;
      goto LABEL_20;
    }

    objc_storeStrong(&self->_titleButtonViewElement, element);
    v28 = [(SKUINavigationBarController *)self _buttonWithElement:self->_titleButtonViewElement width:v7];
    [v28 addTarget:self action:sel__titleButtonAction_ forControlEvents:64];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v28 setBackgroundColor:clearColor];

    v30 = *MEMORY[0x277CBF3A0];
    v31 = *(MEMORY[0x277CBF3A0] + 8);
    v32 = *MEMORY[0x277CBF3A8];
    v33 = *(MEMORY[0x277CBF3A8] + 8);
    v14 = v28;
    [v14 sizeThatFits:{v32, v33}];
    [v14 setFrame:{v30, v31, v34, v35}];
    v27 = v14;
  }

LABEL_20:

  return v27;
}

- (void)updateNavigationItem:(id)item
{
  v62 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  updateType = [(SKUINavigationBarViewElement *)self->_viewElement updateType];
  switch(updateType)
  {
    case 1:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v16 = self->_searchBarControllers;
      v17 = [(NSMapTable *)v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v53;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v53 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [(NSMapTable *)self->_searchBarControllers objectForKey:*(*(&v52 + 1) + 8 * i)];
            [v21 reloadAfterDocumentUpdate];
          }

          v18 = [(NSMapTable *)v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v18);
      }

      v22 = [(NSMutableArray *)self->_sections mutableCopy];
      v6 = v22;
      if (self->_paletteController)
      {
        [v22 addObject:?];
      }

      [(SKUINavigationBarController *)self _fullyReloadSections:v6 withNavigationItem:itemCopy];
      if (self->_titleButtonViewElement)
      {
        [(SKUINavigationBarController *)self _availableWidth];
        v24 = v23;
        if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
        {
          mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
          keyWindow = [mEMORY[0x277D75128] keyWindow];
          [keyWindow bounds];
          v28 = v27;
          v29 = SKUICompactThreshold();

          if (v24 > 314.0 && v28 > v29)
          {
            v24 = 314.0;
          }
        }

        v31 = [(SKUINavigationBarController *)self _buttonWithElement:self->_titleButtonViewElement width:v24];
        [v31 addTarget:self action:sel__titleButtonAction_ forControlEvents:64];
        clearColor = [MEMORY[0x277D75348] clearColor];
        [v31 setBackgroundColor:clearColor];

        v33 = *MEMORY[0x277CBF3A0];
        v34 = *(MEMORY[0x277CBF3A0] + 8);
        v35 = *MEMORY[0x277CBF3A8];
        v36 = *(MEMORY[0x277CBF3A8] + 8);
        v37 = v31;
        [v37 sizeThatFits:{v35, v36}];
        [v37 setFrame:{v33, v34, v38, v39}];
        SKUINavigationBarController_SetTitleView(itemCopy, v37);
      }

      WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
      navigationController = [WeakRetained navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar setNeedsLayout];

      goto LABEL_47;
    case 4:
      [(SKUINavigationBarController *)self detachFromNavigationItem:itemCopy];
      parentViewController = [(SKUINavigationBarController *)self parentViewController];
      presentedViewController = [parentViewController presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        parentViewController2 = [(SKUINavigationBarController *)self parentViewController];
        presentedViewController2 = [parentViewController2 presentedViewController];
        [presentedViewController2 dismissViewControllerAnimated:0 completion:0];
      }

      [(SKUINavigationBarController *)self attachToNavigationItem:itemCopy];
      break;
    case 3:
      v6 = [(SKUIViewElement *)self->_viewElement firstChildForElementType:106];
      v7 = [(SKUIViewElement *)self->_viewElement firstChildForElementType:75];
      v8 = [(SKUIViewElement *)self->_viewElement firstChildForElementType:138];
      if ([(NSMapTable *)self->_searchBarControllers count]!= 1)
      {
LABEL_45:
        [(SKUINavigationBarController *)self detachFromNavigationItem:itemCopy];
        [(SKUINavigationBarController *)self attachToNavigationItem:itemCopy];
LABEL_46:

LABEL_47:
        break;
      }

      flattenedChildren = [(SKUIViewElement *)self->_viewElement flattenedChildren];
      v10 = [flattenedChildren count];

      if (v10 == 3)
      {
        if (!v6 || !v7 || !v8)
        {
          goto LABEL_45;
        }
      }

      else if (v10 == 2)
      {
        if (!v6 || !(v7 | v8))
        {
          goto LABEL_45;
        }
      }

      else if (v10 != 1 || !v6)
      {
        goto LABEL_45;
      }

      v51 = v8;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v43 = self->_searchBarControllers;
      v44 = [(NSMapTable *)v43 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = 0;
        v47 = *v57;
        do
        {
          v48 = 0;
          v49 = v46;
          do
          {
            if (*v57 != v47)
            {
              objc_enumerationMutation(v43);
            }

            v46 = [(NSMapTable *)self->_searchBarControllers objectForKey:*(*(&v56 + 1) + 8 * v48)];

            ++v48;
            v49 = v46;
          }

          while (v45 != v48);
          v45 = [(NSMapTable *)v43 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v45);
      }

      else
      {
        v46 = 0;
      }

      [v46 setSearchBarViewElement:v6];
      [(NSMapTable *)self->_searchBarControllers removeAllObjects];
      [(NSMapTable *)self->_searchBarControllers setObject:v46 forKey:v6];
      paletteController = self->_paletteController;
      if (v7)
      {
        v8 = v51;
        if (!paletteController)
        {
LABEL_55:

          goto LABEL_46;
        }

        paletteController = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{self->_paletteController, 0}];
        [(SKUINavigationBarController *)self _fullyReloadSections:paletteController withNavigationItem:itemCopy];
      }

      else
      {
        self->_paletteController = 0;
        v8 = v51;
      }

      goto LABEL_55;
  }
}

- (id)viewForElementIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  paletteController = self->_paletteController;
  if (!paletteController || ([(SKUINavigationPaletteController *)paletteController viewForElementIdentifier:identifierCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_sections;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) viewForElementIdentifier:{identifierCopy, v14}];
          if (v12)
          {
            v6 = v12;
            goto LABEL_13;
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  return v6;
}

- (void)itemOfferButtonWillAnimateTransition:(id)transition
{
  transitionCopy = transition;
  superview = [transitionCopy superview];
  if (superview)
  {
    v4 = superview;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v4 superview];

      v4 = superview2;
      if (!superview2)
      {
        goto LABEL_7;
      }
    }

    [transitionCopy sizeToFit];
    [v4 layoutSubviews];
  }

LABEL_7:
}

- (void)layoutCacheDidFinishBatch:(id)batch
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_sections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) reloadSectionViews];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(SKUINavigationPaletteController *)self->_paletteController reloadSectionViews];
}

- (void)_viewElementEventNotification:(id)notification
{
  v11 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  navigationPaletteView = [(SKUINavigationBarController *)self navigationPaletteView];
  object = [notificationCopy object];

  if (navigationPaletteView && [object isDescendantOfView:navigationPaletteView])
  {
    memset(v9, 0, sizeof(v9));
    v7 = self->_searchBarControllers;
    if ([(NSMapTable *)v7 countByEnumeratingWithState:v9 objects:v10 count:16])
    {
      v8 = [(NSMapTable *)self->_searchBarControllers objectForKey:**(&v9[0] + 1), *&v9[0]];
      [v8 resignActive:1];
    }
  }
}

- (id)_addSearchBarControllerWithViewElement:(id)element
{
  elementCopy = element;
  if (![(NSMutableArray *)self->_reusableSearchBarControllers count]|| ([(NSMutableArray *)self->_reusableSearchBarControllers firstObject], v5 = objc_claimAutoreleasedReturnValue(), [(SKUISearchBarController *)v5 setSearchBarViewElement:elementCopy], [(NSMutableArray *)self->_reusableSearchBarControllers removeObjectAtIndex:0], !v5))
  {
    v5 = [[SKUISearchBarController alloc] initWithSearchBarViewElement:elementCopy];
  }

  [(SKUISearchBarController *)v5 setClientContext:self->_clientContext];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  [(SKUISearchBarController *)v5 setParentViewController:WeakRetained];

  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    [keyWindow bounds];
    if (v9 <= SKUICompactThreshold())
    {
    }

    else
    {
      shouldForceTransientSearchControllerBahavior = [(SKUIClientContext *)self->_clientContext shouldForceTransientSearchControllerBahavior];

      if (!shouldForceTransientSearchControllerBahavior)
      {
        [(SKUISearchBarController *)v5 setShowsResultsForEmptyField:1];
        goto LABEL_10;
      }
    }
  }

  [(SKUISearchBarController *)v5 setDisplaysSearchBarInNavigationBar:1];
LABEL_10:
  searchBarControllers = self->_searchBarControllers;
  if (!searchBarControllers)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    v13 = self->_searchBarControllers;
    self->_searchBarControllers = v12;

    searchBarControllers = self->_searchBarControllers;
  }

  [(NSMapTable *)searchBarControllers setObject:v5 forKey:elementCopy];

  return v5;
}

- (id)_attributedStringForButton:(id)button
{
  buttonCopy = button;
  buttonText = [buttonCopy buttonText];
  buttonViewType = [buttonCopy buttonViewType];
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  if (buttonTitleStyle)
  {
    v8 = [(SKUINavigationBarController *)self _attributedStringForButtonText:buttonText type:buttonViewType style:buttonTitleStyle];
  }

  else
  {
    style = [buttonCopy style];
    v8 = [(SKUINavigationBarController *)self _attributedStringForButtonText:buttonText type:buttonViewType style:style];
  }

  return v8;
}

- (id)_attributedStringForButtonText:(id)text type:(int64_t)type style:(id)style
{
  styleCopy = style;
  textCopy = text;
  v10 = SKUIViewElementFontWithStyle(styleCopy);
  if (!v10)
  {
    if (type)
    {
      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    v10 = SKUIFontPreferredFontForTextStyle(v11);
  }

  tintColor = [(SKUINavigationBarViewElement *)self->_viewElement tintColor];
  v13 = SKUIViewElementPlainColorWithStyle(styleCopy, tintColor);

  v14 = [textCopy attributedStringWithDefaultFont:v10 foregroundColor:v13 style:styleCopy];

  return v14;
}

- (double)_availableWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  isViewLoaded = [WeakRetained isViewLoaded];

  if (isViewLoaded)
  {
    mainScreen = objc_loadWeakRetained(&self->_parentViewController);
    view = [mainScreen view];
    [view bounds];
    v8 = v7;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v8 = v9;
  }

  return v8;
}

- (id)_barButtonItemWithButtonViewElement:(id)element
{
  elementCopy = element;
  buttonsController = self->_buttonsController;
  if (!buttonsController)
  {
    v6 = [[SKUINavigationBarButtonsController alloc] initWithNavigationBarViewElement:self->_viewElement];
    v7 = self->_buttonsController;
    self->_buttonsController = v6;

    v8 = self->_buttonsController;
    _navigationBarContext = [(SKUINavigationBarController *)self _navigationBarContext];
    [(SKUINavigationBarSectionController *)v8 setContext:_navigationBarContext];

    buttonsController = self->_buttonsController;
  }

  v10 = [(SKUINavigationBarButtonsController *)buttonsController addButtonItemWithButtonViewElement:elementCopy];

  return v10;
}

- (id)_barButtonItemWithSearchBarViewElement:(id)element
{
  v4 = MEMORY[0x277D751E0];
  elementCopy = element;
  v6 = objc_alloc_init(v4);
  v7 = [(SKUINavigationBarController *)self _addSearchBarControllerWithViewElement:elementCopy];

  [(SKUINavigationBarController *)self _availableWidth];
  if (v8 <= 1000.0)
  {
    v9 = 150.0;
  }

  else
  {
    v9 = 200.0;
  }

  searchBar = [v7 searchBar];
  [searchBar setPretendsIsInBar:1];
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  [searchBar sizeThatFits:{v9, 1.79769313e308}];
  [searchBar setFrame:{v11, v12, v9, v13}];
  [v6 setCustomView:searchBar];

  return v6;
}

- (id)_barButtonItemWithViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (SKUIIKViewElementTypeIsButton(elementType))
  {
    v6 = [(SKUINavigationBarController *)self _barButtonItemWithButtonViewElement:elementCopy];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  if (elementType == 106)
  {
    v6 = [(SKUINavigationBarController *)self _barButtonItemWithSearchBarViewElement:elementCopy];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)_buttonWithElement:(id)element width:(double)width
{
  elementCopy = element;
  buttonViewType = [elementCopy buttonViewType];
  if (buttonViewType == 9)
  {
    v9 = objc_alloc_init(SKUIStyledButton);
    [(SKUIStyledButton *)v9 setAlpha:1.0];
    [(SKUIStyledButton *)v9 setBorderStyle:0];
    isEnabled = 1;
    [(SKUIStyledButton *)v9 setButtonType:1];
    v38 = [(SKUINavigationBarController *)self _attributedStringForButton:elementCopy];
    v39 = [[SKUIAttributedStringLayoutRequest alloc] initWithAttributedString:v38];
    [(SKUIAttributedStringLayoutRequest *)v39 setWidth:width];
    v40 = [[SKUIAttributedStringLayout alloc] initWithLayoutRequest:v39];
    [(SKUIStyledButton *)v9 setTitleLayout:v40];
    if (![(SKUIStyledButton *)v9 isUsingItemOfferAppearance])
    {
      isEnabled = [elementCopy isEnabled];
    }

    [(SKUIStyledButton *)v9 setEnabled:isEnabled];
    style = [elementCopy style];
    v42 = SKUIViewElementPlainColorWithStyle(style, 0);

    [(SKUIStyledButton *)v9 setTintColor:v42];
    goto LABEL_29;
  }

  v8 = buttonViewType;
  if (buttonViewType != 6)
  {
    if (buttonViewType == 5)
    {
      v9 = objc_alloc_init(SKUIStyledImageButton);
      imageView = [(SKUIStyledButton *)v9 imageView];
      buttonImage = [elementCopy buttonImage];
      v12 = [(SKUINavigationBarController *)self _resourceImageForImageElement:buttonImage];
      [imageView setImage:v12];
      [v12 size];
      [imageView setImageSize:?];
      accessibilityText = [buttonImage accessibilityText];
      if (!accessibilityText)
      {
        accessibilityText = [elementCopy accessibilityText];
      }

      [(SKUIStyledButton *)v9 setAccessibilityLabel:accessibilityText];
      isEnabled2 = [elementCopy isEnabled];
      v15 = 0.4;
      if (isEnabled2)
      {
        v15 = 1.0;
      }

      [(SKUIStyledButton *)v9 setAlpha:v15];
      [(SKUIStyledButton *)v9 setEnabled:isEnabled2];
      style2 = [elementCopy style];
      v17 = SKUIViewElementPlainColorWithStyle(style2, 0);
      [(SKUIStyledButton *)v9 setTintColor:v17];

      goto LABEL_30;
    }

    v9 = objc_alloc_init(SKUIStyledButton);
    v38 = [(SKUINavigationBarController *)self _attributedStringForButton:elementCopy];
    v39 = [[SKUIAttributedStringLayoutRequest alloc] initWithAttributedString:v38];
    [(SKUIAttributedStringLayoutRequest *)v39 setWidth:width];
    v43 = [[SKUIAttributedStringLayout alloc] initWithLayoutRequest:v39];
    [(SKUIStyledButton *)v9 setTitleLayout:v43];
    if (v8 == 13)
    {
      v44 = 7;
    }

    else
    {
      v44 = 0;
    }

    [(SKUIStyledButton *)v9 setButtonType:v44];
    v45 = [SKUIButtonBorderStyle alloc];
    style3 = [elementCopy style];
    v47 = [(SKUIButtonBorderStyle *)v45 initWithElementStyle:style3];

    [(SKUIStyledButton *)v9 setBorderStyle:v47];
    isEnabled3 = [elementCopy isEnabled];
    [(SKUIStyledButton *)v9 setEnabled:isEnabled3];
    v49 = 0.4;
    if (isEnabled3)
    {
      v49 = 1.0;
    }

    [(SKUIStyledButton *)v9 setAlpha:v49];

LABEL_29:
    goto LABEL_30;
  }

  v9 = objc_alloc_init(SKUIStyledButton);
  [(SKUIStyledButton *)v9 setBorderStyle:0];
  children = [elementCopy children];
  firstObject = [children firstObject];

  v55 = firstObject;
  elementType = [firstObject elementType];
  if (elementType == 138)
  {
    v21 = 5;
  }

  else
  {
    v21 = 6;
  }

  [(SKUIStyledButton *)v9 setButtonType:v21];
  v22 = [(SKUINavigationBarController *)self _attributedStringForButton:elementCopy];
  v23 = [[SKUIAttributedStringLayoutRequest alloc] initWithAttributedString:v22];
  [(SKUIAttributedStringLayoutRequest *)v23 setWidth:width];
  v24 = [[SKUIAttributedStringLayout alloc] initWithLayoutRequest:v23];
  [(SKUIStyledButton *)v9 setTitleLayout:v24];
  isEnabled4 = [elementCopy isEnabled];
  [(SKUIStyledButton *)v9 setEnabled:isEnabled4];
  v26 = 0.4;
  if (isEnabled4)
  {
    v26 = 1.0;
  }

  [(SKUIStyledButton *)v9 setAlpha:v26];
  imageView2 = [(SKUIStyledButton *)v9 imageView];
  buttonImage2 = [elementCopy buttonImage];
  v29 = [(SKUINavigationBarController *)self _resourceImageForImageElement:buttonImage2];
  [imageView2 setImage:v29];
  [v29 size];
  [imageView2 setImageSize:?];
  v56 = 0;
  style4 = [buttonImage2 style];
  v31 = SKUIViewElementMarginForStyle(style4, &v56);
  v33 = v32;
  v35 = v34;

  if (v56 == 1)
  {
    if (elementType == 138)
    {
      v36 = v33;
    }

    else
    {
      v36 = v35;
    }

    [(SKUIStyledButton *)v9 setImageTextPaddingInterior:v36];
    [(SKUIStyledButton *)v9 setImageYAdjustment:v31];
  }

LABEL_30:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v9;
    buttonTitleStyle = [elementCopy buttonTitleStyle];
    style5 = buttonTitleStyle;
    if (!buttonTitleStyle)
    {
      style5 = [elementCopy style];
    }

    ikColor = [style5 ikColor];
    -[SKUIStyledButton setUsesTintColor:](v50, "setUsesTintColor:", [ikColor colorType] == 1);

    if (!buttonTitleStyle)
    {
    }
  }

  return v9;
}

- (void)_fullyReloadSections:(id)sections withNavigationItem:(id)item
{
  v30 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  itemCopy = item;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [sectionsCopy countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(sectionsCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        [v12 reloadAfterDocumentUpdateWithNavigationItem:itemCopy];
        [v12 willAppearInNavigationBar];
      }

      v9 = [sectionsCopy countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  _navigationBarContext = [(SKUINavigationBarController *)self _navigationBarContext];
  textLayoutCache = [_navigationBarContext textLayoutCache];
  [textLayoutCache commitLayoutRequests];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = sectionsCopy;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * j) reloadSectionViews];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (id)_navigationBarContext
{
  navigationBarContext = self->_navigationBarContext;
  if (!navigationBarContext)
  {
    v4 = objc_alloc_init(SKUINavigationBarContext);
    v5 = self->_navigationBarContext;
    self->_navigationBarContext = v4;

    [(SKUINavigationBarContext *)self->_navigationBarContext setClientContext:self->_clientContext];
    v6 = self->_navigationBarContext;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    [(SKUINavigationBarContext *)v6 setMaximumNavigationBarWidth:v8];

    v9 = self->_navigationBarContext;
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    [(SKUINavigationBarContext *)v9 setParentViewController:WeakRetained];

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(SKUINavigationBarContext *)self->_navigationBarContext setOperationQueue:v11];
    v12 = [[SKUIResourceLoader alloc] initWithClientContext:self->_clientContext];
    [(SKUINavigationBarContext *)self->_navigationBarContext setResourceLoader:v12];
    v13 = objc_alloc_init(SKUILayoutCache);
    [(SKUILayoutCache *)v13 setDelegate:self];
    [(SKUINavigationBarContext *)self->_navigationBarContext setTextLayoutCache:v13];

    navigationBarContext = self->_navigationBarContext;
  }

  return navigationBarContext;
}

- (id)_resourceImageForImageElement:(id)element
{
  elementCopy = element;
  resourceName = [elementCopy resourceName];
  v5 = resourceName;
  if (resourceName)
  {
    v6 = SKUIImageWithResourceName(resourceName);
    style = [elementCopy style];
    imageMaskColor = [style imageMaskColor];

    if (imageMaskColor)
    {
      color = [imageMaskColor color];

      if (color)
      {
        color2 = [imageMaskColor color];
        v11 = [v6 _flatImageWithColor:color2];

        v6 = v11;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_titleButtonAction:(id)action
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:0x282804928 object:self];
  [(SKUIButtonViewElement *)self->_titleButtonViewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (SKUINavigationBarControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithNavigationBarViewElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationBarController initWithNavigationBarViewElement:]";
}

@end