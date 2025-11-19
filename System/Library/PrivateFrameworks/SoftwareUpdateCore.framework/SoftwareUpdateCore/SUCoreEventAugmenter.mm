@interface SUCoreEventAugmenter
+ (void)augmentEvent:(id)a3 withDescriptor:(id)a4 specifyAlternateUpdate:(BOOL)a5;
+ (void)augmentEvent:(id)a3 withPolicy:(id)a4;
+ (void)augmentEvent:(id)a3 withPolicy:(id)a4 primaryDescriptor:(id)a5 alternateDescriptor:(id)a6;
- (SUCoreEventAugmenter)init;
- (void)augmentEvent:(id)a3;
- (void)setAlternateDescriptor:(id)a3;
- (void)setPolicy:(id)a3;
- (void)setPrimaryDescriptor:(id)a3;
@end

@implementation SUCoreEventAugmenter

- (SUCoreEventAugmenter)init
{
  v7.receiver = self;
  v7.super_class = SUCoreEventAugmenter;
  v2 = [(SUCoreEventAugmenter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.su.eventAugmenter", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;
  }

  return v2;
}

- (void)setPolicy:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUCoreEventAugmenter_setPolicy___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)setPrimaryDescriptor:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUCoreEventAugmenter_setPrimaryDescriptor___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)setAlternateDescriptor:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUCoreEventAugmenter_setAlternateDescriptor___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)augmentEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUCoreEventAugmenter_augmentEvent___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

+ (void)augmentEvent:(id)a3 withPolicy:(id)a4
{
  v12 = a3;
  v5 = a4;
  if (!v12)
  {
    v10 = [MEMORY[0x277D64428] sharedDiag];
    v8 = v10;
    v11 = @"missing required event param";
LABEL_10:
    [v10 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:v11 withResult:8101 withError:0];
    goto LABEL_11;
  }

  if (!v5)
  {
    v10 = [MEMORY[0x277D64428] sharedDiag];
    v8 = v10;
    v11 = @"missing required policy param";
    goto LABEL_10;
  }

  if ([v5 isSupervisedPolicy])
  {
    [v12 setSafeObject:*MEMORY[0x277D647A8] forKey:*MEMORY[0x277D646C0]];
  }

  v6 = [v5 delayPeriodDays];
  if (v6 >= 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v12 setSafeObject:v7 forKey:*MEMORY[0x277D645B8]];
  }

  v8 = [v5 requestedProductMarketingVersion];
  [v12 setSafeObject:v8 forKey:*MEMORY[0x277D64698]];
  v9 = [v5 mdmPathName];
  [v12 setSafeObject:v9 forKey:*MEMORY[0x277D64628]];

LABEL_11:
}

