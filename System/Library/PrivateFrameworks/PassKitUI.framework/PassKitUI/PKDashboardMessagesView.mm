@interface PKDashboardMessagesView
- (BOOL)isActionPresentedAsButtonCellForMessage:(id)message;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardMessagesView)initWithFrame:(CGRect)frame;
- (PKDashboardMessagesView)initWithInsets:(UIEdgeInsets)insets;
- (PKDashboardMessagesViewDelegate)delegate;
- (double)_actionCellHeightForSize:(CGSize)size;
- (double)_maxHeightForSize:(CGSize)size;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_messageForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureActionCell:(id)cell withMessage:(id)message;
- (void)_configureMessageCell:(id)cell withMessage:(id)message leftContentInset:(double)inset;
- (void)_pageControlChanged:(id)changed;
- (void)_reportCurrentMessageViewed;
- (void)_switchPrimaryIndexToIndex:(unint64_t)index;
- (void)_updateSizeCacheIfNecessary;
- (void)layoutSubviews;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateWithMessages:(id)messages currentIndex:(unint64_t)index;
@end

@implementation PKDashboardMessagesView

- (PKDashboardMessagesView)initWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v7 = [(PKDashboardMessagesView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_insets.top = top;
    v7->_insets.left = left;
    v7->_insets.bottom = bottom;
    v7->_insets.right = right;
    [(UIScrollView *)v7->_scrollView setContentInset:top, left, bottom, right];
  }

  return v8;
}

- (PKDashboardMessagesView)initWithFrame:(CGRect)frame
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PKDashboardMessagesView;
  v3 = [(PKDashboardMessagesView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_primaryIndex = 0x7FFFFFFFFFFFFFFFLL;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    v4->_insets.top = 0.0;
    v4->_insets.left = v5;
    v4->_insets.bottom = 0.0;
    v4->_insets.right = v5;
    v6 = objc_alloc(MEMORY[0x1E69DCEF8]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    scrollView = v4->_scrollView;
    v4->_scrollView = v11;

    [(UIScrollView *)v4->_scrollView setDelegate:v4];
    [(UIScrollView *)v4->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v4->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v4->_scrollView setDirectionalLockEnabled:1];
    [(UIScrollView *)v4->_scrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [(UIScrollView *)v4->_scrollView setContentInset:v4->_insets.top, v4->_insets.left, v4->_insets.bottom, v4->_insets.right];
    [(PKDashboardMessagesView *)v4 addSubview:v4->_scrollView];
    v13 = [objc_alloc(MEMORY[0x1E69DCD10]) initWithFrame:{v7, v8, v9, v10}];
    pageControl = v4->_pageControl;
    v4->_pageControl = v13;

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIPageControl *)v4->_pageControl setCurrentPageIndicatorTintColor:labelColor];
    v16 = v4->_pageControl;
    v17 = [labelColor colorWithAlphaComponent:0.3];
    [(UIPageControl *)v16 setPageIndicatorTintColor:v17];

    layer = [(UIPageControl *)v4->_pageControl layer];
    [layer setOpacity:0.0];

    [(UIPageControl *)v4->_pageControl addTarget:v4 action:sel__pageControlChanged_ forControlEvents:4096];
    [(PKDashboardMessagesView *)v4 addSubview:v4->_pageControl];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tablesViews = v4->_tablesViews;
    v4->_tablesViews = v19;

    v4->_maxTableViewHeight = 0.0;
    v21 = [[PKDashboardMessageActionCell alloc] initWithStyle:0 reuseIdentifier:@"actionCellIdentifier"];
    sampleButtonCell = v4->_sampleButtonCell;
    v4->_sampleButtonCell = v21;

    v23 = [[PKDashboardMessageCell alloc] initWithStyle:0 reuseIdentifier:@"messageCellIdentifier"];
    sampleMessageCell = v4->_sampleMessageCell;
    v4->_sampleMessageCell = v23;

    v25 = [[PKAMSEnagementMessageCell alloc] initWithStyle:0 reuseIdentifier:@"engagementCellIdentifier"];
    sampleEngagementCell = v4->_sampleEngagementCell;
    v4->_sampleEngagementCell = v25;

    v31[0] = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v28 = [(PKDashboardMessagesView *)v4 registerForTraitChanges:v27 withHandler:&__block_literal_global_349];

    [(PKDashboardMessagesView *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9690]];
  }

  return v4;
}

