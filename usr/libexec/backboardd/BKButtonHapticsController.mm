@interface BKButtonHapticsController
+ (id)sharedInstance;
- (BKButtonHapticsController)init;
- (BKButtonHapticsController)initWithBHButtonHapticsController:(id)controller;
- (id)_queue_assetOfType:(int64_t)type parameters:(id)parameters;
- (id)description;
- (void)_configureAsyncWithBlock:(id)block;
- (void)_configureSyncWithBlock:(id)block;
- (void)_queue_addChangesForPendingState:(id)state configuredState:(id)configuredState toStates:(id)states configs:(id)configs assets:(id)assets enable:(id)enable disable:(id)disable;
- (void)_queue_addConfigsAndAssetsForClickState:(id)state toStates:(id)states configs:(id)configs assets:(id)assets;
- (void)_queue_applyConfigurationChanges;
- (void)_queue_applyDefinitions:(id)definitions;
- (void)_queue_getSlowHapticType:(int64_t *)type getMediumHapticType:(int64_t *)hapticType getFastHapticType:(int64_t *)fastHapticType fromAssetType:(int64_t)assetType clickCount:(int64_t)count;
- (void)applyDefinitions:(id)definitions;
- (void)playHapticForClickState:(unint64_t)state clickSpeed:(unint64_t)speed;
- (void)removeAllHaptics;
@end

@implementation BKButtonHapticsController

- (void)playHapticForClickState:(unint64_t)state clickSpeed:(unint64_t)speed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002217C;
  v4[3] = &unk_1000FA560;
  v4[5] = state;
  v4[6] = speed;
  v4[4] = self;
  [(BKButtonHapticsController *)self _configureSyncWithBlock:v4];
}

- (void)removeAllHaptics
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000223D0;
  v2[3] = &unk_1000FA488;
  v2[4] = self;
  [(BKButtonHapticsController *)self _configureAsyncWithBlock:v2];
}

- (void)applyDefinitions:(id)definitions
{
  definitionsCopy = definitions;
  v5 = +[BSPlatform sharedInstance];
  homeButtonType = [v5 homeButtonType];

  if (homeButtonType == 2)
  {
    v7 = sub_100008528();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "not configuring SSHB because we don't have a real home button", buf, 2u);
    }
  }

  else
  {
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000225E4;
    v9[3] = &unk_1000FD128;
    v9[4] = self;
    v10 = definitionsCopy;
    dispatch_async(queue, v9);
  }
}

- (void)_queue_applyDefinitions:(id)definitions
{
  definitionsCopy = definitions;
  dispatch_assert_queue_V2(self->_queue);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = definitionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v6)
  {
    v8 = *v16;
    *&v7 = 138543362;
    v13 = v7;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 representsHomeButton])
        {
          homeButtonDefinition = self->_homeButtonDefinition;
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100022870;
          v14[3] = &unk_1000FA538;
          v14[4] = self;
          v14[5] = v10;
          v14[6] = &v19;
          [(BKSButtonHapticsDefinition *)homeButtonDefinition updateFromDefinition:v10 withChangeInspectorBlock:v14];
        }

        else
        {
          v12 = sub_100008528();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v24 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ignoring definition for unsupported button:%{public}@", buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v6);
  }

  if (*(v20 + 24) == 1)
  {
    [(BKButtonHapticsController *)self _queue_applyConfigurationChanges];
  }

  _Block_object_dispose(&v19, 8);
}

