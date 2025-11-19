@interface CACContainerViewController
- (UIView)viewAboveContainedViews;
- (void)installViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)loadView;
- (void)uninstallViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
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
    v5 = [(CACContainerViewController *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_viewAboveContainedViews;
    self->_viewAboveContainedViews = v6;

    [(UIView *)self->_viewAboveContainedViews setAutoresizingMask:18];
    v8 = [(CACContainerViewController *)self view];
    [v8 addSubview:self->_viewAboveContainedViews];

    viewAboveContainedViews = self->_viewAboveContainedViews;
  }

  return viewAboveContainedViews;
}

- (void)installViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(CACContainerViewController *)self viewControllers];
  v11 = [v10 containsObject:v8];

  if (v11)
  {
    v12 = CACLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_26B354000, v12, OS_LOG_TYPE_DEFAULT, "Attempted to reinstall view controller that was already installed: %@", &buf, 0xCu);
    }

    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    v13 = [(CACContainerViewController *)self viewControllers];

    if (!v13)
    {
      v14 = [MEMORY[0x277CBEB18] array];
      [(CACContainerViewController *)self setViewControllers:v14];
    }

    v15 = [(CACContainerViewController *)self view];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v8 view];
    [v24 setFrame:{v17, v19, v21, v23}];

    v25 = [v8 view];
    [v25 setAutoresizingMask:18];

    [(CACContainerViewController *)self addChildViewController:v8];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v49 = 0x2020000000;
    v50 = 0;
    v26 = [(CACContainerViewController *)self viewControllers];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke;
    v44[3] = &unk_279CEC750;
    v27 = v8;
    v45 = v27;
    v46 = self;
    p_buf = &buf;
    [v26 enumerateObjectsUsingBlock:v44];

    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      v28 = [(CACContainerViewController *)self viewControllers];
      [v28 addObject:v27];

      if (self->_viewAboveContainedViews)
      {
        v29 = [(CACContainerViewController *)self view];
        v30 = [v27 view];
        [v29 insertSubview:v30 belowSubview:self->_viewAboveContainedViews];
      }

      else
      {
        v29 = [(CACContainerViewController *)self view];
        v30 = [v27 view];
        [v29 addSubview:v30];
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke_2;
    aBlock[3] = &unk_279CEB430;
    v31 = v27;
    v41 = v31;
    v42 = self;
    v43 = v9;
    v32 = _Block_copy(aBlock);
    v33 = v32;
    if (v6)
    {
      v34 = [v31 view];
      [v34 setAlpha:0.0];

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

- (void)uninstallViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = CACLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v8;
    _os_log_impl(&dword_26B354000, v10, OS_LOG_TYPE_INFO, "Uninstalling view controller... %@", buf, 0xCu);
  }

  v11 = [(CACContainerViewController *)self viewControllers];
  v12 = [v11 containsObject:v8];

  if (v12)
  {
    [v8 willMoveToParentViewController:0];
    v13 = [(CACContainerViewController *)self viewControllers];
    [v13 removeObject:v8];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke;
    aBlock[3] = &unk_279CEC778;
    v14 = v8;
    v24 = v14;
    v25 = v9;
    v26 = v6;
    v15 = _Block_copy(aBlock);
    v16 = v15;
    if (v6)
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
      v28 = v8;
      _os_log_impl(&dword_26B354000, v18, OS_LOG_TYPE_DEFAULT, "Attempted to uninstall overlay view controller that was not installed: %@", buf, 0xCu);
    }

    if (v9)
    {
      v9[2](v9);
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