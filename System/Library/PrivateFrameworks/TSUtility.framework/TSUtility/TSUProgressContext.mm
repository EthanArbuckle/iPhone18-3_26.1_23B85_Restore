@interface TSUProgressContext
- (TSUProgressContext)init;
- (double)currentPosition;
- (double)overallProgress;
- (id)addProgressObserverBlock:(id)a3;
- (void)addProgressObserver:(id)a3 selector:(SEL)a4;
- (void)advanceProgress:(double)a3;
- (void)createStageWithSteps:(double)a3;
- (void)createStageWithSteps:(double)a3 takingSteps:(double)a4;
- (void)dealloc;
- (void)endStage;
- (void)nextSubStageWillTakeThisManyOfMySteps:(double)a3;
- (void)removeProgressObserver:(id)a3;
- (void)reportProgress:(double)a3 overallProgress:(double)a4;
- (void)reset;
- (void)setMessage:(id)a3;
- (void)setPercentageProgressFromTCProgressContext:(double)a3;
- (void)setProgress:(double)a3;
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

- (void)addProgressObserver:(id)a3 selector:(SEL)a4
{
  v7 = [MEMORY[0x277CCAB98] defaultCenter];

  [v7 addObserver:a3 selector:a4 name:@"TSUProgressNotification" object:self];
}

- (id)addProgressObserverBlock:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__TSUProgressContext_addProgressObserverBlock___block_invoke;
  v7[3] = &unk_279D65FA0;
  v7[4] = a3;
  return [v5 addObserverForName:@"TSUProgressNotification" object:self queue:0 usingBlock:v7];
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

- (void)removeProgressObserver:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];

  [v5 removeObserver:a3 name:@"TSUProgressNotification" object:self];
}

- (void)createStageWithSteps:(double)a3 takingSteps:(double)a4
{
  if (a3 >= 0.0)
  {
    v10 = a3;
  }

  else
  {
    v10 = 1.0;
  }

  if (a4 <= 0.0)
  {
    TSULogErrorInFunction("[TSUProgressContext createStageWithSteps:takingSteps:]", "/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUProgressContext.m", 139, @"createStageWithSteps: taking steps not a positive number: %g", v4, v5, v6, v7, *&a4);
  }

  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  self->m_currentStage = [[TSUProgressStage alloc] initWithSteps:self takingSteps:v10 inContext:a4];

  objc_sync_exit(self);
}

- (void)createStageWithSteps:(double)a3
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

  [(TSUProgressContext *)self createStageWithSteps:a3 takingSteps:v7];
}

- (void)nextSubStageWillTakeThisManyOfMySteps:(double)a3
{
  objc_sync_enter(self);
  m_currentStage = self->m_currentStage;
  if (m_currentStage)
  {
    [(TSUProgressStage *)m_currentStage setNextSubStageParentSize:a3];
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

- (void)advanceProgress:(double)a3
{
  objc_sync_enter(self);
  [-[TSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setProgress:(double)a3
{
  objc_sync_enter(self);
  [-[TSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setPercentageProgressFromTCProgressContext:(double)a3
{
  objc_sync_enter(self);
  [-[TSUProgressContext currentStage](self "currentStage")];

  objc_sync_exit(self);
}

- (void)setMessage:(id)a3
{
  if (!a3)
  {
    a3 = &stru_287DDF830;
  }

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a3 forKey:@"TSUProgressMessage"];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];

  [v5 postNotificationName:@"TSUProgressNotification" object:self userInfo:v4];
}

- (double)currentPosition
{
  objc_sync_enter(self);
  v3 = [(TSUProgressContext *)self currentStage];
  objc_sync_exit(self);
  if (!v3)
  {
    return self->m_lastProgressReport;
  }

  [v3 currentPosition];
  return result;
}

- (double)overallProgress
{
  objc_sync_enter(self);
  v3 = [(TSUProgressContext *)self currentStage];
  objc_sync_exit(self);
  if (!v3)
  {
    return self->m_lastOverallProgress;
  }

  [v3 overallProgress];
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

- (void)reportProgress:(double)a3 overallProgress:(double)a4
{
  objc_sync_enter(self);
  self->m_lastOverallProgress = a4;
  m_lastReportTime = self->m_lastReportTime;
  if (!m_lastReportTime || ([(NSDate *)m_lastReportTime timeIntervalSinceNow], a3 >= 100.0) || v8 < -0.1 || a3 - self->m_lastProgressReport >= 5.0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, @"TSUProgressCurrentPosition", v10, @"TSUProgressOverallProgress", 0}];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

    self->m_lastReportTime = [MEMORY[0x277CBEAA8] date];
    self->m_lastProgressReport = a3;
  }

  objc_sync_exit(self);
}

@end