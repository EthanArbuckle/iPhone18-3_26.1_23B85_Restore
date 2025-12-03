@interface SUKeybagInterface
+ (id)sharedInstance;
- (BOOL)createInstallationKeybagForDescriptor:(id)descriptor withLASecret:(id)secret forUnattendedInstall:(BOOL)install;
- (BOOL)createInstallationKeybagForDescriptor:(id)descriptor withSecret:(id)secret forUnattendedInstall:(BOOL)install;
- (BOOL)disableKeybagStash;
- (BOOL)hadFirstUnlock;
- (BOOL)hasPasscodeSet;
- (BOOL)isPasscodeLocked;
- (BOOL)persistKeybagStash;
- (id)_init;
- (id)_verifyKeyBagKeyStash;
- (id)createPreventLockAssertionWithDuration:(int64_t)duration;
- (id)lastBuildWithStashKeybagCreated;
- (int)_queue_fetchKeybagState;
- (int)installationKeybagStateForDescriptor:(id)descriptor;
- (void)_queue_passcodeChanged;
- (void)_queue_refreshState;
- (void)_queue_setHasPasscodeSet:(BOOL)set;
- (void)_queue_setIsPasscodeLocked:(BOOL)locked;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setLastBuildWithStashKeybagCreated:(id)created;
@end

@implementation SUKeybagInterface

+ (id)sharedInstance
{
  v2 = sharedInstance___instance_5;
  if (!sharedInstance___instance_5)
  {
    _init = [[SUKeybagInterface alloc] _init];
    v4 = sharedInstance___instance_5;
    sharedInstance___instance_5 = _init;

    v2 = sharedInstance___instance_5;
  }

  return v2;
}

- (id)_init
{
  v23.receiver = self;
  v23.super_class = SUKeybagInterface;
  v2 = [(SUKeybagInterface *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.softwareupdateservices.keybag", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.softwareupdateservices.keybag.observerCallout", v6);
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    v9 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v10 = *(v2 + 4);
    *(v2 + 4) = v9;

    *(v2 + 12) = 0;
    objc_initWeak(&location, v2);
    *(v2 + 10) = -1;
    v11 = *(v2 + 1);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __26__SUKeybagInterface__init__block_invoke;
    handler[3] = &unk_279CABB18;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v2 + 10, v11, handler);
    *(v2 + 11) = -1;
    v12 = [*MEMORY[0x277D26138] cStringUsingEncoding:4];
    v13 = *(v2 + 1);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __26__SUKeybagInterface__init__block_invoke_2;
    v18[3] = &unk_279CABB18;
    objc_copyWeak(&v19, &location);
    notify_register_dispatch(v12, v2 + 11, v13, v18);
    v14 = *(v2 + 1);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __26__SUKeybagInterface__init__block_invoke_3;
    v16[3] = &unk_279CAA708;
    v17 = v2;
    dispatch_sync(v14, v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__SUKeybagInterface__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_refreshState];
}

void __26__SUKeybagInterface__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_passcodeChanged];
}

- (BOOL)hasPasscodeSet
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = selfCopy->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SUKeybagInterface_hasPasscodeSet__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isPasscodeLocked
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_queue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = selfCopy->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SUKeybagInterface_isPasscodeLocked__block_invoke;
  v5[3] = &unk_279CAA858;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [SUKeybagInterface addObserver:];
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__SUKeybagInterface_addObserver___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [SUKeybagInterface removeObserver:];
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUKeybagInterface_removeObserver___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)hadFirstUnlock
{
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = v2;
  SULogDebug(@"MKBDeviceUnlockedSinceBoot() returned %d", v4, v5, v6, v7, v8, v9, v10, v2);
  return v3 == 1;
}

- (id)lastBuildWithStashKeybagCreated
{
  v2 = +[SUState currentState];
  lastBuildWithStashKeybagCreated = [v2 lastBuildWithStashKeybagCreated];

  return lastBuildWithStashKeybagCreated;
}

- (void)setLastBuildWithStashKeybagCreated:(id)created
{
  createdCopy = created;
  v4 = +[SUState currentState];
  [v4 setLastBuildWithStashKeybagCreated:createdCopy];
}

