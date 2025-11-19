@interface OKCouchController
- (BOOL)canStartPlayback;
- (OKCouchController)initWithCouch:(id)a3 andDelegate:(id)a4;
- (id)_nextCouchStep:(id)a3;
- (void)_dispatchNextStep;
- (void)_executeStep:(id)a3 forTargetPageViewController:(id)a4;
- (void)_setupTimer;
- (void)_timerEventHandler;
- (void)allowPlayback;
- (void)dealloc;
- (void)overrideMode:(unint64_t)a3 andCurrentStepDuration:(double)defaultStepDuration;
- (void)preventPlayback;
- (void)setDefaultStepDuration:(double)a3;
- (void)setLoops:(BOOL)a3;
- (void)startPlayback;
- (void)startPlaybackAfterDelay:(double)a3;
- (void)stopPlayback;
@end

@implementation OKCouchController

- (OKCouchController)initWithCouch:(id)a3 andDelegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = OKCouchController;
  v6 = [(OKCouchController *)&v8 init];
  if (v6)
  {
    v6->_couch = a3;
    v6->_hasStartedToWait = 0;
    objc_storeWeak(&v6->_delegate, a4);
    [(OKCouchController *)v6 _setupTimer];
  }

  return v6;
}

- (void)dealloc
{
  if (self->_stopCounter)
  {
    NSLog(&cfstr_CouchControlle.isa, a2);
  }

  dispatch_source_cancel(self->_timer);
  if (self->_stopCounter <= 0)
  {
    dispatch_resume(self->_timer);
  }

  dispatch_release(self->_timer);
  self->_timer = 0;

  self->_couch = 0;
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = OKCouchController;
  [(OKCouchController *)&v3 dealloc];
}

- (void)setDefaultStepDuration:(double)a3
{
  [(OKCouchController *)self preventPlayback];
  self->_defaultStepDuration = a3;

  [(OKCouchController *)self allowPlayback];
}

- (void)setLoops:(BOOL)a3
{
  [(OKCouchController *)self preventPlayback];
  self->_loops = a3;

  [(OKCouchController *)self allowPlayback];
}

- (void)overrideMode:(unint64_t)a3 andCurrentStepDuration:(double)defaultStepDuration
{
  self->_stepMode = a3;
  if (defaultStepDuration < 0.0)
  {
    defaultStepDuration = self->_defaultStepDuration;
  }

  self->_currentStepDuration = defaultStepDuration;
}

- (BOOL)canStartPlayback
{
  if (self->_stopCounter)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v4 = [(OKCouchController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v2 = [(OKCouchControllerDelegate *)v4 couchControllerCanStartPlayback:self]) != 0)
    {
      LOBYTE(v2) = -[OKPresentationCouch closestStepForPageName:](self->_couch, "closestStepForPageName:", [objc_msgSend(-[OKCouchControllerDelegate currentPageViewController](v4 "currentPageViewController")]) != 0;
    }
  }

  return v2;
}

- (void)startPlaybackAfterDelay:(double)a3
{
  v4 = self->_startValidityBarrier + 1;
  self->_startValidityBarrier = v4;
  v5 = dispatch_time(0, (a3 * 1000000000.0));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__OKCouchController_startPlaybackAfterDelay___block_invoke;
  v6[3] = &unk_279C903C0;
  v6[4] = self;
  v6[5] = v4;
  dispatch_after(v5, MEMORY[0x277D85CD0], v6);
}

void *__45__OKCouchController_startPlaybackAfterDelay___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == *(a1 + 40))
  {
    return [result startPlayback];
  }

  return result;
}

- (void)startPlayback
{
  if (!self->_isPlaying)
  {
    [(OKCouchController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(OKCouchControllerDelegate *)[(OKCouchController *)self delegate] couchControllerWillStartPlayback:self];
    }

    self->_isPlaying = 1;

    [(OKCouchController *)self allowPlayback];
  }
}