uint64_t __41__PKDashboardMessagesView_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  a2[65] = 0;
  a2[66] = 0;
  a2[64] = 0;
  return [a2 setNeedsLayout];
}

- (void)layoutSubviews
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = PKDashboardMessagesView;
  [(PKDashboardMessagesView *)&v31 layoutSubviews];
  [(PKDashboardMessagesView *)self bounds];
  v25 = v4;
  v26 = v3;
  v6 = v5;
  v8 = v7;
  self->_currentWidth = v5;
  v9 = self->_insets.left + self->_insets.right;
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_messages;
  v11 = [(NSOrderedSet *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        tablesViews = self->_tablesViews;
        identifier = [*(*(&v27 + 1) + 8 * i) identifier];
        v18 = [(NSMutableDictionary *)tablesViews objectForKey:identifier];

        [v18 reloadData];
        v19 = v8 - self->_insets.top - self->_insets.bottom;
        if ([(NSOrderedSet *)self->_messages count]<= 1)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = 39.0;
        }

        [v18 setFrame:{v14, 0.0, v6 - v9, v19 - v20}];
        v14 = v6 - (v9 + -10.0) + v14;
      }

      v12 = [(NSOrderedSet *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  objc_autoreleasePoolPop(context);
  v21 = [(NSOrderedSet *)self->_messages count];
  scrollView = self->_scrollView;
  if (v21 < 2)
  {
    [(UIScrollView *)scrollView setFrame:v26, v25, v6, v8];
    [(UIScrollView *)self->_scrollView setContentSize:v9 + -10.0 + v14, v8];
    v23 = v25 + v8;
  }

  else
  {
    [(UIScrollView *)scrollView setFrame:v26, v25, v6, v8 + -39.0];
    [(UIScrollView *)self->_scrollView setContentSize:v9 + -10.0 + v14, v8 + -39.0];
    v23 = v25 + v8 + -44.0;
  }

  [(UIPageControl *)self->_pageControl setFrame:v26, v23, v6, 44.0, context];
  [(PKDashboardMessagesView *)self _updateSizeCacheIfNecessary];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKDashboardMessagesView *)self _maxHeightForSize:fits.width, fits.height];
  v6 = v5;
  if ([(NSOrderedSet *)self->_messages count]<= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 39.0;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)_updateSizeCacheIfNecessary
{
  [(PKDashboardMessagesView *)self bounds];
  if (self->_widthForLastSizeCache != v3)
  {
    v4 = v3;
    self->_widthForLastSizeCache = v3;
    [(PKDashboardMessagesView *)self _actionCellHeightForSize:v3, 1.79769313e308];
    self->_actionCellHeight = v5;
    [(PKDashboardMessagesView *)self _maxHeightForSize:v4, 1.79769313e308];
    self->_maxTableViewHeight = v6;
  }
}

- (double)_actionCellHeightForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v21 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_messages;
  v8 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([(PKDashboardMessagesView *)self isActionPresentedAsButtonCellForMessage:v13, v16])
        {
          [(PKDashboardMessagesView *)self _configureActionCell:self->_sampleButtonCell withMessage:v13];
          [(PKDashboardMessageActionCell *)self->_sampleButtonCell sizeThatFits:width, height];
          v9 = v14;
          goto LABEL_11;
        }
      }

      v10 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v6);
  return v9;
}

