@interface _UIFocusItemFrameReporter
- (BOOL)_rect:(CGRect)a3 differsFromRect:(CGRect)a4 lowerThreshold:(double)a5 upperThreshold:(double)a6;
- (CGRect)_globalFrameForFocusedItemInSystem:(id)a3;
- (UIFocusSystem)focusSystem;
- (_UIFocusItemFrameReporter)initWithFocusSystem:(id)a3;
- (void)_cancelRepeatingFrameUpdate;
- (void)_focusSystemEnabledStateDidChange:(id)a3;
- (void)_reportFocusFrameForCurrentlyFocusedItem;
- (void)_reportFocusFrameUpdateForGlobalFrame:(CGRect)a3;
- (void)_scheduleRepeatingFrameUpdate;
- (void)dealloc;
- (void)setEnabled:(BOOL)a3;
@end

@implementation _UIFocusItemFrameReporter

- (_UIFocusItemFrameReporter)initWithFocusSystem:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIFocusItemFrameReporter;
  v5 = [(_UIFocusItemFrameReporter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_focusSystem, v4);
    -[_UIFocusItemFrameReporter setEnabled:](v6, "setEnabled:", [v4 _isEnabled]);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__focusSystemEnabledStateDidChange_ name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:0];

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

- (void)_reportFocusFrameUpdateForGlobalFrame:(CGRect)a3
{
  if (self->_enabled)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v8 = [(_UIFocusItemFrameReporter *)self focusSystem];
    v9 = [v8 focusedItem];
    v10 = _UIFocusEnvironmentContainingView(v9);
    v11 = [v10 _window];

    if (v11)
    {
      v12 = [v11 _windowHostingScene];
      v13 = [v12 _effectiveUIClientSettings];
      [v13 screenFocusedFrame];
      v46 = v15;
      v47 = v14;
      v44 = v17;
      v45 = v16;

      [v11 frame];
      v19 = v18;
      v21 = v20;
      v41 = v22;
      v42 = v23;
      [v11 safeAreaInsets];
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
        v39 = [v11 _windowHostingScene];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __67___UIFocusItemFrameReporter__reportFocusFrameUpdateForGlobalFrame___block_invoke;
        v48[3] = &__block_descriptor_64_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
        *&v48[4] = x;
        *&v48[5] = v32;
        *&v48[6] = width;
        *&v48[7] = height;
        [v39 _updateUIClientSettingsWithBlock:v48];
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

- (void)_focusSystemEnabledStateDidChange:(id)a3
{
  v4 = a3;
  v7 = [(_UIFocusItemFrameReporter *)self focusSystem];
  v5 = [v4 object];

  v6 = v7;
  if (v5 == v7)
  {
    -[_UIFocusItemFrameReporter setEnabled:](self, "setEnabled:", [v7 _isEnabled]);
    v6 = v7;
  }
}

- (BOOL)_rect:(CGRect)a3 differsFromRect:(CGRect)a4 lowerThreshold:(double)a5 upperThreshold:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  IsNull = CGRectIsNull(a3);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  if (IsNull == CGRectIsNull(v23) && (v24.origin.x = v13, v24.origin.y = v12, v24.size.width = v11, v24.size.height = v10, v26.origin.x = x, v26.origin.y = y, v26.size.width = width, v26.size.height = height, v25 = CGRectIntersection(v24, v26), v15 = v25.size.width, v16 = v25.size.height, !CGRectIsNull(v25)) && ((v17 = v11 * v10 / (v15 * v16), v17 >= a5) ? (v18 = v17 <= a6) : (v18 = 0), v18))
  {
    v21 = v10 / height < a5;
    if (v10 / height > a6)
    {
      v21 = 1;
    }

    v22 = v11 / width < a5;
    if (v11 / width > a6)
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

- (CGRect)_globalFrameForFocusedItemInSystem:(id)a3
{
  v3 = a3;
  v4 = [v3 focusedItem];
  v5 = [v4 parentFocusEnvironment];
  v6 = [v5 focusItemContainer];

  if (v4 && v6)
  {
    v7 = [v3 focusItemContainer];
    v8 = [v7 coordinateSpace];

    v9 = [v6 coordinateSpace];
    [v4 frame];
    [v9 convertRect:v8 toCoordinateSpace:?];
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

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    if (a3)
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