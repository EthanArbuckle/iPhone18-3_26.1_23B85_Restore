@interface WFWidgetCell
- (BOOL)isMultiline;
- (BOOL)touchIsInView:(id)view event:(id)event;
- (BOOL)touchesContainNonIndirectTouch:(id)touch;
- (CGSize)iconViewSize;
- (WFWidgetCell)init;
- (WFWidgetCellDelegate)delegate;
- (WFWidgetChicletStyle)widgetChicletStyle;
- (id)description;
- (id)emptyCellGradient;
- (id)imageForAction:(id)action dataSource:(id)source family:(int64_t)family;
- (void)configureSheenViewIfNeededWithCornerRadius:(double)radius;
- (void)configureWithAction:(id)action dataSource:(id)source cornerRadius:(double)radius widgetType:(int64_t)type family:(int64_t)family homeScreenTintColor:(id)color isClearStyleEnabled:(BOOL)enabled;
- (void)dealloc;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetProgressState;
- (void)resetToEmptyState;
- (void)setEnabled:(BOOL)enabled;
- (void)setHomeScreenTintColor:(id)color;
- (void)setProgress:(id)progress;
- (void)setRunningState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateGradient;
- (void)updateTextTintIfNeeded;
@end

@implementation WFWidgetCell

- (CGSize)iconViewSize
{
  width = self->_iconViewSize.width;
  height = self->_iconViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (WFWidgetCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleTap:(id)tap
{
  delegate = [(WFWidgetCell *)self delegate];
  [delegate widgetCellWasTapped:self];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (WFProgressPercentageCompletedContext == context)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__WFWidgetCell_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E83086B0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (WFProgressUserInfoContext == context)
  {
    progress = [(WFWidgetCell *)self progress];
    userInfo = [progress userInfo];
    v15 = [userInfo objectForKey:*MEMORY[0x1E69E1338]];

    -[WFWidgetCell setRunningState:](self, "setRunningState:", [v15 integerValue]);
  }
}

void __63__WFWidgetCell_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progress];
  [v2 fractionCompleted];
  v4 = v3;

  v5 = v4 > 0.0 && v4 < 1.0;
  if (v5 && [*(a1 + 32) runningState] != 1)
  {
    [*(a1 + 32) setRunningState:1];
  }

  v7 = [*(a1 + 32) progressView];
  v6 = [*(a1 + 32) progress];
  [v6 fractionCompleted];
  [v7 setFractionCompleted:?];
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  if (progressCopy)
  {
    v8 = progressCopy;
    [progressCopy fractionCompleted];
    progressCopy = v8;
    if (v6 != 1.0)
    {
      progress = self->_progress;
      if (progress)
      {
        [(NSProgress *)progress removeObserver:self forKeyPath:@"fractionCompleted"];
        [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"userInfo.runningState"];
      }

      objc_storeStrong(&self->_progress, progress);
      [v8 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:WFProgressPercentageCompletedContext];
      [v8 addObserver:self forKeyPath:@"userInfo.runningState" options:0 context:WFProgressUserInfoContext];
      progressCopy = v8;
    }
  }
}

