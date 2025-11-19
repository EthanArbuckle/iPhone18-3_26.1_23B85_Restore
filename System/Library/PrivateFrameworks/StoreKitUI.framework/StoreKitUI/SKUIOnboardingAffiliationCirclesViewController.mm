@interface SKUIOnboardingAffiliationCirclesViewController
- (CGSize)_circleSizeForAffinityCount:(int64_t)a3;
- (SKUIOnboardingAffiliationCirclesDelegate)delegate;
- (SKUIOnboardingInstructionsView)instructionsView;
- (double)_circleImageAlphaForAffinityCount:(int64_t)a3;
- (double)_topLayoutMargin;
- (double)maximumCircleDiameter;
- (id)circlesView:(id)a3 circleForIndex:(int64_t)a4;
- (void)_cancelDeletionTimer;
- (void)_completeDeletionForCircleAtIndex:(int64_t)a3;
- (void)_reloadRepellors;
- (void)_sendAffilationItemsDidChange;
- (void)addAffiliationItems:(id)a3;
- (void)circleView:(id)a3 didBeginLongPressForCircleAtIndex:(int64_t)a4;
- (void)circleView:(id)a3 didEndLongPressForCircleAtIndex:(int64_t)a4;
- (void)circleView:(id)a3 didTapCircleAtIndex:(int64_t)a4;
- (void)dealloc;
- (void)loadView;
- (void)performFinishAnimationWithCompletionBlock:(id)a3;
- (void)removeAffiliationItemsInIndexSet:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)resetWithAffiliationItems:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)setAffiliationItems:(id)a3;
- (void)setFooterView:(id)a3 animated:(BOOL)a4;
- (void)setImage:(id)a3 forAffiliationItem:(id)a4;
- (void)setUserAffinityCount:(int64_t)a3 forAffiliationItemAtIndex:(int64_t)a4 animated:(BOOL)a5 completionBlock:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SKUIOnboardingAffiliationCirclesViewController

- (void)dealloc
{
  deletionTimer = self->_deletionTimer;
  if (deletionTimer)
  {
    dispatch_source_cancel(deletionTimer);
  }

  [(SKUIPhysicalCirclesView *)self->_circlesView setDataSource:0];
  [(SKUIPhysicalCirclesView *)self->_circlesView setDelegate:0];
  v4.receiver = self;
  v4.super_class = SKUIOnboardingAffiliationCirclesViewController;
  [(SKUIOnboardingAffiliationCirclesViewController *)&v4 dealloc];
}

- (void)addAffiliationItems:(id)a3
{
  affiliationItems = self->_affiliationItems;
  v5 = a3;
  [(NSMutableArray *)affiliationItems addObjectsFromArray:v5];
  circlesView = self->_circlesView;
  v7 = [v5 count];

  [(SKUIPhysicalCirclesView *)circlesView addCirclesWithCount:v7];
}

- (SKUIOnboardingInstructionsView)instructionsView
{
  instructionsView = self->_instructionsView;
  if (!instructionsView)
  {
    v4 = [SKUIOnboardingInstructionsView alloc];
    [(SKUIPhysicalCirclesView *)self->_circlesView bounds];
    v5 = [(SKUIOnboardingInstructionsView *)v4 initWithFrame:?];
    v6 = self->_instructionsView;
    self->_instructionsView = v5;

    [(SKUIOnboardingInstructionsView *)self->_instructionsView setAutoresizingMask:18];
    v7 = self->_instructionsView;
    v8 = [MEMORY[0x277D75348] clearColor];
    [(SKUIOnboardingInstructionsView *)v7 setBackgroundColor:v8];

    [(SKUIOnboardingInstructionsView *)self->_instructionsView setContentPosition:1];
    [(SKUIOnboardingInstructionsView *)self->_instructionsView setUserInteractionEnabled:0];
    instructionsView = self->_instructionsView;
  }

  return instructionsView;
}

