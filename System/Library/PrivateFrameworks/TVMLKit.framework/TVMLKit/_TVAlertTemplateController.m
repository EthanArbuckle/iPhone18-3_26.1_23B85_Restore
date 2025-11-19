@interface _TVAlertTemplateController
- (CGSize)_backgroundImageProxySize;
- (id)_backgroundImageProxy;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)preferredFocusEnvironments;
- (int64_t)_blurEffectStyle;
- (void)_configureWithBgImage:(id)a3 backdropImage:(id)a4;
- (void)_scrollToPreferredFocusView;
- (void)collectionView:(id)a3 didReceivePhysicalPlayForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)loadView;
- (void)updateWithViewElement:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation _TVAlertTemplateController

- (void)updateWithViewElement:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v73.receiver = self;
  v73.super_class = _TVAlertTemplateController;
  [(_TVBgImageLoadingViewController *)&v73 updateWithViewElement:v5];
  v55 = [(_TVAlertTemplateController *)self isViewLoaded];
  v56 = [(_TVAlertTemplateController *)self view];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_storeStrong(&self->_templateElement, a3);
  p_bgImageElement = &self->_bgImageElement;
  bgImageElement = self->_bgImageElement;
  self->_bgImageElement = 0;

  v57 = self;
  p_bgHeroImageElement = &self->_bgHeroImageElement;
  v10 = *p_bgHeroImageElement;
  *p_bgHeroImageElement = 0;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v58 = v5;
  obj = [v5 children];
  v11 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (!v11)
  {
    v62 = 0;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_42;
  }

  v12 = v11;
  v64 = 0;
  v62 = 0;
  v13 = *v70;
  v14 = *MEMORY[0x277CBF3A8];
  v15 = *(MEMORY[0x277CBF3A8] + 8);
  v16 = 0.0;
  v17 = 0.0;
  v59 = v6;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v70 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v69 + 1) + 8 * i);
      v20 = [v19 tv_elementType];
      if (v20 > 0x17 || ((1 << v20) & 0x8000C0) == 0)
      {
        if ([v19 tv_elementType] == 4)
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v27 = [v19 children];
          v33 = [v27 countByEnumeratingWithState:&v65 objects:v74 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v66;
            do
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v66 != v35)
                {
                  objc_enumerationMutation(v27);
                }

                v37 = *(*(&v65 + 1) + 8 * j);
                if (*p_bgImageElement || (v38 = [*(*(&v65 + 1) + 8 * j) tv_imageType], v39 = p_bgImageElement, v38))
                {
                  if (*p_bgHeroImageElement)
                  {
                    continue;
                  }

                  v40 = [v37 tv_imageType];
                  v39 = p_bgHeroImageElement;
                  if (v40 != 3)
                  {
                    continue;
                  }
                }

                objc_storeStrong(v39, v37);
              }

              v34 = [v27 countByEnumeratingWithState:&v65 objects:v74 count:16];
            }

            while (v34);
            v6 = v59;
          }
        }

        else
        {
          v41 = +[TVInterfaceFactory sharedInterfaceFactory];
          v27 = [v41 _viewFromElement:v19 existingView:0];

          if (v27)
          {
            if ([v6 count])
            {
              v42 = v60;
            }

            else
            {
              v42 = v61;
            }

            [v42 addObject:v27];
          }
        }
      }

      else
      {
        v22 = v20;
        [v6 addObject:v19];
        v23 = [v19 autoHighlightIdentifier];
        v24 = [v23 length];

        if (v24)
        {
          if ((v64 & 1) == 0)
          {
            v25 = v19;

            v62 = v25;
          }

          [v19 resetProperty:2];
          v64 = 1;
        }

        if ((v22 & 0xFFFFFFFFFFFFFFFELL) == 6)
        {
          v26 = +[TVInterfaceFactory sharedInterfaceFactory];
          v27 = [v26 _viewFromElement:v19 existingView:0];

          [v27 tv_sizeThatFits:{v14, v15}];
          v17 = fmax(v17, v28);
          v16 = fmax(v16, v29);
        }

        else
        {
          if (v17 != 0.0)
          {
            continue;
          }

          v30 = [v19 style];
          [v30 tv_width];
          v17 = v31;

          v27 = [v19 style];
          [v27 tv_height];
          v16 = v32;
        }
      }
    }

    v12 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  }

  while (v12);
