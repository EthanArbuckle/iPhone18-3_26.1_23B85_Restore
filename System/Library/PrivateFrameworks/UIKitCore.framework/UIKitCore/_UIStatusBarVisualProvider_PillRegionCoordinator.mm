@interface _UIStatusBarVisualProvider_PillRegionCoordinator
- (BOOL)handledUpdateOfActionable:(id)actionable highlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (_UIStatusBarPillRegionVisualProvider)visualProvider;
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

@implementation _UIStatusBarVisualProvider_PillRegionCoordinator

- (void)setPillRegion:(id)region
{
  regionCopy = region;
  pillRegion = self->_pillRegion;
  p_pillRegion = &self->_pillRegion;
  if (pillRegion != regionCopy)
  {
    v8 = regionCopy;
    objc_storeStrong(p_pillRegion, region);
    [(_UIStatusBarRegion *)*p_pillRegion disableWithToken:11];
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
    v27 = activityCopy;
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
        [(_UIStatusBarRegion *)v9 enableWithToken:11];
        v10 = +[_UIStatusBarActivityAction actionForBackgroundActivityType:](_UIStatusBarActivityAction, "actionForBackgroundActivityType:", [v6 type]);
        [(_UIStatusBarRegion *)self->_pillRegion setAction:v10];

        visualProvider = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
        statusBar = [visualProvider statusBar];
        currentAggregatedData = [statusBar currentAggregatedData];
        v14 = [MEMORY[0x1E695DFD8] setWithObject:@"backNavigationEntry"];
        v15 = [currentAggregatedData dataByApplyingUpdate:v27 keys:v14];

        backNavigationEntry = [v15 backNavigationEntry];
        if ([backNavigationEntry isEnabled])
        {
          v17 = +[(_UIStatusBarDataEntry *)_UIStatusBarDataStringEntry];
          [v27 setBackNavigationEntry:v17];
        }
      }

      else
      {
        [(_UIStatusBarRegion *)v9 disableWithToken:11];
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

    shortTimeEntry = [v27 shortTimeEntry];

    if (shortTimeEntry)
    {
      shortTimeEntry2 = [v27 shortTimeEntry];
      isEnabled2 = [shortTimeEntry2 isEnabled];
      visualProvider2 = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
      statusBar2 = [visualProvider2 statusBar];
      currentAggregatedData2 = [statusBar2 currentAggregatedData];
      shortTimeEntry3 = [currentAggregatedData2 shortTimeEntry];
      isEnabled3 = [shortTimeEntry3 isEnabled];

      if (v6 || ((isEnabled2 ^ isEnabled3) & 1) != 0)
      {
LABEL_18:
        if (self->_backgroundActivityDetailPlacement)
        {
          shortTimeEntry4 = [v27 shortTimeEntry];
          [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self _updateBackgroundActivityWithEntry:v6 timeEntry:shortTimeEntry4 needsUpdate:0];
        }
      }
    }

    else if (v6)
    {
      goto LABEL_18;
    }

LABEL_20:

    activityCopy = v27;
  }
}

- (void)_updateBackgroundActivityWithEntry:(id)entry timeEntry:(id)timeEntry needsUpdate:(BOOL)update
{
  updateCopy = update;
  entryCopy = entry;
  timeEntryCopy = timeEntry;
  backgroundActivityDetailTimer = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self backgroundActivityDetailTimer];
  [backgroundActivityDetailTimer invalidate];

  [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self setBackgroundActivityDetailTimer:0];
  if (!entryCopy)
  {
    visualProvider = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    statusBar = [visualProvider statusBar];
    currentAggregatedData = [statusBar currentAggregatedData];
    entryCopy = [currentAggregatedData backgroundActivityEntry];

    if (timeEntryCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    visualProvider2 = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    statusBar2 = [visualProvider2 statusBar];
    currentAggregatedData2 = [statusBar2 currentAggregatedData];
    timeEntryCopy = [currentAggregatedData2 shortTimeEntry];

    goto LABEL_3;
  }

  if (!timeEntryCopy)
  {
    goto LABEL_9;
  }

  if (![entryCopy isEnabled])
  {
    goto LABEL_13;
  }

LABEL_3:
  if (self->_pillRegion)
  {
    if (+[_UIStatusBarPillBackgroundActivityItem shouldKeepIconVisibleForActivityType:](_UIStatusBarPillBackgroundActivityItem, "shouldKeepIconVisibleForActivityType:", [entryCopy type]))
    {
LABEL_14:
      [(_UIStatusBarDisplayItemPlacement *)self->_backgroundActivityDetailPlacement setEnabled:1];
      goto LABEL_15;
    }

    visualProvider3 = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    if ([visualProvider3 expanded])
    {

      goto LABEL_14;
    }

    isEnabled = [timeEntryCopy isEnabled];

    if (!isEnabled)
    {
      goto LABEL_14;
    }
  }

  [entryCopy displayStartDate];
  v20 = v19 + 3.0 - CACurrentMediaTime();
  if (v20 > 0.0)
  {
    [(_UIStatusBarDisplayItemPlacement *)self->_backgroundActivityDetailPlacement setEnabled:1];
    objc_initWeak(&location, self);
    v21 = MEMORY[0x1E695DFF0];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __109___UIStatusBarVisualProvider_PillRegionCoordinator__updateBackgroundActivityWithEntry_timeEntry_needsUpdate___block_invoke;
    v26 = &unk_1E70F4130;
    objc_copyWeak(&v27, &location);
    v22 = [v21 scheduledTimerWithTimeInterval:0 repeats:&v23 block:v20];
    [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self setBackgroundActivityDetailTimer:v22, v23, v24, v25, v26];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_13:
    [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self _hideActivityDetailAndUpdate:updateCopy];
  }

LABEL_15:
}