- (void)_queue_applyConfigurationChanges
{
  dispatch_assert_queue_V2(self->_queue);
  v36 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v38 = +[NSMutableArray array];
  v37 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = self->_clickStatesPending;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        clickState = [v10 clickState];
        v12 = [(NSMutableArray *)self->_clickStatesConfigured objectAtIndexedSubscript:clickState];
        [(BKButtonHapticsController *)self _queue_addChangesForPendingState:v10 configuredState:v12 toStates:v4 configs:v36 assets:v3 enable:v38 disable:v37];
        if ([v10 isEnabled])
        {
          v13 = [v10 copy];
          [(NSMutableArray *)self->_clickStatesConfigured setObject:v13 atIndexedSubscript:clickState];
        }

        else
        {
          v13 = [(NSMutableArray *)self->_clickStatesConfigured objectAtIndexedSubscript:clickState];
          [v13 setEnabled:0];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v7);
  }

  if ([v37 count])
  {
    v14 = sub_100008528();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v37 bs_map:&stru_1000FA4D0];
      *buf = 138543362;
      v47 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "disabling states %{public}@", buf, 0xCu);
    }

    BRController = self->_BRController;
    v41 = 0;
    [(BRButtonResolverController *)BRController disableStates:v37 clearAsset:1 error:&v41];
    v17 = v41;
    if (v17)
    {
      v18 = sub_100008528();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v47 = v37;
        v48 = 2114;
        v49 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "error disabling states %{public}@:%{public}@", buf, 0x16u);
      }
    }
  }

  if ([v4 count])
  {
    v19 = sub_100008528();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [NSOrderedSet orderedSetWithArray:v4];
      array = [v20 array];
      v22 = [array bs_map:&stru_1000FA4F0];
      unusedAssetSlots = [(BRButtonResolverController *)self->_BRController unusedAssetSlots];
      *buf = 138543618;
      v47 = v22;
      v48 = 1024;
      LODWORD(v49) = unusedAssetSlots;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "configuring %{public}@ unusedAssetSlots:%d", buf, 0x12u);
    }

    v24 = [v36 count];
    if (v24 != [v3 count] || (v25 = objc_msgSend(v3, "count"), v25 != objc_msgSend(v4, "count")))
    {
      v34 = +[NSAssertionHandler currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"BKButtonHapticsController.m" lineNumber:584 description:{@"must have same length configs:%@ assets:%@ states:%@", v36, v3, v4}];
    }

    v26 = self->_BRController;
    v40 = 0;
    [(BRButtonResolverController *)v26 setConfigs:v36 withAssets:v3 forStates:v4 error:&v40];
    v27 = v40;
    if (v27)
    {
      v28 = sub_100008528();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v47 = v36;
        v48 = 2114;
        v49 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "error configuring states:%{public}@ error:%{public}@", buf, 0x16u);
      }
    }
  }

  if ([v38 count])
  {
    v29 = sub_100008528();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v38 bs_map:&stru_1000FA510];
      *buf = 138543362;
      v47 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "enabling states %{public}@", buf, 0xCu);
    }

    v31 = self->_BRController;
    v39 = 0;
    [(BRButtonResolverController *)v31 enableStates:v38 error:&v39];
    v32 = v39;
    if (v32)
    {
      v33 = sub_100008528();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v47 = v38;
        v48 = 2114;
        v49 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "error enabling states %{public}@:%{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)_queue_addChangesForPendingState:(id)state configuredState:(id)configuredState toStates:(id)states configs:(id)configs assets:(id)assets enable:(id)enable disable:(id)disable
{
  stateCopy = state;
  configuredStateCopy = configuredState;
  statesCopy = states;
  configsCopy = configs;
  assetsCopy = assets;
  enableCopy = enable;
  disableCopy = disable;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100023724;
  v25[3] = &unk_1000FA4B0;
  v27 = &v34;
  v28 = &v38;
  v22 = stateCopy;
  v26 = v22;
  v29 = &v30;
  [BKButtonHapticsClickState inspectChangesFromState:configuredStateCopy toState:v22 withBlock:v25];
  if ([v22 isEnabled])
  {
    if (v39[3])
    {
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 clickState]);
      [disableCopy addObject:v23];

LABEL_8:
      [(BKButtonHapticsController *)self _queue_addConfigsAndAssetsForClickState:v22 toStates:statesCopy configs:configsCopy assets:assetsCopy];
      goto LABEL_9;
    }

    if (v31[3])
    {
      goto LABEL_8;
    }

    if (*(v35 + 24) != 1)
    {
      goto LABEL_9;
    }

    v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 clickState]);
    [enableCopy addObject:v24];
    goto LABEL_6;
  }

  if (*(v35 + 24) == 1)
  {
    v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 clickState]);
    [disableCopy addObject:v24];
