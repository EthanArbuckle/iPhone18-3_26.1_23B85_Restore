@interface WFWidgetCell
- (BOOL)isMultiline;
- (BOOL)touchIsInView:(id)a3 event:(id)a4;
- (BOOL)touchesContainNonIndirectTouch:(id)a3;
- (CGSize)iconViewSize;
- (WFWidgetCell)init;
- (WFWidgetCellDelegate)delegate;
- (WFWidgetChicletStyle)widgetChicletStyle;
- (id)description;
- (id)emptyCellGradient;
- (id)imageForAction:(id)a3 dataSource:(id)a4 family:(int64_t)a5;
- (void)configureSheenViewIfNeededWithCornerRadius:(double)a3;
- (void)configureWithAction:(id)a3 dataSource:(id)a4 cornerRadius:(double)a5 widgetType:(int64_t)a6 family:(int64_t)a7 homeScreenTintColor:(id)a8 isClearStyleEnabled:(BOOL)a9;
- (void)dealloc;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetProgressState;
- (void)resetToEmptyState;
- (void)setEnabled:(BOOL)a3;
- (void)setHomeScreenTintColor:(id)a3;
- (void)setProgress:(id)a3;
- (void)setRunningState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (void)handleTap:(id)a3
{
  v4 = [(WFWidgetCell *)self delegate];
  [v4 widgetCellWasTapped:self];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (WFProgressPercentageCompletedContext == a6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__WFWidgetCell_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E83086B0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (WFProgressUserInfoContext == a6)
  {
    v13 = [(WFWidgetCell *)self progress];
    v14 = [v13 userInfo];
    v15 = [v14 objectForKey:*MEMORY[0x1E69E1338]];

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

- (void)setProgress:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v8 = v5;
    [v5 fractionCompleted];
    v5 = v8;
    if (v6 != 1.0)
    {
      progress = self->_progress;
      if (progress)
      {
        [(NSProgress *)progress removeObserver:self forKeyPath:@"fractionCompleted"];
        [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"userInfo.runningState"];
      }

      objc_storeStrong(&self->_progress, a3);
      [v8 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:WFProgressPercentageCompletedContext];
      [v8 addObserver:self forKeyPath:@"userInfo.runningState" options:0 context:WFProgressUserInfoContext];
      v5 = v8;
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
  v11 = [(WFWidgetCell *)self window];
  v12 = [v11 screen];
  [v12 scale];
  if (v13 <= 0.0)
  {
    v14 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v14 scale];
  }

  else
  {
    v14 = [(WFWidgetCell *)self window];
    v15 = [v14 screen];
    [v15 scale];
  }

  v16 = [(WFWidgetCell *)self emptyStateBackgroundView];
  [v16 setFrame:{v4, v6, v8, v10}];

  v17 = [(WFWidgetCell *)self sheenLayer];
  [v17 setFrame:{v4, v6, v8, v10}];

  v18 = [(WFWidgetCell *)self isRTL];
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
  v36 = [(WFWidgetCell *)self iconView];
  [v36 setFrame:{v29, v31, v33, v35}];

  UIRectIntegralWithScale();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(WFWidgetCell *)self progressView];
  [v45 setFrame:{v38, v40, v42, v44}];

  v46 = *v25;
  v47 = [(WFWidgetCell *)self nameView];
  [v47 setMaximumContentSizeCategory:v46];

  v48 = [MEMORY[0x1E69DB878] systemFontOfSize:v111 weight:*MEMORY[0x1E69DB970]];
  v49 = [objc_alloc(MEMORY[0x1E69DCA40]) initForTextStyle:*v26];
  v50 = [v49 scaledFontForFont:v48 maximumPointSize:v109];

  v51 = [(WFWidgetCell *)self nameView];
  [v51 setFont:v50];

  v52 = [(WFWidgetCell *)self isMultiline];
  v53 = [(WFWidgetCell *)self nameView];
  v54 = [v53 textContainer];
  v55 = v54;
  if (v110 == v112 || !v52)
  {
    if (v110 == v112)
    {
      v84 = 2;
    }

    else
    {
      v84 = 1;
    }

    [v54 setMaximumNumberOfLines:{v84, *&v109}];

    v85 = [(WFWidgetCell *)self nameView];
    v86 = [v85 textContainer];
    [v86 setLineFragmentPadding:0.0];

    v87 = *MEMORY[0x1E69DDCE0];
    v88 = *(MEMORY[0x1E69DDCE0] + 8);
    v89 = *(MEMORY[0x1E69DDCE0] + 16);
    v90 = *(MEMORY[0x1E69DDCE0] + 24);
    v91 = [(WFWidgetCell *)self nameView];
    [v91 setTextContainerInset:{v87, v88, v89, v90}];

    v92 = [(WFWidgetCell *)self nameView];
    v93 = [v92 textContainer];
    [v93 setExclusionPaths:MEMORY[0x1E695E0F0]];

    v94 = [(WFWidgetCell *)self nameView];
    [v94 sizeThatFits:{v110 + v113 * -2.0, v112}];

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
    v83 = [(WFWidgetCell *)self nameView];
    [v83 setFrame:{v97, v99, v101, v103}];
  }

  else
  {
    [v54 setMaximumNumberOfLines:2];

    v56 = [(WFWidgetCell *)self nameView];
    v57 = [v56 textContainer];
    [v57 setLineFragmentPadding:5.0];

    v58 = [(WFWidgetCell *)self nameView];
    v59 = [v58 textContainer];
    [v59 lineFragmentPadding];
    v61 = v113 - v60;

    v62 = [(WFWidgetCell *)self nameView];
    [v62 setTextContainerInset:{v27, v61, v27, v61}];

    UIRectIntegralWithScale();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = [(WFWidgetCell *)self nameView];
    [v71 setFrame:{v64, v66, v68, v70}];

    v72 = MEMORY[0x1E69DC728];
    if (v18)
    {
      v73 = [(WFWidgetCell *)self nameView];
      [v73 bounds];
      v75 = v74 - v113 * 2.0;
      v76 = [(WFWidgetCell *)self iconView];
      [v76 bounds];
      v78 = v75 - v77;
      v79 = [(WFWidgetCell *)self iconView];
      [v79 bounds];
      v81 = v80 + v113 * 2.0;
      v82 = [(WFWidgetCell *)self iconView];
      [v82 bounds];
      v83 = [v72 bezierPathWithRect:{v78, 0.0, v81}];
    }

    else
    {
      v73 = [(WFWidgetCell *)self iconView];
      [v73 bounds];
      v105 = v113 + v104;
      v76 = [(WFWidgetCell *)self iconView];
      [v76 bounds];
      v83 = [v72 bezierPathWithRect:{0.0, 0.0, v105}];
    }

    v115[0] = v83;
    v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:1];
    v107 = [(WFWidgetCell *)self nameView];
    v108 = [v107 textContainer];
    [v108 setExclusionPaths:v106];
  }
}