- (void)stopPlayback
{
  ++self->_startValidityBarrier;
  if (self->_isPlaying)
  {
    [(OKCouchController *)self preventPlayback];
    self->_isPlaying = 0;
    self->_lastStep = 0;
    [(OKCouchController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [(OKCouchController *)self delegate];

      [(OKCouchControllerDelegate *)v3 couchControllerDidStopPlayback:self];
    }
  }
}

- (void)allowPlayback
{
  stopCounter = self->_stopCounter;
  self->_stopCounter = stopCounter + 1;
  if (stopCounter)
  {
    if (stopCounter >= 1 && *MEMORY[0x277D62808] >= 2)
    {
      v10 = MEMORY[0x277D627B8];

      [v10 logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Couch/OKCouchController.m" line:176 andFormat:@"Couch potato counter should never be more than 1, this may cause couch potato cancellation/prepare problems"];
    }
  }

  else
  {
    v11 = v2;
    if (!self->_lastStep)
    {
      [(OKCouchController *)self overrideMode:2 andCurrentStepDuration:0.0];
    }

    [(OKCouchController *)self _dispatchNextStep:v3];
    timer = self->_timer;

    dispatch_resume(timer);
  }
}

- (void)preventPlayback
{
  v3 = self->_stopCounter - 1;
  self->_stopCounter = v3;
  if (!v3)
  {
    dispatch_suspend(self->_timer);
  }

  if (self->_readinessWaitStartTime > 0.0)
  {
    [(OKCouchController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(OKCouchControllerDelegate *)[(OKCouchController *)self delegate] couchControllerStopsWaitingForReadiness:self];
    }

    self->_readinessWaitStartTime = 0.0;
  }
}

- (void)_timerEventHandler
{
  lastStep = self->_lastStep;
  v4 = [(OKPresentationCouch *)self->_couch loopStep];
  v5 = [(OKCouchController *)self delegate];
  v6 = [(OKCouchControllerDelegate *)v5 currentPageViewController];
  v7 = [(OKCouchController *)self _nextCouchStep:v6];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(OKCouchControllerDelegate *)v5 thingsAreReadyInCurrentPageForCouchController:self];
    if (v7 || (v8 & 1) == 0)
    {
      if ((v8 & 1) == 0)
      {
LABEL_36:
        timer = self->_timer;
        v12 = dispatch_time(0, 100000000);

        dispatch_source_set_timer(timer, v12, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
        return;
      }

      goto LABEL_7;
    }

LABEL_21:
    [(OKCouchController *)self stopPlayback];
    if (objc_opt_respondsToSelector())
    {

      [(OKCouchControllerDelegate *)v5 couchControllerPlaybackCompleted:self];
    }

    return;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_7:
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(OKCouchControllerDelegate *)v5 couchController:self thingsAreReadyForNextStep:v7 withProgress:&self->_progress]& 1) == 0)
  {
    if (self->_hasStartedToWait && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(OKCouchControllerDelegate *)v5 couchControllerWaitingForReadiness:self withProgress:self->_progress];
    }

    if (self->_readinessWaitStartTime <= 0.0)
    {
      if (!self->_hasStartedToWait)
      {
        self->_readinessWaitStartTime = CFAbsoluteTimeGetCurrent();
      }
    }

    else if (!self->_hasStartedToWait && CFAbsoluteTimeGetCurrent() - self->_readinessWaitStartTime > self->_delayForReadinessWaitNotification && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(OKCouchControllerDelegate *)v5 couchControllerStartsWaitingForReadiness:self];
      self->_hasStartedToWait = 1;
    }

    goto LABEL_36;
  }

  if (self->_readinessWaitStartTime > 0.0)
  {
    if (objc_opt_respondsToSelector())
    {
      [(OKCouchControllerDelegate *)v5 couchControllerStopsWaitingForReadiness:self];
    }

    self->_readinessWaitStartTime = 0.0;
  }

  self->_progress = 0.0;
  self->_hasStartedToWait = 0;
  if (lastStep == v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(OKCouchControllerDelegate *)v5 couchControllerPlaybackLooped:self];
  }

  if (*MEMORY[0x277D62808] >= 7)
  {
    v9 = MEMORY[0x277D627B8];
    [v7 duration];
    [v9 logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Couch/OKCouchController.m" line:275 andFormat:@"executing couch step script with step duration: %f", v10];
  }

  [(OKCouchController *)self _executeStep:v7 forTargetPageViewController:v6];
}

- (void)_setupTimer
{
  self->_timer = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, MEMORY[0x277D85CD0]);
  v3 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:self];
  timer = self->_timer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__OKCouchController__setupTimer__block_invoke;
  handler[3] = &unk_279C8E818;
  handler[4] = v3;
  dispatch_source_set_event_handler(timer, handler);
}

void *__32__OKCouchController__setupTimer__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) object];
  if (result)
  {

    return [result _timerEventHandler];
  }

  return result;
}

- (void)_executeStep:(id)a3 forTargetPageViewController:(id)a4
{
  [a3 duration];
  [(OKCouchController *)self overrideMode:0 andCurrentStepDuration:?];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_currentStepStartTime = v7;
  v8 = [a3 script];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__OKCouchController__executeStep_forTargetPageViewController___block_invoke;
  v9[3] = &unk_279C916D8;
  v9[4] = self;
  v9[5] = a3;
  [a4 evaluateScript:v8 withInfoDictionary:MEMORY[0x277CBEC10] andCompletionBlock:v9 forWidgetView:0];
}

- (void)_dispatchNextStep
{
  currentStepDuration = self->_currentStepDuration;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = 0.0;
  if (currentStepDuration > v4 - self->_currentStepStartTime)
  {
    v6 = self->_currentStepDuration;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v6 - (v7 - self->_currentStepStartTime);
  }

  if (*MEMORY[0x277D62808] >= 7)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Couch/OKCouchController.m" line:333 andFormat:@"sleeping couch step with adjusted duration: %f", *&v5];
  }

  timer = self->_timer;
  v9 = dispatch_time(0, (v5 * 1000000000.0));

  dispatch_source_set_timer(timer, v9, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
}

- (id)_nextCouchStep:(id)a3
{
  result = 0;
  stepMode = self->_stepMode;
  if (stepMode > 1)
  {
    if (stepMode == 2)
    {
      couch = self->_couch;
      v10 = [objc_msgSend(a3 "page")];

      return [(OKPresentationCouch *)couch closestStepForPageName:v10];
    }

    else if (stepMode == 3)
    {
      return self->_lastStep;
    }
  }

  else
  {
    if (stepMode)
    {
      if (stepMode != 1)
      {
        return result;
      }

      result = -[OKPresentationCouch lastStepForPageName:](self->_couch, "lastStepForPageName:", [objc_msgSend(a3 "page")]);
      lastStep = self->_lastStep;
      if (result)
      {
        if (result != lastStep)
        {
          return result;
        }
      }

      v7 = self->_couch;
    }

    else
    {
      v7 = self->_couch;
      lastStep = self->_lastStep;
    }

    loops = self->_loops;

    return [(OKPresentationCouch *)v7 nextStepAfterStep:lastStep canLoop:loops];
  }

  return result;
}

@end