- (void)layoutSubviews
{
  v115[1] = *MEMORY[0x1E69E9840];
  v114.receiver = self;
  v114.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v114 layoutSubviews];
  [(WFWidgetCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  window = [(WFWidgetCell *)self window];
  screen = [window screen];
  [screen scale];
  if (v13 <= 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
  }

  else
  {
    mainScreen = [(WFWidgetCell *)self window];
    screen2 = [mainScreen screen];
    [screen2 scale];
  }

  emptyStateBackgroundView = [(WFWidgetCell *)self emptyStateBackgroundView];
  [emptyStateBackgroundView setFrame:{v4, v6, v8, v10}];

  sheenLayer = [(WFWidgetCell *)self sheenLayer];
  [sheenLayer setFrame:{v4, v6, v8, v10}];

  isRTL = [(WFWidgetCell *)self isRTL];
  if (v8 == v10)
  {
    [MEMORY[0x1E69E0940] largeGlyphSize];
  }

  else if (v10 > 50.0)
  {
    [MEMORY[0x1E69E0940] smallGlyphSize];
  }

  else
  {
    [MEMORY[0x1E69E0940] extraSmallGlyphSize];
  }

  v19 = _UISolariumEnabled();
  v20 = 12.0;
  if (v8 == v10)
  {
    v20 = 17.0;
  }

  v21 = 11.0;
  if (v8 == v10)
  {
    v21 = 17.0;
  }

  if (v19)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v112 = v10;
  if (v8 == v10)
  {
    v111 = 17.0;
    v24 = 16.0;
    v25 = MEMORY[0x1E69DDC50];
    v26 = MEMORY[0x1E69DDD80];
    v109 = 36.0;
  }

  else
  {
    v23 = v10 <= 50.0 || v10 > 60.0;
    v24 = 8.0;
    if (v23)
    {
      v24 = 6.0;
    }

    v25 = MEMORY[0x1E69DDC40];
    v26 = MEMORY[0x1E69DDD28];
    if (v10 > 50.0)
    {
      v111 = 14.0;
      if (v10 > 60.0)
      {
        if (_UISolariumEnabled())
        {
          v24 = v22;
        }

        else
        {
          v24 = 10.0;
        }
      }
    }

    else
    {
      v111 = 14.0;
    }

    v109 = 22.0;
  }

  v110 = v8;
  v113 = v22;
  v27 = v24;
  UIRectIntegralWithScale();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  iconView = [(WFWidgetCell *)self iconView];
  [iconView setFrame:{v29, v31, v33, v35}];

  UIRectIntegralWithScale();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  progressView = [(WFWidgetCell *)self progressView];
  [progressView setFrame:{v38, v40, v42, v44}];

  v46 = *v25;
  nameView = [(WFWidgetCell *)self nameView];
  [nameView setMaximumContentSizeCategory:v46];

  v48 = [MEMORY[0x1E69DB878] systemFontOfSize:v111 weight:*MEMORY[0x1E69DB970]];
  v49 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:*v26];
  v50 = [v49 scaledFontForFont:v48 maximumPointSize:v109];

  nameView2 = [(WFWidgetCell *)self nameView];
  [nameView2 setFont:v50];

  isMultiline = [(WFWidgetCell *)self isMultiline];
  nameView3 = [(WFWidgetCell *)self nameView];
  textContainer = [nameView3 textContainer];
  v55 = textContainer;
  if (v110 == v112 || !isMultiline)
  {
    if (v110 == v112)
    {
      v84 = 2;
    }

    else
    {
      v84 = 1;
    }

    [textContainer setMaximumNumberOfLines:{v84, *&v109}];

    nameView4 = [(WFWidgetCell *)self nameView];
    textContainer2 = [nameView4 textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    v87 = *MEMORY[0x1E69DDCE0];
    v88 = *(MEMORY[0x1E69DDCE0] + 8);
    v89 = *(MEMORY[0x1E69DDCE0] + 16);
    v90 = *(MEMORY[0x1E69DDCE0] + 24);
    nameView5 = [(WFWidgetCell *)self nameView];
    [nameView5 setTextContainerInset:{v87, v88, v89, v90}];

    nameView6 = [(WFWidgetCell *)self nameView];
    textContainer3 = [nameView6 textContainer];
    [textContainer3 setExclusionPaths:MEMORY[0x1E695E0F0]];

    nameView7 = [(WFWidgetCell *)self nameView];
    [nameView7 sizeThatFits:{v110 + v113 * -2.0, v112}];

    [v50 lineHeight];
    [v50 lineHeight];
    if (v110 == v112)
    {
      [v50 lineHeight];
    }

    v95 = _UISolariumEnabled();
    if (v27 > 8.0 && v95)
    {
      [v50 descender];
    }

    UIRectIntegralWithScale();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    nameView8 = [(WFWidgetCell *)self nameView];
    [nameView8 setFrame:{v97, v99, v101, v103}];
  }

  else
  {
    [textContainer setMaximumNumberOfLines:2];

    nameView9 = [(WFWidgetCell *)self nameView];
    textContainer4 = [nameView9 textContainer];
    [textContainer4 setLineFragmentPadding:5.0];

    nameView10 = [(WFWidgetCell *)self nameView];
    textContainer5 = [nameView10 textContainer];
    [textContainer5 lineFragmentPadding];
    v61 = v113 - v60;

    nameView11 = [(WFWidgetCell *)self nameView];
    [nameView11 setTextContainerInset:{v27, v61, v27, v61}];

    UIRectIntegralWithScale();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    nameView12 = [(WFWidgetCell *)self nameView];
    [nameView12 setFrame:{v64, v66, v68, v70}];

    v72 = MEMORY[0x1E69DC728];
    if (isRTL)
    {
      nameView13 = [(WFWidgetCell *)self nameView];
      [nameView13 bounds];
      v75 = v74 - v113 * 2.0;
      iconView2 = [(WFWidgetCell *)self iconView];
      [iconView2 bounds];
      v78 = v75 - v77;
      iconView3 = [(WFWidgetCell *)self iconView];
      [iconView3 bounds];
      v81 = v80 + v113 * 2.0;
      iconView4 = [(WFWidgetCell *)self iconView];
      [iconView4 bounds];
      nameView8 = [v72 bezierPathWithRect:{v78, 0.0, v81}];
    }

    else
    {
      nameView13 = [(WFWidgetCell *)self iconView];
      [nameView13 bounds];
      v105 = v113 + v104;
      iconView2 = [(WFWidgetCell *)self iconView];
      [iconView2 bounds];
      nameView8 = [v72 bezierPathWithRect:{0.0, 0.0, v105}];
    }

    v115[0] = nameView8;
    v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:1];
    nameView14 = [(WFWidgetCell *)self nameView];
    textContainer6 = [nameView14 textContainer];
    [textContainer6 setExclusionPaths:v106];
  }
}