- (void)setRunningState:(int64_t)a3
{
  self->_runningState = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__WFWidgetCell_setRunningState___block_invoke;
  v3[3] = &unk_1E8308580;
  v3[4] = self;
  v3[5] = a3;
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

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__WFWidgetCell_setEnabled___block_invoke;
    v5[3] = &unk_1E83084B8;
    v5[4] = self;
    v6 = a3;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v5 options:0 animations:0.200000003 completion:0.0];
    self->_enabled = a3;
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
  v3 = [(WFWidgetCell *)self progressView];
  [v3 setHidden:1];

  v4 = [(WFWidgetCell *)self progressView];
  [v4 transitionToState:0];

  v5 = [(WFWidgetCell *)self progressView];
  [v5 reset];

  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"fractionCompleted"];
  [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"userInfo.runningState"];
  progress = self->_progress;
  self->_progress = 0;
}

- (void)resetToEmptyState
{
  action = self->_action;
  self->_action = 0;

  v4 = [(WFWidgetCell *)self widgetType];
  v5 = [(WFWidgetCell *)self emptyStateBackgroundView];
  v6 = v5;
  if (v4 == 1)
  {

    if (!v6)
    {
      v7 = objc_alloc(MEMORY[0x1E69DD298]);
      v8 = MEMORY[0x1E69DD248];
      v9 = [MEMORY[0x1E69DC730] effectWithStyle:7];
      v10 = [v8 effectForBlurEffect:v9 style:1];
      v11 = [v7 initWithEffect:v10];
      [(WFWidgetCell *)self setEmptyStateBackgroundView:v11];

      v12 = [(WFWidgetCell *)self emptyStateBackgroundView];
      v13 = [v12 contentView];
      v14 = [(WFWidgetCell *)self nameView];
      [v13 addSubview:v14];

      v15 = [(WFWidgetCell *)self emptyStateBackgroundView];
      v16 = [v15 contentView];
      v17 = [(WFWidgetCell *)self iconView];
      [v16 addSubview:v17];

      [(WFWidgetCell *)self bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [(WFWidgetCell *)self emptyStateBackgroundView];
      [v26 setFrame:{v19, v21, v23, v25}];

      v27 = [(WFWidgetCell *)self emptyStateBackgroundView];
      [v27 setAutoresizingMask:18];

      v28 = [(WFWidgetCell *)self emptyStateBackgroundView];
      [(WFWidgetCell *)self addSubview:v28];
    }

    v29 = WFLocalizedString(@"No Shortcut");
    v30 = [(WFWidgetCell *)self nameView];
    [v30 setText:v29];

    v31 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"app.2.stack.3d"];
    v32 = [v31 imageWithRenderingMode:2];
    v33 = [(WFWidgetCell *)self iconView];
    [v33 setImage:v32];

    v34 = [MEMORY[0x1E69DC888] whiteColor];
    v35 = [(WFWidgetCell *)self nameView];
    [v35 setTextColor:v34];

    v36 = [MEMORY[0x1E69DC888] whiteColor];
    v37 = [(WFWidgetCell *)self iconView];
    [v37 setTintColor:v36];

    v38 = [MEMORY[0x1E69DC888] whiteColor];
    v39 = [(WFWidgetCell *)self progressView];
    [v39 setTintColor:v38];
  }

  else
  {
    [v5 removeFromSuperview];

    v40 = [(WFWidgetCell *)self nameView];
    [v40 setText:0];

    v38 = [(WFWidgetCell *)self iconView];
    [v38 setImage:0];
  }

  [(WFWidgetCell *)self setEnabled:v4 == 1];

  [(WFWidgetCell *)self updateGradient];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v6 touchesCancelled:a3 withEvent:a4];
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v6 touchesEnded:a3 withEvent:a4];
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v18 touchesMoved:v6 withEvent:v7];
  if ([(WFWidgetCell *)self enabled]&& [(WFWidgetCell *)self touchesContainNonIndirectTouch:v6])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
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

          if ([(WFWidgetCell *)self touchIsInView:*(*(&v14 + 1) + 8 * i) event:v7])
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = WFWidgetCell;
  [(WFWidgetCell *)&v8 touchesBegan:v6 withEvent:a4];
  if ([(WFWidgetCell *)self enabled]&& [(WFWidgetCell *)self touchesContainNonIndirectTouch:v6])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__WFWidgetCell_touchesBegan_withEvent___block_invoke;
    block[3] = &unk_1E83086B0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)touchesContainNonIndirectTouch:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] != 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)touchIsInView:(id)a3 event:(id)a4
{
  v6 = a4;
  [a3 locationInView:self];
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
    v11 = [(WFWidgetCell *)self pointInside:v6 withEvent:v8, v10];
  }

  return v11;
}