LABEL_6:
  }

LABEL_9:

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

- (void)_queue_addConfigsAndAssetsForClickState:(id)state toStates:(id)states configs:(id)configs assets:(id)assets
{
  stateCopy = state;
  assetsCopy = assets;
  configsCopy = configs;
  statesCopy = states;
  clickState = [stateCopy clickState];
  shouldUseHaptic = [stateCopy shouldUseHaptic];
  v53 = 0;
  v54 = 0;
  v52 = 0;
  if (clickState == 16)
  {
    v53 = 100;
    v54 = 100;
    v52 = 100;
  }

  else
  {
    if (shouldUseHaptic)
    {
      v16 = clickState;
      hapticClickCount = [stateCopy hapticClickCount];
      assetType = [stateCopy assetType];
      v19 = hapticClickCount;
      clickState = v16;
      [(BKButtonHapticsController *)self _queue_getSlowHapticType:&v54 getMediumHapticType:&v53 getFastHapticType:&v52 fromAssetType:assetType clickCount:v19];
    }

    if (clickState >= 0x11)
    {
      +[NSAssertionHandler currentHandler];
      v34 = v33 = clickState;
      [v34 handleFailureInMethod:a2 object:self file:@"BKButtonHapticsController.m" lineNumber:454 description:{@"Invalid parameter not satisfying: %@", @"bhClickState < BRClickStateCount"}];

      clickState = v33;
    }

    if (v54 < 0)
    {
      +[NSAssertionHandler currentHandler];
      v36 = v35 = clickState;
      [v36 handleFailureInMethod:a2 object:self file:@"BKButtonHapticsController.m" lineNumber:455 description:{@"Invalid parameter not satisfying: %@", @"slowHapticType >= HAButtonHapticType_Default"}];

      clickState = v35;
    }

    if (v53 < 0)
    {
      +[NSAssertionHandler currentHandler];
      v38 = v37 = clickState;
      [v38 handleFailureInMethod:a2 object:self file:@"BKButtonHapticsController.m" lineNumber:456 description:{@"Invalid parameter not satisfying: %@", @"mediumHapticType >= HAButtonHapticType_Default"}];

      clickState = v37;
    }

    if (v52 < 0)
    {
      +[NSAssertionHandler currentHandler];
      v40 = v39 = clickState;
      [v40 handleFailureInMethod:a2 object:self file:@"BKButtonHapticsController.m" lineNumber:457 description:{@"Invalid parameter not satisfying: %@", @"fastHapticType >= HAButtonHapticType_Default"}];

      clickState = v39;
    }
  }

  v50 = a2;
  v20 = [(BKButtonHapticsController *)self _queue_assetOfType:v54 parameters:0];
  v21 = [(BKButtonHapticsController *)self _queue_assetOfType:v53 parameters:0];
  v22 = [(BKButtonHapticsController *)self _queue_assetOfType:v52 parameters:0];
  v23 = sub_100008528();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v48 = clickState;
    v49 = configsCopy;
    selfCopy = self;
    if (clickState > 0x10)
    {
      v24 = @"<unknown>";
    }

    else
    {
      v24 = off_1000FA580[clickState];
    }

    v25 = v24;
    v26 = sub_100023DAC(v54);
    v27 = sub_100023DAC(v53);
    v28 = sub_100023DAC(v52);
    *buf = 138544130;
    v56 = v25;
    v57 = 2114;
    v58 = v26;
    v59 = 2114;
    v60 = v27;
    v61 = 2114;
    v62 = v28;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "state:%{public}@ haptics: %{public}@,%{public}@,%{public}@", buf, 0x2Au);

    clickState = v48;
    configsCopy = v49;
    self = selfCopy;
  }

  if (v20)
  {
    if (v21)
    {
      goto LABEL_20;
    }

LABEL_23:
    +[NSAssertionHandler currentHandler];
    v44 = v43 = clickState;
    [v44 handleFailureInMethod:v50 object:self file:@"BKButtonHapticsController.m" lineNumber:470 description:@"nope"];

    clickState = v43;
    if (v22)
    {
      goto LABEL_21;
    }

LABEL_24:
    +[NSAssertionHandler currentHandler];
    v46 = v45 = clickState;
    [v46 handleFailureInMethod:v50 object:self file:@"BKButtonHapticsController.m" lineNumber:471 description:@"nope"];

    clickState = v45;
    goto LABEL_21;
  }

  +[NSAssertionHandler currentHandler];
  v42 = v41 = clickState;
  [v42 handleFailureInMethod:v50 object:self file:@"BKButtonHapticsController.m" lineNumber:469 description:@"nope"];

  clickState = v41;
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!v22)
  {
    goto LABEL_24;
  }

