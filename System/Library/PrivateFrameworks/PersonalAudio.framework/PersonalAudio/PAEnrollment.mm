@interface PAEnrollment
+ (id)enrollmentWithAudiogram:(id)audiogram;
+ (id)sharedInstance;
- (PAEnrollment)init;
- (id)enrollmentNodeAfter:(id)after withSelectedNode:(id)node;
- (void)addEnrollmentStepForSection:(unint64_t)section comparing:(unint64_t)comparing withOption:(unint64_t)option andBlock:(id)block;
- (void)addHandlers;
- (void)addLevelEnrollmentStepsStartingWith:(unint64_t)with;
- (void)addOffEnrollmentStepComparing:(unint64_t)comparing;
- (void)mediaServerDied;
- (void)registerNotifications;
- (void)updateHeadphoneState;
@end

@implementation PAEnrollment

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PAEnrollment sharedInstance];
  }

  v3 = sharedInstance_enrollment;

  return v3;
}

uint64_t __30__PAEnrollment_sharedInstance__block_invoke()
{
  sharedInstance_enrollment = objc_alloc_init(PAEnrollment);

  return MEMORY[0x2821F96F8]();
}

+ (id)enrollmentWithAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  v4 = objc_alloc_init(PAEnrollment);
  v5 = [PAAudiogramUtilities normalizedOffsetsFromAudiogram:audiogramCopy];

  v6 = [PAConfiguration configurationWithAudiogram:v5];
  [(PAEnrollment *)v4 setAudiogramPreset:v6];

  return v4;
}

- (PAEnrollment)init
{
  v6.receiver = self;
  v6.super_class = PAEnrollment;
  v2 = [(PAEnrollment *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PAEnrollment *)v2 addHandlers];
    [(PAEnrollment *)v3 registerNotifications];
    v5 = v3;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  return v3;
}

- (void)addHandlers
{
  objc_initWeak(&location, self);
  [(PAEnrollment *)self addEnrollmentStepForSection:0 comparing:0 withOption:0 andBlock:&__block_literal_global_5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__PAEnrollment_addHandlers__block_invoke_2;
  v10[3] = &unk_279A1D758;
  objc_copyWeak(&v11, &location);
  [(PAEnrollment *)self addEnrollmentStepForSection:2 comparing:0 withOption:1 andBlock:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__PAEnrollment_addHandlers__block_invoke_3;
  v8[3] = &unk_279A1D758;
  objc_copyWeak(&v9, &location);
  [(PAEnrollment *)self addEnrollmentStepForSection:2 comparing:0 withOption:2 andBlock:v8];
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __27__PAEnrollment_addHandlers__block_invoke_4;
  v6 = &unk_279A1D758;
  objc_copyWeak(&v7, &location);
  [(PAEnrollment *)self addEnrollmentStepForSection:3 comparing:0 withOption:0 andBlock:&v3];
  [(PAEnrollment *)self addOffEnrollmentStepComparing:3, v3, v4, v5, v6];
  [(PAEnrollment *)self addOffEnrollmentStepComparing:4];
  [(PAEnrollment *)self addLevelEnrollmentStepsStartingWith:3];
  [(PAEnrollment *)self addLevelEnrollmentStepsStartingWith:6];
  [(PAEnrollment *)self addLevelEnrollmentStepsStartingWith:9];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __27__PAEnrollment_addHandlers__block_invoke()
{
  v0 = [PAEnrollmentNode nodeWithSection:2 andType:1 comparing:0 with:1];
  [v0 setIndex:1];

  return v0;
}

id __27__PAEnrollment_addHandlers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 type])
  {
    v4 = [PAEnrollmentNode nodeWithSection:2 andType:2 comparing:0 with:2];
    v5 = v4;
    v6 = 2;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setSelectedLevel:3];

    v4 = [PAEnrollmentNode nodeWithSection:3 type:3 andConfiguration:0];
    v5 = v4;
    v6 = 3;
  }

  [v4 setIndex:v6];

  return v5;
}

id __27__PAEnrollment_addHandlers__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 type])
  {
    v4 = 9;
  }

  else
  {
    v4 = 6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSelectedLevel:v4];

  v6 = [PAEnrollmentNode nodeWithSection:3 type:v4 andConfiguration:0];
  [v6 setIndex:3];

  return v6;
}

id __27__PAEnrollment_addHandlers__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained selectedLevel];

  if (v3 == 9)
  {
    v4 = 9;
    v5 = 9;
    v6 = 10;
  }

  else
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 selectedLevel];

    if (v8 == 3)
    {
      v4 = 3;
      v5 = 0;
      v6 = 3;
    }

    else
    {
      v4 = 6;
      v5 = 6;
      v6 = 7;
    }
  }

  v9 = [PAEnrollmentNode nodeWithSection:4 andType:v4 comparing:v5 with:v6];
  [v9 setIndex:3];

  return v9;
}

