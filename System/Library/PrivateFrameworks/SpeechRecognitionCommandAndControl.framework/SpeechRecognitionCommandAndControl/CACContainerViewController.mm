@interface CACContainerViewController
- (UIView)viewAboveContainedViews;
- (void)installViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)uninstallViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation CACContainerViewController

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(CACContainerViewController *)self setView:v3];
}

- (UIView)viewAboveContainedViews
{
  viewAboveContainedViews = self->_viewAboveContainedViews;
  if (!viewAboveContainedViews)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    view = [(CACContainerViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_viewAboveContainedViews;
    self->_viewAboveContainedViews = v6;

    [(UIView *)self->_viewAboveContainedViews setAutoresizingMask:18];
    view2 = [(CACContainerViewController *)self view];
    [view2 addSubview:self->_viewAboveContainedViews];

    viewAboveContainedViews = self->_viewAboveContainedViews;
  }

  return viewAboveContainedViews;
}

- (void)installViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v51 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  viewControllers = [(CACContainerViewController *)self viewControllers];
  v11 = [viewControllers containsObject:controllerCopy];

  if (v11)
  {
    v12 = CACLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = controllerCopy;
      _os_log_impl(&dword_26B354000, v12, OS_LOG_TYPE_DEFAULT, "Attempted to reinstall view controller that was already installed: %@", &buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    viewControllers2 = [(CACContainerViewController *)self viewControllers];

    if (!viewControllers2)
    {
      array = [MEMORY[0x277CBEB18] array];
      [(CACContainerViewController *)self setViewControllers:array];
    }

    view = [(CACContainerViewController *)self view];
    [view bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    view2 = [controllerCopy view];
    [view2 setFrame:{v17, v19, v21, v23}];

    view3 = [controllerCopy view];
    [view3 setAutoresizingMask:18];

    [(CACContainerViewController *)self addChildViewController:controllerCopy];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v49 = 0x2020000000;
    v50 = 0;
    viewControllers3 = [(CACContainerViewController *)self viewControllers];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke;
    v44[3] = &unk_279CEC750;
    v27 = controllerCopy;
    v45 = v27;
    selfCopy = self;
    p_buf = &buf;
    [viewControllers3 enumerateObjectsUsingBlock:v44];

    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      viewControllers4 = [(CACContainerViewController *)self viewControllers];
      [viewControllers4 addObject:v27];

      if (self->_viewAboveContainedViews)
      {
        view4 = [(CACContainerViewController *)self view];
        view5 = [v27 view];
        [view4 insertSubview:view5 belowSubview:self->_viewAboveContainedViews];
      }

      else
      {
        view4 = [(CACContainerViewController *)self view];
        view5 = [v27 view];
        [view4 addSubview:view5];
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke_2;
    aBlock[3] = &unk_279CEB430;
    v31 = v27;
    v41 = v31;
    selfCopy2 = self;
    v43 = completionCopy;
    v32 = _Block_copy(aBlock);
    v33 = v32;
    if (animatedCopy)
    {
      view6 = [v31 view];
      [view6 setAlpha:0.0];

      v35 = MEMORY[0x277D75D18];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke_3;
      v38[3] = &unk_279CEB2D0;
      v39 = v31;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke_4;
      v36[3] = &unk_279CEC388;
      v37 = v33;
      [v35 animateWithDuration:v38 animations:v36 completion:0.3];
    }

    else
    {
      (*(v32 + 2))(v32);
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __72__CACContainerViewController_installViewController_animated_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 zOrder];
  if (v7 > [*(a1 + 32) zOrder])
  {
    v8 = [*(a1 + 40) viewControllers];
    [v8 insertObject:*(a1 + 32) atIndex:a3];

    v9 = [*(a1 + 40) view];
    v10 = [*(a1 + 32) view];
    v11 = [v12 view];
    [v9 insertSubview:v10 belowSubview:v11];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t __72__CACContainerViewController_installViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __72__CACContainerViewController_installViewController_animated_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)uninstallViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v29 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  v10 = CACLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = controllerCopy;
    _os_log_impl(&dword_26B354000, v10, OS_LOG_TYPE_INFO, "Uninstalling view controller... %@", buf, 0xCu);
  }

  viewControllers = [(CACContainerViewController *)self viewControllers];
  v12 = [viewControllers containsObject:controllerCopy];

  if (v12)
  {
    [controllerCopy willMoveToParentViewController:0];
    viewControllers2 = [(CACContainerViewController *)self viewControllers];
    [viewControllers2 removeObject:controllerCopy];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke;
    aBlock[3] = &unk_279CEC778;
    v14 = controllerCopy;
    v24 = v14;
    v25 = completionCopy;
    v26 = animatedCopy;
    v15 = _Block_copy(aBlock);
    v16 = v15;
    if (animatedCopy)
    {
      v17 = MEMORY[0x277D75D18];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_3;
      v21[3] = &unk_279CEB2D0;
      v22 = v14;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_4;
      v19[3] = &unk_279CEC388;
      v20 = v16;
      [v17 animateWithDuration:v21 animations:v19 completion:0.3];
    }

    else
    {
      (*(v15 + 2))(v15);
    }
  }

  else
  {
    v18 = CACLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = controllerCopy;
      _os_log_impl(&dword_26B354000, v18, OS_LOG_TYPE_DEFAULT, "Attempted to uninstall overlay view controller that was not installed: %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_2;
  v7 = &unk_279CEB3E0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v2 = _Block_copy(&v4);
  v3 = [*(a1 + 32) presentedViewController];

  if (v3)
  {
    [*(a1 + 32) dismissViewControllerAnimated:*(a1 + 48) completion:v2];
  }

  else
  {
    v2[2](v2);
  }
}

uint64_t __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

@end