LABEL_42:

  v43 = [v58 style];
  v44 = [v43 tv_backgroundColor];
  v45 = [v44 color];
  [v56 setBackgroundColor:v45];

  v46 = [v58 style];
  [v46 tv_padding];
  [v56 setPadding:?];

  v47 = [v6 copy];
  collectionViewElements = v57->_collectionViewElements;
  v57->_collectionViewElements = v47;

  if (v62)
  {
    v49 = [v6 indexOfObject:v62];
    v50 = [MEMORY[0x277CCAA70] indexPathForItem:v49 inSection:0];
    lastFocusedIndexPath = v57->_lastFocusedIndexPath;
    v57->_lastFocusedIndexPath = v50;

    if (v55)
    {
      [(_TVAlertTemplateController *)v57 _scrollToPreferredFocusView];
    }

    else
    {
      v57->_updateAutoHighlight = 1;
    }
  }

  else
  {
    v52 = [(NSIndexPath *)v57->_lastFocusedIndexPath item];
    if (v52 >= [(NSArray *)v57->_collectionViewElements count])
    {
      v53 = v57->_lastFocusedIndexPath;
      v57->_lastFocusedIndexPath = 0;
    }
  }

  [v56 setViewsAbove:v61];
  [v56 setViewsBelow:v60];
  if (v17 > 0.0 && v16 > 0.0)
  {
    v54 = [(_TVCollectionView *)v57->_collectionView collectionViewLayout];
    [v54 setItemSize:{v17, v16}];
  }

  [(_TVCollectionView *)v57->_collectionView reloadData];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _TVAlertTemplateController;
  [(_TVBgImageLoadingViewController *)&v3 viewDidLayoutSubviews];
  if (self->_updateAutoHighlight)
  {
    [(_TVAlertTemplateController *)self _scrollToPreferredFocusView];
    self->_updateAutoHighlight = 0;
  }
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_collectionView)
  {
    v4[0] = self->_collectionView;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (void)loadView
{
  v3 = [_TVAlertTemplateView alloc];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v11 = [(_TVAlertTemplateView *)v3 initWithFrame:?];

  v5 = [MEMORY[0x277D75348] clearColor];
  [(_TVAlertTemplateView *)v11 setBackgroundColor:v5];

  v6 = objc_alloc_init(_TVCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v6 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v6 setMinimumLineSpacing:14.0];
  [(UICollectionViewFlowLayout *)v6 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v6 setSectionInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  v7 = [_TVCollectionView alloc];
  v8 = [(_TVCollectionView *)v7 initWithFrame:v6 collectionViewLayout:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_TVCollectionView *)v8 setAutoresizingMask:18];
  [(_TVCollectionView *)v8 setDelegate:self];
  [(_TVCollectionView *)v8 setDataSource:self];
  [(_TVCollectionView *)v8 setBackgroundColor:0];
  [(_TVCollectionView *)v8 setOpaque:0];
  [(_TVCollectionView *)v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TVAlertCellIdentifier"];
  [(_TVCollectionView *)v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TVAlertListCellIdentifier"];
  collectionView = self->_collectionView;
  self->_collectionView = v8;
  v10 = v8;

  [(_TVAlertTemplateView *)v11 setCollectionView:v10];
  [(_TVAlertTemplateController *)self setView:v11];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  collectionViewElements = self->_collectionViewElements;
  v8 = a3;
  v9 = -[NSArray objectAtIndex:](collectionViewElements, "objectAtIndex:", [v6 item]);
  if ([v9 tv_elementType] == 23)
  {
    v10 = [v8 dequeueReusableCellWithReuseIdentifier:@"TVAlertListCellIdentifier" forIndexPath:v6];

    v11 = +[TVInterfaceFactory sharedInterfaceFactory];
    v12 = [v11 _viewFromElement:v9 existingView:v10];
  }

  else
  {
    v10 = [v8 dequeueReusableCellWithReuseIdentifier:@"TVAlertCellIdentifier" forIndexPath:v6];

    v13 = +[TVInterfaceFactory sharedInterfaceFactory];
    v11 = [v13 _viewFromElement:v9 existingView:0];

    v14 = [MEMORY[0x277D75348] clearColor];
    [v10 setBackgroundColor:v14];

    [v10 setOpaque:0];
    v15 = [(NSArray *)self->_collectionViewElements count];
    v16 = (v15 - [v6 item]);
    v17 = [v10 layer];
    [v17 setZPosition:v16];

    [v10 setButtonView:v11];
    [v11 setAutoresizingMask:18];
  }

  [v10 setClipsToBounds:0];

  return v10;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v13 = a3;
  v7 = [a4 nextFocusedIndexPath];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];
    lastFocusedIndexPath = self->_lastFocusedIndexPath;
    self->_lastFocusedIndexPath = v9;

    v11 = -[NSArray objectAtIndex:](self->_collectionViewElements, "objectAtIndex:", [v8 row]);
    if ([v11 tv_elementType] == 23)
    {
      v12 = [v13 cellForItemAtIndexPath:v8];
      [v11 tv_dispatchEvent:@"highlight" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v12 completionBlock:0];
    }
  }
}

- (void)collectionView:(id)a3 didReceivePhysicalPlayForItemAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = -[NSArray objectAtIndex:](self->_collectionViewElements, "objectAtIndex:", [v6 row]);
  if ([v7 tv_elementType] == 23)
  {
    v8 = [v9 cellForItemAtIndexPath:v6];
    [v7 tv_dispatchEvent:@"play" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v8 completionBlock:0];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = -[NSArray objectAtIndex:](self->_collectionViewElements, "objectAtIndex:", [v6 row]);
  if ([v7 tv_elementType] == 23)
  {
    v8 = [v9 cellForItemAtIndexPath:v6];
    [v7 tv_dispatchEvent:@"select" canBubble:1 isCancelable:1 extraInfo:0 targetResponder:v8 completionBlock:0];
  }
}

- (CGSize)_backgroundImageProxySize
{
  bgImageElement = self->_bgImageElement;
  if (bgImageElement || (bgImageElement = self->_bgHeroImageElement) != 0)
  {

    [(IKImageElement *)bgImageElement tv_imageScaleToSize];
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v7.receiver = self;
    v7.super_class = _TVAlertTemplateController;
    [(_TVBgImageLoadingViewController *)&v7 _backgroundImageProxySize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_backgroundImageProxy
{
  if (self->_bgImageElement)
  {
    v3 = [(IKViewElement *)self->_templateElement appDocument];
    [v3 tv_adjustedWindowSize];
    v5 = v4;
    v7 = v6;

    v8 = objc_opt_new();
    [v8 setImageSize:{v5, v7}];
    v9 = [TVImageLayout layoutWithLayout:v8 element:self->_bgImageElement];
    v10 = [(IKImageElement *)self->_bgImageElement tv_imageProxyWithLayout:v8];
  }

  else
  {
    bgHeroImageElement = self->_bgHeroImageElement;
    if (bgHeroImageElement)
    {
      v10 = [(IKImageElement *)bgHeroImageElement tv_imageProxy];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (int64_t)_blurEffectStyle
{
  if ([TVMLUtilities interfaceStyleForTemplateElement:self->_templateElement]== 1)
  {
    return 4000;
  }

  else
  {
    return 4005;
  }
}

- (void)_configureWithBgImage:(id)a3 backdropImage:(id)a4
{
  v5 = a3;
  v6 = [(_TVAlertTemplateController *)self view];
  [v6 setBgImage:v5];
}

- (void)_scrollToPreferredFocusView
{
  if (self->_lastFocusedIndexPath)
  {
    [(_TVCollectionView *)self->_collectionView layoutIfNeeded];
    collectionView = self->_collectionView;
    lastFocusedIndexPath = self->_lastFocusedIndexPath;

    [(_TVCollectionView *)collectionView scrollToItemAtIndexPath:lastFocusedIndexPath atScrollPosition:2 animated:0];
  }
}

@end