@interface SearchUIInfoValueFlowView
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUIInfoSizingDelegate)sizingDelegate;
- (SearchUIInfoValueFlowView)init;
- (void)buttonItemPressed:(id)pressed;
- (void)configureInfoValueButtonController:(id)controller withButtonItem:(id)item;
- (void)reloadViews;
- (void)setTuple:(id)tuple;
@end

@implementation SearchUIInfoValueFlowView

- (SearchUIInfoValueFlowView)init
{
  v9.receiver = self;
  v9.super_class = SearchUIInfoValueFlowView;
  v2 = [(SearchUIInfoValueFlowView *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SearchUIInfoValueFlowView *)v2 setInfoValueViewControllers:v3];

    isMacOS = [MEMORY[0x1E69D9240] isMacOS];
    v5 = 7.0;
    if ((isMacOS & 1) == 0)
    {
      [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:v2 forView:6.5];
    }

    [(NUIContainerFlowView *)v2 setRowSpacing:v5];
    isMacOS2 = [MEMORY[0x1E69D9240] isMacOS];
    v7 = 0.0;
    if (isMacOS2)
    {
      v7 = 7.0;
    }

    [(NUIContainerFlowView *)v2 setItemSpacing:v7];
    [(NUIContainerFlowView *)v2 setVerticalAlignment:2];
  }

  return v2;
}

- (void)setTuple:(id)tuple
{
  tupleCopy = tuple;
  if (self->_tuple != tupleCopy)
  {
    v6 = tupleCopy;
    objc_storeStrong(&self->_tuple, tuple);
    [(SearchUIInfoValueFlowView *)self setIsExpanded:0];
    [(SearchUIInfoValueFlowView *)self reloadViews];
    tupleCopy = v6;
  }
}

- (void)reloadViews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__SearchUIInfoValueFlowView_reloadViews__block_invoke;
  v2[3] = &unk_1E85B24C8;
  v2[4] = self;
  [(SearchUIInfoValueFlowView *)self performBatchUpdates:v2];
}

uint64_t __40__SearchUIInfoValueFlowView_reloadViews__block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v2 = [*(a1 + 32) infoValueViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v51;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v51 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v50 + 1) + 8 * i) view];
        [v7 setHidden:1];
      }

      v4 = [v2 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v4);
  }

  v8 = [*(a1 + 32) tuple];
  v9 = [v8 initiallyVisibleValues];

  v10 = [*(a1 + 32) tuple];
  v11 = [v10 values];
  v12 = [v11 count] - v9;

  if (v12 >= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v14 = [*(a1 + 32) tuple];
  v15 = [v14 values];

  obj = v15;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v47;
    v44 = *MEMORY[0x1E69DDD80];
    v43 = *MEMORY[0x1E69DDCF8];
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v47 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v46 + 1) + 8 * j);
        v22 = [*(a1 + 32) infoValueViewControllers];
        v23 = [v22 count];

        if (v18 >= v23)
        {
          v25 = objc_opt_new();
          [v25 setButtonDelegate:*(a1 + 32)];
          v27 = MEMORY[0x1E69D9138];
          if ([MEMORY[0x1E69D9240] isMacOS])
          {
            v28 = v44;
          }

          else
          {
            v28 = v43;
          }

          v29 = [v27 cachedFontForTextStyle:v28];
          [v25 setButtonFont:v29];

          if (v18)
          {
            v30 = -10.0;
          }

          else
          {
            v30 = 0.0;
          }

          v31 = [v25 view];
          [v31 setCustomAlignmentRectInsets:{0.0, v30, 0.0, 0.0}];

          v32 = [v25 buttonItemView];
          [v32 setNeverCacheEffectiveLayoutSize:1];

          v33 = [v25 view];
          [v33 setNeverCacheEffectiveLayoutSize:1];

          v34 = [*(a1 + 32) infoValueViewControllers];
          [v34 addObject:v25];

          v35 = *(a1 + 32);
          v26 = [v25 view];
          [v35 addArrangedSubview:v26];
        }

        else
        {
          v24 = [*(a1 + 32) infoValueViewControllers];
          v25 = [v24 objectAtIndexedSubscript:v18];

          v26 = [v25 view];
          [v26 setHidden:0];
        }

        v36 = [*(a1 + 32) rowModel];
        [v25 setRowModel:v36];

        v37 = [*(a1 + 32) feedbackDelegate];
        [v25 setFeedbackDelegate:v37];

        ++v18;
        if (([*(a1 + 32) isExpanded] & 1) == 0 && v13 >= 1 && v18 > v13)
        {
          v38 = [[SearchUIButtonItem alloc] initWithSFButtonItem:0];
          v39 = [*(a1 + 32) tuple];
          v40 = [v39 showMoreString];
          [(SearchUIButtonItem *)v38 setTitle:v40];

          [v25 updateWithButtonItem:v38 buttonItemViewType:0];
          v41 = [v25 buttonItemView];
          [v41 setEnabled:1];

          goto LABEL_32;
        }

        [*(a1 + 32) configureInfoValueButtonController:v25 withButtonItem:v21];
      }

      v17 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

  return [*(a1 + 32) invalidateIntrinsicContentSize];
}

- (void)configureInfoValueButtonController:(id)controller withButtonItem:(id)item
{
  itemCopy = item;
  controllerCopy = controller;
  image = [itemCopy image];

  if (image)
  {
    image2 = [itemCopy image];
  }

  else
  {
    command = [itemCopy command];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      command2 = [itemCopy command];
      punchout = [command2 punchout];
      urls = [punchout urls];
      firstObject = [urls firstObject];
      scheme = [firstObject scheme];

      if (([scheme isEqualToString:@"http"] & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"https"))
      {
        image2 = objc_opt_new();
        [image2 setSymbolName:@"arrow.up.forward.app.fill"];
        [image2 setIsTemplate:1];
      }

      else
      {
        image2 = 0;
      }
    }

    else
    {
      image2 = 0;
    }
  }

  v15 = [[SearchUIButtonItem alloc] initWithSFButtonItem:itemCopy];
  [(SearchUIButtonItem *)v15 setImage:image2];
  [controllerCopy updateWithButtonItem:v15 buttonItemViewType:{objc_msgSend(controllerCopy, "buttonItemViewStyle")}];
}

- (void)buttonItemPressed:(id)pressed
{
  sfButtonItem = [pressed sfButtonItem];

  if (!sfButtonItem)
  {
    [(SearchUIInfoValueFlowView *)self setIsExpanded:1];
    [(SearchUIInfoValueFlowView *)self reloadViews];
    sizingDelegate = [(SearchUIInfoValueFlowView *)self sizingDelegate];
    [sizingDelegate didInvalidateSizeAnimate:1];
  }
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (SearchUIInfoSizingDelegate)sizingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sizingDelegate);

  return WeakRetained;
}

@end