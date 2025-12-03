@interface _UIFocusItemFrameReporter
- (BOOL)_rect:(CGRect)_rect differsFromRect:(CGRect)rect lowerThreshold:(double)threshold upperThreshold:(double)upperThreshold;
- (CGRect)_globalFrameForFocusedItemInSystem:(id)system;
- (UIFocusSystem)focusSystem;
- (_UIFocusItemFrameReporter)initWithFocusSystem:(id)system;
- (void)_cancelRepeatingFrameUpdate;
- (void)_focusSystemEnabledStateDidChange:(id)change;
- (void)_reportFocusFrameForCurrentlyFocusedItem;
- (void)_reportFocusFrameUpdateForGlobalFrame:(CGRect)frame;
- (void)_scheduleRepeatingFrameUpdate;
- (void)dealloc;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation _UIFocusItemFrameReporter

- (_UIFocusItemFrameReporter)initWithFocusSystem:(id)system
{
  systemCopy = system;
  v9.receiver = self;
  v9.super_class = _UIFocusItemFrameReporter;
  v5 = [(_UIFocusItemFrameReporter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_focusSystem, systemCopy);
    -[_UIFocusItemFrameReporter setEnabled:](v6, "setEnabled:", [systemCopy _isEnabled]);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__focusSystemEnabledStateDidChange_ name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UIFocusItemFrameReporter;
  [(_UIFocusItemFrameReporter *)&v4 dealloc];
}

- (void)_reportFocusFrameForCurrentlyFocusedItem
{
  if (self->_enabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      [(_UIFocusItemFrameReporter *)self _globalFrameForFocusedItemInSystem:WeakRetained];
      [(_UIFocusItemFrameReporter *)self _reportFocusFrameUpdateForGlobalFrame:?];
      WeakRetained = v4;
    }
  }
}

- (void)_reportFocusFrameUpdateForGlobalFrame:(CGRect)frame
{
  if (self->_enabled)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    focusSystem = [(_UIFocusItemFrameReporter *)self focusSystem];
    focusedItem = [focusSystem focusedItem];
    v10 = _UIFocusEnvironmentContainingView(focusedItem);
    _window = [v10 _window];

    if (_window)
    {
      _windowHostingScene = [_window _windowHostingScene];
      _effectiveUIClientSettings = [_windowHostingScene _effectiveUIClientSettings];
      [_effectiveUIClientSettings screenFocusedFrame];
      v46 = v15;
      v47 = v14;
      v44 = v17;
      v45 = v16;

      [_window frame];
      v19 = v18;
      v21 = v20;
      v41 = v22;
      v42 = v23;
      [_window safeAreaInsets];
      v25 = v24;
      v26 = y;
      v28 = v27;
      v40 = v29;
      v31 = v30;
      v49.origin.x = x;
      v43 = v26;
      v49.origin.y = v26;
      v49.size.width = width;
      v49.size.height = height;
      if (CGRectIsNull(v49))
      {
        v32 = v43;
      }

      else
      {
        v33 = v19 + v28;
        v34 = v21 + v25;
        v35 = v41 - (v28 + v31);
        v36 = v42 - (v25 + v40);
        if (v35 < width)
        {
          width = v35;
        }

        if (v36 < height)
        {
          height = v42 - (v25 + v40);
        }

        v50.origin.x = v33;
        v50.origin.y = v34;
        v50.size.width = v35;
        v50.size.height = v42 - (v25 + v40);
        MinX = CGRectGetMinX(v50);
        v51.origin.x = v33;
        v51.origin.y = v34;
        v51.size.width = v35;
        v51.size.height = v36;
        x = fmax(MinX, fmin(x, CGRectGetMaxX(v51) - width));
        v52.origin.x = v33;
        v52.origin.y = v34;
        v52.size.width = v35;
        v52.size.height = v36;
        MinY = CGRectGetMinY(v52);
        v53.origin.x = v33;
        v53.origin.y = v34;
        v53.size.width = v35;
        v53.size.height = v36;
        v32 = fmax(MinY, fmin(v43, CGRectGetMaxY(v53) - height));
      }

      if ([(_UIFocusItemFrameReporter *)self _rect:x differsFromRect:v32 lowerThreshold:width upperThreshold:height, v47, v46, v45, v44, 0x3FECCCCCCCCCCCCDLL, 0x3FF199999999999ALL])
      {
        _windowHostingScene2 = [_window _windowHostingScene];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __67___UIFocusItemFrameReporter__reportFocusFrameUpdateForGlobalFrame___block_invoke;
        v48[3] = &__block_descriptor_64_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
        *&v48[4] = x;
        *&v48[5] = v32;
        *&v48[6] = width;
        *&v48[7] = height;
        [_windowHostingScene2 _updateUIClientSettingsWithBlock:v48];
      }
    }
  }
}