- (void)setRunningState:(int64_t)state
{
  self->_runningState = state;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__WFWidgetCell_setRunningState___block_invoke;
  v3[3] = &unk_1E8308580;
  v3[4] = self;
  v3[5] = state;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __32__WFWidgetCell_setRunningState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressView];
  v3 = [*(a1 + 32) clearCompletedTimer];
  [v3 invalidate];

  [*(a1 + 32) setClearCompletedTimer:0];
  if (!*(a1 + 40))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __32__WFWidgetCell_setRunningState___block_invoke_2;
    aBlock[3] = &unk_1E8308508;
    v7 = v2;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v10 = _Block_copy(aBlock);
    if ([*(a1 + 32) completingSuccessfully])
    {
      *(*(a1 + 32) + 409) = 0;
      [v7 transitionToState:1];
      v11 = MEMORY[0x1E695DFF0];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __32__WFWidgetCell_setRunningState___block_invoke_5;
      v17[3] = &unk_1E8308530;
      v18 = v10;
      v12 = [v11 scheduledTimerWithTimeInterval:0 repeats:v17 block:1.5];
      [*(a1 + 32) setClearCompletedTimer:v12];
    }

    else
    {
      v10[2](v10);
    }

    v6 = v20;
    goto LABEL_9;
  }

  [v2 transitionToState:0];
  if ([v2 isHidden])
  {
    [v2 setAlpha:0.0];
    [v2 setHidden:0];
    v4 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __32__WFWidgetCell_setRunningState___block_invoke_6;
    v15[3] = &unk_1E83086B0;
    v16 = v2;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __32__WFWidgetCell_setRunningState___block_invoke_7;
    v14[3] = &unk_1E8308558;
    v5 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v14[5] = v5;
    [v4 animateWithDuration:v15 animations:v14 completion:0.200000003];
    v6 = v16;
LABEL_9:

    goto LABEL_10;
  }

  v13 = [*(a1 + 32) delegate];
  [v13 widgetCellDidTransitionToState:*(a1 + 40)];

LABEL_10:
}

void __32__WFWidgetCell_setRunningState___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isHidden] && (objc_msgSend(*(a1 + 32), "alpha"), v2 <= 0.0))
  {
    v7 = *(a1 + 40);

    [v7 resetProgressState];
  }

  else
  {
    v3 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32__WFWidgetCell_setRunningState___block_invoke_3;
    v12[3] = &unk_1E83086B0;
    v13 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__WFWidgetCell_setRunningState___block_invoke_4;
    v8[3] = &unk_1E83084E0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = v4;
    v10 = v5;
    v11 = v6;
    [v3 animateWithDuration:v12 animations:v8 completion:0.200000003];
  }
}

void __32__WFWidgetCell_setRunningState___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 widgetCellDidTransitionToState:*(a1 + 40)];
}

uint64_t __32__WFWidgetCell_setRunningState___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = [*(a1 + 40) delegate];
  [v2 widgetCellDidTransitionToState:*(a1 + 48)];

  v3 = *(a1 + 40);

  return [v3 resetProgressState];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__WFWidgetCell_setEnabled___block_invoke;
    v5[3] = &unk_1E83084B8;
    v5[4] = self;
    enabledCopy = enabled;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v5 options:0 animations:0.200000003 completion:0.0];
    self->_enabled = enabled;
  }
}

uint64_t __27__WFWidgetCell_setEnabled___block_invoke(uint64_t a1)
{
  v1 = 0.5;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

- (void)resetProgressState
{
  self->_runningState = 0;
  progressView = [(WFWidgetCell *)self progressView];
  [progressView setHidden:1];

  progressView2 = [(WFWidgetCell *)self progressView];
  [progressView2 transitionToState:0];

  progressView3 = [(WFWidgetCell *)self progressView];
  [progressView3 reset];

  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted"];
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"userInfo.runningState"];
  progress = self->_progress;
  self->_progress = 0;
}