LABEL_21:
  v29 = [stateCopy slowConfigDictionaryForHAButtonHapticType:v54];
  v30 = [stateCopy normalConfigDictionaryForHAButtonHapticType:v53];
  v31 = [stateCopy fastConfigDictionaryForHAButtonHapticType:v52];
  v32 = [NSNumber numberWithUnsignedInteger:clickState];
  [statesCopy addObject:v32];
  [statesCopy addObject:v32];
  [statesCopy addObject:v32];

  [configsCopy addObject:v29];
  [configsCopy addObject:v30];
  [configsCopy addObject:v31];

  [assetsCopy addObject:v20];
  [assetsCopy addObject:v21];
  [assetsCopy addObject:v22];
}

- (void)_queue_getSlowHapticType:(int64_t *)type getMediumHapticType:(int64_t *)hapticType getFastHapticType:(int64_t *)fastHapticType fromAssetType:(int64_t)assetType clickCount:(int64_t)count
{
  *type = 0;
  *hapticType = 0;
  *fastHapticType = 0;
  if (assetType)
  {
    assetTypeCopy = assetType;
  }

  else
  {
    assetTypeCopy = 2;
  }

  if (assetTypeCopy >= 4)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"BKButtonHapticsController.m" lineNumber:280 description:@"unexpected assetType"];
  }

  if ((count - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"BKButtonHapticsController.m" lineNumber:281 description:@"unexpected hapticClickCount"];
  }

  maxAssetSlots = [(BRButtonResolverController *)self->_BRController maxAssetSlots];
  if (maxAssetSlots >= 4)
  {
    v15 = &unk_1000BFA30;
    if (maxAssetSlots > 5)
    {
      v15 = &unk_1000BFAC0;
    }

    v16 = v15 + 72 * count + 8 * assetTypeCopy;
    *type = *(v16 - 80);
    *hapticType = *(v16 - 56);
    *fastHapticType = *(v16 - 32);
  }
}

- (id)_queue_assetOfType:(int64_t)type parameters:(id)parameters
{
  parametersCopy = parameters;
  if (type)
  {
    if (!self->_assetCache)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      assetCache = self->_assetCache;
      self->_assetCache = v7;
    }

    v9 = [NSNumber numberWithInteger:type];
    v10 = [(NSMutableDictionary *)self->_assetCache objectForKey:v9];
    if (!v10)
    {
      v10 = [BRAsset withType:type andParameters:parametersCopy];
      [(NSMutableDictionary *)self->_assetCache setObject:v10 forKey:v9];
    }
  }

  else
  {
    v10 = +[BRAsset nullAsset];
  }

  return v10;
}

- (void)_configureSyncWithBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002419C;
  v7[3] = &unk_1000FC300;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