- (double)maximumCircleDiameter
{
  v2 = [(SKUIOnboardingAffiliationCirclesViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 1;

  return dbl_215F3EFE0[v3];
}

- (void)performFinishAnimationWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  affiliationItems = self->_affiliationItems;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __92__SKUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke;
  v38[3] = &unk_2781FB0B8;
  v8 = v5;
  v39 = v8;
  v9 = v6;
  v40 = v9;
  [(NSMutableArray *)affiliationItems enumerateObjectsUsingBlock:v38];
  if (self->_didPerformFinishAnimation)
  {
    if (v4)
    {
      v4[2](v4, v9);
    }
  }

  else
  {
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v11 = MEMORY[0x277D75D18];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __92__SKUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_2;
    v37[3] = &unk_2781F80F0;
    v37[4] = self;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __92__SKUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_3;
    v35[3] = &unk_2781F84A0;
    v12 = v10;
    v36 = v12;
    [v11 animateWithDuration:v37 animations:v35 completion:0.25];
    if ([v9 count])
    {
      [(UIView *)self->_footerView frame];
      *&v14 = v14 + v13 * 0.5;
      v15 = floorf(*&v14);
      *&v14 = v17 + v16 * 0.5;
      v18 = floorf(*&v14);
      circlesView = self->_circlesView;
      v20 = [(UIView *)self->_footerView superview];
      [(SKUIPhysicalCirclesView *)circlesView convertPoint:v20 fromView:v15, v18];
      v22 = v21;
      v24 = v23;

      dispatch_group_enter(v12);
      v25 = self->_circlesView;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __92__SKUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_4;
      v33[3] = &unk_2781F84A0;
      v34 = v12;
      [(SKUIPhysicalCirclesView *)v25 removeCirclesInIndexSet:v8 byAnimatingToPoint:v33 delay:v22 completionBlock:v24, 0.25];
    }

    dispatch_group_enter(v12);
    v26 = self->_circlesView;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __92__SKUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_5;
    v31[3] = &unk_2781F84A0;
    v32 = v12;
    v27 = v12;
    [(SKUIPhysicalCirclesView *)v26 removeAllCirclesAnimated:1 completionBlock:v31];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__SKUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_6;
    block[3] = &unk_2781F9B48;
    v30 = v4;
    v29 = v9;
    dispatch_group_notify(v27, MEMORY[0x277D85CD0], block);
    self->_didPerformFinishAnimation = 1;
  }
}

void __92__SKUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 userAffinityCount] >= 1)
  {
    [*(a1 + 32) addIndex:a3];
    [*(a1 + 40) addObject:v5];
  }
}

uint64_t __92__SKUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)removeAffiliationItemsInIndexSet:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  affiliationItems = self->_affiliationItems;
  v9 = a5;
  v10 = a3;
  [(NSMutableArray *)affiliationItems removeObjectsAtIndexes:v10];
  [(SKUIPhysicalCirclesView *)self->_circlesView removeCirclesInIndexSet:v10 animated:v5 completionBlock:v9];
}

- (void)resetWithAffiliationItems:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self->_didPerformFinishAnimation)
  {
    if (v9)
    {
      (*(v9 + 2))(v9, 1);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    circlesView = self->_circlesView;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __101__SKUIOnboardingAffiliationCirclesViewController_resetWithAffiliationItems_animated_completionBlock___block_invoke;
    v12[3] = &unk_2781FB0E0;
    objc_copyWeak(&v15, &location);
    v13 = v8;
    v14 = v10;
    [(SKUIPhysicalCirclesView *)circlesView removeAllCirclesAnimated:v6 completionBlock:v12];
    self->_didPerformFinishAnimation = 1;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

uint64_t __101__SKUIOnboardingAffiliationCirclesViewController_resetWithAffiliationItems_animated_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  [WeakRetained setAffiliationItems:v4];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)setAffiliationItems:(id)a3
{
  v4 = a3;
  affiliationItems = self->_affiliationItems;
  if (affiliationItems != v4)
  {
    v6 = v4;
    if (v4)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4 copyItems:1];
      affiliationItems = self->_affiliationItems;
    }

    self->_affiliationItems = v4;

    [(SKUIPhysicalCirclesView *)self->_circlesView reloadData];
    self->_didPerformFinishAnimation = 0;
    v4 = v6;
  }
}