- (void)resetToEmptyState
{
  action = self->_action;
  self->_action = 0;

  widgetType = [(WFWidgetCell *)self widgetType];
  emptyStateBackgroundView = [(WFWidgetCell *)self emptyStateBackgroundView];
  v6 = emptyStateBackgroundView;
  if (widgetType == 1)
  {

    if (!v6)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD298]);
      v8 = MEMORY[0x1E69DD248];
      v9 = [MEMORY[0x1E69DC730] effectWithStyle:7];
      v10 = [v8 effectForBlurEffect:v9 style:1];
      v11 = [v7 initWithEffect:v10];
      [(WFWidgetCell *)self setEmptyStateBackgroundView:v11];

      emptyStateBackgroundView2 = [(WFWidgetCell *)self emptyStateBackgroundView];
      contentView = [emptyStateBackgroundView2 contentView];
      nameView = [(WFWidgetCell *)self nameView];
      [contentView addSubview:nameView];

      emptyStateBackgroundView3 = [(WFWidgetCell *)self emptyStateBackgroundView];
      contentView2 = [emptyStateBackgroundView3 contentView];
      iconView = [(WFWidgetCell *)self iconView];
      [contentView2 addSubview:iconView];

      [(WFWidgetCell *)self bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      emptyStateBackgroundView4 = [(WFWidgetCell *)self emptyStateBackgroundView];
      [emptyStateBackgroundView4 setFrame:{v19, v21, v23, v25}];

      emptyStateBackgroundView5 = [(WFWidgetCell *)self emptyStateBackgroundView];
      [emptyStateBackgroundView5 setAutoresizingMask:18];

      emptyStateBackgroundView6 = [(WFWidgetCell *)self emptyStateBackgroundView];
      [(WFWidgetCell *)self addSubview:emptyStateBackgroundView6];
    }

    v29 = WFLocalizedString(@"No Shortcut");
    nameView2 = [(WFWidgetCell *)self nameView];
    [nameView2 setText:v29];

    v31 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"app.2.stack.3d"];
    v32 = [v31 imageWithRenderingMode:2];
    iconView2 = [(WFWidgetCell *)self iconView];
    [iconView2 setImage:v32];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    nameView3 = [(WFWidgetCell *)self nameView];
    [nameView3 setTextColor:whiteColor];

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    iconView3 = [(WFWidgetCell *)self iconView];
    [iconView3 setTintColor:whiteColor2];

    whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
    progressView = [(WFWidgetCell *)self progressView];
    [progressView setTintColor:whiteColor3];
  }

  else
  {
    [emptyStateBackgroundView removeFromSuperview];

    nameView4 = [(WFWidgetCell *)self nameView];
    [nameView4 setText:0];

    whiteColor3 = [(WFWidgetCell *)self iconView];
    [whiteColor3 setImage:0];
  }

  [(WFWidgetCell *)self setEnabled:widgetType == 1];

  [(WFWidgetCell *)self updateGradient];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v6 touchesCancelled:cancelled withEvent:event];
  if ([(WFWidgetCell *)self enabled])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__WFWidgetCell_touchesCancelled_withEvent___block_invoke;
    block[3] = &unk_1E83086B0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v6 touchesEnded:ended withEvent:event];
  if ([(WFWidgetCell *)self enabled])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__WFWidgetCell_touchesEnded_withEvent___block_invoke;
    block[3] = &unk_1E83086B0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  v18.receiver = self;
  v18.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v18 touchesMoved:movedCopy withEvent:eventCopy];
  if ([(WFWidgetCell *)self enabled]&& [(WFWidgetCell *)self touchesContainNonIndirectTouch:movedCopy])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = movedCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if ([(WFWidgetCell *)self touchIsInView:*(*(&v14 + 1) + 8 * i) event:eventCopy])
          {
            LOBYTE(v9) = 1;
            goto LABEL_13;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__WFWidgetCell_touchesMoved_withEvent___block_invoke;
    v12[3] = &unk_1E83084B8;
    v12[4] = self;
    v13 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v8.receiver = self;
  v8.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v8 touchesBegan:beganCopy withEvent:event];
  if ([(WFWidgetCell *)self enabled]&& [(WFWidgetCell *)self touchesContainNonIndirectTouch:beganCopy])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__WFWidgetCell_touchesBegan_withEvent___block_invoke;
    block[3] = &unk_1E83086B0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)touchesContainNonIndirectTouch:(id)touch
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  touchCopy = touch;
  v4 = [touchCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(touchCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] != 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [touchCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)touchIsInView:(id)view event:(id)event
{
  eventCopy = event;
  [view locationInView:self];
  v8 = v7;
  v10 = v9;
  [(WFWidgetCell *)self bounds];
  v13.x = v8;
  v13.y = v10;
  if (CGRectContainsPoint(v14, v13))
  {
    v11 = 1;
  }

  else
  {
    v11 = [(WFWidgetCell *)self pointInside:eventCopy withEvent:v8, v10];
  }

  return v11;
}

- (void)setHomeScreenTintColor:(id)color
{
  objc_storeStrong(&self->_homeScreenTintColor, color);
  [(WFWidgetCell *)self updateGradient];

  [(WFWidgetCell *)self updateTextTintIfNeeded];
}

- (void)updateTextTintIfNeeded
{
  v17 = 0.0;
  v18 = 0.0;
  v15 = 0;
  v16 = 0.0;
  homeScreenTintColor = self->_homeScreenTintColor;
  if (homeScreenTintColor && [(WFColor *)homeScreenTintColor getRed:&v18 green:&v17 blue:&v16 alpha:&v15])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__WFWidgetCell_updateTextTintIfNeeded__block_invoke;
    aBlock[3] = &__block_descriptor_40_e17_d16__0__UIColor_8l;
    *&aBlock[4] = v17 * (v17 * 0.7152) + v18 * 0.2126 * v18 + v16 * 0.0722 * v16;
    widgetChicletStyle = _Block_copy(aBlock);
    systemGray2Color = [MEMORY[0x1E69DC888] systemGray2Color];
    v6 = (widgetChicletStyle)[2](widgetChicletStyle, systemGray2Color);

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v8 = (widgetChicletStyle)[2](widgetChicletStyle, whiteColor);

    if (v6 > v8)
    {
      [MEMORY[0x1E69DC888] systemGray2Color];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    platformColor = ;
  }

  else
  {
    widgetChicletStyle = [(WFWidgetCell *)self widgetChicletStyle];
    foregroundColor = [widgetChicletStyle foregroundColor];
    platformColor = [foregroundColor platformColor];
  }

  nameView = [(WFWidgetCell *)self nameView];
  [nameView setTextColor:platformColor];

  iconView = [(WFWidgetCell *)self iconView];
  [iconView setTintColor:platformColor];

  progressView = [(WFWidgetCell *)self progressView];
  [progressView setTintColor:platformColor];
}

double __38__WFWidgetCell_updateTextTintIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0;
  v10 = 0.0;
  v3 = [a2 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  result = 0.0;
  if (v3)
  {
    v5 = v11 * (v11 * 0.7152) + v12 * 0.2126 * v12 + v10 * 0.0722 * v10;
    v6 = *(a1 + 32);
    if (v5 >= v6)
    {
      v7 = v11 * (v11 * 0.7152) + v12 * 0.2126 * v12 + v10 * 0.0722 * v10;
    }

    else
    {
      v7 = *(a1 + 32);
    }

    v8 = v7 + 0.05;
    if (v5 >= v6)
    {
      v5 = *(a1 + 32);
    }

    return v8 / (v5 + 0.05);
  }

  return result;
}

- (void)configureSheenViewIfNeededWithCornerRadius:(double)radius
{
  v13[2] = *MEMORY[0x1E69E9840];
  sheenLayer = [(WFWidgetCell *)self sheenLayer];
  widgetChicletStyle = [(WFWidgetCell *)self widgetChicletStyle];
  needsSheenView = [widgetChicletStyle needsSheenView];

  if (needsSheenView)
  {
    [sheenLayer setCornerRadius:radius];
    whiteColor = [MEMORY[0x1E69E09E0] whiteColor];
    v9 = [whiteColor colorWithAlphaComponent:0.2];

    whiteColor2 = [MEMORY[0x1E69E09E0] whiteColor];
    v11 = [whiteColor2 colorWithAlphaComponent:0.001];

    v13[0] = [v9 CGColor];
    v13[1] = [v11 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [sheenLayer setColors:v12];

    if (_UISolariumEnabled())
    {
      [sheenLayer setType:*MEMORY[0x1E6979DB0]];
      [sheenLayer setStartPoint:{0.0, 0.0}];
      [sheenLayer setEndPoint:{1.0, 1.0}];
    }
  }

  else
  {
    [sheenLayer setColors:0];
  }
}

- (void)updateGradient
{
  if (self->_action)
  {
    if (self->_isClear)
    {
      v3 = objc_alloc(MEMORY[0x1E69E0B18]);
      widgetChicletStyle = [MEMORY[0x1E69E09E0] colorWithWhite:1.0 alpha:0.2];
      baseGradient = [v3 initWithColor:widgetChicletStyle];
LABEL_9:
      v7 = baseGradient;

      goto LABEL_10;
    }

    if (!self->_homeScreenTintColor)
    {
      widgetChicletStyle = [(WFWidgetCell *)self widgetChicletStyle];
      baseGradient = [widgetChicletStyle baseGradient];
      goto LABEL_9;
    }

    emptyCellGradient = [objc_alloc(MEMORY[0x1E69E0B18]) initWithColor:self->_homeScreenTintColor];
  }

  else
  {
    emptyCellGradient = [(WFWidgetCell *)self emptyCellGradient];
  }

  v7 = emptyCellGradient;
LABEL_10:
  v8.receiver = self;
  v8.super_class = WFWidgetCell;
  [(WFFloatingView *)&v8 setGradient:v7];
}

- (id)emptyCellGradient
{
  v2 = objc_alloc(MEMORY[0x1E69E0B18]);
  v3 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithWhite:0.0 alpha:0.1];
  v4 = [v2 initWithColor:v3];

  return v4;
}

- (WFWidgetChicletStyle)widgetChicletStyle
{
  v3 = [WFWidgetChicletStyle widgetStyleWithAction:self->_action];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [WFWidgetChicletStyle fallbackWidgetStyleWithAction:self->_action];
  }

  v6 = v5;

  return v6;
}

