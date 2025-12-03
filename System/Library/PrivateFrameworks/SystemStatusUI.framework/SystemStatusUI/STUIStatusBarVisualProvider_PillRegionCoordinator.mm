@interface STUIStatusBarVisualProvider_PillRegionCoordinator
- (BOOL)handledUpdateOfActionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (STUIStatusBarPillRegionVisualProvider)visualProvider;
- (id)animationForBackgroundActivityIcon;
- (id)animationForBackgroundActivityPillWithDuration:(double)duration scale:(double)scale;
- (void)_hideActivityDetailAndUpdate:(BOOL)update;
- (void)_updateBackgroundActivityWithEntry:(id)entry timeEntry:(id)timeEntry needsUpdate:(BOOL)update;
- (void)setPillIconPlacement:(id)placement;
- (void)setPillRegion:(id)region;
- (void)setVisualProvider:(id)provider;
- (void)updateDataForBackgroundActivity:(id)activity;
- (void)updateRegion:(id)region highlighted:(BOOL)highlighted initialPress:(BOOL)press cornerRadius:(double)radius;
@end

@implementation STUIStatusBarVisualProvider_PillRegionCoordinator

- (STUIStatusBarPillRegionVisualProvider)visualProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_visualProvider);

  return WeakRetained;
}

- (void)setPillRegion:(id)region
{
  regionCopy = region;
  pillRegion = self->_pillRegion;
  p_pillRegion = &self->_pillRegion;
  if (pillRegion != regionCopy)
  {
    v8 = regionCopy;
    objc_storeStrong(p_pillRegion, region);
    [(STUIStatusBarRegion *)*p_pillRegion disableWithToken:11];
    regionCopy = v8;
  }
}

- (void)setPillIconPlacement:(id)placement
{
  placementCopy = placement;
  objc_storeStrong(&self->_pillIconPlacement, placement);
  backgroundActivityDetailPlacement = self->_backgroundActivityDetailPlacement;
  self->_backgroundActivityDetailPlacement = placementCopy;
}

- (void)setVisualProvider:(id)provider
{
  obj = provider;
  self->_visualProviderImplementsBackgroundActivityPillAnimation = objc_opt_respondsToSelector() & 1;
  objc_storeWeak(&self->_visualProvider, obj);
}