- (void)setFooterView:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  footerView = self->_footerView;
  v9 = v6;
  if (footerView != v6)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, a3);
    if (self->_footerView)
    {
      v8 = [(SKUIOnboardingAffiliationCirclesViewController *)self view];
      [v8 addSubview:self->_footerView];
      [v8 setNeedsLayout];
    }
  }
}

- (void)setImage:(id)a3 forAffiliationItem:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->_affiliationItems indexOfObject:v6];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(SKUIPhysicalCirclesView *)self->_circlesView circleViewAtIndex:v7];
    [v8 setBackgroundImage:v12];
    images = self->_images;
    if (v12)
    {
      if (!images)
      {
        v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
        v11 = self->_images;
        self->_images = v10;

        images = self->_images;
      }

      [NSMapTable setObject:"setObject:forKey:" forKey:?];
    }

    else
    {
      [(NSMapTable *)images removeObjectForKey:v6];
    }
  }
}

- (void)setUserAffinityCount:(int64_t)a3 forAffiliationItemAtIndex:(int64_t)a4 animated:(BOOL)a5 completionBlock:(id)a6
{
  v10 = a6;
  v11 = [(NSMutableArray *)self->_affiliationItems objectAtIndex:a4];
  [v11 setUserAffinityCount:a3];
  [(SKUIOnboardingAffiliationCirclesViewController *)self _circleSizeForAffinityCount:a3];
  v13 = v12;
  v15 = v14;
  [(SKUIPhysicalCirclesView *)self->_circlesView setSize:a4 forCircleAtIndex:?];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__SKUIOnboardingAffiliationCirclesViewController_setUserAffinityCount_forAffiliationItemAtIndex_animated_completionBlock___block_invoke;
  aBlock[3] = &unk_2781FB108;
  aBlock[4] = self;
  aBlock[5] = a4;
  aBlock[6] = v13;
  aBlock[7] = v15;
  aBlock[8] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v16;
  if (a5)
  {
    v18 = +[SKUISimpleAnimationFactory backOutTimingFunction];
    v19 = [SKUISimpleAnimationFactory factoryWithTimingFunction:v18];

    v20 = MEMORY[0x277D75D18];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __122__SKUIOnboardingAffiliationCirclesViewController_setUserAffinityCount_forAffiliationItemAtIndex_animated_completionBlock___block_invoke_2;
    v21[3] = &unk_2781F85B8;
    v22 = v10;
    [v20 _animateWithDuration:0 delay:v19 options:v17 factory:v21 animations:0.3 completion:0.1];
  }

  else
  {
    (*(v16 + 2))(v16);
  }
}

void __122__SKUIOnboardingAffiliationCirclesViewController_setUserAffinityCount_forAffiliationItemAtIndex_animated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) circleViewAtIndex:*(a1 + 40)];
  [v2 bounds];
  [v2 setBounds:?];
  [v2 setTitlePosition:{objc_msgSend(*(a1 + 32), "_titlePositionForAffinityCount:", *(a1 + 64))}];
  [*(a1 + 32) _circleImageAlphaForAffinityCount:*(a1 + 64)];
  [v2 setBackgroundImageAlpha:?];
  [v2 layoutIfNeeded];
  [v2 setNeedsDisplay];
}