- (id)imageForAction:(id)action dataSource:(id)source family:(int64_t)family
{
  actionCopy = action;
  sourceCopy = source;
  if ([(WFWidgetCell *)self widgetType]== 1)
  {
    [MEMORY[0x1E69E0940] largeGlyphSize];
  }

  else
  {
    [MEMORY[0x1E69E0940] smallGlyphSize];
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      contextualAction = [actionCopy contextualAction];
      icon = [contextualAction icon];
      wfIcon = [icon wfIcon];

      previewIcon = wfIcon;
      if (previewIcon)
      {
LABEL_10:
        v21 = previewIcon;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v23 = MEMORY[0x1E69DCAD8];
          v13 = v21;
          image = [v23 configurationWithPointSize:5 weight:v11];
          v25 = MEMORY[0x1E69DCAB8];
          symbolName = [v13 symbolName];

          v27 = [v25 _systemImageNamed:symbolName withConfiguration:image];

          iconView = [(WFWidgetCell *)self iconView];
          [iconView setContentMode:4];

          goto LABEL_20;
        }

        v13 = v21;
        objc_opt_class();
        v34 = objc_opt_isKindOfClass();

        if (v34)
        {
          image = [v13 image];
          platformImage = [image platformImage];
          goto LABEL_19;
        }

        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_25:
        if (family == 1)
        {
          [MEMORY[0x1E69E0940] largeGlyphSize];
        }

        else
        {
          [MEMORY[0x1E69E0940] smallGlyphSize];
        }

        v37 = v35;
        v38 = v36;
        associatedBundleIdentifier = [actionCopy associatedBundleIdentifier];
        v27 = [WFApplicationIconProvider applicationIconImageForBundleIdentifier:associatedBundleIdentifier size:v37, v38];

        goto LABEL_29;
      }

      previewIcon = [actionCopy previewIcon];
      if (previewIcon)
      {
        goto LABEL_10;
      }
    }

    v13 = 0;
