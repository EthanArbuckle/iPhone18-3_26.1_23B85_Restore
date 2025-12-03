@interface SBFluidSwitcherModifierTimelineViewController
- (void)_reset:(id)_reset;
- (void)_toggleNoiseLevel:(id)level;
- (void)_togglePause:(id)pause;
- (void)addEntry:(id)entry;
- (void)didSelectEntryView:(id)view;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation SBFluidSwitcherModifierTimelineViewController

- (void)loadView
{
  v27 = objc_alloc_init(MEMORY[0x277D65F80]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  entryViews = self->_entryViews;
  self->_entryViews = v3;

  v5 = objc_alloc(MEMORY[0x277D65F78]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  scrollView = self->_scrollView;
  self->_scrollView = v6;

  [(SBFTouchPassThroughScrollView *)self->_scrollView setScrollEnabled:1];
  [(SBFTouchPassThroughScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [v27 addSubview:self->_scrollView];
  [v27 setClipsToBounds:0];
  [(SBFTouchPassThroughScrollView *)self->_scrollView setClipsToBounds:0];
  v8 = [MEMORY[0x277D75220] buttonWithType:1];
  clearButton = self->_clearButton;
  self->_clearButton = v8;

  [(UIButton *)self->_clearButton setTitle:@"Clear" forState:0];
  [(UIButton *)self->_clearButton addTarget:self action:sel__reset_ forControlEvents:64];
  titleLabel = [(UIButton *)self->_clearButton titleLabel];
  v11 = *MEMORY[0x277D743F8];
  v12 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D743F8]];
  [titleLabel setFont:v12];

  [(UIButton *)self->_clearButton sizeToFit];
  [v27 addSubview:self->_clearButton];
  self->_ignoreNoisyEvents = 1;
  v13 = [MEMORY[0x277D75220] buttonWithType:1];
  noiseLevelButton = self->_noiseLevelButton;
  self->_noiseLevelButton = v13;

  [(UIButton *)self->_noiseLevelButton setTitle:@"Show All Events" forState:0];
  [(UIButton *)self->_noiseLevelButton addTarget:self action:sel__toggleNoiseLevel_ forControlEvents:64];
  titleLabel2 = [(UIButton *)self->_noiseLevelButton titleLabel];
  v16 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:v11];
  [titleLabel2 setFont:v16];

  [(UIButton *)self->_noiseLevelButton sizeToFit];
  [v27 addSubview:self->_noiseLevelButton];
  self->_isPaused = 0;
  v17 = [MEMORY[0x277D75220] buttonWithType:1];
  pauseButton = self->_pauseButton;
  self->_pauseButton = v17;

  [(UIButton *)self->_pauseButton setTitle:@"Pause" forState:0];
  [(UIButton *)self->_pauseButton addTarget:self action:sel__togglePause_ forControlEvents:64];
  titleLabel3 = [(UIButton *)self->_pauseButton titleLabel];
  v20 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:v11];
  [titleLabel3 setFont:v20];

  [(UIButton *)self->_pauseButton sizeToFit];
  [v27 addSubview:self->_pauseButton];
  v21 = [[SBModifierTimelineDetailViewController alloc] initWithNibName:0 bundle:0];
  detailViewController = self->_detailViewController;
  self->_detailViewController = v21;

  v23 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_detailViewController];
  navigationController = self->_navigationController;
  self->_navigationController = v23;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UINavigationController *)self->_navigationController setModalPresentationStyle:7];
  }

  [(SBFluidSwitcherModifierTimelineViewController *)self setView:v27];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherModifierTimelineViewController;
  [(SBFluidSwitcherModifierTimelineViewController *)&v8 viewDidAppear:appear];
  view = [(SBFluidSwitcherModifierTimelineViewController *)self view];
  window = [view window];
  [window bounds];
  v7 = v6;

  [(SBFTouchPassThroughScrollView *)self->_scrollView setContentInset:0.0, 0.0, 0.0, v7 + -40.0];
}