uint64_t __122__SKUIOnboardingAffiliationCirclesViewController_setUserAffinityCount_forAffiliationItemAtIndex_animated_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadView
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIOnboardingAffiliationCirclesViewController loadView]";
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIOnboardingAffiliationCirclesViewController viewDidAppear:];
  }

  [(SKUIOnboardingAffiliationCirclesViewController *)self _reloadRepellors];
  [(SKUIPhysicalCirclesView *)self->_circlesView startPhysics];
  self->_didPerformFinishAnimation = 0;
  if (self->_needsReloadOnDidAppear)
  {
    [(SKUIPhysicalCirclesView *)self->_circlesView reloadData];
    self->_needsReloadOnDidAppear = 0;
  }

  v5.receiver = self;
  v5.super_class = SKUIOnboardingAffiliationCirclesViewController;
  [(SKUIOnboardingAffiliationCirclesViewController *)&v5 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(SKUIPhysicalCirclesView *)self->_circlesView stopPhysics];
  v5.receiver = self;
  v5.super_class = SKUIOnboardingAffiliationCirclesViewController;
  [(SKUIOnboardingAffiliationCirclesViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SKUIOnboardingAffiliationCirclesViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(SKUIOnboardingAffiliationCirclesViewController *)self _topLayoutMargin];
  v9 = v8;
  footerView = self->_footerView;
  if (footerView)
  {
    [(UIView *)footerView frame];
    [(UIView *)self->_footerView sizeThatFits:v5, 1.79769313e308];
    v12 = v11;
    v14 = fmax(v13, 375.0);
    if (v5 >= 375.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v5;
    }

    v16 = (v5 - v15) * 0.5;
    v17 = floorf(v16);
    v18 = v7 + -20.0 - v11;
    v19 = self->_footerView;
    v21 = CGRectIntegral(*(&v12 - 3));
    [(UIView *)v19 setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
  }

  [(SKUIOnboardingInstructionsView *)self->_instructionsView setContentInset:v9, 20.0, 20.0, 20.0];
  [(SKUIOnboardingAffiliationCirclesViewController *)self _reloadRepellors];
  v20.receiver = self;
  v20.super_class = SKUIOnboardingAffiliationCirclesViewController;
  [(SKUIOnboardingAffiliationCirclesViewController *)&v20 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SKUIOnboardingInstructionsView *)self->_instructionsView setAlpha:1.0];
  v5.receiver = self;
  v5.super_class = SKUIOnboardingAffiliationCirclesViewController;
  [(SKUIOnboardingAffiliationCirclesViewController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIOnboardingAffiliationCirclesViewController *)self transitionCoordinator];

  self->_needsReloadOnDidAppear = v5 != 0;
  v6.receiver = self;
  v6.super_class = SKUIOnboardingAffiliationCirclesViewController;
  [(SKUIOnboardingAffiliationCirclesViewController *)&v6 viewWillDisappear:v3];
}

- (id)circlesView:(id)a3 circleForIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_affiliationItems objectAtIndex:a4];
  v8 = [v7 userAffinityCount];
  [(SKUIOnboardingAffiliationCirclesViewController *)self _circleSizeForAffinityCount:v8];
  v11 = [[SKUIOnboardingCircleView alloc] initWithFrame:0.0, 0.0, v9, v10];
  v12 = [MEMORY[0x277D75348] clearColor];
  [(SKUIOnboardingCircleView *)v11 setBackgroundColor:v12];

  [(SKUIOnboardingCircleView *)v11 setEdgeInsets:1.0, 1.0, 1.0, 1.0];
  [(SKUIOnboardingAffiliationCirclesViewController *)self _circleSizeForAffinityCount:0];
  [(SKUIOnboardingCircleView *)v11 setMinimumDiameter:?];
  [(SKUIOnboardingCircleView *)v11 setTitlePosition:[(SKUIOnboardingAffiliationCirclesViewController *)self _titlePositionForAffinityCount:v8]];
  v13 = [v7 fillColor];
  if (v13)
  {
    [(SKUIOnboardingCircleView *)v11 setFillColor:v13];
  }

  else
  {
    v14 = [v6 tintColor];
    [(SKUIOnboardingCircleView *)v11 setFillColor:v14];
  }

  [(SKUIOnboardingAffiliationCirclesViewController *)self _circleImageAlphaForAffinityCount:v8];
  [(SKUIOnboardingCircleView *)v11 setBackgroundImageAlpha:?];
  v15 = [(NSMapTable *)self->_images objectForKey:v7];
  [(SKUIOnboardingCircleView *)v11 setBackgroundImage:v15];

  v16 = [(SKUIOnboardingCircleView *)v11 titleLabel];
  v17 = [v7 title];
  [v16 setText:v17];

  return v11;
}