LABEL_24:

    goto LABEL_25;
  }

  identifier = [actionCopy identifier];
  v13 = [sourceCopy widgetWorkflowWithIdentifier:identifier];

  associatedAppBundleIdentifier = [v13 associatedAppBundleIdentifier];

  if (associatedAppBundleIdentifier)
  {
    if (family == 1)
    {
      [MEMORY[0x1E69E0940] largeGlyphSize];
    }

    else
    {
      [MEMORY[0x1E69E0940] smallGlyphSize];
    }

    v32 = v15;
    v33 = v16;
    image = [actionCopy associatedBundleIdentifier];
    platformImage = [WFApplicationIconProvider applicationIconImageForBundleIdentifier:image size:v32, v33];
    goto LABEL_19;
  }

  if (![v13 iconImage])
  {
    goto LABEL_24;
  }

  v29 = objc_alloc(MEMORY[0x1E69DCAB8]);
  iconImage = [v13 iconImage];
  [v13 iconImageScale];
  image = [v29 initWithCGImage:iconImage scale:0 orientation:?];
  platformImage = [image imageWithRenderingMode:2];
LABEL_19:
  v27 = platformImage;
LABEL_20:

  if (!v27)
  {
    goto LABEL_25;
  }

LABEL_29:

  return v27;
}