- (void)addEntry:(id)entry
{
  v41 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if (!self->_isPaused)
  {
    if ([(NSMutableArray *)self->_entryViews count]== 150)
    {
      firstObject = [(NSMutableArray *)self->_entryViews firstObject];
      [firstObject removeFromSuperview];
      [(NSMutableArray *)self->_entryViews removeObject:firstObject];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v6 = self->_entryViews;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v37;
        v10 = 10.0;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v37 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v36 + 1) + 8 * i);
            [v12 frame];
            v14 = v13;
            [v12 frame];
            v16 = v15;
            [v12 frame];
            [v12 setFrame:{v10, v14, v16}];
            [v12 frame];
            v10 = v17 + v18 + 10.0;
          }

          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v8);
      }

      else
      {
        v10 = 10.0;
      }

      [(SBFTouchPassThroughScrollView *)self->_scrollView setContentSize:v10, 0.0];
      scrollView = self->_scrollView;
      [(SBFTouchPassThroughScrollView *)scrollView frame];
      [(SBFTouchPassThroughScrollView *)scrollView setContentOffset:0 animated:v10 - v20, 0.0];
    }

    v21 = [SBFluidSwitcherModifierTimelineEntryView alloc];
    v22 = [(SBFluidSwitcherModifierTimelineEntryView *)v21 initWithFrame:entryCopy entry:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(SBFluidSwitcherModifierTimelineEntryView *)v22 setDelegate:self];
    [(SBFTouchPassThroughScrollView *)self->_scrollView addSubview:v22];
    [(SBFluidSwitcherModifierTimelineEntryView *)v22 setNeedsLayout];
    [(SBFluidSwitcherModifierTimelineEntryView *)v22 layoutIfNeeded];
    v23 = 10.0;
    if ([(NSMutableArray *)self->_entryViews count])
    {
      lastObject = [(NSMutableArray *)self->_entryViews lastObject];
      [lastObject frame];
      v26 = v25;
      [lastObject frame];
      v23 = v26 + v27 + 10.0;
    }

    [(SBFluidSwitcherModifierTimelineEntryView *)v22 frame];
    v29 = v28;
    [(SBFluidSwitcherModifierTimelineEntryView *)v22 frame];
    [(SBFluidSwitcherModifierTimelineEntryView *)v22 setFrame:v23, 35.0, v29];
    [(NSMutableArray *)self->_entryViews addObject:v22];
    [(SBFluidSwitcherModifierTimelineEntryView *)v22 frame];
    v30 = CGRectGetMaxX(v42) + 10.0;
    [(SBFTouchPassThroughScrollView *)self->_scrollView setContentSize:v30, 0.0];
    view = [(SBFluidSwitcherModifierTimelineViewController *)self view];
    [view frame];
    v33 = v32;

    if (v30 > v33)
    {
      v34 = self->_scrollView;
      [(SBFTouchPassThroughScrollView *)v34 frame];
      [(SBFTouchPassThroughScrollView *)v34 setContentOffset:1 animated:v30 - v35, 0.0];
    }
  }
}