- (void)circleView:(id)a3 didBeginLongPressForCircleAtIndex:(int64_t)a4
{
  [(SKUIOnboardingAffiliationCirclesViewController *)self _cancelDeletionTimer];
  v6 = self->_instructionsView;
  [(SKUIOnboardingInstructionsView *)v6 pushLabelState];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  deletionTimer = self->_deletionTimer;
  self->_deletionTimer = v7;

  dispatch_source_set_timer(self->_deletionTimer, 0, 0x3B9ACA00uLL, 0);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 2;
  objc_initWeak(&location, self);
  v9 = self->_deletionTimer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__SKUIOnboardingAffiliationCirclesViewController_circleView_didBeginLongPressForCircleAtIndex___block_invoke;
  v11[3] = &unk_2781FB130;
  v13 = v16;
  objc_copyWeak(v14, &location);
  v14[1] = a4;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_source_set_event_handler(v9, v11);
  dispatch_resume(self->_deletionTimer);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(v16, 8);
}

void __95__SKUIOnboardingAffiliationCirclesViewController_circleView_didBeginLongPressForCircleAtIndex___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    WeakRetained = objc_alloc_init(MEMORY[0x277CCABB8]);
    [WeakRetained setNumberStyle:1];
    v2 = *(*(a1 + 32) + 1008);
    if (v2)
    {
      [v2 localizedStringForKey:@"REMOVE_ITEM_%@" inTable:@"Onboarding"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REMOVE_ITEM_%@" inBundles:0 inTable:@"Onboarding"];
    }
    v3 = ;
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*(a1 + 48) + 8) + 24)];
    v6 = [WeakRetained stringFromNumber:v5];
    v7 = [v4 stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:0, v6];

    v8 = [*(a1 + 40) titleLabel];
    v9 = [objc_opt_class() titleAttributedStringWithString:v7];
    [v8 setAttributedText:v9];

    [*(a1 + 40) setNeedsLayout];
    --*(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _completeDeletionForCircleAtIndex:*(a1 + 64)];
  }
}

- (void)circleView:(id)a3 didEndLongPressForCircleAtIndex:(int64_t)a4
{
  [(SKUIOnboardingInstructionsView *)self->_instructionsView popLabelState:a3];
  v5 = [(SKUIOnboardingAffiliationCirclesViewController *)self view];
  [v5 setNeedsLayout];

  [(SKUIOnboardingAffiliationCirclesViewController *)self _cancelDeletionTimer];
}