- (void)addOffEnrollmentStepComparing:(unint64_t)comparing
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__PAEnrollment_addOffEnrollmentStepComparing___block_invoke;
  v3[3] = &__block_descriptor_40_e65___PAEnrollmentNode_24__0__PAEnrollmentNode_8__PAEnrollmentNode_16l;
  v3[4] = comparing;
  [(PAEnrollment *)self addEnrollmentStepForSection:4 comparing:0 withOption:comparing andBlock:v3];
}

id __46__PAEnrollment_addOffEnrollmentStepComparing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 type] + 1;
  if ([v6 type])
  {
    if ([v6 type] == 5)
    {
      v8 = [PAEnrollmentNode nodeWithSection:6 andType:5 comparing:5 with:0];
      v7 = 7;
      goto LABEL_10;
    }

    v11 = *(a1 + 32);
    v12 = v11 + 1;
    v13 = v11 + 1;
    goto LABEL_8;
  }

  if ([v5 type] != 4)
  {
    v12 = *(a1 + 32) + 1;
    v13 = v12;
    v11 = 0;
LABEL_8:
    v10 = [PAEnrollmentNode nodeWithSection:4 andType:v12 comparing:v11 with:v13];
    goto LABEL_9;
  }

  v9 = +[PASettings sharedInstance];
  [v9 setPersonalMediaConfiguration:0];

  v7 = 7;
  v10 = [PAEnrollmentNode nodeWithSection:7 type:0 andConfiguration:0];
LABEL_9:
  v8 = v10;
LABEL_10:
  [v8 setIndex:v7];

  return v8;
}

- (void)addLevelEnrollmentStepsStartingWith:(unint64_t)with
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PAEnrollment_addLevelEnrollmentStepsStartingWith___block_invoke;
  v5[3] = &__block_descriptor_40_e65___PAEnrollmentNode_24__0__PAEnrollmentNode_8__PAEnrollmentNode_16l;
  v5[4] = with;
  [(PAEnrollment *)self addEnrollmentStepForSection:4 comparing:with withOption:with + 1 andBlock:v5];
  [(PAEnrollment *)self addEnrollmentStepForSection:4 comparing:with + 1 withOption:with + 2 andBlock:&__block_literal_global_9];
  [(PAEnrollment *)self addEnrollmentStepForSection:4 comparing:with withOption:with + 2 andBlock:&__block_literal_global_11];
}

id __52__PAEnrollment_addLevelEnrollmentStepsStartingWith___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 type];

  v7 = [PAEnrollmentNode nodeWithSection:4 andType:v5 comparing:v6 with:*(a1 + 32) + 2];
  v8 = v7;
  if (*(a1 + 32) == 3)
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  [v7 setIndex:v9];

  return v8;
}

id __52__PAEnrollment_addLevelEnrollmentStepsStartingWith___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v3 type];

  v6 = [PAEnrollmentNode nodeWithSection:6 andType:v4 comparing:v5 with:0];
  [v6 setIndex:7];

  return v6;
}

id __52__PAEnrollment_addLevelEnrollmentStepsStartingWith___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v3 type];

  v6 = [PAEnrollmentNode nodeWithSection:6 andType:v4 comparing:v5 with:0];
  [v6 setIndex:7];

  return v6;
}

- (void)addEnrollmentStepForSection:(unint64_t)section comparing:(unint64_t)comparing withOption:(unint64_t)option andBlock:(id)block
{
  blockCopy = block;
  enrollmentHandlers = [(PAEnrollment *)self enrollmentHandlers];
  if (!enrollmentHandlers)
  {
    enrollmentHandlers = [MEMORY[0x277CBEB38] dictionary];
    [(PAEnrollment *)self setEnrollmentHandlers:enrollmentHandlers];
  }

  v11 = MEMORY[0x25F8B3530](blockCopy);
  v12 = paKeyFromNodeParameters(section, comparing, option);
  [enrollmentHandlers setValue:v11 forKey:v12];
}

