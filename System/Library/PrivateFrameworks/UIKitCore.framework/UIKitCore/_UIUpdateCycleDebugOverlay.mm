@interface _UIUpdateCycleDebugOverlay
+ (id)instance;
- (void)_updateCompleted;
- (void)addBorderToWindow:(id)window;
- (void)removeBorderFromWindow:(id)window;
@end

@implementation _UIUpdateCycleDebugOverlay

+ (id)instance
{
  if (_MergedGlobals_994 != -1)
  {
    dispatch_once(&_MergedGlobals_994, &__block_literal_global_40);
  }

  v3 = qword_1ED49C890;

  return v3;
}

- (void)_updateCompleted
{
  _UIUpdateCompletionObservationAddObserver(mainCompletionObservation, self, 0);
  v3 = _UIUpdateCycleMainScheduler + 576;
  if (*(_UIUpdateCycleMainScheduler + 568) != 1)
  {
    v3 = 0;
  }

  v4 = *(v3 + 16);
  if (v4 >= mach_absolute_time())
  {
    if (self->_windowWithBorder)
    {

      [(_UIUpdateCycleDebugOverlay *)self removeBorderFromWindow:?];
    }
  }

  else
  {
    v5 = +[UIWindow _applicationKeyWindow];
    [(_UIUpdateCycleDebugOverlay *)self addBorderToWindow:v5];
  }
}

- (void)addBorderToWindow:(id)window
{
  windowCopy = window;
  v5 = windowCopy;
  windowWithBorder = self->_windowWithBorder;
  if (windowWithBorder)
  {
    v7 = windowWithBorder == windowCopy;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(_UIUpdateCycleDebugOverlay *)self removeBorderFromWindow:?];
  }

  layer = [(UIView *)v5 layer];
  [layer setBorderWidth:12.0];

  v9 = +[UIColor redColor];
  cGColor = [v9 CGColor];
  layer2 = [(UIView *)v5 layer];
  [layer2 setBorderColor:cGColor];

  v12 = self->_windowWithBorder;
  self->_windowWithBorder = v5;
}

- (void)removeBorderFromWindow:(id)window
{
  windowCopy = window;
  layer = [windowCopy layer];
  [layer setBorderWidth:0.0];

  v6 = +[UIColor clearColor];
  cGColor = [v6 CGColor];
  layer2 = [windowCopy layer];

  [layer2 setBorderColor:cGColor];
  windowWithBorder = self->_windowWithBorder;
  self->_windowWithBorder = 0;
}

@end