- (void)didSelectEntryView:(id)view
{
  viewCopy = view;
  v4 = [(UINavigationController *)self->_navigationController popToRootViewControllerAnimated:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    popoverPresentationController = [(UINavigationController *)self->_navigationController popoverPresentationController];
    [popoverPresentationController setSourceView:viewCopy];

    popoverPresentationController2 = [(UINavigationController *)self->_navigationController popoverPresentationController];
    [viewCopy frame];
    [popoverPresentationController2 setSourceRect:{v9 * 0.5, 35.0, 1.0, 1.0}];

    [(UINavigationController *)self->_navigationController setPreferredContentSize:600.0, 1.79769313e308];
  }

  detailViewController = self->_detailViewController;
  entry = [viewCopy entry];
  [(SBModifierTimelineDetailViewController *)detailViewController setEntry:entry];

  v12 = self->_detailViewController;
  entry2 = [viewCopy entry];
  eventSnapshot = [entry2 eventSnapshot];
  eventName = [eventSnapshot eventName];
  [(SBModifierTimelineDetailViewController *)v12 setTitle:eventName];

  [(SBFluidSwitcherModifierTimelineViewController *)self presentViewController:self->_navigationController animated:1 completion:0];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = SBFluidSwitcherModifierTimelineViewController;
  [(SBFluidSwitcherModifierTimelineViewController *)&v19 viewWillLayoutSubviews];
  scrollView = self->_scrollView;
  view = [(SBFluidSwitcherModifierTimelineViewController *)self view];
  [view bounds];
  [(SBFTouchPassThroughScrollView *)scrollView setFrame:?];

  [(UIButton *)self->_clearButton frame];
  v6 = v5;
  [(UIButton *)self->_clearButton frame];
  v8 = v7;
  [(UIButton *)self->_clearButton setFrame:10.0, 5.0, v6];
  v20.origin.x = 10.0;
  v20.origin.y = 5.0;
  v20.size.width = v6;
  v20.size.height = v8;
  v9 = CGRectGetMaxX(v20) + 20.0;
  v21.origin.x = 10.0;
  v21.origin.y = 5.0;
  v21.size.width = v6;
  v21.size.height = v8;
  MinY = CGRectGetMinY(v21);
  [(UIButton *)self->_noiseLevelButton frame];
  v12 = v11;
  [(UIButton *)self->_noiseLevelButton frame];
  v14 = v13;
  [(UIButton *)self->_noiseLevelButton setFrame:v9, MinY, v12];
  v22.origin.x = v9;
  v22.origin.y = MinY;
  v22.size.width = v12;
  v22.size.height = v14;
  v15 = CGRectGetMaxX(v22) + 20.0;
  v23.origin.x = v9;
  v23.origin.y = MinY;
  v23.size.width = v12;
  v23.size.height = v14;
  v16 = CGRectGetMinY(v23);
  [(UIButton *)self->_pauseButton frame];
  v18 = v17;
  [(UIButton *)self->_pauseButton frame];
  [(UIButton *)self->_pauseButton setFrame:v15, v16, v18];
}

- (void)_reset:(id)_reset
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_entryViews;
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

        [*(*(&v9 + 1) + 8 * v8++) removeFromSuperview];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_entryViews removeAllObjects];
  [(SBFTouchPassThroughScrollView *)self->_scrollView setContentSize:0.0, 0.0];
  [(SBFTouchPassThroughScrollView *)self->_scrollView setContentOffset:0.0, 0.0];
}

- (void)_toggleNoiseLevel:(id)level
{
  ignoreNoisyEvents = self->_ignoreNoisyEvents;
  self->_ignoreNoisyEvents = !ignoreNoisyEvents;
  noiseLevelButton = self->_noiseLevelButton;
  if (ignoreNoisyEvents)
  {
    v6 = @"Ignore Noisy Events";
  }

  else
  {
    v6 = @"Show All Events";
  }

  [(UIButton *)noiseLevelButton setTitle:v6 forState:0];
  [(UIButton *)self->_noiseLevelButton sizeToFit];
  view = [(SBFluidSwitcherModifierTimelineViewController *)self view];
  [view setNeedsLayout];
}

- (void)_togglePause:(id)pause
{
  isPaused = self->_isPaused;
  self->_isPaused = !isPaused;
  pauseButton = self->_pauseButton;
  if (isPaused)
  {
    v6 = @"Pause";
  }

  else
  {
    v6 = @"Resume";
  }

  [(UIButton *)pauseButton setTitle:v6 forState:0];
  [(UIButton *)self->_pauseButton sizeToFit];
  view = [(SBFluidSwitcherModifierTimelineViewController *)self view];
  [view setNeedsLayout];
}

@end