- (void)circleView:(id)a3 didTapCircleAtIndex:(int64_t)a4
{
  v9 = [(SKUIOnboardingAffiliationCirclesViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();
  v7 = [(NSMutableArray *)self->_affiliationItems objectAtIndex:a4];
  v8 = v7;
  if (v6)
  {
    [v9 onboardingCircles:self didSelectAffiliationItem:v7 atIndex:a4];
  }

  else
  {
    -[SKUIOnboardingAffiliationCirclesViewController setUserAffinityCount:forAffiliationItemAtIndex:animated:completionBlock:](self, "setUserAffinityCount:forAffiliationItemAtIndex:animated:completionBlock:", ([v7 userAffinityCount] + 1) % 3, a4, 1, 0);
    [(SKUIOnboardingAffiliationCirclesViewController *)self _reloadRepellors];
    [(SKUIOnboardingAffiliationCirclesViewController *)self _sendAffilationItemsDidChange];
  }
}

- (void)_cancelDeletionTimer
{
  deletionTimer = self->_deletionTimer;
  if (deletionTimer)
  {
    dispatch_source_cancel(deletionTimer);
    v4 = self->_deletionTimer;
    self->_deletionTimer = 0;
  }
}

- (double)_circleImageAlphaForAffinityCount:(int64_t)a3
{
  result = 0.0;
  if (a3 == 1)
  {
    result = 0.5;
  }

  if (a3 == 2)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)_circleSizeForAffinityCount:(int64_t)a3
{
  v4 = [(SKUIOnboardingAffiliationCirclesViewController *)self traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    if (a3 == 2)
    {
      v6 = 180.0;
      goto LABEL_11;
    }

    if (a3 != 1)
    {
      v6 = 120.0;
      goto LABEL_11;
    }

LABEL_8:
    v6 = 150.0;
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v6 = 110.0;
  }

  else
  {
    v6 = 78.0;
  }

LABEL_11:
  v7 = v6;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_completeDeletionForCircleAtIndex:(int64_t)a3
{
  v7 = [(NSMutableArray *)self->_affiliationItems objectAtIndex:?];
  [(NSMapTable *)self->_images removeObjectForKey:?];
  [(NSMutableArray *)self->_affiliationItems removeObjectAtIndex:a3];
  [(SKUIPhysicalCirclesView *)self->_circlesView removeCircleAtIndex:a3 animated:1 completionBlock:0];
  [(SKUIOnboardingInstructionsView *)self->_instructionsView popLabelState];
  v5 = [(SKUIOnboardingAffiliationCirclesViewController *)self view];
  [v5 setNeedsLayout];

  [(SKUIOnboardingAffiliationCirclesViewController *)self _cancelDeletionTimer];
  v6 = [(SKUIOnboardingAffiliationCirclesViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 onboardingCircles:self didRemoveAffiliationItem:v7];
  }

  [(SKUIOnboardingAffiliationCirclesViewController *)self _sendAffilationItemsDidChange];
}

- (void)_reloadRepellors
{
  [(SKUIPhysicalCirclesView *)self->_circlesView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIPhysicalCirclesView *)self->_circlesView removeAllRepellors];
  footerView = self->_footerView;
  if (footerView)
  {
    [(UIView *)footerView frame];
    if (v12 > 0.00000011920929)
    {
      v13 = v12;
      v37.origin.x = v4;
      v37.origin.y = v6;
      v37.size.width = v8;
      v37.size.height = v10;
      v14 = floor(CGRectGetWidth(v37) * 0.5);
      v38.origin.x = v4;
      v38.origin.y = v6;
      v38.size.width = v8;
      v38.size.height = v10;
      Height = CGRectGetHeight(v38);
      v16 = [(SKUIOnboardingAffiliationCirclesViewController *)self bottomLayoutGuide];
      [v16 length];
      v18 = Height - v17 + 90.0;

      v19 = [(SKUIPhysicalCirclesView *)self->_circlesView addRepellorWithCenter:v14 radius:v18 bufferSize:ceil(v13 * 0.600000024), 20.0];
    }
  }

  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  v35 = ceil(CGRectGetWidth(v39) * 1.79999995);
  v20 = [(SKUIOnboardingInstructionsView *)self->_instructionsView explanationLabel];
  [v20 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  rect = v10;
  v27 = v4;
  v29 = v28;

  v40.origin.x = v22;
  v40.origin.y = v24;
  v40.size.width = v26;
  v40.size.height = v29;
  Width = CGRectGetWidth(v40);
  *&Width = v35 * v35 - Width * 0.5 * (Width * 0.5);
  v31 = v8;
  v32 = sqrtf(*&Width);
  v41.origin.x = v22;
  v41.origin.y = v24;
  v41.size.width = v26;
  v41.size.height = v29;
  v33 = CGRectGetMaxY(v41) - v32;
  v42.origin.x = v27;
  v42.origin.y = v6;
  v42.size.width = v31;
  v42.size.height = rect;
  v34 = [(SKUIPhysicalCirclesView *)self->_circlesView addRepellorWithCenter:floor(CGRectGetWidth(v42) * 0.5) radius:v33 bufferSize:v35, 20.0];
}

- (void)_sendAffilationItemsDidChange
{
  v3 = [(SKUIOnboardingAffiliationCirclesViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 onboardingCirclesDidChangeAffiliationItems:self];
  }
}

- (double)_topLayoutMargin
{
  v2 = [(SKUIOnboardingAffiliationCirclesViewController *)self navigationController];
  v3 = 13.0;
  if (v2)
  {
    v4 = [SKUINavigationControllerAssistant existingAssistantForNavigationController:v2];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 hidesShadow];

      if (v6)
      {
        v3 = 0.0;
      }

      else
      {
        v3 = 13.0;
      }
    }
  }

  return v3;
}

- (SKUIOnboardingAffiliationCirclesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewDidAppear:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIOnboardingAffiliationCirclesViewController viewDidAppear:]";
}

@end