- (void)setHomeScreenTintColor:(id)a3
{
  objc_storeStrong(&self->_homeScreenTintColor, a3);
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
    v4 = _Block_copy(aBlock);
    v5 = [MEMORY[0x1E69DC888] systemGray2Color];
    v6 = (v4)[2](v4, v5);

    v7 = [MEMORY[0x1E69DC888] whiteColor];
    v8 = (v4)[2](v4, v7);

    if (v6 > v8)
    {
      [MEMORY[0x1E69DC888] systemGray2Color];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v10 = ;
  }

  else
  {
    v4 = [(WFWidgetCell *)self widgetChicletStyle];
    v9 = [v4 foregroundColor];
    v10 = [v9 platformColor];
  }

  v11 = [(WFWidgetCell *)self nameView];
  [v11 setTextColor:v10];

  v12 = [(WFWidgetCell *)self iconView];
  [v12 setTintColor:v10];

  v13 = [(WFWidgetCell *)self progressView];
  [v13 setTintColor:v10];
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

- (void)configureSheenViewIfNeededWithCornerRadius:(double)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = [(WFWidgetCell *)self sheenLayer];
  v6 = [(WFWidgetCell *)self widgetChicletStyle];
  v7 = [v6 needsSheenView];

  if (v7)
  {
    [v5 setCornerRadius:a3];
    v8 = [MEMORY[0x1E69E09E0] whiteColor];
    v9 = [v8 colorWithAlphaComponent:0.2];

    v10 = [MEMORY[0x1E69E09E0] whiteColor];
    v11 = [v10 colorWithAlphaComponent:0.001];

    v13[0] = [v9 CGColor];
    v13[1] = [v11 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [v5 setColors:v12];

    if (_UISolariumEnabled())
    {
      [v5 setType:*MEMORY[0x1E6979DB0]];
      [v5 setStartPoint:{0.0, 0.0}];
      [v5 setEndPoint:{1.0, 1.0}];
    }
  }

  else
  {
    [v5 setColors:0];
  }
}

- (void)updateGradient
{
  if (self->_action)
  {
    if (self->_isClear)
    {
      v3 = objc_alloc(MEMORY[0x1E69E0B18]);
      v4 = [MEMORY[0x1E69E09E0] colorWithWhite:1.0 alpha:0.2];
      v5 = [v3 initWithColor:v4];
LABEL_9:
      v7 = v5;

      goto LABEL_10;
    }

    if (!self->_homeScreenTintColor)
    {
      v4 = [(WFWidgetCell *)self widgetChicletStyle];
      v5 = [v4 baseGradient];
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69E0B18]) initWithColor:self->_homeScreenTintColor];
  }

  else
  {
    v6 = [(WFWidgetCell *)self emptyCellGradient];
  }

  v7 = v6;
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

