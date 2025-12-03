@interface TSDCTranslationClock
- (TSDCTranslationClock)initWithClockIdentifier:(unint64_t)identifier;
- (void)dealloc;
- (void)didChangeClockMasterForClock:(id)clock;
- (void)getInitialSyncInfo;
@end

@implementation TSDCTranslationClock

- (TSDCTranslationClock)initWithClockIdentifier:(unint64_t)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCTranslationClock (0x%016llx) initWithClockIdentifier", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = TSDCTranslationClock;
  v5 = [(TSDCTranslationClock *)&v14 init];
  if (v5)
  {
    v6 = [[_TSF_TSDKernelClock alloc] initWithClockIdentifier:identifier];
    if (v6)
    {
      v7 = [[TSXTranslationClock alloc] initWithClockIdentifier:identifier];
      translationClock = v5->_translationClock;
      v5->_translationClock = v7;

      objc_storeStrong(&v5->_translationKernelClock, v6);
      [(_TSF_TSDKernelClock *)v5->_translationKernelClock addClient:v5];
      v9 = +[_TSF_TSDClockSyncManager sharedClockSyncManager];
      v10 = [v9 clockSyncForClockIdentifier:identifier pid:0];
      clockSync = v5->_clockSync;
      v5->_clockSync = v10;

      [(_TSF_TSDClockSync *)v5->_clockSync addUpdateClient:v5];
      [(TSDCTranslationClock *)v5 getInitialSyncInfo];
    }

    else
    {
      [TSDCTranslationClock initWithClockIdentifier:v5];
      v5 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  [(_TSF_TSDClockSync *)self->_clockSync removeUpdateClient:self];
  v3 = +[_TSF_TSDClockSyncManager sharedClockSyncManager];
  [v3 releaseClockSyncForClockIdentifier:{-[_TSF_TSDKernelClock clockIdentifier](self->_translationKernelClock, "clockIdentifier")}];

  [(_TSF_TSDKernelClock *)self->_translationKernelClock removeClient:self];
  v4.receiver = self;
  v4.super_class = TSDCTranslationClock;
  [(TSDCTranslationClock *)&v4 dealloc];
}

- (void)getInitialSyncInfo
{
  *buf = 136315138;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error getting initial sync info %s", buf, 0xCu);
}

- (void)didChangeClockMasterForClock:(id)clock
{
  translationClock = [(TSDCTranslationClock *)self translationClock];
  [translationClock _changedClockMaster];
}

- (void)initWithClockIdentifier:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end