+ (void)augmentEvent:(id)a3 withDescriptor:(id)a4 specifyAlternateUpdate:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = v5 && [v8 descriptorAudienceType] == 2;
    v12 = [v9 productBuildVersion];
    v13 = MEMORY[0x277D64578];
    if (!v10)
    {
      v13 = MEMORY[0x277D646C8];
    }

    v14 = *v13;
    if (v10)
    {
      v15 = MEMORY[0x277D64588];
    }

    else
    {
      v15 = MEMORY[0x277D646D8];
    }

    if (v10)
    {
      v16 = MEMORY[0x277D64570];
    }

    else
    {
      v16 = MEMORY[0x277D64680];
    }

    if (v10)
    {
      v17 = MEMORY[0x277D64560];
    }

    else
    {
      v17 = MEMORY[0x277D64598];
    }

    if (v10)
    {
      v18 = MEMORY[0x277D64568];
    }

    else
    {
      v18 = MEMORY[0x277D64678];
    }

    v63 = v12;
    [v7 setSafeObject:? forKey:?];
    v19 = [v9 updateTypeName];
    v20 = *v15;
    v62 = v19;
    [v7 setSafeObject:? forKey:?];
    v21 = *MEMORY[0x277D647A8];
    v22 = *MEMORY[0x277D64730];
    if ([v9 rampEnabled])
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23;
    v25 = *v16;
    v61 = v24;
    [v7 setSafeObject:? forKey:?];
    v26 = +[SUCoreDescriptor nameForDescriptorAudienceType:](SUCoreDescriptor, "nameForDescriptorAudienceType:", [v9 descriptorAudienceType]);
    v27 = *v17;
    v60 = v26;
    [v7 setSafeObject:? forKey:?];
    v28 = +[SUCoreDescriptor nameForDescriptorPreferredUpdateType:](SUCoreDescriptor, "nameForDescriptorPreferredUpdateType:", [v9 preferredUpdateType]);
    v29 = *v18;
    v59 = v28;
    [v7 setSafeObject:? forKey:?];
    if ([v9 mandatoryUpdateEligible])
    {
      v30 = v21;
    }

    else
    {
      v30 = v22;
    }

    v31 = v30;
    v32 = *MEMORY[0x277D64630];
    v58 = v31;
    [v7 setSafeObject:? forKey:?];
    if ([v9 mandatoryUpdateOptional])
    {
      v33 = v21;
    }

    else
    {
      v33 = v22;
    }

    v34 = v33;
    v35 = *MEMORY[0x277D64638];
    v57 = v34;
    [v7 setSafeObject:? forKey:?];
    v36 = [v9 associatedSplatDescriptor];
    if (v36)
    {
      v37 = v21;
    }

    else
    {
      v37 = v22;
    }

    v38 = v37;
    [v7 setSafeObject:v38 forKey:*MEMORY[0x277D64690]];
    v55 = v38;
    if (v38)
    {
      v39 = [v36 productBuildVersion];
      [v7 setSafeObject:v39 forKey:*MEMORY[0x277D64688]];
    }

    v56 = v36;
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "totalRequiredFreeSpace")}];
    v41 = MEMORY[0x277D64580];
    if (!v10)
    {
      v41 = MEMORY[0x277D646D0];
    }

    [v7 setSafeObject:v40 forKey:*v41];
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "preSUStagingRequiredSize")}];
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "preSUStagingOptionalSize")}];
    if ([v9 enablePreSUStaging])
    {
      v44 = v21;
    }

    else
    {
      v44 = v22;
    }

    v45 = MEMORY[0x277CCABB0];
    v46 = v44;
    v47 = [v45 numberWithUnsignedLongLong:{objc_msgSend(v9, "preSUStagingMaxSize")}];
    [v7 setSafeObject:v42 forKey:*MEMORY[0x277D64670]];
    [v7 setSafeObject:v43 forKey:*MEMORY[0x277D64668]];
    [v7 setSafeObject:v46 forKey:*MEMORY[0x277D64658]];

    [v7 setSafeObject:v47 forKey:*MEMORY[0x277D64660]];
    v64 = 0;
    v65 = 0;
    v48 = [SUCoreSpace cacheDeleteGetReserveSpace:&v65 withError:&v64];
    v49 = v65;
    v50 = v64;
    v51 = v50;
    if (!v48 && !v50)
    {
      v52 = [v49 safeObjectForKey:@"CACHE_DELETE_RESERVE_SPACE_FILESYSTEM_AMOUNT" ofClass:objc_opt_class()];
      [v49 safeObjectForKey:@"CACHE_DELETE_RESERVE_SPACE_AMOUNT" ofClass:objc_opt_class()];
      v54 = v53 = v40;
      [v7 setSafeObject:v52 forKey:*MEMORY[0x277D64860]];
      [v7 setSafeObject:v54 forKey:*MEMORY[0x277D64858]];

      v40 = v53;
    }
  }

  else
  {
    v11 = [MEMORY[0x277D64428] sharedDiag];
    [v11 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required descriptor param" withResult:8101 withError:0];
  }
}

+ (void)augmentEvent:(id)a3 withPolicy:(id)a4 primaryDescriptor:(id)a5 alternateDescriptor:(id)a6
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (!v15)
  {
    v12 = [MEMORY[0x277D64428] sharedDiag];
    [v12 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required event param" withResult:8101 withError:0];

    goto LABEL_11;
  }

  if (!v9)
  {
    v13 = [MEMORY[0x277D64428] sharedDiag];
    [v13 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required policy param" withResult:8101 withError:0];

    if (v10)
    {
      goto LABEL_4;
    }

LABEL_15:
    v14 = [MEMORY[0x277D64428] sharedDiag];
    [v14 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required descriptor param" withResult:8101 withError:0];

    goto LABEL_4;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v9)
  {
    [SUCoreEventAugmenter augmentEvent:v15 withPolicy:v9];
  }

  if (v10)
  {
    [SUCoreEventAugmenter augmentEvent:v15 withDescriptor:v10 specifyAlternateUpdate:v11 != 0];
  }

  if (v11)
  {
    [SUCoreEventAugmenter augmentEvent:v15 withDescriptor:v11 specifyAlternateUpdate:v10 != 0];
  }

LABEL_11:
}

@end