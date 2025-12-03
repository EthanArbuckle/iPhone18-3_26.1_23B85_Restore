@interface SBPressSequenceObserver
- (SBPressSequenceObserver)initWithPressName:(id)name;
- (void)dealloc;
- (void)pressCollector:(id)collector didCollectSequence:(id)sequence;
@end

@implementation SBPressSequenceObserver

- (SBPressSequenceObserver)initWithPressName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = SBPressSequenceObserver;
  v5 = [(SBPressSequenceObserver *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_pressName = nameCopy;
    v7 = objc_alloc_init(SBPressCollector);
    pressCollector = v6->_pressCollector;
    v6->_pressCollector = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__notePowerDownImminent name:@"SBRestartManagerWillRebootNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBRestartManagerWillRebootNotification" object:0];

  v4.receiver = self;
  v4.super_class = SBPressSequenceObserver;
  [(SBPressSequenceObserver *)&v4 dealloc];
}

- (void)pressCollector:(id)collector didCollectSequence:(id)sequence
{
  if ([sequence count])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SBPressSequenceObserver pressCollector:v5 didCollectSequence:?];
    }
  }

  sosTriggerUUID = self->_sosTriggerUUID;
  self->_sosTriggerUUID = 0;
}

- (void)pressCollector:(uint64_t)a1 didCollectSequence:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 8) UUIDString];
  v4 = 136315394;
  v5 = "[SBPressSequenceObserver pressCollector:didCollectSequence:]";
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "%s: _sosTriggerUUID: %@", &v4, 0x16u);
}

@end