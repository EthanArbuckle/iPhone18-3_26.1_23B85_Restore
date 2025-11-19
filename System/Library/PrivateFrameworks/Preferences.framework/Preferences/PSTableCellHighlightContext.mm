@interface PSTableCellHighlightContext
+ (PSTableCellHighlightContext)contextWithCell:(id)a3;
- (UITableViewCell)cell;
- (void)_killTimer;
- (void)_timerFired;
- (void)dealloc;
- (void)performHighlightForDuration:(double)a3 animateUnhighlight:(BOOL)a4;
@end

@implementation PSTableCellHighlightContext

+ (PSTableCellHighlightContext)contextWithCell:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setCell:v4];

  return v5;
}

- (void)dealloc
{
  [(PSTableCellHighlightContext *)self _killTimer];
  v3.receiver = self;
  v3.super_class = PSTableCellHighlightContext;
  [(PSTableCellHighlightContext *)&v3 dealloc];
}

- (void)performHighlightForDuration:(double)a3 animateUnhighlight:(BOOL)a4
{
  [(PSTableCellHighlightContext *)self _killTimer];
  self->_animateUnhighlight = a4;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  self->_originalSelectionStyle = [WeakRetained selectionStyle];

  self->_valid = 1;
  v8 = objc_loadWeakRetained(&self->_cell);
  [v8 setSelectionStyle:3];

  v9 = objc_loadWeakRetained(&self->_cell);
  [v9 setHighlighted:1 animated:0];

  v10 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__timerFired selector:0 userInfo:0 repeats:a3];
  timer = self->_timer;
  self->_timer = v10;
}

- (void)_timerFired
{
  if (self->_valid)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __42__PSTableCellHighlightContext__timerFired__block_invoke;
    aBlock[3] = &unk_1E71DBE20;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    animateUnhighlight = self->_animateUnhighlight;
    WeakRetained = objc_loadWeakRetained(&self->_cell);
    v6 = WeakRetained;
    if (animateUnhighlight)
    {
      [WeakRetained setHighlighted:0 animated:1];

      v7 = objc_loadWeakRetained(&self->_cell);
      [v7 selectionFadeDuration];
      v9 = v8;

      v10 = dispatch_time(0, (v9 * 1000000000.0));
      dispatch_after(v10, MEMORY[0x1E69E96A0], v3);
    }

    else
    {
      [WeakRetained setHighlighted:0 animated:0];

      v3[2](v3);
    }
  }

  [(PSTableCellHighlightContext *)self _killTimer];
}

void __42__PSTableCellHighlightContext__timerFired__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 17) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v4 = [WeakRetained selectionStyle];

    if (v4 == 3)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      v7 = objc_loadWeakRetained((v5 + 24));
      [v7 setSelectionStyle:v6];
    }
  }
}

- (void)_killTimer
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (UITableViewCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end