- (double)_maxHeightForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  left = self->_insets.left;
  v29 = v6;
  right = self->_insets.right;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_messages;
  v9 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = width - (left + right);
    v12 = *v32;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        if ([v16 type] == 2)
        {
          [(PKDashboardMessagesView *)self _configureEngagementCell:self->_sampleEngagementCell withMessage:v16];
        }

        else
        {
          tablesViews = self->_tablesViews;
          identifier = [v16 identifier];
          v19 = [(NSMutableDictionary *)tablesViews objectForKey:identifier];

          sampleMessageCell = self->_sampleMessageCell;
          [v19 separatorInset];
          [(PKDashboardMessagesView *)self _configureMessageCell:sampleMessageCell withMessage:v16 leftContentInset:v21];
        }

        v22 = 0.0;
        if ([(PKDashboardMessagesView *)self isActionPresentedAsButtonCellForMessage:v16])
        {
          if (v13 == 0.0)
          {
            [(PKDashboardMessagesView *)self _configureActionCell:self->_sampleButtonCell withMessage:v16];
            [(PKDashboardMessageActionCell *)self->_sampleButtonCell sizeThatFits:v11, height];
            v13 = v23;
          }

          v22 = v13 + 0.0;
        }

        if ([v16 type] == 2)
        {
          v24 = 36;
        }

        else
        {
          v24 = 35;
        }

        [*(&self->super.super.super.isa + OBJC_IVAR___PKDashboardMessageView__dismissButton[v24]) sizeThatFits:{v11, height}];
        if (v22 + v25 > v14)
        {
          v14 = v22 + v25;
        }
      }

      v10 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v14 = 0.0;
  }

  top = self->_insets.top;
  bottom = self->_insets.bottom;
  objc_autoreleasePoolPop(v29);
  return v14 + top + bottom;
}

- (void)updateWithMessages:(id)messages currentIndex:(unint64_t)index
{
  v59 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  self->_widthForLastSizeCache = 0.0;
  [(PKDashboardMessagesView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v45 = 408;
  objc_storeStrong(&self->_messages, messages);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v16 = messagesCopy;
  v17 = [v16 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v54;
    v20 = *MEMORY[0x1E69DE3D0];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(v16);
        }

        identifier = [*(*(&v53 + 1) + 8 * i) identifier];
        [v15 addObject:identifier];
        v23 = [(NSMutableDictionary *)self->_tablesViews objectForKey:identifier];
        if (!v23)
        {
          v23 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:0 style:{v8, v10, v12, v14}];
          [v23 pkui_setMaskType:3];
          [(UIScrollView *)self->_scrollView addSubview:v23];
          [(NSMutableDictionary *)self->_tablesViews setObject:v23 forKey:identifier];
          [v23 setScrollEnabled:0];
          [v23 setDelegate:self];
          [v23 setDataSource:self];
          secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
          [v23 setBackgroundColor:secondarySystemGroupedBackgroundColor];

          [v23 setRowHeight:v20];
          [v23 setEstimatedRowHeight:60.0];
          [v23 setContentInsetAdjustmentBehavior:2];
          [v23 registerClass:objc_opt_class() forCellReuseIdentifier:@"messageCellIdentifier"];
          [v23 registerClass:objc_opt_class() forCellReuseIdentifier:@"actionCellIdentifier"];
          [v23 registerClass:objc_opt_class() forCellReuseIdentifier:@"engagementCellIdentifier"];
          [v23 _setDrawsSeparatorAtTopOfSections:0];
        }

        [v23 reloadData];
      }

      v18 = [v16 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v18);
  }

  allKeys = [(NSMutableDictionary *)self->_tablesViews allKeys];
  v26 = MEMORY[0x1E696AE18];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __59__PKDashboardMessagesView_updateWithMessages_currentIndex___block_invoke;
  v51[3] = &unk_1E8016658;
  v27 = v15;
  v52 = v27;
  v28 = [v26 predicateWithBlock:v51];
  v29 = [allKeys filteredArrayUsingPredicate:v28];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v48;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [(NSMutableDictionary *)self->_tablesViews objectForKey:*(*(&v47 + 1) + 8 * j), v45];
        [v35 removeFromSuperview];
      }

      v32 = [v30 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v32);
  }

  [(NSMutableDictionary *)self->_tablesViews removeObjectsForKeys:v30];
  -[UIScrollView setScrollEnabled:](self->_scrollView, "setScrollEnabled:", [v16 count] > 1);
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    indexCopy = 0;
  }

  else
  {
    indexCopy = index;
  }

  self->_primaryIndex = indexCopy;
  v37 = [*(&self->super.super.super.isa + v45) count];
  if (self->_primaryIndex >= v37)
  {
    self->_primaryIndex = 0;
  }

  [(PKDashboardMessagesView *)self _reportCurrentMessageViewed];
  layer = [(UIPageControl *)self->_pageControl layer];
  [layer opacity];
  v40 = *&v39;
  v41 = 0.0;
  if (v37 >= 2)
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:v37];
    [(UIPageControl *)self->_pageControl setCurrentPage:self->_primaryIndex];
    v41 = 1.0;
  }

  if (v41 != v40)
  {
    v42 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
    [v42 pkui_updateForAdditiveAnimationFromScalar:v40 toScalar:v41];
    v43 = [layer pkui_addAdditiveAnimation:v42];
  }

  *&v39 = v41;
  [layer setOpacity:v39];
  [(PKDashboardMessagesView *)self setNeedsLayout];
  [(PKDashboardMessagesView *)self layoutIfNeeded];
  scrollView = self->_scrollView;
  [(PKDashboardMessagesView *)self _startOfItemAtIndex:self->_primaryIndex];
  [(UIScrollView *)scrollView setContentOffset:?];
}