- (void)_configureAsyncWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BKButtonHapticsController.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000242E0;
  block[3] = &unk_1000FC300;
  block[4] = self;
  v10 = blockCopy;
  v7 = blockCopy;
  dispatch_async(queue, block);
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendArraySection:self->_clickStatesPending withName:@"clickStatesPending" multilinePrefix:@" " skipIfEmpty:0];
  [v3 appendArraySection:self->_clickStatesConfigured withName:@"clickStatesConfigured" multilinePrefix:@" " skipIfEmpty:0];
  build = [v3 build];

  return build;
}

- (BKButtonHapticsController)initWithBHButtonHapticsController:(id)controller
{
  controllerCopy = controller;
  v33.receiver = self;
  v33.super_class = BKButtonHapticsController;
  v6 = [(BKButtonHapticsController *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_BRController, controller);
    v8 = dispatch_group_create();
    controllerReadyGroup = v7->_controllerReadyGroup;
    v7->_controllerReadyGroup = v8;

    Serial = BSDispatchQueueCreateSerial();
    queue = v7->_queue;
    v7->_queue = Serial;

    v12 = +[BKSButtonHapticsDefinition definitionForHomeButton];
    homeButtonDefinition = v7->_homeButtonDefinition;
    v7->_homeButtonDefinition = v12;

    v14 = objc_alloc_init(NSMutableArray);
    clickStatesConfigured = v7->_clickStatesConfigured;
    v7->_clickStatesConfigured = v14;

    v16 = objc_alloc_init(NSMutableArray);
    clickStatesPending = v7->_clickStatesPending;
    v7->_clickStatesPending = v16;

    for (i = 0; i != 17; ++i)
    {
      v19 = [BKButtonHapticsClickState clickStateWithState:i];
      [(NSMutableArray *)v7->_clickStatesConfigured addObject:v19];
      v20 = [v19 copy];
      [(NSMutableArray *)v7->_clickStatesPending addObject:v20];
    }

    dispatch_group_enter(v7->_controllerReadyGroup);
    BRController = v7->_BRController;
    v22 = dispatch_get_global_queue(21, 0);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000246EC;
    v31[3] = &unk_1000FD150;
    v23 = v7;
    v32 = v23;
    [(BRButtonResolverController *)BRController scheduleReadyNotificationOnDispatchQueue:v22 withBlock:v31];

    v24 = +[BSPlatform sharedInstance];
    homeButtonType = [v24 homeButtonType];

    if (homeButtonType == 2)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000247AC;
      v29[3] = &unk_1000FA488;
      v30 = v23;
      [(BKButtonHapticsController *)v30 _configureAsyncWithBlock:v29];
      v26 = v30;
    }

    else
    {
      v26 = +[BKSButtonHapticsDefinition definitionForHomeButton];
      [v26 setClickHapticAssetType:2];
      [v26 setMinimumMultiplePressTimeInterval:2.0];
      [v26 setMaximumMultiplePressTimeInterval:2.0];
      [v26 setMinimumLongPressTimeInterval:6.0];
      [v26 setMaximumLongPressTimeInterval:6.0];
      [v26 setMaximumPressCount:3];
      [v26 setMaximumTapCount:0];
      v34 = v26;
      v27 = [NSArray arrayWithObjects:&v34 count:1];
      [(BKButtonHapticsController *)v23 applyDefinitions:v27];
    }
  }

  return v7;
}

- (BKButtonHapticsController)init
{
  v3 = +[BRButtonResolverController sharedInstance];
  v4 = [(BKButtonHapticsController *)self initWithBHButtonHapticsController:v3];

  return v4;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000248FC;
  block[3] = &unk_1000FC018;
  block[4] = self;
  if (qword_100125D90 != -1)
  {
    dispatch_once(&qword_100125D90, block);
  }

  v2 = qword_100125D98;

  return v2;
}

@end