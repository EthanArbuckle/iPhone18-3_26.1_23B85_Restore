@interface PXDemoDynamicViewWidget
- (BOOL)hasContentForCurrentInput;
- (NSString)localizedTitle;
- (PXWidgetDelegate)widgetDelegate;
- (UIView)contentView;
- (void)_heartBeatIncreaseHeightPhase:(BOOL)phase;
- (void)_loadView;
- (void)_setPreferredHeightPhase:(double)phase;
@end

@implementation PXDemoDynamicViewWidget

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (NSString)localizedTitle
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MEMORY[0x1E696AB78];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [v3 localizedStringFromDate:date dateStyle:0 timeStyle:2];
  v6 = [v2 stringWithFormat:@"Dynamic (%@)", v5];

  return v6;
}

- (UIView)contentView
{
  [(PXDemoDynamicViewWidget *)self _loadView];

  return [(PXDemoDynamicViewWidget *)self _view];
}

- (BOOL)hasContentForCurrentInput
{
  v2 = +[PXPhotosDetailsSettings sharedInstance];
  showDemoDynamicWidget = [v2 showDemoDynamicWidget];

  return showDemoDynamicWidget;
}

- (void)_setPreferredHeightPhase:(double)phase
{
  if (self->__preferredHeightPhase != phase)
  {
    v11 = v3;
    v12 = v4;
    self->__preferredHeightPhase = phase;
    widgetDelegate = [(PXDemoDynamicViewWidget *)self widgetDelegate];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PXDemoDynamicViewWidget__setPreferredHeightPhase___block_invoke;
    v8[3] = &unk_1E774C620;
    v9 = widgetDelegate;
    selfCopy = self;
    v7 = widgetDelegate;
    [v7 widget:self animateChanges:v8 withAnimationOptions:0];
  }
}

- (void)_heartBeatIncreaseHeightPhase:(BOOL)phase
{
  if (phase)
  {
    [(PXDemoDynamicViewWidget *)self _preferredHeightPhase];
    [(PXDemoDynamicViewWidget *)self _setPreferredHeightPhase:v4 + 1.0];
  }

  widgetDelegate = [(PXDemoDynamicViewWidget *)self widgetDelegate];
  [widgetDelegate widgetLocalizedTitleDidChange:self];

  objc_initWeak(&location, self);
  v6 = dispatch_time(0, 1000000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PXDemoDynamicViewWidget__heartBeatIncreaseHeightPhase___block_invoke;
  v7[3] = &unk_1E774C318;
  objc_copyWeak(&v8, &location);
  dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__PXDemoDynamicViewWidget__heartBeatIncreaseHeightPhase___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _heartBeatIncreaseHeightPhase:1];
}

- (void)_loadView
{
  if (!self->__view)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    view = self->__view;
    self->__view = v4;

    v6 = self->__view;
    orangeColor = [MEMORY[0x1E69DC888] orangeColor];
    [(UIView *)v6 setBackgroundColor:orangeColor];

    [(PXDemoDynamicViewWidget *)self _heartBeatIncreaseHeightPhase:0];
  }
}

@end