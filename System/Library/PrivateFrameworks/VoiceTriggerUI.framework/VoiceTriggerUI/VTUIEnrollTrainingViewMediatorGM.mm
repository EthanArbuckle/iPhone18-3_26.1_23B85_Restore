@interface VTUIEnrollTrainingViewMediatorGM
- (VTUIEnrollTrainingViewMediatorGM)initWithTrainingView:(id)view;
- (void)addTargetToRadarExitButton:(id)button action:(SEL)action forControlEvents:(unint64_t)events;
- (void)animateSuccessfulStep:(BOOL)step completion:(id)completion;
- (void)animateToListeningState;
- (void)hideInstructions;
- (void)hideTrainingView:(BOOL)view;
- (void)setPowerLevel:(float)level;
- (void)showStatusMessage:(id)message afterDelay:(double)delay completion:(id)completion;
- (void)showTrainingView;
@end

@implementation VTUIEnrollTrainingViewMediatorGM

- (VTUIEnrollTrainingViewMediatorGM)initWithTrainingView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = VTUIEnrollTrainingViewMediatorGM;
  v6 = [(VTUIEnrollTrainingViewMediatorGM *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trainingView, view);
  }

  return v7;
}

- (void)animateSuccessfulStep:(BOOL)step completion:(id)completion
{
  stepCopy = step;
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[VTUIEnrollTrainingViewMediatorGM animateSuccessfulStep:completion:]";
    v12 = 1024;
    v13 = stepCopy;
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s Animate. For Success: %d", &v10, 0x12u);
  }

  lightLayer = [(VTUIEnrollTrainingIntelligentLightView *)self->_trainingView lightLayer];
  [lightLayer transitionToNextBuddyStep];

  [(VTUIEnrollTrainingIntelligentLightView *)self->_trainingView animateSuccessfulStepWithCompletion:completionCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)hideTrainingView:(BOOL)view
{
  if (view)
  {
    if (self->_trainingView)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __53__VTUIEnrollTrainingViewMediatorGM_hideTrainingView___block_invoke;
      v6[3] = &unk_279E54220;
      v6[4] = self;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __53__VTUIEnrollTrainingViewMediatorGM_hideTrainingView___block_invoke_2;
      v5[3] = &unk_279E545F0;
      v5[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v6 animations:v5 completion:1.0];
    }
  }

  else
  {
    trainingView = self->_trainingView;

    [(VTUIEnrollTrainingIntelligentLightView *)trainingView setHidden:1];
  }
}

void __53__VTUIEnrollTrainingViewMediatorGM_hideTrainingView___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) trainingView];
  [v1 setAlpha:0.0];
}

void __53__VTUIEnrollTrainingViewMediatorGM_hideTrainingView___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) trainingView];
    [v3 setHidden:1];

    v4 = [*(a1 + 32) trainingView];
    [v4 setAlpha:1.0];
  }
}

- (void)showTrainingView
{
  trainingView = self->_trainingView;
  if (trainingView)
  {
    [(VTUIEnrollTrainingIntelligentLightView *)trainingView setHidden:0];
  }
}

- (void)hideInstructions
{
  [(VTUIEnrollTrainingIntelligentLightView *)self->_trainingView clearInstructionLabel];

  [(VTUIEnrollTrainingViewMediatorGM *)self hideContinuationAndPreludeLabel:1];
}

- (void)animateToListeningState
{
  lightLayer = [(VTUIEnrollTrainingIntelligentLightView *)self->_trainingView lightLayer];
  [lightLayer setPaused:0];
}

- (void)addTargetToRadarExitButton:(id)button action:(SEL)action forControlEvents:(unint64_t)events
{
  trainingView = self->_trainingView;
  buttonCopy = button;
  radarExitButton = [(VTUIEnrollTrainingIntelligentLightView *)trainingView radarExitButton];
  [radarExitButton addTarget:buttonCopy action:action forControlEvents:events];
}

- (void)showStatusMessage:(id)message afterDelay:(double)delay completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (delay * 1000000000.0));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke;
  v13[3] = &unk_279E54B48;
  objc_copyWeak(&v16, &location);
  v14 = messageCopy;
  v15 = completionCopy;
  v11 = messageCopy;
  v12 = completionCopy;
  dispatch_after(v10, MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke(id *a1)
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
      v18[2] = __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke_2;
      v18[3] = &unk_279E54220;
      v18[4] = WeakRetained;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke_3;
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
      v15[2] = __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke_4;
      v15[3] = &unk_279E54220;
      v15[4] = WeakRetained;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke_5;
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

void __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) statusLabel];
  [v1 setAlpha:1.0];
}

uint64_t __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) statusLabel];
  [v1 setAlpha:0.0];
}

uint64_t __76__VTUIEnrollTrainingViewMediatorGM_showStatusMessage_afterDelay_completion___block_invoke_5(uint64_t a1)
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

- (void)setPowerLevel:(float)level
{
  lightLayer = [(VTUIEnrollTrainingIntelligentLightView *)self->_trainingView lightLayer];
  *&v4 = level;
  [lightLayer updateVolumeInputdB:v4];
}

@end