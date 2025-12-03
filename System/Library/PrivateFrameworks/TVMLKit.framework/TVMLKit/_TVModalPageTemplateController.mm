@interface _TVModalPageTemplateController
- (BOOL)_updateWithCollectionListElement:(id)element;
- (id)_viewControllerWithElement:(id)element existingController:(id)controller;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)_tapAction:(id)action;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)updateWithViewElement:(id)element;
- (void)viewDidLoad;
@end

@implementation _TVModalPageTemplateController

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v11 = [v3 initWithFrame:?];

  style = [(IKViewElement *)self->_backgroundElement style];
  tv_backgroundColor = [style tv_backgroundColor];
  color = [tv_backgroundColor color];
  v8 = color;
  if (color)
  {
    v9 = color;
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  }

  v10 = v9;

  [v11 setBackgroundColor:v10];
  [(_TVModalPageTemplateController *)self setView:v11];
}

- (void)viewDidLoad
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = _TVModalPageTemplateController;
  [(_TVModalPageTemplateController *)&v13 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D757F0]) initWithTransitionStyle:1 navigationOrientation:0 options:0];
  pageViewController = self->_pageViewController;
  self->_pageViewController = v3;

  [(UIPageViewController *)self->_pageViewController setDataSource:self];
  view = [(UIPageViewController *)self->_pageViewController view];
  [(_TVModalPageTemplateController *)self addChildViewController:self->_pageViewController];
  view2 = [(_TVModalPageTemplateController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  view3 = [(_TVModalPageTemplateController *)self view];
  [view3 addSubview:view];

  [(UIPageViewController *)self->_pageViewController didMoveToParentViewController:self];
  if ([(NSArray *)self->_viewControllers count])
  {
    v8 = self->_pageViewController;
    firstObject = [(NSArray *)self->_bezelViewControllers firstObject];
    v14[0] = firstObject;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [(UIPageViewController *)v8 setViewControllers:v10 direction:0 animated:0 completion:0];
  }

  v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapAction_];
  view4 = [(_TVModalPageTemplateController *)self view];
  [view4 addGestureRecognizer:v11];
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setOpaque:0];
  }
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  if ([(NSArray *)self->_bezelViewControllers indexOfObjectIdenticalTo:viewController]- 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_bezelViewControllers objectAtIndex:?];
  }

  return v5;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [(NSArray *)self->_bezelViewControllers indexOfObjectIdenticalTo:viewController];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, v5 >= [(NSArray *)self->_bezelViewControllers count]- 1))
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_bezelViewControllers objectAtIndex:v6 + 1];
  }

  return v7;
}

- (void)_tapAction:(id)action
{
  v23 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  view = [(_TVModalPageTemplateController *)self view];
  view2 = [(_TVModalPageTemplateController *)self view];
  [actionCopy locationInView:view2];
  v7 = [view hitTest:0 withEvent:?];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_bezelViewControllers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v8);
      }

      contentViewController = [*(*(&v18 + 1) + 8 * v12) contentViewController];
      if ([contentViewController isViewLoaded])
      {
        view3 = [contentViewController view];
        v15 = [v7 isDescendantOfView:view3];

        if (v15)
        {
          goto LABEL_14;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v8 = +[_TVModalPresenter presenter];
  presentedViewController = [(NSArray *)v8 presentedViewController];

  if (presentedViewController)
  {
    contentViewController = [(NSArray *)v8 presentedViewController];
    [(NSArray *)v8 hideController:contentViewController animated:1 withCompletion:0];
LABEL_14:

    goto LABEL_15;
  }

  presentingViewController = [(_TVModalPageTemplateController *)self presentingViewController];

  if (presentingViewController)
  {
    contentViewController = [(_TVModalPageTemplateController *)self presentingViewController];
    [contentViewController dismissViewControllerAnimated:1 completion:0];
    goto LABEL_14;
  }

LABEL_15:
}

- (void)updateWithViewElement:(id)element
{
  v90 = *MEMORY[0x277D85DE8];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  elementCopy = element;
  children = [elementCopy children];
  v6 = [children countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (!v6)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v81;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v81 != v10)
      {
        objc_enumerationMutation(children);
      }

      v12 = *(*(&v80 + 1) + 8 * i);
      tv_elementType = [v12 tv_elementType];
      if (tv_elementType == 4)
      {
        v14 = v8;
        v8 = v12;
      }

      else
      {
        if (tv_elementType != 10)
        {
          continue;
        }

        v14 = v9;
        v9 = v12;
      }

      v15 = v12;
    }

    v7 = [children countByEnumeratingWithState:&v80 objects:v89 count:16];
  }

  while (v7);
