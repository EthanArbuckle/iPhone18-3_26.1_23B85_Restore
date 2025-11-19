@interface BRCClientState
+ (id)allowedClasses;
- (BOOL)PCSMigrationComplete;
- (BOOL)shouldPerformPCSMigration;
- (BRCClientState)initWithDictionary:(id)a3 clientStateData:(id)a4 scheduleFlushBlock:(id)a5;
- (id)_prepareToSaveStateData;
- (id)_stateToData;
- (id)dataPendingSave;
- (id)description;
- (id)dictionary;
- (id)objectForKey:(id)a3;
- (void)scheduleFlush;
- (void)setNeedsPCSMigration:(BOOL)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObjectAndScheduleFlush:(id)a3 forKey:(id)a4;
@end

@implementation BRCClientState

- (id)_prepareToSaveStateData
{
  dispatch_assert_queue_V2(self->_queue);
  originalState = [(BRCClientState *)self _stateToData];
  if (self->_needsSave || ![(NSData *)self->_originalState isEqualToData:originalState])
  {
    v4 = originalState;
    originalState = self->_originalState;
    self->_originalState = v4;
  }

  else
  {
    v4 = 0;
  }

  self->_needsSave = 0;

  return v4;
}

- (id)_stateToData
{
  dispatch_assert_queue_V2(self->_queue);
  dict = self->_dict;
  v10 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:dict requiringSecureCoding:1 error:&v10];
  if (v10)
  {
    abc_report_panic_with_signature();
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected error while converting client state to data!"];
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(BRCClientState *)v6 _stateToData];
    }

    brc_append_system_info_to_message();
    v9 = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCClientState _stateToData]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/database/BRCClientState.m", 57, v9);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(BRCClientState *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@ %p, %@>", v4, self, v5];

  return v6;
}

- (id)dictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__57;
  v10 = __Block_byref_object_dispose__57;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__BRCClientState_dictionary__block_invoke;
  v5[3] = &unk_278502000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __28__BRCClientState_dictionary__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)shouldPerformPCSMigration
{
  if ([(BRCClientState *)self PCSMigrationComplete])
  {
    return 0;
  }

  v3 = [BRCUserDefaults defaultsForMangledID:0];
  v4 = [v3 shouldPreparePCSMigration];

  return v4;
}

- (BOOL)PCSMigrationComplete
{
  v2 = [(BRCClientState *)self objectForKeyedSubscript:@"hasCompletedPCSMigration"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setNeedsPCSMigration:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:!a3];
  [(BRCClientState *)self setObjectAndScheduleFlush:v4 forKey:@"hasCompletedPCSMigration"];
}

- (BRCClientState)initWithDictionary:(id)a3 clientStateData:(id)a4 scheduleFlushBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = BRCClientState;
  v11 = [(BRCClientState *)&v21 init];
  if (v11)
  {
    if (!v8)
    {
      v8 = MEMORY[0x277CBEC10];
    }

    v12 = [v8 mutableCopy];
    dict = v11->_dict;
    v11->_dict = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("client-state", v15);

    queue = v11->_queue;
    v11->_queue = v16;

    v18 = MEMORY[0x22AA4A310](v10);
    scheduleFlushBlock = v11->_scheduleFlushBlock;
    v11->_scheduleFlushBlock = v18;

    if (!v9)
    {
      v11->_needsSave = 1;
    }

    objc_storeStrong(&v11->_originalState, a4);
  }

  return v11;
}

- (id)dataPendingSave
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__57;
  v10 = __Block_byref_object_dispose__57;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__BRCClientState_dataPendingSave__block_invoke;
  v5[3] = &unk_278502000;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__BRCClientState_dataPendingSave__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _prepareToSaveStateData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__57;
  v16 = __Block_byref_object_dispose__57;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__BRCClientState_objectForKey___block_invoke;
  block[3] = &unk_278500D08;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __31__BRCClientState_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__BRCClientState_setObject_forKey___block_invoke;
  block[3] = &unk_2784FF4A0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)setObjectAndScheduleFlush:(id)a3 forKey:(id)a4
{
  [(BRCClientState *)self setObject:a3 forKey:a4];

  [(BRCClientState *)self scheduleFlush];
}

- (void)scheduleFlush
{
  scheduleFlushBlock = self->_scheduleFlushBlock;
  if (scheduleFlushBlock)
  {
    scheduleFlushBlock[2]();
  }
}

+ (id)allowedClasses
{
  if (allowedClasses_once != -1)
  {
    +[BRCClientState allowedClasses];
  }

  v3 = allowedClasses_allowedClasses;

  return v3;
}

uint64_t __32__BRCClientState_allowedClasses__block_invoke()
{
  v15 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  allowedClasses_allowedClasses = [v15 initWithObjects:{v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end