- (int)installationKeybagStateForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!+[SUUtility currentReleaseTypeIsInternal](SUUtility, "currentReleaseTypeIsInternal") || (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), [v5 keybagState], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    if (![(SUKeybagInterface *)self hasPasscodeSet])
    {
      v26 = @"No passcode set, keybag is not required";
      goto LABEL_11;
    }

    if ([descriptorCopy isSplatOnly])
    {
      v26 = @"Splat update does not require installation keybag";
LABEL_11:
      SULogInfo(v26, v19, v20, v21, v22, v23, v24, v25, v108);
      v18 = 0;
      goto LABEL_12;
    }

    if (+[SUUtility isVirtualDevice])
    {
      v26 = @"Virtual device does not require installation keybag";
      goto LABEL_11;
    }

    lastBuildWithStashKeybagCreated = [(SUKeybagInterface *)self lastBuildWithStashKeybagCreated];
    v36 = lastBuildWithStashKeybagCreated;
    if (descriptorCopy)
    {
      productBuildVersion = [descriptorCopy productBuildVersion];
      v38 = [productBuildVersion isEqualToString:v36];

      if ((v38 & 1) == 0)
      {
        productBuildVersion2 = [descriptorCopy productBuildVersion];
        SULogInfo(@"The last keybag was created for %@, not %@", v40, v41, v42, v43, v44, v45, v46, v36);
        v18 = 1;
LABEL_45:

        goto LABEL_12;
      }
    }

    else
    {
      SULogInfo(@"Skip the build version check because the provided descriptor is nil; lastBuildWithStashKeybagCreated = %@", v29, v30, v31, v32, v33, v34, v35, lastBuildWithStashKeybagCreated);
    }

    productBuildVersion2 = [(SUKeybagInterface *)self _verifyKeyBagKeyStash];
    SULogInfo(@"MKBKeyBagKeyStashVerify() returned %@", v47, v48, v49, v50, v51, v52, v53, productBuildVersion2);
    if (productBuildVersion2)
    {
      v61 = [productBuildVersion2 objectForKey:@"StashBagValidOnDisk"];
      SULogInfo(@"validOnDiskValue from stashVerify: %@", v62, v63, v64, v65, v66, v67, v68, v61);
      if (v61 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue = [v61 intValue];
      }

      else
      {
        SULogError(@"validOnDiskValue is invalid", v69, v70, v71, v72, v73, v74, v75, v109);
        intValue = 2;
      }

      v77 = [productBuildVersion2 objectForKey:@"StashStagedManifest"];
      SULogInfo(@"manifestValue from stashVerify: %@", v78, v79, v80, v81, v82, v83, v84, v77);
      if (v77 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        bOOLValue = [v77 BOOLValue];
      }

      else
      {
        SULogError(@"manifestValue is invalid", v85, v86, v87, v88, v89, v90, v91, v110);
        bOOLValue = 0;
      }

      SULogInfo(@"stashState = %d, hasStagedManifest = %d", v93, v94, v95, v96, v97, v98, v99, intValue);
      v18 = 1;
      if (!intValue)
      {
        if (bOOLValue)
        {
          v107 = @"keybag is valid in memory";
        }

        else
        {
          v107 = @"keybag is in memory, but staged manifest does not exist";
        }

        if (bOOLValue)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_44;
      }

      if (intValue == 1)
      {
        if (bOOLValue)
        {
          v107 = @"keybag is valid and committed";
        }

        else
        {
          v107 = @"keybag is valid on disk, but staged manifest does not exist";
        }

        if (bOOLValue)
        {
          v18 = 3;
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_44;
      }
    }

    else
    {
      SULogInfo(@"stashState = %d, hasStagedManifest = %d", v54, v55, v56, v57, v58, v59, v60, 2);
      v18 = 1;
    }

    v107 = @"keybag is required";
LABEL_44:
    SULogInfo(v107, v100, v101, v102, v103, v104, v105, v106, v111);
    goto LABEL_45;
  }

  v7 = +[SUPreferences sharedInstance];
  keybagState = [v7 keybagState];
  intValue2 = [keybagState intValue];

  if (intValue2 >= 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = intValue2;
  }

  v18 = v17 & ~(v17 >> 31);
  SULogInfo(@"Override keybag state with %d", v10, v11, v12, v13, v14, v15, v16, v18);
LABEL_12:

  return v18;
}