LABEL_15:

  objc_storeStrong(&self->_viewElement, element);
  objc_storeStrong(&self->_collectionListElement, v9);
  objc_storeStrong(&self->_backgroundElement, v8);
  v59 = [(_TVModalPageTemplateController *)self _updateWithCollectionListElement:self->_collectionListElement];
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_viewControllers, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  selfCopy = self;
  v17 = self->_viewControllers;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v77;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v77 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v76 + 1) + 8 * j);
        v23 = objc_alloc_init(_TVModalPageBezelViewController);
        [(_TVModalPageBezelViewController *)v23 setContentViewController:v22];
        [v16 addObject:v23];
      }

      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v19);
  }

  v24 = [v16 copy];
  bezelViewControllers = selfCopy->_bezelViewControllers;
  selfCopy->_bezelViewControllers = v24;

  if (v59)
  {
    pageViewController = selfCopy->_pageViewController;
    firstObject = [(NSArray *)selfCopy->_bezelViewControllers firstObject];
    v87 = firstObject;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
    [(UIPageViewController *)pageViewController setViewControllers:v28 direction:0 animated:0 completion:0];
  }

  if ([(_TVModalPageTemplateController *)selfCopy isViewLoaded])
  {
    style = [(IKViewElement *)selfCopy->_backgroundElement style];
    tv_backgroundColor = [style tv_backgroundColor];
    color = [tv_backgroundColor color];

    if (color)
    {
      view = [(_TVModalPageTemplateController *)selfCopy view];
      [view setBackgroundColor:color];
    }
  }

  v74 = TVCornerRadiiZero;
  v75 = *&qword_26CE880D8;
  if ([TVMLUtilities _cornerRadiiFromElement:selfCopy->_viewElement cornerRadii:&v74 circle:0])
  {
    [TVCornerUtilities radiusFromCornerRadii:v74, v75];
    v34 = v33;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v35 = selfCopy->_bezelViewControllers;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v70 objects:v86 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v71;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v71 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [*(*(&v70 + 1) + 8 * k) setBezelCornerRadius:v34];
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v70 objects:v86 count:16];
      }

      while (v37);
    }
  }

  style2 = [(IKViewElement *)selfCopy->_viewElement style];
  tv_backgroundColor2 = [style2 tv_backgroundColor];
  color2 = [tv_backgroundColor2 color];

  if (color2)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v43 = selfCopy->_bezelViewControllers;
    v44 = [(NSArray *)v43 countByEnumeratingWithState:&v66 objects:v85 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v67;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v67 != v46)
          {
            objc_enumerationMutation(v43);
          }

          [*(*(&v66 + 1) + 8 * m) setBezelBackgroundColor:color2];
        }

        v45 = [(NSArray *)v43 countByEnumeratingWithState:&v66 objects:v85 count:16];
      }

      while (v45);
    }
  }

  style3 = [(IKViewElement *)selfCopy->_viewElement style];
  [style3 tv_width];
  v50 = v49;

  style4 = [(IKViewElement *)selfCopy->_viewElement style];
  [style4 tv_height];
  v53 = v52;

  if (v50 > 0.0 && v53 > 0.0)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v54 = selfCopy->_bezelViewControllers;
    v55 = [(NSArray *)v54 countByEnumeratingWithState:&v62 objects:v84 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v63;
      do
      {
        for (n = 0; n != v56; ++n)
        {
          if (*v63 != v57)
          {
            objc_enumerationMutation(v54);
          }

          [*(*(&v62 + 1) + 8 * n) setContentSize:{v50, v53}];
        }

        v56 = [(NSArray *)v54 countByEnumeratingWithState:&v62 objects:v84 count:16];
      }

      while (v56);
    }
  }
}