- (id)enrollmentNodeAfter:(id)after withSelectedNode:(id)node
{
  afterCopy = after;
  nodeCopy = node;
  enrollmentHandlers = [(PAEnrollment *)self enrollmentHandlers];
  v9 = [afterCopy key];
  v10 = [enrollmentHandlers objectForKey:v9];

  section = [afterCopy section];
  configuration = [afterCopy configuration];
  if (self->_audiogramPreset && section <= 4)
  {
    v13 = +[PASettings sharedInstance];
    [v13 setPersonalMediaConfiguration:self->_audiogramPreset];

    v14 = [PAEnrollmentNode nodeWithSection:6 andType:12 comparing:12 with:0];
    options = [v14 options];
    firstObject = [options firstObject];
    [firstObject setConfiguration:self->_audiogramPreset];

    [v14 setConfiguration:self->_audiogramPreset];
    v17 = v14;
LABEL_4:
    v18 = 7;
    goto LABEL_5;
  }

  if (section == 6)
  {
    v21 = +[PASettings sharedInstance];
    if ([v21 personalMediaEnabled])
    {
      currentDevicePSEVersion = [(PAEnrollment *)self currentDevicePSEVersion];

      if (currentDevicePSEVersion)
      {
        v14 = +[PAEnrollmentNode nodeWithSection:andType:comparing:with:](PAEnrollmentNode, "nodeWithSection:andType:comparing:with:", 5, [afterCopy type], objc_msgSend(afterCopy, "type"), 0);
        [v14 setConfiguration:configuration];
        v17 = v14;
        v18 = 6;
        goto LABEL_5;
      }
    }

    else
    {
    }

    v23 = +[PASettings sharedInstance];
    if ([v23 personalMediaEnabled])
    {
    }

    else
    {
      audiogramPreset = self->_audiogramPreset;

      if (!audiogramPreset)
      {
        v17 = +[PAEnrollmentNode nodeWithSection:type:andConfiguration:](PAEnrollmentNode, "nodeWithSection:type:andConfiguration:", 8, [afterCopy type], 0);
        v14 = v17;
        goto LABEL_4;
      }
    }

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  if (section > 4)
  {
    goto LABEL_23;
  }

  if (!v10)
  {
    v17 = [PAEnrollmentNode nodeWithSection:2 andType:1 comparing:0 with:1];
    v14 = v17;
    v18 = 1;
LABEL_5:
    [v17 setIndex:v18];
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_24:
    v20 = 1;
    goto LABEL_25;
  }

  v14 = (v10)[2](v10, afterCopy, nodeCopy);
  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_6:
  index = [v14 index];
  if ((index - 1) >= 2)
  {
    if ((index - 2) >= 4)
    {
      v20 = 1;
    }

    else
    {
      v20 = 3;
    }
  }

  else
  {
    v20 = 2;
  }

LABEL_25:
  [(PAEnrollment *)self setProgress:v20];
  v25 = +[PASettings sharedInstance];
  [v25 setCurrentEnrollmentProgress:v20];

  return v14;
}

- (void)registerNotifications
{
  v20[3] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v4 = MEMORY[0x277D26C10];
  v5 = MEMORY[0x277D26B00];
  v6 = *MEMORY[0x277D26B00];
  v20[0] = *MEMORY[0x277D26C10];
  v20[1] = v6;
  v7 = MEMORY[0x277D26D40];
  v20[2] = *MEMORY[0x277D26D40];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  [mEMORY[0x277D26E58] setAttribute:v8 forKey:*MEMORY[0x277D26DD0] error:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_headphoneStateChangedNotification_ name:*v4 object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = *MEMORY[0x277CB8210];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [defaultCenter2 addObserver:self selector:sel_headphoneStateChangedNotification_ name:v11 object:mEMORY[0x277CB83F8]];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *v5;
  mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [defaultCenter3 addObserver:self selector:sel_headphoneStateChangedNotification_ name:v14 object:mEMORY[0x277D26E58]2];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  v17 = *v7;
  mEMORY[0x277D26E58]3 = [MEMORY[0x277D26E58] sharedAVSystemController];
  [defaultCenter4 addObserver:self selector:sel_mediaServerDied name:v17 object:mEMORY[0x277D26E58]3];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)mediaServerDied
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PAEnrollment *)self performSelector:sel_registerNotifications withObject:0 afterDelay:2.0];

  [(PAEnrollment *)self headphoneStateChangedNotification:0];
}

- (void)updateHeadphoneState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getHUAccessoryManagerClass_softClass_0;
  v11 = getHUAccessoryManagerClass_softClass_0;
  if (!getHUAccessoryManagerClass_softClass_0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getHUAccessoryManagerClass_block_invoke_0;
    v7[3] = &unk_279A1D238;
    v7[4] = &v8;
    __getHUAccessoryManagerClass_block_invoke_0(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  sharedInstance = [v3 sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PAEnrollment_updateHeadphoneState__block_invoke;
  v6[3] = &unk_279A1D210;
  v6[4] = self;
  [sharedInstance getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v6];
}

@end