- (BOOL)createInstallationKeybagForDescriptor:(id)descriptor withSecret:(id)secret forUnattendedInstall:(BOOL)install
{
  installCopy = install;
  descriptorCopy = descriptor;
  secretCopy = secret;
  if (!secretCopy)
  {
    [SUKeybagInterface createInstallationKeybagForDescriptor:withSecret:forUnattendedInstall:];
  }

  v9 = [SUManifestBuilder manifestFromDescriptor:descriptorCopy];
  v17 = [secretCopy dataUsingEncoding:4];
  if (v9)
  {
    if (installCopy)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    productBuildVersion = [descriptorCopy productBuildVersion];
    v47 = stringForStashMode(v18);
    SULogInfo(@"createInstallationKeybag - Creating stashbag. descriptor productBuildVersion: %@; stashMode: %@; manifest: %@", v20, v21, v22, v23, v24, v25, v26, productBuildVersion);

    v27 = MKBKeyBagKeyStashCreateWithManifest();
    if (!v27)
    {
      v36 = +[SUState currentState];
      productBuildVersion2 = [descriptorCopy productBuildVersion];
      [v36 setLastBuildWithStashKeybagCreated:productBuildVersion2];

      SULogInfo(@"createInstallationKeybag - Succeeded to create installation keybag stash from secret: %d", v38, v39, v40, v41, v42, v43, v44, 0);
      v35 = 1;
      goto LABEL_12;
    }

    SULogInfo(@"createInstallationKeybag - Failed to create installation keybag stash from secret: %d", v28, v29, v30, v31, v32, v33, v34, v27);
  }

  else
  {
    SULogInfo(@"createInstallationKeybag - Unable to create stashbag because manifest was required but no manifest was provided.", v10, v11, v12, v13, v14, v15, v16, v46);
  }

  v35 = 0;
LABEL_12:

  return v35;
}