- (void)_scheduleRepeatingFrameUpdate
{
  if (self->_enabled)
  {
    if (!self->_focusedFrameUpdateTimer)
    {
      objc_initWeak(&location, self);
      v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      focusedFrameUpdateTimer = self->_focusedFrameUpdateTimer;
      self->_focusedFrameUpdateTimer = v3;

      v5 = self->_focusedFrameUpdateTimer;
      v6 = dispatch_time(0, 0);
      dispatch_source_set_timer(v5, v6, 0xBEBC200uLL, 0x2FAF080uLL);
      v7 = self->_focusedFrameUpdateTimer;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58___UIFocusItemFrameReporter__scheduleRepeatingFrameUpdate__block_invoke;
      v8[3] = &unk_1E70F5A28;
      objc_copyWeak(&v9, &location);
      dispatch_source_set_event_handler(v7, v8);
      dispatch_resume(self->_focusedFrameUpdateTimer);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [(_UIFocusItemFrameReporter *)self _cancelRepeatingFrameUpdate];
  }
}

- (void)_cancelRepeatingFrameUpdate
{
  focusedFrameUpdateTimer = self->_focusedFrameUpdateTimer;
  if (focusedFrameUpdateTimer)
  {
    dispatch_source_cancel(focusedFrameUpdateTimer);
    v4 = self->_focusedFrameUpdateTimer;
    self->_focusedFrameUpdateTimer = 0;
  }
}

- (void)_focusSystemEnabledStateDidChange:(id)change
{
  changeCopy = change;
  focusSystem = [(_UIFocusItemFrameReporter *)self focusSystem];
  object = [changeCopy object];

  v6 = focusSystem;
  if (object == focusSystem)
  {
    -[_UIFocusItemFrameReporter setEnabled:](self, "setEnabled:", [focusSystem _isEnabled]);
    v6 = focusSystem;
  }
}

- (BOOL)_rect:(CGRect)_rect differsFromRect:(CGRect)rect lowerThreshold:(double)threshold upperThreshold:(double)upperThreshold
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = _rect.size.height;
  v11 = _rect.size.width;
  v12 = _rect.origin.y;
  v13 = _rect.origin.x;
  IsNull = CGRectIsNull(_rect);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (IsNull == CGRectIsNull(v23) && (v24.origin.x = v13, v24.origin.y = v12, v24.size.width = v11, v24.size.height = v10, v26.origin.x = x, v26.origin.y = y, v26.size.width = width, v26.size.height = height, v25 = CGRectIntersection(v24, v26), v15 = v25.size.width, v16 = v25.size.height, !CGRectIsNull(v25)) && ((v17 = v11 * v10 / (v15 * v16), v17 >= threshold) ? (v18 = v17 <= upperThreshold) : (v18 = 0), v18))
  {
    v21 = v10 / height < threshold;
    if (v10 / height > upperThreshold)
    {
      v21 = 1;
    }

    v22 = v11 / width < threshold;
    if (v11 / width > upperThreshold)
    {
      v22 = 1;
    }

    v19 = v22 || v21;
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

- (CGRect)_globalFrameForFocusedItemInSystem:(id)system
{
  systemCopy = system;
  focusedItem = [systemCopy focusedItem];
  parentFocusEnvironment = [focusedItem parentFocusEnvironment];
  focusItemContainer = [parentFocusEnvironment focusItemContainer];

  if (focusedItem && focusItemContainer)
  {
    focusItemContainer2 = [systemCopy focusItemContainer];
    coordinateSpace = [focusItemContainer2 coordinateSpace];

    coordinateSpace2 = [focusItemContainer coordinateSpace];
    [focusedItem frame];
    [coordinateSpace2 convertRect:coordinateSpace toCoordinateSpace:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v15 = *(MEMORY[0x1E695F050] + 16);
    v17 = *(MEMORY[0x1E695F050] + 24);
  }

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    if (enabled)
    {
      self->_enabled = 1;

      [(_UIFocusItemFrameReporter *)self _scheduleRepeatingFrameUpdate];
    }

    else
    {
      [(_UIFocusItemFrameReporter *)self _cancelRepeatingFrameUpdate];
      [(_UIFocusItemFrameReporter *)self _reportFocusFrameUpdateForGlobalFrame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      self->_enabled = 0;
    }
  }
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  return WeakRetained;
}

@end