- (void)_hideActivityDetailAndUpdate:(BOOL)update
{
  updateCopy = update;
  visualProvider = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
  expanded = [visualProvider expanded];

  if ((expanded & 1) == 0)
  {
    [(_UIStatusBarDisplayItemPlacement *)self->_backgroundActivityDetailPlacement setEnabled:0];
    if (updateCopy)
    {
      visualProvider2 = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
      statusBar = [visualProvider2 statusBar];
      [statusBar updateWithAnimations:MEMORY[0x1E695E0F0]];
    }
  }
}

- (id)animationForBackgroundActivityIcon
{
  v2 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
  v3 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
  [v3 setPriority:15];
  v4 = +[_UIStatusBarBackgroundActivityItem secondaryIconDisplayIdentifier];
  [v2 addSubAnimation:v3 forDisplayItemWithIdentifier:v4];

  v5 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:0.5];
  [v5 setPriority:10];
  v6 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];
  [v2 addSubAnimation:v5 forDisplayItemWithIdentifier:v6];

  v7 = +[(_UIStatusBarItem *)_UIStatusBarVoiceControlItem];
  [v2 addSubAnimation:v5 forDisplayItemWithIdentifier:v7];

  [v2 setDelaysDependentItems:1];

  return v2;
}

- (id)animationForBackgroundActivityPillWithDuration:(double)duration scale:(double)scale
{
  v7 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:"fadeAnimationWithDuration:scale:" scale:?];
  v8 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale];
  [v8 setPriority:20];
  v9 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale offset:0.0, 0.0];
  [v9 setPriority:20];
  v10 = [_UIStatusBarAnimationFactory fadeAnimationWithDuration:duration scale:scale offset:-0.0, 0.0];
  [v10 setPriority:20];
  v11 = +[(_UIStatusBarItem *)_UIStatusBarPillBackgroundActivityItem];
  [v7 addSubAnimation:v9 forDisplayItemWithIdentifier:v11];

  v12 = +[(_UIStatusBarBackgroundActivityItem *)_UIStatusBarPillBackgroundActivityItem];
  [v7 addSubAnimation:v10 forDisplayItemWithIdentifier:v12];

  v13 = +[_UIStatusBarTimeItem pillTimeDisplayIdentifier];
  [v7 addSubAnimation:v8 forDisplayItemWithIdentifier:v13];

  [v7 setDelaysDependentItems:1];
  if (self->_visualProviderImplementsBackgroundActivityPillAnimation)
  {
    visualProvider = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self visualProvider];
    v15 = [visualProvider animationForBackgroundActivityPillAnimation:v7 duration:duration scale:scale];

    v7 = v15;
  }

  return v7;
}

- (void)updateRegion:(id)region highlighted:(BOOL)highlighted initialPress:(BOOL)press cornerRadius:(double)radius
{
  pressCopy = press;
  highlightedCopy = highlighted;
  v14[1] = *MEMORY[0x1E69E9840];
  regionCopy = region;
  highlightView = [regionCopy highlightView];
  if (!highlightView)
  {
    highlightView = objc_alloc_init(_UIStatusBarRoundedCornerView);
    [(_UIStatusBarRoundedCornerView *)highlightView setCornerRadius:radius];
    [regionCopy setHighlightView:highlightView];
  }

  v14[0] = highlightView;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103___UIStatusBarVisualProvider_PillRegionCoordinator_updateRegion_highlighted_initialPress_cornerRadius___block_invoke;
  v12[3] = &__block_descriptor_33_e16_v16__0__UIView_8l;
  v13 = highlightedCopy;
  [UIButton _setVisuallyHighlighted:highlightedCopy forViews:v11 initialPress:pressCopy highlightBlock:v12];
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

  pillRegion = [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self pillRegion];

  if (pillRegion != v9)
  {
    goto LABEL_6;
  }

  [(_UIStatusBarVisualProvider_PillRegionCoordinator *)self updateRegion:v9 highlighted:highlightedCopy initialPress:pressCopy cornerRadius:-1.0];
  v11 = 1;
LABEL_7:

  return v11;
}

- (_UIStatusBarPillRegionVisualProvider)visualProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_visualProvider);

  return WeakRetained;
}

@end