- (void)configureWithAction:(id)action dataSource:(id)source cornerRadius:(double)radius widgetType:(int64_t)type family:(int64_t)family homeScreenTintColor:(id)color isClearStyleEnabled:(BOOL)enabled
{
  actionCopy = action;
  sourceCopy = source;
  colorCopy = color;
  if ([(WFWidgetCell *)self runningState]!= 1)
  {
    goto LABEL_8;
  }

  action = [(WFWidgetCell *)self action];
  if (![action isEqual:actionCopy])
  {
    goto LABEL_7;
  }

  v65 = sourceCopy;
  v20 = colorCopy;
  currentConfiguration = [(WFWidgetCell *)self currentConfiguration];
  [currentConfiguration cornerRadius];
  if (v22 != radius)
  {

    colorCopy = v20;
    sourceCopy = v65;
LABEL_7:

LABEL_8:
    objc_storeStrong(&self->_action, action);
    self->_lastKnownWidgetFamily = family;
    self->_widgetType = type;
    objc_storeStrong(&self->_homeScreenTintColor, color);
    self->_isClear = enabled;
    v25 = type == 1 && family == 1;
    currentConfiguration2 = [(WFWidgetCell *)self currentConfiguration];
    [currentConfiguration2 setAppliesCornerRadiusDuringTouchDownOnly:v25];

    currentConfiguration3 = [(WFWidgetCell *)self currentConfiguration];
    [currentConfiguration3 cornerRadius];
    v29 = v28;

    if (v29 != radius)
    {
      currentConfiguration4 = [(WFWidgetCell *)self currentConfiguration];
      [currentConfiguration4 setCornerRadius:radius];

      currentConfiguration5 = [(WFWidgetCell *)self currentConfiguration];
      [(WFFloatingView *)self applyConfiguration:currentConfiguration5];
    }

    [(WFWidgetCell *)self resetProgressState];
    if (!actionCopy)
    {
      [(WFWidgetCell *)self resetToEmptyState];
      goto LABEL_24;
    }

    nameView = [(WFWidgetCell *)self nameView];
    [(WFWidgetCell *)self addSubview:nameView];

    iconView = [(WFWidgetCell *)self iconView];
    [(WFWidgetCell *)self addSubview:iconView];

    [(WFWidgetCell *)self setEmptyStateBackgroundView:0];
    [(WFWidgetCell *)self updateGradient];
    name = [actionCopy name];
    nameView2 = [(WFWidgetCell *)self nameView];
    [nameView2 setText:name];

    v36 = [(WFWidgetCell *)self imageForAction:actionCopy dataSource:sourceCopy family:family];
    iconView2 = [(WFWidgetCell *)self iconView];
    [iconView2 setImage:v36];

    widgetChicletStyle = [(WFWidgetCell *)self widgetChicletStyle];
    foregroundColor = [widgetChicletStyle foregroundColor];
    platformColor = [foregroundColor platformColor];
    iconView3 = [(WFWidgetCell *)self iconView];
    [iconView3 setTintColor:platformColor];

    previewIcon = [actionCopy previewIcon];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v43 = _UISolariumEnabled();

      if (v43)
      {
        widgetChicletStyle2 = [(WFWidgetCell *)self widgetChicletStyle];
        [widgetChicletStyle2 foregroundOpacity];
        v46 = v45 + -0.1;
LABEL_23:
        iconView4 = [(WFWidgetCell *)self iconView];
        [iconView4 setAlpha:v46];

        widgetChicletStyle3 = [(WFWidgetCell *)self widgetChicletStyle];
        foregroundCompositingFilter = [widgetChicletStyle3 foregroundCompositingFilter];
        iconView5 = [(WFWidgetCell *)self iconView];
        layer = [iconView5 layer];
        [layer setCompositingFilter:foregroundCompositingFilter];

        [(WFWidgetCell *)self setEnabled:1];
        widgetChicletStyle4 = [(WFWidgetCell *)self widgetChicletStyle];
        foregroundColor2 = [widgetChicletStyle4 foregroundColor];
        platformColor2 = [foregroundColor2 platformColor];
        nameView3 = [(WFWidgetCell *)self nameView];
        [nameView3 setTextColor:platformColor2];

        widgetChicletStyle5 = [(WFWidgetCell *)self widgetChicletStyle];
        [widgetChicletStyle5 foregroundOpacity];
        v59 = v58;
        nameView4 = [(WFWidgetCell *)self nameView];
        [nameView4 setAlpha:v59];

        widgetChicletStyle6 = [(WFWidgetCell *)self widgetChicletStyle];
        foregroundCompositingFilter2 = [widgetChicletStyle6 foregroundCompositingFilter];
        nameView5 = [(WFWidgetCell *)self nameView];
        layer2 = [nameView5 layer];
        [layer2 setCompositingFilter:foregroundCompositingFilter2];

        [(WFWidgetCell *)self configureSheenViewIfNeededWithCornerRadius:radius];
        [(WFWidgetCell *)self updateTextTintIfNeeded];
        [(WFWidgetCell *)self setNeedsLayout];
        goto LABEL_24;
      }
    }

    widgetChicletStyle2 = [(WFWidgetCell *)self widgetChicletStyle];
    [widgetChicletStyle2 foregroundOpacity];
    v46 = v47;
    goto LABEL_23;
  }

  lastKnownWidgetFamily = [(WFWidgetCell *)self lastKnownWidgetFamily];

  colorCopy = v20;
  sourceCopy = v65;
  if (lastKnownWidgetFamily != family)
  {
    goto LABEL_8;
  }

