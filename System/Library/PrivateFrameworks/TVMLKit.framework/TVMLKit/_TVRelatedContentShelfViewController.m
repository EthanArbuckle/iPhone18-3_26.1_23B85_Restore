@interface _TVRelatedContentShelfViewController
- (id)impressionableElementsContainedInDocument:(id)a3;
- (id)preferredFocusEnvironments;
- (void)loadView;
- (void)setShelfViewController:(id)a3;
- (void)shelfViewController:(id)a3 updateRelatedView:(id)a4;
@end

@implementation _TVRelatedContentShelfViewController

- (void)setShelfViewController:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  shelfViewController = self->_shelfViewController;
  if (shelfViewController != v5)
  {
    [(_TVShelfViewController *)shelfViewController willMoveToParentViewController:0];
    if (v5)
    {
      [(_TVRelatedContentShelfViewController *)self addChildViewController:v5];
      [(_TVShelfViewController *)v5 setDelegate:self];
      v7 = [(_TVRelatedContentShelfViewController *)self view];
      v8 = [(_TVShelfViewController *)v5 view];
      [v7 setShelfView:v8];

      v9 = [(_TVRelatedContentShelfViewController *)self view];
      v10 = [(_TVMLCollectionViewController *)v5 collectionElement];
      [v9 transferLayoutStylesFromElement:v10];

      v11 = [(_TVRelatedContentShelfViewController *)self view];
      v12 = MEMORY[0x277CCAE60];
      v13 = [(_TVShelfViewController *)v5 view];
      [v13 tv_margin];
      v14 = [v12 valueWithUIEdgeInsets:?];
      [v11 setValue:v14 forTVViewStyle:@"margin"];
    }

    [(_TVShelfViewController *)self->_shelfViewController removeFromParentViewController];
    [(_TVShelfViewController *)v5 didMoveToParentViewController:self];
    objc_storeStrong(&self->_shelfViewController, a3);
    v15 = [(_TVMLCollectionViewController *)v5 collectionElement];
    v16 = [v15 sections];
    v17 = [v16 firstObject];

    v18 = [v17 firstItemElement];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [v18 children];
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v28 + 1) + 8 * i);
          if ([v24 tv_elementType] == 43)
          {
            v25 = [(_TVRelatedContentShelfViewController *)self view];
            v26 = [v24 style];
            [v26 tv_height];
            [v25 setRelatedHeight:?];

            goto LABEL_14;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v27 = [(_TVMLCollectionViewController *)self->_shelfViewController collectionView];
    [v27 setRemembersLastFocusedIndexPath:1];
  }
}

- (void)loadView
{
  v3 = [_TVRelatedContentShelfView alloc];
  v4 = [(_TVRelatedContentShelfView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_TVRelatedContentShelfViewController *)self setView:v4];
}

- (void)shelfViewController:(id)a3 updateRelatedView:(id)a4
{
  v5 = a4;
  v6 = [(_TVRelatedContentShelfViewController *)self view];
  [v6 setRelatedView:v5];
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(_TVRelatedContentShelfViewController *)self view];
  if (v3)
  {
    v4 = [(_TVRelatedContentShelfViewController *)self view];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(_TVRelatedContentShelfViewController *)self shelfViewController];
  v8 = [v7 tv_impressionableElementsForDocument:v5];
  [v6 addObjectsFromArray:v8];

  v9 = [(_TVRelatedContentShelfViewController *)self view];
  v10 = [v9 relatedView];
  v11 = [v10 tv_impressionableElementsForDocument:v5];

  [v6 addObjectsFromArray:v11];
  if ([v6 count])
  {
    v12 = [MEMORY[0x277CBEA60] arrayWithArray:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end