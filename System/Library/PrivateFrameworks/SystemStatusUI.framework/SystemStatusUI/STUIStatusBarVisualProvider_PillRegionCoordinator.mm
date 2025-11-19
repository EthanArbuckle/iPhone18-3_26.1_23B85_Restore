@interface STUIStatusBarVisualProvider_PillRegionCoordinator
- (BOOL)handledUpdateOfActionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5;
- (STUIStatusBarPillRegionVisualProvider)visualProvider;
- (id)animationForBackgroundActivityIcon;
- (id)animationForBackgroundActivityPillWithDuration:(double)a3 scale:(double)a4;
- (void)_hideActivityDetailAndUpdate:(BOOL)a3;
- (void)_updateBackgroundActivityWithEntry:(id)a3 timeEntry:(id)a4 needsUpdate:(BOOL)a5;
- (void)setPillIconPlacement:(id)a3;
- (void)setPillRegion:(id)a3;
- (void)setVisualProvider:(id)a3;
- (void)updateDataForBackgroundActivity:(id)a3;
- (void)updateRegion:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5 cornerRadius:(double)a6;
@end

@implementation STUIStatusBarVisualProvider_PillRegionCoordinator

- (STUIStatusBarPillRegionVisualProvider)visualProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_visualProvider);

  return WeakRetained;
}

- (void)setPillRegion:(id)a3
{
  v5 = a3;
  pillRegion = self->_pillRegion;
  p_pillRegion = &self->_pillRegion;
  if (pillRegion != v5)
  {
    v8 = v5;
    objc_storeStrong(p_pillRegion, a3);
    [(STUIStatusBarRegion *)*p_pillRegion disableWithToken:11];
    v5 = v8;
  }
}

- (void)setPillIconPlacement:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_pillIconPlacement, a3);
  backgroundActivityDetailPlacement = self->_backgroundActivityDetailPlacement;
  self->_backgroundActivityDetailPlacement = v5;
}

- (void)setVisualProvider:(id)a3
{
  obj = a3;
  self->_visualProviderImplementsBackgroundActivityPillAnimation = objc_opt_respondsToSelector() & 1;
  objc_storeWeak(&self->_visualProvider, obj);
}

- (void)updateDataForBackgroundActivity:(id)a3
{
  v4 = a3;
  if (self->_pillRegion || self->_backgroundActivityDetailPlacement)
  {
    v28 = v4;
    v5 = [v4 backgroundActivityEntry];
    v6 = v5;
    pillRegion = self->_pillRegion;
    if (v5)
    {
      if (!pillRegion)
      {
        goto LABEL_18;
      }

      v8 = [v5 isEnabled];
      v9 = self->_pillRegion;
      if (v8)
      {
        [(STUIStatusBarRegion *)v9 enableWithToken:11];
        v10 = [v6 backgroundActivityIdentifier];
        v11 = [STUIStatusBarActivityAction actionForBackgroundActivityWithIdentifier:v10];
        [(STUIStatusBarRegion *)self->_pillRegion setAction:v11];

        v12 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
        v13 = [v12 statusBar];
        v14 = [v13 currentAggregatedData];
        v15 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BD70]];
        v16 = [v14 dataByApplyingUpdate:v28 keys:v15];

        v17 = [v16 backNavigationEntry];
        if ([v17 isEnabled])
        {
          v18 = [MEMORY[0x277D6BAF0] disabledEntry];
          [v28 setBackNavigationEntry:v18];
        }
      }

      else
      {
        [(STUIStatusBarRegion *)v9 disableWithToken:11];
      }

      if (!self->_pillRegion)
      {
        goto LABEL_18;
      }
    }

    else if (!pillRegion)
    {
      goto LABEL_20;
    }

    v19 = [v28 shortTimeEntry];

    if (v19)
    {
      v20 = [v28 shortTimeEntry];
      v21 = [v20 isEnabled];
      v22 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
      v23 = [v22 statusBar];
      v24 = [v23 currentAggregatedData];
      v25 = [v24 shortTimeEntry];
      v26 = [v25 isEnabled];

      if (v6 || ((v21 ^ v26) & 1) != 0)
      {
LABEL_18:
        if (self->_backgroundActivityDetailPlacement)
        {
          v27 = [v28 shortTimeEntry];
          [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self _updateBackgroundActivityWithEntry:v6 timeEntry:v27 needsUpdate:0];
        }
      }
    }

    else if (v6)
    {
      goto LABEL_18;
    }

LABEL_20:

    v4 = v28;
  }
}

- (void)_updateBackgroundActivityWithEntry:(id)a3 timeEntry:(id)a4 needsUpdate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self backgroundActivityDetailTimer];
  [v10 invalidate];

  [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self setBackgroundActivityDetailTimer:0];
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    v14 = [v13 statusBar];
    v15 = [v14 currentAggregatedData];
    v8 = [v15 backgroundActivityEntry];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
  v17 = [v16 statusBar];
  v18 = [v17 currentAggregatedData];
  v9 = [v18 shortTimeEntry];

