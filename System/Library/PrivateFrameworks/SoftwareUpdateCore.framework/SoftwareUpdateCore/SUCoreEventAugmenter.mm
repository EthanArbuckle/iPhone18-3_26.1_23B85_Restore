@interface SUCoreEventAugmenter
+ (void)augmentEvent:(id)event withDescriptor:(id)descriptor specifyAlternateUpdate:(BOOL)update;
+ (void)augmentEvent:(id)event withPolicy:(id)policy;
+ (void)augmentEvent:(id)event withPolicy:(id)policy primaryDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor;
- (SUCoreEventAugmenter)init;
- (void)augmentEvent:(id)event;
- (void)setAlternateDescriptor:(id)descriptor;
- (void)setPolicy:(id)policy;
- (void)setPrimaryDescriptor:(id)descriptor;
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

- (void)setPolicy:(id)policy
{
  policyCopy = policy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUCoreEventAugmenter_setPolicy___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = policyCopy;
  v6 = policyCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)setPrimaryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUCoreEventAugmenter_setPrimaryDescriptor___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = descriptorCopy;
  v6 = descriptorCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)setAlternateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUCoreEventAugmenter_setAlternateDescriptor___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = descriptorCopy;
  v6 = descriptorCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)augmentEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUCoreEventAugmenter_augmentEvent___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

+ (void)augmentEvent:(id)event withPolicy:(id)policy
{
  eventCopy = event;
  policyCopy = policy;
  if (!eventCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    requestedProductMarketingVersion = mEMORY[0x277D64428];
    v11 = @"missing required event param";
LABEL_10:
    [mEMORY[0x277D64428] trackAnomaly:@"[EVENT_AUGMENTER]" forReason:v11 withResult:8101 withError:0];
    goto LABEL_11;
  }

  if (!policyCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    requestedProductMarketingVersion = mEMORY[0x277D64428];
    v11 = @"missing required policy param";
    goto LABEL_10;
  }

  if ([policyCopy isSupervisedPolicy])
  {
    [eventCopy setSafeObject:*MEMORY[0x277D647A8] forKey:*MEMORY[0x277D646C0]];
  }

  delayPeriodDays = [policyCopy delayPeriodDays];
  if (delayPeriodDays >= 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:delayPeriodDays];
    [eventCopy setSafeObject:v7 forKey:*MEMORY[0x277D645B8]];
  }

  requestedProductMarketingVersion = [policyCopy requestedProductMarketingVersion];
  [eventCopy setSafeObject:requestedProductMarketingVersion forKey:*MEMORY[0x277D64698]];
  mdmPathName = [policyCopy mdmPathName];
  [eventCopy setSafeObject:mdmPathName forKey:*MEMORY[0x277D64628]];

LABEL_11:
}

+ (void)augmentEvent:(id)event withDescriptor:(id)descriptor specifyAlternateUpdate:(BOOL)update
{
  updateCopy = update;
  eventCopy = event;
  descriptorCopy = descriptor;
  v9 = descriptorCopy;
  if (descriptorCopy)
  {
    v10 = updateCopy && [descriptorCopy descriptorAudienceType] == 2;
    productBuildVersion = [v9 productBuildVersion];
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

    v63 = productBuildVersion;
    [eventCopy setSafeObject:? forKey:?];
    updateTypeName = [v9 updateTypeName];
    v20 = *v15;
    v62 = updateTypeName;
    [eventCopy setSafeObject:? forKey:?];
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
    [eventCopy setSafeObject:? forKey:?];
    v26 = +[SUCoreDescriptor nameForDescriptorAudienceType:](SUCoreDescriptor, "nameForDescriptorAudienceType:", [v9 descriptorAudienceType]);
    v27 = *v17;
    v60 = v26;
    [eventCopy setSafeObject:? forKey:?];
    v28 = +[SUCoreDescriptor nameForDescriptorPreferredUpdateType:](SUCoreDescriptor, "nameForDescriptorPreferredUpdateType:", [v9 preferredUpdateType]);
    v29 = *v18;
    v59 = v28;
    [eventCopy setSafeObject:? forKey:?];
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
    [eventCopy setSafeObject:? forKey:?];
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
    [eventCopy setSafeObject:? forKey:?];
    associatedSplatDescriptor = [v9 associatedSplatDescriptor];
    if (associatedSplatDescriptor)
    {
      v37 = v21;
    }

    else
    {
      v37 = v22;
    }

    v38 = v37;
    [eventCopy setSafeObject:v38 forKey:*MEMORY[0x277D64690]];
    v55 = v38;
    if (v38)
    {
      productBuildVersion2 = [associatedSplatDescriptor productBuildVersion];
      [eventCopy setSafeObject:productBuildVersion2 forKey:*MEMORY[0x277D64688]];
    }

    v56 = associatedSplatDescriptor;
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "totalRequiredFreeSpace")}];
    v41 = MEMORY[0x277D64580];
    if (!v10)
    {
      v41 = MEMORY[0x277D646D0];
    }

    [eventCopy setSafeObject:v40 forKey:*v41];
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
    [eventCopy setSafeObject:v42 forKey:*MEMORY[0x277D64670]];
    [eventCopy setSafeObject:v43 forKey:*MEMORY[0x277D64668]];
    [eventCopy setSafeObject:v46 forKey:*MEMORY[0x277D64658]];

    [eventCopy setSafeObject:v47 forKey:*MEMORY[0x277D64660]];
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
      [eventCopy setSafeObject:v52 forKey:*MEMORY[0x277D64860]];
      [eventCopy setSafeObject:v54 forKey:*MEMORY[0x277D64858]];

      v40 = v53;
    }
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required descriptor param" withResult:8101 withError:0];
  }
}

+ (void)augmentEvent:(id)event withPolicy:(id)policy primaryDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor
{
  eventCopy = event;
  policyCopy = policy;
  descriptorCopy = descriptor;
  alternateDescriptorCopy = alternateDescriptor;
  if (!eventCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required event param" withResult:8101 withError:0];

    goto LABEL_11;
  }

  if (!policyCopy)
  {
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428]2 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required policy param" withResult:8101 withError:0];

    if (descriptorCopy)
    {
      goto LABEL_4;
    }

LABEL_15:
    mEMORY[0x277D64428]3 = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428]3 trackAnomaly:@"[EVENT_AUGMENTER]" forReason:@"missing required descriptor param" withResult:8101 withError:0];

    goto LABEL_4;
  }

  if (!descriptorCopy)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (policyCopy)
  {
    [SUCoreEventAugmenter augmentEvent:eventCopy withPolicy:policyCopy];
  }

  if (descriptorCopy)
  {
    [SUCoreEventAugmenter augmentEvent:eventCopy withDescriptor:descriptorCopy specifyAlternateUpdate:alternateDescriptorCopy != 0];
  }

  if (alternateDescriptorCopy)
  {
    [SUCoreEventAugmenter augmentEvent:eventCopy withDescriptor:alternateDescriptorCopy specifyAlternateUpdate:descriptorCopy != 0];
  }

LABEL_11:
}

@end