- (id)imageForAction:(id)a3 dataSource:(id)a4 family:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
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
      v17 = [v8 contextualAction];
      v18 = [v17 icon];
      v19 = [v18 wfIcon];

      v20 = v19;
      if (v20)
      {
LABEL_10:
        v21 = v20;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v23 = MEMORY[0x1E69DCAD8];
          v13 = v21;
          v24 = [v23 configurationWithPointSize:5 weight:v11];
          v25 = MEMORY[0x1E69DCAB8];
          v26 = [v13 symbolName];

          v27 = [v25 _systemImageNamed:v26 withConfiguration:v24];

          v28 = [(WFWidgetCell *)self iconView];
          [v28 setContentMode:4];

          goto LABEL_20;
        }

        v13 = v21;
        objc_opt_class();
        v34 = objc_opt_isKindOfClass();

        if (v34)
        {
          v24 = [v13 image];
          v31 = [v24 platformImage];
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
        if (a5 == 1)
        {
          [MEMORY[0x1E69E0940] largeGlyphSize];
        }

        else
        {
          [MEMORY[0x1E69E0940] smallGlyphSize];
        }

        v37 = v35;
        v38 = v36;
        v39 = [v8 associatedBundleIdentifier];
        v27 = [WFApplicationIconProvider applicationIconImageForBundleIdentifier:v39 size:v37, v38];

        goto LABEL_29;
      }

      v20 = [v8 previewIcon];
      if (v20)
      {
        goto LABEL_10;
      }
    }

    v13 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v12 = [v8 identifier];
  v13 = [v9 widgetWorkflowWithIdentifier:v12];

  v14 = [v13 associatedAppBundleIdentifier];

  if (v14)
  {
    if (a5 == 1)
    {
      [MEMORY[0x1E69E0940] largeGlyphSize];
    }

    else
    {
      [MEMORY[0x1E69E0940] smallGlyphSize];
    }

    v32 = v15;
    v33 = v16;
    v24 = [v8 associatedBundleIdentifier];
    v31 = [WFApplicationIconProvider applicationIconImageForBundleIdentifier:v24 size:v32, v33];
    goto LABEL_19;
  }

  if (![v13 iconImage])
  {
    goto LABEL_24;
  }

  v29 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v30 = [v13 iconImage];
  [v13 iconImageScale];
  v24 = [v29 initWithCGImage:v30 scale:0 orientation:?];
  v31 = [v24 imageWithRenderingMode:2];
LABEL_19:
  v27 = v31;
LABEL_20:

  if (!v27)
  {
    goto LABEL_25;
  }

LABEL_29:

  return v27;
}

