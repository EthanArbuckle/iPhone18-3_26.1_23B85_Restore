@interface TSUProgressContext
- (TSUProgressContext)init;
- (double)currentPosition;
- (double)overallProgress;
- (id)addProgressObserverBlock:(id)block;
- (void)addProgressObserver:(id)observer selector:(SEL)selector;
- (void)advanceProgress:(double)progress;
- (void)createStageWithSteps:(double)steps;
- (void)createStageWithSteps:(double)steps takingSteps:(double)takingSteps;
- (void)dealloc;
- (void)endStage;
- (void)nextSubStageWillTakeThisManyOfMySteps:(double)steps;
- (void)removeProgressObserver:(id)observer;
- (void)reportProgress:(double)progress overallProgress:(double)overallProgress;
- (void)reset;
- (void)setMessage:(id)message;
- (void)setPercentageProgressFromTCProgressContext:(double)context;
- (void)setProgress:(double)progress;
@end

@implementation TSUProgressContext

- (void)reset
{
  objc_sync_enter(self);

  self->m_currentStage = [[TSUProgressStage alloc] initRootStageInContext:self];
  self->m_lastProgressReport = 0.0;
  self->m_lastOverallProgress = 0.0;

  objc_sync_exit(self);
}

- (void)addProgressObserver:(id)observer selector:(SEL)selector
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter addObserver:observer selector:selector name:@"TSUProgressNotification" object:self];
}

- (id)addProgressObserverBlock:(id)block
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__TSUProgressContext_addProgressObserverBlock___block_invoke;
  v7[3] = &unk_279D65FA0;
  v7[4] = block;
  return [defaultCenter addObserverForName:@"TSUProgressNotification" object:self queue:0 usingBlock:v7];
}

void *__47__TSUProgressContext_addProgressObserverBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();
  result = TSUDynamicCast(v4, [objc_msgSend(a2 "userInfo")]);
  if (result)
  {
    v6 = *(a1 + 32);
    [result doubleValue];
    v7 = *(v6 + 16);

    return v7(v6);
  }

  return result;
}

- (void)removeProgressObserver:(id)observer
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter removeObserver:observer name:@"TSUProgressNotification" object:self];
}

- (void)createStageWithSteps:(double)steps takingSteps:(double)takingSteps
{
  if (steps >= 0.0)
  {
    stepsCopy = steps;
  }

  else
  {
    stepsCopy = 1.0;
  }

  if (takingSteps <= 0.0)
  {
    TSULogErrorInFunction("[TSUProgressContext createStageWithSteps:takingSteps:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUProgressContext.m", 139, @"createStageWithSteps: taking steps not a positive number: %g", v4, v5, v6, v7, *&takingSteps);
  }

  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  self->m_currentStage = [[TSUProgressStage alloc] initWithSteps:self takingSteps:stepsCopy inContext:takingSteps];

  objc_sync_exit(self);
}

- (void)createStageWithSteps:(double)steps
{
  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  if (m_currentStage)
  {
    [(TSUProgressStage *)self->m_currentStage nextSubStageParentSize];
    v7 = v6;
    [(TSUProgressStage *)m_currentStage setNextSubStageParentSize:1.0];
  }

  else
  {
    v7 = 1.0;
  }

  objc_sync_exit(self);

  [(TSUProgressContext *)self createStageWithSteps:steps takingSteps:v7];
}

- (void)nextSubStageWillTakeThisManyOfMySteps:(double)steps
{
  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  if (m_currentStage)
  {
    [(TSUProgressStage *)m_currentStage setNextSubStageParentSize:steps];
  }

  objc_sync_exit(self);
}

- (void)endStage
{
  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  [(TSUProgressStage *)m_currentStage end];
  self->m_currentStage = [(TSUProgressStage *)m_currentStage parentStage];

  objc_sync_exit(self);
}

- (void)advanceProgress:(double)progress
{
  objc_sync_enter(self);
  [-[TSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setProgress:(double)progress
{
  objc_sync_enter(self);
  [-[TSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setPercentageProgressFromTCProgressContext:(double)context
{
  objc_sync_enter(self);
  [-[TSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setMessage:(id)message
{
  if (!message)
  {
    message = &stru_287DDF830;
  }

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:message forKey:@"TSUProgressMessage"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TSUProgressNotification" object:self userInfo:v4];
}

- (double)currentPosition
{
  objc_sync_enter(self);
  currentStage = [(TSUProgressContext *)self currentStage];
  objc_sync_exit(self);
  if (!currentStage)
  {
    return self->m_lastProgressReport;
  }

  [currentStage currentPosition];
  return result;
}

- (double)overallProgress
{
  objc_sync_enter(self);
  currentStage = [(TSUProgressContext *)self currentStage];
  objc_sync_exit(self);
  if (!currentStage)
  {
    return self->m_lastOverallProgress;
  }

  [currentStage overallProgress];
  return result;
}

- (TSUProgressContext)init
{
  v5.receiver = self;
  v5.super_class = TSUProgressContext;
  v2 = [(TSUProgressContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TSUProgressContext *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  self->m_currentStage = 0;

  self->m_lastReportTime = 0;
  v3.receiver = self;
  v3.super_class = TSUProgressContext;
  [(TSUProgressContext *)&v3 dealloc];
}

- (void)reportProgress:(double)progress overallProgress:(double)overallProgress
{
  objc_sync_enter(self);
  self->m_lastOverallProgress = overallProgress;
  m_lastReportTime = self->m_lastReportTime;
  if (!m_lastReportTime || ([(NSDate *)m_lastReportTime timeIntervalSinceNow], progress >= 100.0) || v8 < -0.1 || progress - self->m_lastProgressReport >= 5.0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:progress];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:overallProgress];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, @"TSUProgressCurrentPosition", v10, @"TSUProgressOverallProgress", 0}];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

    self->m_lastReportTime = [MEMORY[0x277CBEAA8] date];
    self->m_lastProgressReport = progress;
  }

  objc_sync_exit(self);
}

@end