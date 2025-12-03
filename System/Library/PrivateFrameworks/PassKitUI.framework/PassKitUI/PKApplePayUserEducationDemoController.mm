@interface PKApplePayUserEducationDemoController
- (PKApplePayUserEducationDemoController)initWithDelegate:(id)delegate method:(unint64_t)method;
- (void)_startDipSimulation;
- (void)_startTimerSimulation;
- (void)dealloc;
- (void)endContactlessSimulation;
- (void)motionManager:(id)manager didReceiveMotion:(id)motion;
- (void)requestPracticeAgain;
- (void)runContactlessSimulationWithCompletion:(id)completion;
- (void)setState:(unint64_t)state;
@end

@implementation PKApplePayUserEducationDemoController

- (PKApplePayUserEducationDemoController)initWithDelegate:(id)delegate method:(unint64_t)method
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PKApplePayUserEducationDemoController;
  v7 = [(PKApplePayUserEducationDemoController *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = PKOverrideApplePayUserEducationDemoSimulationMethod();
    v10 = v9;
    if (v9)
    {
      method = [v9 integerValue];
    }

    v8->_method = method;
    if (method == 1)
    {
      v11 = 3.0;
      v12 = 32;
    }

    else
    {
      if (method)
      {
LABEL_9:

        goto LABEL_10;
      }

      *&v8->_methodDuration = xmmword_1BE114B00;
      v11 = 0.5;
      v12 = 48;
    }

    *(&v8->super.isa + v12) = v11;
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)dealloc
{
  if (self->_isCollectingMotions)
  {
    self->_isCollectingMotions = 0;
    mEMORY[0x1E69BC760] = [MEMORY[0x1E69BC760] sharedManager];
    [mEMORY[0x1E69BC760] unregisterClient:self];
  }

  boopSimulationCompletion = self->_boopSimulationCompletion;
  if (boopSimulationCompletion)
  {
    boopSimulationCompletion[2](boopSimulationCompletion, 1);
  }

  v5.receiver = self;
  v5.super_class = PKApplePayUserEducationDemoController;
  [(PKApplePayUserEducationDemoController *)&v5 dealloc];
}

- (void)runContactlessSimulationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_boopSimulationCompletion)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PKApplePayUserEducationDemoController_runContactlessSimulationWithCompletion___block_invoke;
    aBlock[3] = &unk_1E80110B8;
    objc_copyWeak(&v11, &location);
    v10 = v5;
    v6 = _Block_copy(aBlock);
    boopSimulationCompletion = self->_boopSimulationCompletion;
    self->_boopSimulationCompletion = v6;

    [(PKApplePayUserEducationDemoController *)self setState:1];
    method = self->_method;
    if (method)
    {
      if (method == 1)
      {
        [(PKApplePayUserEducationDemoController *)self _startTimerSimulation];
      }
    }

    else
    {
      [(PKApplePayUserEducationDemoController *)self _startDipSimulation];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

uint64_t __80__PKApplePayUserEducationDemoController_runContactlessSimulationWithCompletion___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setState:2];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)endContactlessSimulation
{
  boopSimulationCompletion = self->_boopSimulationCompletion;
  if (boopSimulationCompletion)
  {
    boopSimulationCompletion[2](boopSimulationCompletion, 1);
    v4 = self->_boopSimulationCompletion;
    self->_boopSimulationCompletion = 0;
  }
}

- (void)requestPracticeAgain
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userEducationDemoControllerRequestsUserRestart];

  [(PKApplePayUserEducationDemoController *)self setState:0];
}

- (void)setState:(unint64_t)state
{
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained userEducationDemoControllerDidChangeState:state oldState:state];
  }
}