- (void)configureWithAction:(id)a3 dataSource:(id)a4 cornerRadius:(double)a5 widgetType:(int64_t)a6 family:(int64_t)a7 homeScreenTintColor:(id)a8 isClearStyleEnabled:(BOOL)a9
{
  v66 = a3;
  v17 = a4;
  v18 = a8;
  if ([(WFWidgetCell *)self runningState]!= 1)
  {
    goto LABEL_8;
  }

  v19 = [(WFWidgetCell *)self action];
  if (![v19 isEqual:v66])
  {
    goto LABEL_7;
  }

  v65 = v17;
  v20 = v18;
  v21 = [(WFWidgetCell *)self currentConfiguration];
  [v21 cornerRadius];
  if (v22 != a5)
  {

    v18 = v20;
    v17 = v65;
LABEL_7:

LABEL_8:
    objc_storeStrong(&self->_action, a3);
    self->_lastKnownWidgetFamily = a7;
    self->_widgetType = a6;
    objc_storeStrong(&self->_homeScreenTintColor, a8);
    self->_isClear = a9;
    v25 = a6 == 1 && a7 == 1;
    v26 = [(WFWidgetCell *)self currentConfiguration];
    [v26 setAppliesCornerRadiusDuringTouchDownOnly:v25];

    v27 = [(WFWidgetCell *)self currentConfiguration];
    [v27 cornerRadius];
    v29 = v28;

    if (v29 != a5)
    {
      v30 = [(WFWidgetCell *)self currentConfiguration];
      [v30 setCornerRadius:a5];

      v31 = [(WFWidgetCell *)self currentConfiguration];
      [(WFFloatingView *)self applyConfiguration:v31];
    }

    [(WFWidgetCell *)self resetProgressState];
    if (!v66)
    {
      [(WFWidgetCell *)self resetToEmptyState];
      goto LABEL_24;
    }

    v32 = [(WFWidgetCell *)self nameView];
    [(WFWidgetCell *)self addSubview:v32];

    v33 = [(WFWidgetCell *)self iconView];
    [(WFWidgetCell *)self addSubview:v33];

    [(WFWidgetCell *)self setEmptyStateBackgroundView:0];
    [(WFWidgetCell *)self updateGradient];
    v34 = [v66 name];
    v35 = [(WFWidgetCell *)self nameView];
    [v35 setText:v34];

    v36 = [(WFWidgetCell *)self imageForAction:v66 dataSource:v17 family:a7];
    v37 = [(WFWidgetCell *)self iconView];
    [v37 setImage:v36];

    v38 = [(WFWidgetCell *)self widgetChicletStyle];
    v39 = [v38 foregroundColor];
    v40 = [v39 platformColor];
    v41 = [(WFWidgetCell *)self iconView];
    [v41 setTintColor:v40];

    v42 = [v66 previewIcon];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v43 = _UISolariumEnabled();

      if (v43)
      {
        v44 = [(WFWidgetCell *)self widgetChicletStyle];
        [v44 foregroundOpacity];
        v46 = v45 + -0.1;
LABEL_23:
        v48 = [(WFWidgetCell *)self iconView];
        [v48 setAlpha:v46];

        v49 = [(WFWidgetCell *)self widgetChicletStyle];
        v50 = [v49 foregroundCompositingFilter];
        v51 = [(WFWidgetCell *)self iconView];
        v52 = [v51 layer];
        [v52 setCompositingFilter:v50];

        [(WFWidgetCell *)self setEnabled:1];
        v53 = [(WFWidgetCell *)self widgetChicletStyle];
        v54 = [v53 foregroundColor];
        v55 = [v54 platformColor];
        v56 = [(WFWidgetCell *)self nameView];
        [v56 setTextColor:v55];

        v57 = [(WFWidgetCell *)self widgetChicletStyle];
        [v57 foregroundOpacity];
        v59 = v58;
        v60 = [(WFWidgetCell *)self nameView];
        [v60 setAlpha:v59];

        v61 = [(WFWidgetCell *)self widgetChicletStyle];
        v62 = [v61 foregroundCompositingFilter];
        v63 = [(WFWidgetCell *)self nameView];
        v64 = [v63 layer];
        [v64 setCompositingFilter:v62];

        [(WFWidgetCell *)self configureSheenViewIfNeededWithCornerRadius:a5];
        [(WFWidgetCell *)self updateTextTintIfNeeded];
        [(WFWidgetCell *)self setNeedsLayout];
        goto LABEL_24;
      }
    }

    v44 = [(WFWidgetCell *)self widgetChicletStyle];
    [v44 foregroundOpacity];
    v46 = v47;
    goto LABEL_23;
  }

  v23 = [(WFWidgetCell *)self lastKnownWidgetFamily];

  v18 = v20;
  v17 = v65;
  if (v23 != a7)
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
  v2 = [(WFWidgetCell *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC58]) == NSOrderedDescending;
  return v2;
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
    v7 = [(WFWidgetCell *)v5 layer];
    [v7 addSublayer:v6];

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
    v12 = [(UITextView *)v11 textContainer];
    [v12 setLineBreakMode:4];

    v13 = [(UITextView *)v11 layoutManager];
    [v13 setUsesDefaultHyphenation:1];

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
    v23 = [(WFWidgetCell *)v5 layer];
    [v23 setAllowsGroupBlending:0];

    v24 = v5;
  }

  return v5;
}

@end