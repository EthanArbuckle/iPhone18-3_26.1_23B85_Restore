@interface _UIUpdateCycleDebugOverlay
+ (id)instance;
- (void)_updateCompleted;
- (void)addBorderToWindow:(id)a3;
- (void)removeBorderFromWindow:(id)a3;
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

- (void)addBorderToWindow:(id)a3
{
  v4 = a3;
  v5 = v4;
  windowWithBorder = self->_windowWithBorder;
  if (windowWithBorder)
  {
    v7 = windowWithBorder == v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [(_UIUpdateCycleDebugOverlay *)self removeBorderFromWindow:?];
  }

  v8 = [(UIView *)v5 layer];
  [v8 setBorderWidth:12.0];

  v9 = +[UIColor redColor];
  v10 = [v9 CGColor];
  v11 = [(UIView *)v5 layer];
  [v11 setBorderColor:v10];

  v12 = self->_windowWithBorder;
  self->_windowWithBorder = v5;
}

- (void)removeBorderFromWindow:(id)a3
{
  v4 = a3;
  v5 = [v4 layer];
  [v5 setBorderWidth:0.0];

  v6 = +[UIColor clearColor];
  v7 = [v6 CGColor];
  v8 = [v4 layer];

  [v8 setBorderColor:v7];
  windowWithBorder = self->_windowWithBorder;
  self->_windowWithBorder = 0;
}

@end