- (BOOL)createInstallationKeybagForDescriptor:(id)descriptor withLASecret:(id)secret forUnattendedInstall:(BOOL)install
{
  installCopy = install;
  v51[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  secretCopy = secret;
  if (!secretCopy)
  {
    [SUKeybagInterface createInstallationKeybagForDescriptor:withLASecret:forUnattendedInstall:];
  }

  v16 = [SUManifestBuilder manifestFromDescriptor:descriptorCopy];
  if (v16)
  {
    if (installCopy)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    productBuildVersion = [descriptorCopy productBuildVersion];
    v49 = stringForStashMode(v17);
    SULogInfo(@"createInstallationKeybag - Creating stashbag with LAContext secret. descriptor productBuildVersion: %@; stashMode: %@; manifest: %@", v19, v20, v21, v22, v23, v24, v25, productBuildVersion);

    v50 = @"Manifest";
    v51[0] = v16;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    externalizedContext = [secretCopy externalizedContext];
    v28 = MKBKeyBagKeyStashCreateWithOpts();

    v36 = v28 == 0;
    if (v28)
    {
      SULogInfo(@"createInstallationKeybag - Failed to create installation keybag stash from LAContext secret: %d", v29, v30, v31, v32, v33, v34, v35, v28);
    }

    else
    {
      v37 = +[SUState currentState];
      productBuildVersion2 = [descriptorCopy productBuildVersion];
      [v37 setLastBuildWithStashKeybagCreated:productBuildVersion2];

      SULogInfo(@"createInstallationKeybag - Succeeded to create installation keybag stash from LAContext secret: %d", v39, v40, v41, v42, v43, v44, v45, 0);
    }
  }

  else
  {
    SULogInfo(@"createInstallationKeybag - Unable to create stashbag because manifest was required but no manifest was provided.", v9, v10, v11, v12, v13, v14, v15, v48);
    v36 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v36;
}

- (BOOL)persistKeybagStash
{
  v2 = MKBKeyBagKeyStashPersist();
  v3 = v2;
  SULogDebug(@"MKBKeyBagKeyStashPersist() returned %d", v4, v5, v6, v7, v8, v9, v10, v2);
  return v3 == 0;
}

- (BOOL)disableKeybagStash
{
  v2 = MKBKeyBagKeyStashCreateWithMode();
  v3 = v2;
  SULogDebug(@"MKBKeyBagKeyStashCreateWithMode(kMKBStashModeDisable, NULL) returned %d", v4, v5, v6, v7, v8, v9, v10, v2);
  return v3 == 0;
}

- (id)createPreventLockAssertionWithDuration:(int64_t)duration
{
  v39[2] = *MEMORY[0x277D85DE8];
  SULogInfo(@"Trying to create prevent lock assertion for duration: %llds", a2, duration, v3, v4, v5, v6, v7, duration);
  if ([(SUKeybagInterface *)self isPasscodeLocked])
  {
    SULogError(@"Failed to create prevent lock assertion when the device is passcode locked", v10, v11, v12, v13, v14, v15, v16, v37);
    v17 = 0;
  }

  else
  {
    v38[0] = @"MKBAssertionKey";
    v38[1] = @"MKBAssertionTimeout";
    v39[0] = @"RemoteProfile";
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:duration];
    v39[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v27 = MKBDeviceLockAssertion();
    if (v27)
    {
      v17 = [[SUKeybagPreventLockAssertion alloc] initWithKeybagAssertion:v27];
      CFRelease(v27);
      if (!v17)
      {
        SULogError(@"Failed to create SUKeybagPreventLockAssertion", v28, v29, v30, v31, v32, v33, v34, v37);
      }
    }

    else
    {
      SULogError(@"Failed to create prevent lock assertion; error: %@", v20, v21, v22, v23, v24, v25, v26, 0);
      v17 = 0;
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_verifyKeyBagKeyStash
{
  v2 = MKBKeyBagKeyStashVerify();

  return v2;
}

- (void)_queue_refreshState
{
  dispatch_assert_queue_V2(self->_queue);
  _queue_fetchKeybagState = [(SUKeybagInterface *)self _queue_fetchKeybagState];
  [(SUKeybagInterface *)self _queue_setHasPasscodeSet:_queue_fetchKeybagState != 3];

  [(SUKeybagInterface *)self _queue_setIsPasscodeLocked:(_queue_fetchKeybagState < 7) & (0x46u >> _queue_fetchKeybagState)];
}

- (void)_queue_passcodeChanged
{
  dispatch_assert_queue_V2(self->_queue);
  SULogInfo(@"SUKeybagInterface got passcode changed event", v3, v4, v5, v6, v7, v8, v9, v13[0]);
  [(SUKeybagInterface *)self _queue_refreshState];
  allObjects = [(NSHashTable *)self->_queue_observers allObjects];
  observerCalloutQueue = self->_observerCalloutQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__SUKeybagInterface__queue_passcodeChanged__block_invoke;
  v13[3] = &unk_279CAA7C0;
  v14 = allObjects;
  selfCopy = self;
  v12 = allObjects;
  dispatch_async(observerCalloutQueue, v13);
}

void __43__SUKeybagInterface__queue_passcodeChanged__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 keybagInterfacePasscodeDidChange:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (int)_queue_fetchKeybagState
{
  v7[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = *MEMORY[0x277D28B10];
  v6[1] = @"ExtendedDeviceLockState";
  v7[0] = &unk_287B6F658;
  v7[1] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v3 = MKBGetDeviceLockState();

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_queue_setHasPasscodeSet:(BOOL)set
{
  setCopy = set;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_hasPasscodeSet != setCopy)
  {
    SULogDebug(@"Device hasPasscodeSet changed from %d to %d", v5, v6, v7, v8, v9, v10, v11, self->_queue_hasPasscodeSet);
    self->_queue_hasPasscodeSet = setCopy;
    allObjects = [(NSHashTable *)self->_queue_observers allObjects];
    observerCalloutQueue = self->_observerCalloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SUKeybagInterface__queue_setHasPasscodeSet___block_invoke;
    block[3] = &unk_279CAAE40;
    v16 = allObjects;
    selfCopy = self;
    v18 = setCopy;
    v14 = allObjects;
    dispatch_async(observerCalloutQueue, block);
  }
}

void __46__SUKeybagInterface__queue_setHasPasscodeSet___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 keybagInterface:*(a1 + 40) hasPasscodeSetDidChange:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setIsPasscodeLocked:(BOOL)locked
{
  lockedCopy = locked;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_isPasscodeLocked != lockedCopy)
  {
    SULogDebug(@"Device isPasscodeLocked changed from %d to %d", v5, v6, v7, v8, v9, v10, v11, self->_queue_isPasscodeLocked);
    self->_queue_isPasscodeLocked = lockedCopy;
    allObjects = [(NSHashTable *)self->_queue_observers allObjects];
    observerCalloutQueue = self->_observerCalloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SUKeybagInterface__queue_setIsPasscodeLocked___block_invoke;
    block[3] = &unk_279CAAE40;
    v16 = allObjects;
    selfCopy = self;
    v18 = lockedCopy;
    v14 = allObjects;
    dispatch_async(observerCalloutQueue, block);
  }
}

void __48__SUKeybagInterface__queue_setIsPasscodeLocked___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 keybagInterface:*(a1 + 40) passcodeLockedStateDidChange:{*(a1 + 48), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)removeObserver:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)createInstallationKeybagForDescriptor:withSecret:forUnattendedInstall:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"secret" object:? file:? lineNumber:? description:?];
}

- (void)createInstallationKeybagForDescriptor:withLASecret:forUnattendedInstall:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"secret" object:? file:? lineNumber:? description:?];
}

@end