- (void)updateDataForBackgroundActivity:(id)activity
{
  activityCopy = activity;
  if (self->_pillRegion || self->_backgroundActivityDetailPlacement)
  {
    v28 = activityCopy;
    backgroundActivityEntry = [activityCopy backgroundActivityEntry];
    v6 = backgroundActivityEntry;
    pillRegion = self->_pillRegion;
    if (backgroundActivityEntry)
    {
      if (!pillRegion)
      {
        goto LABEL_18;
      }

      isEnabled = [backgroundActivityEntry isEnabled];
      v9 = self->_pillRegion;
      if (isEnabled)
      {
        [(STUIStatusBarRegion *)v9 enableWithToken:11];
        backgroundActivityIdentifier = [v6 backgroundActivityIdentifier];
        v11 = [STUIStatusBarActivityAction actionForBackgroundActivityWithIdentifier:backgroundActivityIdentifier];
        [(STUIStatusBarRegion *)self->_pillRegion setAction:v11];

        visualProvider = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
        statusBar = [visualProvider statusBar];
        currentAggregatedData = [statusBar currentAggregatedData];
        v15 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D6BD70]];
        v16 = [currentAggregatedData dataByApplyingUpdate:v28 keys:v15];

        backNavigationEntry = [v16 backNavigationEntry];
        if ([backNavigationEntry isEnabled])
        {
          disabledEntry = [MEMORY[0x277D6BAF0] disabledEntry];
          [v28 setBackNavigationEntry:disabledEntry];
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

    shortTimeEntry = [v28 shortTimeEntry];

    if (shortTimeEntry)
    {
      shortTimeEntry2 = [v28 shortTimeEntry];
      isEnabled2 = [shortTimeEntry2 isEnabled];
      visualProvider2 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
      statusBar2 = [visualProvider2 statusBar];
      currentAggregatedData2 = [statusBar2 currentAggregatedData];
      shortTimeEntry3 = [currentAggregatedData2 shortTimeEntry];
      isEnabled3 = [shortTimeEntry3 isEnabled];

      if (v6 || ((isEnabled2 ^ isEnabled3) & 1) != 0)
      {
LABEL_18:
        if (self->_backgroundActivityDetailPlacement)
        {
          shortTimeEntry4 = [v28 shortTimeEntry];
          [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self _updateBackgroundActivityWithEntry:v6 timeEntry:shortTimeEntry4 needsUpdate:0];
        }
      }
    }

    else if (v6)
    {
      goto LABEL_18;
    }

LABEL_20:

    activityCopy = v28;
  }
}

- (void)_updateBackgroundActivityWithEntry:(id)entry timeEntry:(id)timeEntry needsUpdate:(BOOL)update
{
  updateCopy = update;
  entryCopy = entry;
  timeEntryCopy = timeEntry;
  backgroundActivityDetailTimer = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self backgroundActivityDetailTimer];
  [backgroundActivityDetailTimer invalidate];

  [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self setBackgroundActivityDetailTimer:0];
  if (entryCopy)
  {
    if (timeEntryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    visualProvider = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    statusBar = [visualProvider statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    entryCopy = [currentAggregatedData backgroundActivityEntry];

    if (timeEntryCopy)
    {
      goto LABEL_3;
    }
  }

  visualProvider2 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
  statusBar2 = [visualProvider2 statusBar];
  currentAggregatedData2 = [statusBar2 currentAggregatedData];
  timeEntryCopy = [currentAggregatedData2 shortTimeEntry];

LABEL_3:
  if (![entryCopy isEnabled])
  {
    goto LABEL_15;
  }

  if (!self->_pillRegion)
  {
LABEL_13:
    [entryCopy displayStartDate];
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
    [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self _hideActivityDetailAndUpdate:updateCopy];
    goto LABEL_16;
  }

  backgroundActivityIdentifier = [entryCopy backgroundActivityIdentifier];
  if (![STUIStatusBarPillBackgroundActivityItem shouldKeepIconVisibleForActivityWithIdentifier:backgroundActivityIdentifier])
  {
    visualProvider3 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    if ([visualProvider3 expanded])
    {

      goto LABEL_8;
    }

    isEnabled = [timeEntryCopy isEnabled];

    if (!isEnabled)
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

- (void)_hideActivityDetailAndUpdate:(BOOL)update
{
  updateCopy = update;
  visualProvider = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
  expanded = [visualProvider expanded];

  if ((expanded & 1) == 0)
  {
    [(STUIStatusBarDisplayItemPlacement *)self->_backgroundActivityDetailPlacement setEnabled:0];
    if (updateCopy)
    {
      visualProvider2 = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
      statusBar = [visualProvider2 statusBar];
      [statusBar updateWithAnimations:MEMORY[0x277CBEBF8]];
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

- (id)animationForBackgroundActivityPillWithDuration:(double)duration scale:(double)scale
{
  v7 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:"fadeAnimationWithDuration:scale:" scale:?];
  v8 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale];
  [v8 setPriority:20];
  v9 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale offset:0.0, 0.0];
  [v9 setPriority:20];
  v10 = [STUIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale offset:-0.0, 0.0];
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
    visualProvider = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    v15 = [visualProvider animationForBackgroundActivityPillAnimation:v7 duration:duration scale:scale];

    v7 = v15;
  }

  return v7;
}

- (void)updateRegion:(id)region highlighted:(BOOL)highlighted initialPress:(BOOL)press cornerRadius:(double)radius
{
  pressCopy = press;
  highlightedCopy = highlighted;
  v15[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  highlightView = [regionCopy highlightView];
  if (!highlightView)
  {
    highlightView = objc_alloc_init(STUIStatusBarRoundedCornerView);
    [(STUIStatusBarRoundedCornerView *)highlightView setCornerRadius:radius];
    [regionCopy setHighlightView:highlightView];
  }

  v11 = MEMORY[0x277D75220];
  v15[0] = highlightView;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__STUIStatusBarVisualProvider_PillRegionCoordinator_updateRegion_highlighted_initialPress_cornerRadius___block_invoke;
  v13[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v14 = highlightedCopy;
  [v11 _setVisuallyHighlighted:highlightedCopy forViews:v12 initialPress:pressCopy highlightBlock:v13];
}

- (BOOL)handledUpdateOfActionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  pressCopy = press;
  highlightedCopy = highlighted;
  actionableCopy = actionable;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v9 = actionableCopy;
  if (!v9)
  {
    goto LABEL_6;
  }

  pillRegion = [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self pillRegion];

  if (pillRegion != v9)
  {
    goto LABEL_6;
  }

  [(STUIStatusBarVisualProvider_PillRegionCoordinator *)self updateRegion:v9 highlighted:highlightedCopy initialPress:pressCopy cornerRadius:-1.0];
  v11 = 1;
LABEL_7:

  return v11;
}

@end