- (id)_messageForTableView:(id)view
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_messages;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        tablesViews = self->_tablesViews;
        identifier = [v10 identifier];
        v13 = [(NSMutableDictionary *)tablesViews objectForKey:identifier];

        if (v13 == viewCopy)
        {
          v14 = v10;

          goto LABEL_11;
        }
      }

      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)_reportCurrentMessageViewed
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSOrderedSet *)self->_messages count];
  if (v3 >= 1 && self->_primaryIndex < v3)
  {
    v4 = [(NSOrderedSet *)self->_messages objectAtIndex:?];
    superview = [(PKDashboardMessagesView *)self superview];
    v6 = superview;
    if (superview && v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = [WeakRetained messagesView:self shouldEnqueueEventForView:v4];

      if (v8)
      {
        v12 = *MEMORY[0x1E69BA680];
        v13[0] = *MEMORY[0x1E69BA700];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        _ReportAnalyticsEventForMessage(v9, v4);

        actionOnViewed = [v4 actionOnViewed];
        v11 = actionOnViewed;
        if (actionOnViewed)
        {
          (*(actionOnViewed + 16))(actionOnViewed);
        }
      }
    }

    else
    {
    }
  }
}

- (BOOL)isActionPresentedAsButtonCellForMessage:(id)message
{
  messageCopy = message;
  if (_UISolariumFeatureFlagEnabled())
  {
    v4 = 0;
  }

  else
  {
    actionOnButtonPress = [messageCopy actionOnButtonPress];
    if (actionOnButtonPress)
    {
      v4 = [messageCopy type] != 2;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = [(PKDashboardMessagesView *)self _messageForTableView:view];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  section = [(PKDashboardMessagesView *)self _messageForTableView:view, section];
  if (section)
  {
    if ([(PKDashboardMessagesView *)self isActionPresentedAsButtonCellForMessage:section])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PKDashboardMessagesView *)self _messageForTableView:viewCopy];
  if ([v8 type] == 2)
  {
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"engagementCellIdentifier" forIndexPath:pathCopy];
    [(PKDashboardMessagesView *)self _configureEngagementCell:v9 withMessage:v8];
  }

  else
  {
    v10 = [pathCopy row];
    if (v10 == 1)
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"actionCellIdentifier" forIndexPath:pathCopy];
      [(PKDashboardMessagesView *)self _configureActionCell:v9 withMessage:v8];
    }

    else if (v10)
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"messageCellIdentifier" forIndexPath:pathCopy];
    }

    else
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"messageCellIdentifier" forIndexPath:pathCopy];
      [viewCopy separatorInset];
      [(PKDashboardMessagesView *)self _configureMessageCell:v9 withMessage:v8 leftContentInset:v11];
    }
  }

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v9 setBackgroundColor:secondarySystemGroupedBackgroundColor];

  return v9;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(PKDashboardMessagesView *)self _messageForTableView:view];
  v8 = [(PKDashboardMessagesView *)self isActionPresentedAsButtonCellForMessage:v7];
  v9 = [pathCopy row];

  if (v8)
  {
    LOBYTE(v9) = v9 > 0;
  }

  else if (v9)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    actionOnMessagePress = [v7 actionOnMessagePress];
    v9 = actionOnMessagePress != 0;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v23[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  v8 = [(PKDashboardMessagesView *)self _messageForTableView:viewCopy];
  if ([pathCopy row] < 1)
  {
    actionOnMessagePress = [v8 actionOnMessagePress];
    v19 = [viewCopy cellForRowAtIndexPath:pathCopy];
    (actionOnMessagePress)[2](actionOnMessagePress, v19);

    actionOnMessagePress2 = [v8 actionOnMessagePress];
    v21 = _ReportableActionOnButtonPressedForMessageWithAction(v8, actionOnMessagePress2);

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  else
  {
    actionOnButtonPress = [v8 actionOnButtonPress];
    v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
    (actionOnButtonPress)[2](actionOnButtonPress, v10);

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    v11 = *MEMORY[0x1E69BA6F0];
    v12 = *MEMORY[0x1E69BA440];
    v22[0] = *MEMORY[0x1E69BA680];
    v22[1] = v12;
    v13 = *MEMORY[0x1E69BA570];
    v23[0] = v11;
    v23[1] = v13;
    viewCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    additionalEventAnalyticsOnButtonPress = [v8 additionalEventAnalyticsOnButtonPress];

    if (additionalEventAnalyticsOnButtonPress)
    {
      v15 = [viewCopy mutableCopy];
      additionalEventAnalyticsOnButtonPress2 = [v8 additionalEventAnalyticsOnButtonPress];
      [v15 addEntriesFromDictionary:additionalEventAnalyticsOnButtonPress2];

      v17 = [v15 copy];
      viewCopy = v17;
    }

    _ReportAnalyticsEventForMessage(viewCopy, v8);
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(PKDashboardMessagesView *)self _updateSizeCacheIfNecessary];
  if ([pathCopy row])
  {
    if ([pathCopy row] == 1)
    {
      actionCellHeight = self->_actionCellHeight;
    }

    else
    {
      actionCellHeight = *MEMORY[0x1E69DE3D0];
    }
  }

  else
  {
    v9 = [(PKDashboardMessagesView *)self _messageForTableView:viewCopy];
    v10 = [(PKDashboardMessagesView *)self isActionPresentedAsButtonCellForMessage:v9];
    actionCellHeight = self->_maxTableViewHeight;
    if (v10)
    {
      actionCellHeight = actionCellHeight - self->_actionCellHeight;
    }
  }

  return actionCellHeight;
}

- (void)_configureMessageCell:(id)cell withMessage:(id)message leftContentInset:(double)inset
{
  messageCopy = message;
  dashboardMessageView = [cell dashboardMessageView];
  [dashboardMessageView setLeftContentInset:inset];
  [dashboardMessageView updateWithMessage:messageCopy];
}

- (void)_configureActionCell:(id)cell withMessage:(id)message
{
  messageCopy = message;
  actionView = [cell actionView];
  [actionView updateWithMessage:messageCopy];
}

- (void)_switchPrimaryIndexToIndex:(unint64_t)index
{
  if (self->_primaryIndex != index)
  {
    self->_primaryIndex = index;
    [(UIPageControl *)self->_pageControl setCurrentPage:?];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = [(NSOrderedSet *)self->_messages objectAtIndex:self->_primaryIndex];
      identifier = [v4 identifier];
      [WeakRetained messagesView:self scrolledToMessageWithIdentifier:identifier];
    }

    [(PKDashboardMessagesView *)self _reportCurrentMessageViewed];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  [(UIScrollView *)self->_scrollView contentOffset:dragging];
  v9 = [(PKDashboardMessagesView *)self _indexAtContentOffset:v8 + self->_currentWidth * 0.5];
  v10 = v9;
  if (v9 == self->_primaryIndex)
  {
    v11 = v9;
    if (x <= 0.0 || (v10 = v9 + 1, v9 + 1 >= [(NSMutableDictionary *)self->_tablesViews count]))
    {
      v13 = x < 0.0 && v11 != 0;
      v10 = v11 - v13;
    }
  }

  [(PKDashboardMessagesView *)self _startOfItemAtIndex:v10];
  offset->x = v14;
  offset->y = 0.0;

  [(PKDashboardMessagesView *)self _switchPrimaryIndexToIndex:v10];
}

- (void)_pageControlChanged:(id)changed
{
  currentPage = [(UIPageControl *)self->_pageControl currentPage];
  if (currentPage < [(NSOrderedSet *)self->_messages count])
  {
    scrollView = self->_scrollView;
    [(PKDashboardMessagesView *)self _startOfItemAtIndex:currentPage];
    [(UIScrollView *)scrollView setContentOffset:1 animated:?];

    [(PKDashboardMessagesView *)self _switchPrimaryIndexToIndex:currentPage];
  }
}

- (PKDashboardMessagesViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end