- (void)_startTimerSimulation
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, (self->_methodDuration * 1000000000.0));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PKApplePayUserEducationDemoController__startTimerSimulation__block_invoke;
  v4[3] = &unk_1E8010998;
  objc_copyWeak(&v5, &location);
  dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __62__PKApplePayUserEducationDemoController__startTimerSimulation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "User education demo passed timer test for boop simulation", v5, 2u);
  }

  if (WeakRetained)
  {
    v3 = WeakRetained[7];
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = WeakRetained[7];
      WeakRetained[7] = 0;
    }
  }
}

- (void)_startDipSimulation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKApplePayUserEducationDemoController__startDipSimulation__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__PKApplePayUserEducationDemoController__startDipSimulation__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 136) = 1;
  v2 = [MEMORY[0x1E69BC760] sharedManager];
  [v2 registerClient:*(a1 + 32)];
}

- (void)motionManager:(id)manager didReceiveMotion:(id)motion
{
  motionCopy = motion;
  v6 = motionCopy;
  if (!self->_isCollectingMotions)
  {
    goto LABEL_33;
  }

  attitude = [motionCopy attitude];
  [attitude pitch];
  v9 = v8;

  [v6 timestamp];
  v11 = v10;
  pitchAmountTarget = self->_pitchAmountTarget;
  if (self->_motionSampleDeepDip.isValid)
  {
    if (v9 <= pitchAmountTarget)
    {
      v16 = v11 - self->_motionSampleDeepDip.timestamp >= self->_methodDuration;
      goto LABEL_13;
    }

    self->_motionSampleDeepDip.isValid = 0;
    v13 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v27 = 0;
    v14 = "User education demo did reset motion sample for boop simulation (method 1)";
    v15 = &v27;
    goto LABEL_10;
  }

  if (v9 <= pitchAmountTarget)
  {
    self->_motionSampleDeepDip.pitch = v9;
    self->_motionSampleDeepDip.timestamp = v11;
    *&self->_motionSampleDeepDip.isValid = 1;
    v13 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v14 = "User education demo collected valid motion sample for boop simulation (method 1)";
    v15 = buf;
LABEL_10:
    _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
    goto LABEL_11;
  }

LABEL_12:
  v16 = 0;
LABEL_13:
  if (!self->_motionSampleStart.isValid)
  {
    self->_motionSampleStart.pitch = v9;
    self->_motionSampleStart.timestamp = v11;
    *&self->_motionSampleStart.isValid = 1;
    if (!v16)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (self->_motionSampleStart.pitch - v9 <= self->_pitchAmountDelta)
  {
    if (!self->_motionSampleEnd.isValid)
    {
      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    self->_motionSampleEnd.isValid = 0;
    v17 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v25 = 0;
    v18 = "User education demo did reset motion sample for boop simulation (method 2)";
    v19 = &v25;
  }

  else
  {
    if (self->_motionSampleEnd.isValid)
    {
      if (v11 - self->_motionSampleEnd.timestamp < self->_methodDuration)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    self->_motionSampleEnd.pitch = v9;
    self->_motionSampleEnd.timestamp = v11;
    *&self->_motionSampleEnd.isValid = 1;
    v17 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *v26 = 0;
    v18 = "User education demo collected valid motion sample for boop simulation (method 2)";
    v19 = v26;
  }

  _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
LABEL_26:

  if (!v16)
  {
    goto LABEL_33;
  }

LABEL_29:
  self->_isCollectingMotions = 0;
  self->_motionSampleStart.isValid = 0;
  self->_motionSampleEnd.isValid = 0;
  self->_motionSampleDeepDip.isValid = 0;
  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "User education demo passed movement test for boop simulation", v24, 2u);
  }

  mEMORY[0x1E69BC760] = [MEMORY[0x1E69BC760] sharedManager];
  [mEMORY[0x1E69BC760] unregisterClient:self];

  boopSimulationCompletion = self->_boopSimulationCompletion;
  if (boopSimulationCompletion)
  {
    boopSimulationCompletion[2](boopSimulationCompletion, 0);
    v23 = self->_boopSimulationCompletion;
    self->_boopSimulationCompletion = 0;
  }

LABEL_33:
}

@end