LABEL_3:
  if (![v8 isEnabled])
  {
    goto LABEL_15;
  }

  if (!self->_pillRegion)
  {
LABEL_13:
    [v8 displayStartDate];
    v21 = v20 + 3.0 - CACurrentMediaTime();
    if (v21 > 0.0)
    {
      [(STUIStatusBarDisplayItemPlacement *)self->_backgroundActivityDetailPlacement setEnabled:1];
      objc_initWeak(&location, self);
      v22 = MEMORY[0x277CBEBB8];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __110__STUIStatusBarVisualProvider_PillRegionCoordinator__updateBackgroundActivityWithEntry_timeEntry_needsUpdate___block_invoke;
      v27 = &unk_279D38178;
      objc_copyWeak(&v28, &location);
      v23 = [v22 scheduledTimerWithTimeInterval:0 repeats:&v24 block:v21];
      [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self setBackgroundActivityDetailTimer:v23, v24, v25, v26, v27];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      goto LABEL_16;
    }

LABEL_15:
    [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self _hideActivityDetailAndUpdate:v5];
    goto LABEL_16;
  }

  v11 = [v8 backgroundActivityIdentifier];
  if (![STUIStatusBarPillBackgroundActivityItem shouldKeepIconVisibleForActivityWithIdentifier:v11])
  {
    v12 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    if ([v12 expanded])
    {

      goto LABEL_8;
    }

    v19 = [v9 isEnabled];

    if (!v19)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_8:

LABEL_9:
  [(STUIStatusBarDisplayItemPlacement *)self->_backgroundActivityDetailPlacement setEnabled:1];
LABEL_16:
}

- (void)_hideActivityDetailAndUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
  v6 = [v5 expanded];

  if ((v6 & 1) == 0)
  {
    [(STUIStatusBarDisplayItemPlacement *)self->_backgroundActivityDetailPlacement setEnabled:0];
    if (v3)
    {
      v8 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
      v7 = [v8 statusBar];
      [v7 updateWithAnimations:MEMORY[0x277CBEBF8]];
    }
  }
}

- (id)animationForBackgroundActivityIcon
{
  v2 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
  v3 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
  [v3 setPriority:15];
  v4 = +[STUIStatusBarBackgroundActivityItem secondaryIconDisplayIdentifier];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v4];

  v5 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
  [v5 setPriority:10];
  v6 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];
  [v2 addSubAnimation:v5 forDisplayItemWithIdentifier:v6];

  v7 = +[(STUIStatusBarItem *)STUIStatusBarVoiceControlItem];
  [v2 addSubAnimation:v5 forDisplayItemWithIdentifier:v7];

  [v2 setDelaysDependentItems:1];

  return v2;
}

- (id)animationForBackgroundActivityPillWithDuration:(double)a3 scale:(double)a4
{
  v7 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:"fadeAnimationWithDuration:scale:" scale:?];
  v8 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:a3 scale:a4];
  [v8 setPriority:20];
  v9 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:a3 scale:a4 offset:0.0, 0.0];
  [v9 setPriority:20];
  v10 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:a3 scale:a4 offset:-0.0, 0.0];
  [v10 setPriority:20];
  v11 = +[(STUIStatusBarItem *)STUIStatusBarPillBackgroundActivityItem];
  [v7 addSubAnimation:v9 forDisplayItemWithIdentifier:v11];

  v12 = +[(STUIStatusBarBackgroundActivityItem *)STUIStatusBarPillBackgroundActivityItem];
  [v7 addSubAnimation:v10 forDisplayItemWithIdentifier:v12];

  v13 = +[STUIStatusBarTimeItem pillTimeDisplayIdentifier];
  [v7 addSubAnimation:v8 forDisplayItemWithIdentifier:v13];

  [v7 setDelaysDependentItems:1];
  if (self->_visualProviderImplementsBackgroundActivityPillAnimation)
  {
    v14 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    v15 = [v14 animationForBackgroundActivityPillAnimation:v7 duration:a3 scale:a4];

    v7 = v15;
  }

  return v7;
}

- (void)updateRegion:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5 cornerRadius:(double)a6
{
  v7 = a5;
  v8 = a4;
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 highlightView];
  if (!v10)
  {
    v10 = objc_alloc_init(STUIStatusBarRoundedCornerView);
    [(STUIStatusBarRoundedCornerView *)v10 setCornerRadius:a6];
    [v9 setHighlightView:v10];
  }

  v11 = MEMORY[0x277D75220];
  v15[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__STUIStatusBarVisualProvider_PillRegionCoordinator_updateRegion_highlighted_initialPress_cornerRadius___block_invoke;
  v13[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v14 = v8;
  [v11 _setVisuallyHighlighted:v8 forViews:v12 initialPress:v7 highlightBlock:v13];
}

- (BOOL)handledUpdateOfActionable:(id)a3 highlighted:(BOOL)a4 initialPress:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v9 = v8;
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self pillRegion];

  if (v10 != v9)
  {
    goto LABEL_6;
  }

  [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self updateRegion:v9 highlighted:v6 initialPress:v5 cornerRadius:-1.0];
  v11 = 1;
LABEL_7:

  return v11;
}

@end