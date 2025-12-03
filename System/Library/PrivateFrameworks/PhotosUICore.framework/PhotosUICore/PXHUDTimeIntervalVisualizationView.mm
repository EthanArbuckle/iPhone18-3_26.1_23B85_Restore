@interface PXHUDTimeIntervalVisualizationView
- (PXHUDTimeIntervalVisualizationView)initWithFrame:(CGRect)frame;
- (void)_cleanupTimer;
- (void)_setupTimer;
- (void)_updateTimer;
- (void)_updateTitleAndTimeLabel;
- (void)dealloc;
- (void)visualizationDidUpdate;
@end

@implementation PXHUDTimeIntervalVisualizationView

- (void)_updateTitleAndTimeLabel
{
  v3 = MEMORY[0x1E696AEC0];
  visualization = [(PXHUDAbstractVisualizationView *)self visualization];
  title = [visualization title];
  visualization2 = [(PXHUDAbstractVisualizationView *)self visualization];
  timeInterval = [visualization2 timeInterval];
  [timeInterval duration];
  v9 = [v3 stringWithFormat:@"%@: %.2f", title, v8];
  [(UILabel *)self->_titleAndTimeLabel setText:v9];

  visualization3 = [(PXHUDAbstractVisualizationView *)self visualization];
  color = [visualization3 color];
  [(UILabel *)self->_titleAndTimeLabel setTextColor:color];
}

- (void)_cleanupTimer
{
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)_setupTimer
{
  if (!self->_timer)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E695DFF0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__PXHUDTimeIntervalVisualizationView__setupTimer__block_invoke;
    v6[3] = &unk_1E7747228;
    objc_copyWeak(&v7, &location);
    v4 = [v3 scheduledTimerWithTimeInterval:1 repeats:v6 block:0.1];
    timer = self->_timer;
    self->_timer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __49__PXHUDTimeIntervalVisualizationView__setupTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerTick];
}

- (void)_updateTimer
{
  if (!self->_timer)
  {
LABEL_4:
    visualization = [(PXHUDAbstractVisualizationView *)self visualization];
    timeInterval = [visualization timeInterval];
    state = [timeInterval state];

    if (state == 1)
    {

      [(PXHUDTimeIntervalVisualizationView *)self _setupTimer];
    }

    return;
  }

  visualization2 = [(PXHUDAbstractVisualizationView *)self visualization];
  timeInterval2 = [visualization2 timeInterval];
  state2 = [timeInterval2 state];

  if (state2 == 1)
  {
    if (self->_timer)
    {
      return;
    }

    goto LABEL_4;
  }

  [(PXHUDTimeIntervalVisualizationView *)self _cleanupTimer];
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  v4.receiver = self;
  v4.super_class = PXHUDTimeIntervalVisualizationView;
  [(PXHUDTimeIntervalVisualizationView *)&v4 dealloc];
}

- (void)visualizationDidUpdate
{
  [(PXHUDTimeIntervalVisualizationView *)self _updateTimer];

  [(PXHUDTimeIntervalVisualizationView *)self _updateTitleAndTimeLabel];
}

- (PXHUDTimeIntervalVisualizationView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXHUDTimeIntervalVisualizationView;
  v3 = [(PXHUDTimeIntervalVisualizationView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleAndTimeLabel = v3->_titleAndTimeLabel;
    v3->_titleAndTimeLabel = v4;

    [(UILabel *)v3->_titleAndTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB970]];
    [(UILabel *)v3->_titleAndTimeLabel setFont:v6];

    [(PXHUDTimeIntervalVisualizationView *)v3 addSubview:v3->_titleAndTimeLabel];
    PXHUDCenterViewInSuperview(v3->_titleAndTimeLabel);
  }

  return v3;
}

@end