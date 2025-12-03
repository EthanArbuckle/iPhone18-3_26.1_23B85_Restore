@interface _TVRelatedContentShelfViewController
- (id)impressionableElementsContainedInDocument:(id)document;
- (id)preferredFocusEnvironments;
- (void)loadView;
- (void)setShelfViewController:(id)controller;
- (void)shelfViewController:(id)controller updateRelatedView:(id)view;
@end

@implementation _TVRelatedContentShelfViewController

- (void)setShelfViewController:(id)controller
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  shelfViewController = self->_shelfViewController;
  if (shelfViewController != controllerCopy)
  {
    [(_TVShelfViewController *)shelfViewController willMoveToParentViewController:0];
    if (controllerCopy)
    {
      [(_TVRelatedContentShelfViewController *)self addChildViewController:controllerCopy];
      [(_TVShelfViewController *)controllerCopy setDelegate:self];
      view = [(_TVRelatedContentShelfViewController *)self view];
      view2 = [(_TVShelfViewController *)controllerCopy view];
      [view setShelfView:view2];

      view3 = [(_TVRelatedContentShelfViewController *)self view];
      collectionElement = [(_TVMLCollectionViewController *)controllerCopy collectionElement];
      [view3 transferLayoutStylesFromElement:collectionElement];

      view4 = [(_TVRelatedContentShelfViewController *)self view];
      v12 = MEMORY[0x277CCAE60];
      view5 = [(_TVShelfViewController *)controllerCopy view];
      [view5 tv_margin];
      v14 = [v12 valueWithUIEdgeInsets:?];
      [view4 setValue:v14 forTVViewStyle:@"margin"];
    }

    [(_TVShelfViewController *)self->_shelfViewController removeFromParentViewController];
    [(_TVShelfViewController *)controllerCopy didMoveToParentViewController:self];
    objc_storeStrong(&self->_shelfViewController, controller);
    collectionElement2 = [(_TVMLCollectionViewController *)controllerCopy collectionElement];
    sections = [collectionElement2 sections];
    firstObject = [sections firstObject];

    firstItemElement = [firstObject firstItemElement];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    children = [firstItemElement children];
    v20 = [children countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(children);
          }

          v24 = *(*(&v28 + 1) + 8 * i);
          if ([v24 tv_elementType] == 43)
          {
            view6 = [(_TVRelatedContentShelfViewController *)self view];
            style = [v24 style];
            [style tv_height];
            [view6 setRelatedHeight:?];

            goto LABEL_14;
          }
        }

        v21 = [children countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    collectionView = [(_TVMLCollectionViewController *)self->_shelfViewController collectionView];
    [collectionView setRemembersLastFocusedIndexPath:1];
  }
}

- (void)loadView
{
  v3 = [_TVRelatedContentShelfView alloc];
  v4 = [(_TVRelatedContentShelfView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(_TVRelatedContentShelfViewController *)self setView:v4];
}

- (void)shelfViewController:(id)controller updateRelatedView:(id)view
{
  viewCopy = view;
  view = [(_TVRelatedContentShelfViewController *)self view];
  [view setRelatedView:viewCopy];
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  view = [(_TVRelatedContentShelfViewController *)self view];
  if (view)
  {
    view2 = [(_TVRelatedContentShelfViewController *)self view];
    v7[0] = view2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v4 = MEMORY[0x277CBEB18];
  documentCopy = document;
  array = [v4 array];
  shelfViewController = [(_TVRelatedContentShelfViewController *)self shelfViewController];
  v8 = [shelfViewController tv_impressionableElementsForDocument:documentCopy];
  [array addObjectsFromArray:v8];

  view = [(_TVRelatedContentShelfViewController *)self view];
  relatedView = [view relatedView];
  v11 = [relatedView tv_impressionableElementsForDocument:documentCopy];

  [array addObjectsFromArray:v11];
  if ([array count])
  {
    v12 = [MEMORY[0x277CBEA60] arrayWithArray:array];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end