- (BOOL)_updateWithCollectionListElement:(id)element
{
  v64 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  if ([elementCopy updateType] == 2 && (objc_msgSend(elementCopy, "children"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v7 = -[NSArray count](self->_viewControllers, "count"), v5, v6 == v7))
  {
    children = [elementCopy children];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __67___TVModalPageTemplateController__updateWithCollectionListElement___block_invoke;
    v60[3] = &unk_279D6F498;
    v60[4] = self;
    [children enumerateObjectsUsingBlock:v60];

    LOBYTE(v9) = 0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    Width = CGRectGetWidth(v65);

    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    children2 = [elementCopy children];
    v40 = [v12 initWithCapacity:{objc_msgSend(children2, "count")}];

    v44 = [(NSArray *)self->_viewControllers mutableCopy];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = elementCopy;
    obj = [elementCopy children];
    selfCopy = self;
    v45 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    v9 = 0;
    if (v45)
    {
      v43 = *v57;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          v15 = v9;
          if (*v57 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v56 + 1) + 8 * i);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v17 = v44;
          v18 = [v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v18)
          {
            v46 = v9;
            v47 = i;
            v19 = *v53;
            while (2)
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v53 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v52 + 1) + 8 * j);
                tv_associatedIKViewElement = [v21 tv_associatedIKViewElement];
                v23 = [[_TVShadowViewElementID alloc] initWithViewElement:tv_associatedIKViewElement];
                v24 = [[_TVShadowViewElementID alloc] initWithViewElement:v16];
                if ([(_TVShadowViewElementID *)v23 isEqual:v24])
                {
                  v18 = v21;

                  goto LABEL_19;
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v52 objects:v62 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

LABEL_19:
            self = selfCopy;
            i = v47;
            v15 = v46;
          }

          v25 = [(_TVModalPageTemplateController *)self _viewControllerWithElement:v16 existingController:v18];
          view = [v25 view];
          [view tv_sizeThatFits:{Width, 0.0}];
          v28 = v27;

          if (v28 == 0.0)
          {

            v25 = 0;
          }

          else if (v25)
          {
            [v40 addObject:v25];
          }

          v9 = 1;
          if (v18 && v18 == v25)
          {
            [v17 removeObjectIdenticalTo:v18];
            v9 = v15;
          }
        }

        v45 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v45);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = v44;
    v30 = [v29 countByEnumeratingWithState:&v48 objects:v61 count:16];
    elementCopy = v39;
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v48 + 1) + 8 * k);
          [v34 willMoveToParentViewController:0];
          view2 = [v34 view];
          [view2 removeFromSuperview];

          [v34 removeFromParentViewController];
        }

        v31 = [v29 countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v31);
    }

    v36 = [v40 copy];
    viewControllers = selfCopy->_viewControllers;
    selfCopy->_viewControllers = v36;
  }

  return v9 & 1;
}

- (id)_viewControllerWithElement:(id)element existingController:(id)controller
{
  elementCopy = element;
  controllerCopy = controller;
  v7 = +[TVInterfaceFactory sharedInterfaceFactory];
  v8 = [v7 _viewControllerFromElement:elementCopy existingController:controllerCopy];

  if (!v8)
  {
    v9 = +[TVInterfaceFactory sharedInterfaceFactory];
    view = [controllerCopy view];
    v11 = [v9 _viewFromElement:elementCopy existingView:view];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = controllerCopy;
      }

      else
      {
        v12 = objc_alloc_init(_TVModalPageSupplementalViewController);
      }

      v8 = v12;
      [(_TVModalPageSupplementalViewController *)v12 setView:v11];
      [v8 tv_setAssociatedIKViewElement:elementCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end