LABEL_24:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = WFWidgetCell;
  v4 = [(WFWidgetCell *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, runningState: %ld", v4, -[WFWidgetCell runningState](self, "runningState")];

  return v5;
}

- (BOOL)isMultiline
{
  traitCollection = [(WFWidgetCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LOBYTE(traitCollection) = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC58]) == NSOrderedDescending;
  return traitCollection;
}

- (void)dealloc
{
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted" context:WFProgressPercentageCompletedContext];
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"userInfo.runningState" context:WFProgressUserInfoContext];
  v3.receiver = self;
  v3.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v3 dealloc];
}

- (WFWidgetCell)init
{
  v3 = objc_alloc_init(WFFloatingViewConfiguration);
  [(WFFloatingViewConfiguration *)v3 setShadowOpacity:0.0];
  [(WFFloatingViewConfiguration *)v3 setCornerRadius:0.0];
  [(WFFloatingViewConfiguration *)v3 setGradientDirection:4];
  v26.receiver = self;
  v26.super_class = WFWidgetCell;
  v4 = [(WFFloatingView *)&v26 initWithConfiguration:v3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_currentConfiguration, v3);
    v6 = objc_alloc_init(MEMORY[0x1E6979380]);
    layer = [(WFWidgetCell *)v5 layer];
    [layer addSublayer:v6];

    sheenLayer = v5->_sheenLayer;
    v5->_sheenLayer = v6;
    v9 = v6;

    [(WFWidgetCell *)v5 setEnabled:0];
    [(WFWidgetCell *)v5 setExclusiveTouch:1];
    v10 = objc_alloc(MEMORY[0x1E69DD168]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(UITextView *)v11 setUserInteractionEnabled:0];
    [(UITextView *)v11 setEditable:0];
    [(UITextView *)v11 setSelectable:0];
    textContainer = [(UITextView *)v11 textContainer];
    [textContainer setLineBreakMode:4];

    layoutManager = [(UITextView *)v11 layoutManager];
    [layoutManager setUsesDefaultHyphenation:1];

    [(UITextView *)v11 setBackgroundColor:0];
    [(UITextView *)v11 setClipsToBounds:1];
    [(UITextView *)v11 setAdjustsFontForContentSizeCategory:1];
    [(WFWidgetCell *)v5 addSubview:v11];
    nameView = v5->_nameView;
    v5->_nameView = v11;
    v15 = v11;

    v16 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(WFWidgetCell *)v5 addSubview:v16];
    iconView = v5->_iconView;
    v5->_iconView = v16;
    v18 = v16;

    v19 = objc_alloc_init(WFWorkflowProgressView);
    [(WFWorkflowProgressView *)v19 setHidden:1];
    [(WFWidgetCell *)v5 addSubview:v19];
    progressView = v5->_progressView;
    v5->_progressView = v19;
    v21 = v19;

    v22 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel_handleTap_];
    [v22 setNumberOfTouchesRequired:1];
    [v22 setNumberOfTapsRequired:1];
    [(WFWidgetCell *)v5 addGestureRecognizer:v22];
    [(WFFloatingView *)v5 setGradient:0];
    layer2 = [(WFWidgetCell *)v5 layer];
    [layer2 setAllowsGroupBlending:0];

    v24 = v5;
  }

  return v5;
}

@end