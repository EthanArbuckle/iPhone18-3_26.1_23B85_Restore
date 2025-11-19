@interface VTUIEnrollTrainingViewMediatorOrb
- (VTUIEnrollTrainingViewMediatorOrb)initWithTrainingView:(id)a3;
- (void)addTargetToRadarExitButton:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)animateToListeningState;
- (void)animateToOff;
- (void)hideInstructions;
- (void)hideTrainingElements;
- (void)hideTrainingView:(BOOL)a3;
- (void)setInstructionContinuationLabel:(id)a3;
- (void)setInstructionPreludeLabel:(id)a3;
- (void)setPowerLevel:(float)a3;
- (void)showStatusMessage:(id)a3 afterDelay:(double)a4 completion:(id)a5;
- (void)showTrainingElements;
- (void)showTrainingView;
@end

@implementation VTUIEnrollTrainingViewMediatorOrb

- (VTUIEnrollTrainingViewMediatorOrb)initWithTrainingView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VTUIEnrollTrainingViewMediatorOrb;
  v6 = [(VTUIEnrollTrainingViewMediatorOrb *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enrollTrainingView, a3);
  }

  return v7;
}

- (void)hideTrainingElements
{
  v3 = [(VTUIEnrollTrainingView *)self->_enrollTrainingView orbView];
  [v3 setHidden:1];

  enrollTrainingView = self->_enrollTrainingView;

  [(VTUIEnrollTrainingView *)enrollTrainingView setCheckMarkViewHidden:1];
}

- (void)showTrainingElements
{
  v3 = [(VTUIEnrollTrainingView *)self->_enrollTrainingView orbView];
  [v3 setHidden:0];

  enrollTrainingView = self->_enrollTrainingView;

  [(VTUIEnrollTrainingView *)enrollTrainingView setCheckMarkViewHidden:0];
}

- (void)hideTrainingView:(BOOL)a3
{
  enrollTrainingView = self->_enrollTrainingView;
  if (enrollTrainingView)
  {
    [(VTUIEnrollTrainingView *)enrollTrainingView setHidden:1];
  }
}

- (void)showTrainingView
{
  enrollTrainingView = self->_enrollTrainingView;
  if (enrollTrainingView)
  {
    [(VTUIEnrollTrainingView *)enrollTrainingView setHidden:0];
  }
}

- (void)hideInstructions
{
  [(VTUIEnrollTrainingView *)self->_enrollTrainingView clearInstructionLabel];

  [(VTUIEnrollTrainingViewMediatorOrb *)self hideContinuationAndPreludeLabel:1];
}

- (void)setInstructionPreludeLabel:(id)a3
{
  enrollTrainingView = self->_enrollTrainingView;
  v4 = a3;
  v5 = [(VTUIEnrollTrainingView *)enrollTrainingView instructionPreludeLabel];
  [v5 setText:v4];
}

- (void)setInstructionContinuationLabel:(id)a3
{
  enrollTrainingView = self->_enrollTrainingView;
  v4 = a3;
  v5 = [(VTUIEnrollTrainingView *)enrollTrainingView instructionContinuationLabel];
  [v5 setText:v4];
}

- (void)animateToOff
{
  v2 = [(VTUIEnrollTrainingView *)self->_enrollTrainingView orbView];
  [v2 animateToOffWithCompletion:0];
}

- (void)animateToListeningState
{
  v2 = [(VTUIEnrollTrainingView *)self->_enrollTrainingView orbView];
  [v2 setMode:1];
}

- (void)addTargetToRadarExitButton:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  enrollTrainingView = self->_enrollTrainingView;
  v8 = a3;
  v9 = [(VTUIEnrollTrainingView *)enrollTrainingView radarExitButton];
  [v9 addTarget:v8 action:a4 forControlEvents:a5];
}

- (void)showStatusMessage:(id)a3 afterDelay:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (a4 * 1000000000.0));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke;
  v13[3] = &unk_279E54B48;
  objc_copyWeak(&v16, &location);
  v14 = v8;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  dispatch_after(v10, MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] length];
    v4 = [WeakRetained[1] statusLabel];
    v5 = v4;
    if (v3)
    {
      [v4 setAlpha:0.0];

      v6 = [WeakRetained[1] statusLabel];
      [v6 setText:a1[4]];

      v7 = MEMORY[0x277D75D18];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke_2;
      v18[3] = &unk_279E54220;
      v18[4] = WeakRetained;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke_3;
      v16[3] = &unk_279E54778;
      v17 = a1[5];
      [v7 animateWithDuration:v18 animations:v16 completion:0.3];
      v8 = v17;
LABEL_6:

      goto LABEL_9;
    }

    [v4 alpha];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke_4;
      v15[3] = &unk_279E54220;
      v15[4] = WeakRetained;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke_5;
      v13[3] = &unk_279E547A0;
      v13[4] = WeakRetained;
      v14 = a1[5];
      [v11 animateWithDuration:v15 animations:v13 completion:0.3];
      v8 = v14;
      goto LABEL_6;
    }
  }

  v12 = a1[5];
  if (v12)
  {
    v12[2]();
  }

LABEL_9:
}

void __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) statusLabel];
  [v1 setAlpha:1.0];
}

uint64_t __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) statusLabel];
  [v1 setAlpha:0.0];
}

uint64_t __77__VTUIEnrollTrainingViewMediatorOrb_showStatusMessage_afterDelay_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) statusLabel];
  [v2 setText:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)setPowerLevel:(float)a3
{
  v5 = [(VTUIEnrollTrainingView *)self->_enrollTrainingView orbView];
  *&v4 = a3;
  [v5 setPowerLevel:v4];
}

@end