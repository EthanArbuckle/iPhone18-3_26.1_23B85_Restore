@interface REPortraitPredictor
- (float)userAffinityToContent:(id)content;
- (id)_init;
- (void)_loadStoreIfNeeded;
- (void)dealloc;
- (void)update;
@end

@implementation REPortraitPredictor

- (id)_init
{
  v7.receiver = self;
  v7.super_class = REPortraitPredictor;
  _init = [(REPredictor *)&v7 _init];
  if (_init)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = _init[9];
    _init[9] = dictionary;

    [_init _loadStoreIfNeeded];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:_init selector:sel__loadStoreIfNeeded name:@"REDeviceLockStateChangedNotification" object:0];
  }

  return _init;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"REDeviceLockStateChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = REPortraitPredictor;
  [(REPredictor *)&v4 dealloc];
}

- (void)_loadStoreIfNeeded
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__REPortraitPredictor__loadStoreIfNeeded__block_invoke;
  v2[3] = &unk_2785F9AB8;
  v2[4] = self;
  [(REPredictor *)self onQueue:v2];
}

uint64_t __41__REPortraitPredictor__loadStoreIfNeeded__block_invoke(uint64_t a1)
{
  result = REDeviceUnlockedSinceBoot();
  if (result)
  {
    if (!*(*(a1 + 32) + 64))
    {
      result = PersonalizationPortraitLibraryCore();
      if (result)
      {
        v9 = 0;
        v10 = &v9;
        v11 = 0x2050000000;
        v3 = getPPNamedEntityStoreClass_softClass;
        v12 = getPPNamedEntityStoreClass_softClass;
        if (!getPPNamedEntityStoreClass_softClass)
        {
          v8[0] = MEMORY[0x277D85DD0];
          v8[1] = 3221225472;
          v8[2] = __getPPNamedEntityStoreClass_block_invoke;
          v8[3] = &unk_2785F9BC0;
          v8[4] = &v9;
          __getPPNamedEntityStoreClass_block_invoke(v8);
          v3 = v10[3];
        }

        v4 = v3;
        _Block_object_dispose(&v9, 8);
        v5 = [v3 defaultStore];
        v6 = *(a1 + 32);
        v7 = *(v6 + 64);
        *(v6 + 64) = v5;

        return [*(a1 + 32) invalidate];
      }
    }
  }

  return result;
}

- (void)update
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to load named entities: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __29__REPortraitPredictor_update__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 item];
  v13 = [v4 name];

  v5 = MEMORY[0x277CCABB0];
  [v3 score];
  v7 = v6;

  v8 = [v5 numberWithDouble:v7];
  [*(*(a1 + 32) + 72) setObject:v8 forKeyedSubscript:v13];
  v9 = [*(a1 + 40) objectForKey:v13];
  v10 = v9;
  v11 = *(*(a1 + 48) + 8);
  v12 = 1;
  if ((*(v11 + 24) & 1) == 0 && v9)
  {
    v12 = [v9 isEqualToNumber:v8] ^ 1;
    v11 = *(*(a1 + 48) + 8);
  }

  *(v11 + 24) = v12;
}

- (float)userAffinityToContent:(id)content
{
  contentCopy = content;
  v5 = [contentCopy count];
  if (v5)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__REPortraitPredictor_userAffinityToContent___block_invoke;
    v8[3] = &unk_2785FDE68;
    v8[5] = &v9;
    v8[6] = v5;
    v8[4] = self;
    [contentCopy enumerateObjectsUsingBlock:v8];
    v6 = v10[6];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

void __45__REPortraitPredictor_userAffinityToContent___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1[6] - a3);
  v6 = [*(a1[4] + 72) objectForKeyedSubscript:a2];
  [v6 floatValue];
  *(*(a1[5] + 8) + 24) = ((v5 * v4) / a1[6]) + *(*(a1[5] + 8) + 24);
}

@end