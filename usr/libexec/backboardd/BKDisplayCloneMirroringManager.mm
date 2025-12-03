@interface BKDisplayCloneMirroringManager
- (BKDisplayCloneMirroringManager)initWithDisplayProvider:(id)provider;
- (id)_lock_cloneMirroringOptionsFromSourceDisplay:(id)display destinationDisplay:(id)destinationDisplay virtualMode:(id)mode isStevenote:(BOOL *)stevenote;
- (id)_lock_cloneMirroringOptionsSteveNote:(BOOL)note contextIDs:(id)ds;
- (id)_lock_virtualDisplayModeFromClientParametersForDisplay:(id)display shouldHide:(BOOL *)hide shouldDisable:(BOOL *)disable;
- (void)_lock_clearWindowServerDisplayTags:(id)tags;
- (void)_lock_evaluateAllDisplaysForReason:(id)reason;
- (void)_lock_evaluateCarPlayDisplay:(id)display label:(id)label;
- (void)_lock_evaluateConnectedDisplay:(id)display because:(id)because;
- (void)_lock_evaluateContinuityDisplay:(id)display label:(id)label;
- (void)_lock_evaluateDisplay:(id)display reason:(id)reason;
- (void)_lock_evaluateExistingClonesForReason:(id)reason;
- (void)_lock_recomputeTagsForDisplay:(id)display shouldHide:(BOOL)hide;
- (void)_lock_removeClone:(id)clone fromWindowServerDisplay:(id)display;
- (void)_lock_removeDisplayCloneDestination:(id)destination;
- (void)_lock_setupCloningToDestination:(id)destination fromVirtualMode:(id)mode hideByDefault:(BOOL)default;
- (void)cloneMirroringRequestsDidChange;
- (void)evaluateDisplay:(id)display reason:(id)reason;
- (void)removeDisplay:(id)display;
@end

@implementation BKDisplayCloneMirroringManager

- (void)removeDisplay:(id)display
{
  displayCopy = display;
  if (!displayCopy)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [NSString stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"display", v6];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v21 = v8;
      v22 = 2114;
      v23 = v10;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2114;
      v27 = @"BKDisplayCloneMirroringManager.m";
      v28 = 1024;
      v29 = 515;
      v30 = 2114;
      v31 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10006A598);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    classForCoder = [displayCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v12 = NSStringFromClass(classForCoder);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v12, v14];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2114;
      v27 = @"BKDisplayCloneMirroringManager.m";
      v28 = 1024;
      v29 = 515;
      v30 = 2114;
      v31 = v15;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10006A6D4);
  }

  os_unfair_lock_lock(&self->_lock);
  [(BKDisplayCloneMirroringManager *)self _lock_removeDisplayCloneDestination:displayCopy];
  [(BKDisplayCloneMirroringManager *)self _lock_clearWindowServerDisplayTags:displayCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)evaluateDisplay:(id)display reason:(id)reason
{
  displayCopy = display;
  reasonCopy = reason;
  v23 = displayCopy;
  if (!v23)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [NSString stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"display", v10];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v25 = v12;
      v26 = 2114;
      v27 = v14;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKDisplayCloneMirroringManager.m";
      v32 = 1024;
      v33 = 507;
      v34 = 2114;
      v35 = v11;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10006A8D0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    classForCoder = [v23 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v16 = NSStringFromClass(classForCoder);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v16, v18];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKDisplayCloneMirroringManager.m";
      v32 = 1024;
      v33 = 507;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10006AA0CLL);
  }

  os_unfair_lock_lock(&self->_lock);
  [(BKDisplayCloneMirroringManager *)self _lock_evaluateDisplay:v23 reason:reasonCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)cloneMirroringRequestsDidChange
{
  os_unfair_lock_lock(&self->_lock);
  [(BKDisplayCloneMirroringManager *)self _lock_evaluateAllDisplaysForReason:@"cloneMirroringRequestsDidChange"];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_evaluateExistingClonesForReason:(id)reason
{
  reasonCopy = reason;
  lock_destinationDisplayIdentifierToCloneRecord = self->_lock_destinationDisplayIdentifierToCloneRecord;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AB80;
  v7[3] = &unk_1000FC040;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  [(NSMutableDictionary *)lock_destinationDisplayIdentifierToCloneRecord enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_lock_evaluateAllDisplaysForReason:(id)reason
{
  reasonCopy = reason;
  windowServerDisplays = [(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider windowServerDisplays];
  firstObject = [windowServerDisplays firstObject];
  if (firstObject)
  {
    v14 = firstObject;
    v15 = windowServerDisplays;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = windowServerDisplays;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider supportCloningToDisplay:v12])
          {
            reasonCopy = [NSString stringWithFormat:@"updateClonedDisplaysForSettingsChange(%@)", reasonCopy];
            [(BKDisplayCloneMirroringManager *)self _lock_evaluateDisplay:v12 reason:reasonCopy];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    firstObject = v14;
    windowServerDisplays = v15;
  }
}

- (void)_lock_evaluateDisplay:(id)display reason:(id)reason
{
  displayCopy = display;
  reasonCopy = reason;
  if ([(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider displayIsConnected:displayCopy])
  {
    [(BKDisplayCloneMirroringManager *)self _lock_evaluateConnectedDisplay:displayCopy because:reasonCopy];
  }

  else
  {
    [(BKDisplayCloneMirroringManager *)self _lock_removeDisplayCloneDestination:displayCopy];
    [displayCopy setProcessId:0];
    [(BKDisplayCloneMirroringManager *)self _lock_clearWindowServerDisplayTags:displayCopy];
  }
}

- (void)_lock_clearWindowServerDisplayTags:(id)tags
{
  tagsCopy = tags;
  if ([tagsCopy tag])
  {
    v4 = BKLogDisplay();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = tagsCopy;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Untagging %{public}@", &v5, 0xCu);
    }

    [tagsCopy setTag:0];
    [tagsCopy setTracksCarPlayRegions:0];
  }
}

- (void)_lock_removeClone:(id)clone fromWindowServerDisplay:(id)display
{
  cloneCopy = clone;
  displayCopy = display;
  os_unfair_lock_assert_owner(&self->_lock);
  if (cloneCopy && displayCopy)
  {
    v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [cloneCopy displayId]);
    v9 = [(NSMutableDictionary *)self->_lock_destinationDisplayIdentifierToCloneRecord objectForKey:v8];
    [(NSMutableDictionary *)self->_lock_destinationDisplayIdentifierToCloneRecord removeObjectForKey:v8];
    clones = [displayCopy clones];
    v11 = [clones containsObject:cloneCopy];

    if (v11)
    {
      v12 = BKLogDisplay();
      v13 = v12;
      if (v9)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543618;
          v16 = cloneCopy;
          v17 = 2114;
          v18 = displayCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing clone %{public}@ from %{public}@", &v15, 0x16u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543618;
        v16 = cloneCopy;
        v17 = 2114;
        v18 = displayCopy;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Display %{public}@ cloning from %{public}@, but we're missing a record of the clone", &v15, 0x16u);
      }

      [displayCopy removeClone:cloneCopy];
    }

    else if (v9)
    {
      v14 = BKLogDisplay();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543618;
        v16 = cloneCopy;
        v17 = 2114;
        v18 = displayCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Clone missing: expected to see %{public}@ cloning from %{public}@", &v15, 0x16u);
      }
    }
  }
}

- (void)_lock_removeDisplayCloneDestination:(id)destination
{
  destinationCopy = destination;
  cloneMaster = [destinationCopy cloneMaster];
  if (cloneMaster)
  {
    [(BKDisplayCloneMirroringManager *)self _lock_removeClone:destinationCopy fromWindowServerDisplay:cloneMaster];
  }
}

- (void)_lock_recomputeTagsForDisplay:(id)display shouldHide:(BOOL)hide
{
  hideCopy = hide;
  displayCopy = display;
  v6 = [displayCopy tag];
  v7 = v6 & 0xFFFFFFFFFFFFFFFALL | hideCopy | (4 * ((v6 & 0xF8) == 0));
  name = [displayCopy name];
  v9 = [name isEqual:@"TVOut"];

  if (v9)
  {
    v10 = +[BKSDefaults externalDefaults];
    iapDefaults = [v10 iapDefaults];

    videoTVOutReservedForIPodOut = [iapDefaults videoTVOutReservedForIPodOut];
    videoTVOutReservedForRemoteUI = [iapDefaults videoTVOutReservedForRemoteUI];
    if ([videoTVOutReservedForIPodOut isEqualToString:@"Yes"])
    {
      v7 = v7 & 0xFFFFFFFFFFFFFFE5 | 0xA;
    }

    else if ([videoTVOutReservedForRemoteUI isEqualToString:@"Yes"])
    {
      v7 = v7 & 0xFFFFFFFFFFFFFFE5 | 0x12;
    }

    else
    {
      v7 = v7 & 0xFFFFFFFFFFFFFFE5 | 2;
    }
  }

  v14 = BKLogDisplay();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromBKSDisplayTags();
    v16 = 138543618;
    v17 = displayCopy;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "tagging %{public}@ with %{public}@", &v16, 0x16u);
  }

  [displayCopy setTag:v7];
}

- (id)_lock_virtualDisplayModeFromClientParametersForDisplay:(id)display shouldHide:(BOOL *)hide shouldDisable:(BOOL *)disable
{
  displayCopy = display;
  if (!displayCopy)
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [NSString stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"display", v29];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(a2);
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138544642;
      v43 = v31;
      v44 = 2114;
      v45 = v33;
      v46 = 2048;
      selfCopy2 = self;
      v48 = 2114;
      v49 = @"BKDisplayCloneMirroringManager.m";
      v50 = 1024;
      v51 = 330;
      v52 = 2114;
      v53 = v30;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10006B688);
  }

  v10 = displayCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v35 = NSStringFromClass(classForCoder);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v35, v37];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v43 = v39;
      v44 = 2114;
      v45 = v41;
      v46 = 2048;
      selfCopy2 = self;
      v48 = 2114;
      v49 = @"BKDisplayCloneMirroringManager.m";
      v50 = 1024;
      v51 = 330;
      v52 = 2114;
      v53 = v38;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10006B7C4);
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  virtualDisplayMode = [v10 virtualDisplayMode];
  v13 = virtualDisplayMode;
  if (virtualDisplayMode)
  {
    v14 = [virtualDisplayMode objectForKey:@"DisplayLabel"];
    if (v14)
    {
      [v11 setObject:v14 forKey:@"DisplayLabel"];
    }

    else
    {
      v15 = BKLogDisplay();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v43 = v13;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "no label for mode: %{public}@", buf, 0xCu);
      }
    }
  }

  uniqueId = [v10 uniqueId];
  v17 = uniqueId;
  lock_cloneMirrorRequests = self->_lock_cloneMirrorRequests;
  if (lock_cloneMirrorRequests)
  {
    v19 = uniqueId;
    os_unfair_lock_lock(&lock_cloneMirrorRequests->_lock);
    v20 = [(NSMutableDictionary *)lock_cloneMirrorRequests->_displayUUIDToModeRequest objectForKey:v19];

    if (!v20)
    {
      objc_opt_self();
      if (qword_100125E80 != -1)
      {
        dispatch_once(&qword_100125E80, &stru_1000FADB8);
      }

      v20 = qword_100125E78;
    }

    os_unfair_lock_unlock(&lock_cloneMirrorRequests->_lock);
    if (v20)
    {
      v21 = v20[3];
      goto LABEL_17;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
LABEL_17:
  v22 = BKLogDisplay();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v20;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Prevailing clone mirror mode: %{public}@ ", buf, 0xCu);
  }

  v23 = +[BKSDefaults localDefaults];
  disableCloneMirroring = [v23 disableCloneMirroring];
  if (v21 == 1)
  {
    forceCloneMirroring = 1;
  }

  else
  {
    forceCloneMirroring = [v23 forceCloneMirroring];
  }

  if (v21 == 2)
  {
    v26 = 1;
  }

  else
  {
    v26 = disableCloneMirroring;
  }

  *hide = forceCloneMirroring;
  *disable = v26;

  return v11;
}

- (id)_lock_cloneMirroringOptionsSteveNote:(BOOL)note contextIDs:(id)ds
{
  noteCopy = note;
  dsCopy = ds;
  v7 = +[BKSDefaults localDefaults];
  v8 = [NSNumber numberWithBool:self->_lock_cloneRotationDisabled];
  v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, kCAWindowServerClone_DisableRotation, 0];

  disableCAOverscan = [v7 disableCAOverscan];
  v11 = disableCAOverscan;
  if (noteCopy || disableCAOverscan)
  {
    if (((disableCAOverscan | !noteCopy) & 1) == 0)
    {
      v11 = ([v7 isSteveNoteOverscanEnabled] ^ 1);
    }

    v12 = [NSNumber numberWithBool:v11];
    [v9 setObject:v12 forKey:kCAWindowServerClone_DisableOverscan];
  }

  if ([v7 disableCAScaling])
  {
    v13 = [NSNumber numberWithBool:1];
    [v9 setObject:v13 forKey:kCAWindowServerClone_DisableScaling];
  }

  disableCAYUV = [v7 disableCAYUV];
  if (noteCopy || disableCAYUV)
  {
    v15 = [NSNumber numberWithBool:1];
    [v9 setObject:v15 forKey:kCAWindowServerClone_DisableYUV];
  }

  if ([dsCopy count])
  {
    [v9 setObject:dsCopy forKey:kCAWindowServerClone_ReplayContexts];
  }

  return v9;
}

- (void)_lock_evaluateConnectedDisplay:(id)display because:(id)because
{
  displayCopy = display;
  becauseCopy = because;
  virtualDisplayMode = [displayCopy virtualDisplayMode];
  v9 = [virtualDisplayMode objectForKey:@"MirroringMode"];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  intValue = [v13 intValue];
  uniqueId = [displayCopy uniqueId];
  v16 = BKLogDisplay();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v29 = becauseCopy;
    v30 = 2114;
    v31 = uniqueId;
    v32 = 2114;
    v33 = virtualDisplayMode;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "evaluateDisplay(%{public}@) incoming virtual display mode(%{public}@): %{public}@", buf, 0x20u);
  }

  if (intValue - 1 >= 2)
  {
    if (intValue == 3)
    {
      [(BKDisplayCloneMirroringManager *)self _lock_removeDisplayCloneDestination:displayCopy];
      [(BKDisplayCloneMirroringManager *)self _lock_clearWindowServerDisplayTags:displayCopy];
      v17 = [virtualDisplayMode objectForKey:@"DisplayLabel"];
      v18 = objc_opt_class();
      v19 = v17;
      if (v18)
      {
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if ([v21 isEqual:@"Continuity"])
      {
        [displayCopy setProcessId:0];
        [(BKDisplayCloneMirroringManager *)self _lock_evaluateContinuityDisplay:displayCopy label:v21];
        goto LABEL_25;
      }

      if ([v21 hasPrefix:@"CarPlay"])
      {
        [displayCopy setProcessId:0];
        [(BKDisplayCloneMirroringManager *)self _lock_evaluateCarPlayDisplay:displayCopy label:v21];
        goto LABEL_25;
      }

      v24 = [virtualDisplayMode objectForKey:@"ClientPID"];
      intValue2 = [v24 intValue];

      if (intValue2 == [displayCopy processId])
      {
        goto LABEL_18;
      }

      v26 = BKLogDisplay();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v29 = displayCopy;
        v30 = 1024;
        LODWORD(v31) = intValue2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "setting %{public}@ processID to %d", buf, 0x12u);
      }

      v22 = displayCopy;
      v23 = intValue2;
    }

    else
    {
      buf[0] = 0;
      v27 = 0;
      v21 = [(BKDisplayCloneMirroringManager *)self _lock_virtualDisplayModeFromClientParametersForDisplay:displayCopy shouldHide:buf shouldDisable:&v27];
      if (v27 != 1)
      {
        [(BKDisplayCloneMirroringManager *)self _lock_setupCloningToDestination:displayCopy fromVirtualMode:v21 hideByDefault:buf[0]];
        goto LABEL_25;
      }

      [(BKDisplayCloneMirroringManager *)self _lock_removeDisplayCloneDestination:displayCopy];
      v22 = displayCopy;
      v23 = 0;
    }

    [v22 setProcessId:v23];
LABEL_18:
    [(BKDisplayCloneMirroringManager *)self _lock_recomputeTagsForDisplay:displayCopy shouldHide:0];
LABEL_25:

    goto LABEL_26;
  }

  [(BKDisplayCloneMirroringManager *)self _lock_setupCloningToDestination:displayCopy fromVirtualMode:virtualDisplayMode hideByDefault:1];
LABEL_26:
}

- (void)_lock_setupCloningToDestination:(id)destination fromVirtualMode:(id)mode hideByDefault:(BOOL)default
{
  defaultCopy = default;
  destinationCopy = destination;
  modeCopy = mode;
  v10 = [modeCopy objectForKey:@"MirroredDisplayID"];
  v11 = objc_opt_class();
  v12 = v10;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    integerValue = [v14 integerValue];
    v16 = BKLogDisplay();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mirroring source display is %{public}@", buf, 0xCu);
    }

    firstObject = [(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider windowServerDisplayForDisplayIdentifier:integerValue];
    if (firstObject)
    {
      goto LABEL_10;
    }

LABEL_18:
    v19 = BKLogDisplay();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v23 = "specified source display does not exist";
    v24 = v19;
    v25 = 2;
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
    goto LABEL_44;
  }

  v21 = BKLogDisplay();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v51 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "no mirroring source display specified for %{public}@; assuming main", buf, 0xCu);
  }

  windowServerDisplays = [(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider windowServerDisplays];
  firstObject = [windowServerDisplays firstObject];

  if (!firstObject)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (firstObject == destinationCopy)
  {
    v19 = BKLogDisplay();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 138543362;
    v51 = destinationCopy;
    v23 = "cannot clone display to itself: %{public}@";
    v24 = v19;
    v25 = 12;
    goto LABEL_22;
  }

  cloneMaster = [firstObject cloneMaster];
  if (!cloneMaster)
  {
    v48 = defaultCopy;
    v49 = 0;
    v26 = [(BKDisplayCloneMirroringManager *)self _lock_cloneMirroringOptionsFromSourceDisplay:firstObject destinationDisplay:destinationCopy virtualMode:modeCopy isStevenote:&v49];
    displayId = [destinationCopy displayId];
    lock_destinationDisplayIdentifierToCloneRecord = self->_lock_destinationDisplayIdentifierToCloneRecord;
    v47 = displayId;
    v29 = [NSNumber numberWithUnsignedInt:?];
    v30 = [(NSMutableDictionary *)lock_destinationDisplayIdentifierToCloneRecord objectForKey:v29];

    if (v30)
    {
      v31 = BSEqualObjects();
      v32 = BKLogDisplay();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        if (v33)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "clone settings did not change; no-op", buf, 2u);
        }

LABEL_43:
        v19 = 0;
        goto LABEL_44;
      }

      if (v33)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "clone settings changed; removing previous clone", buf, 2u);
      }

      v37 = v30[2];
    }

    else
    {
      clones = [firstObject clones];
      v35 = [clones containsObject:destinationCopy];

      if (!v35)
      {
LABEL_36:
        v38 = BKLogDisplay();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v51 = firstObject;
          v52 = 2114;
          v53 = destinationCopy;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "cloning %{public}@ to %{public}@", buf, 0x16u);
        }

        v46 = v30;
        if (v26)
        {
          v39 = *(v26 + 32);
        }

        else
        {
          v39 = 0;
        }

        [firstObject addClone:destinationCopy options:v39];
        name = [destinationCopy name];
        v41 = [name isEqualToString:@"TVOut"];

        v42 = (v49 & v41);
        v43 = self->_lock_destinationDisplayIdentifierToCloneRecord;
        v44 = [NSNumber numberWithUnsignedInt:v47];
        [(NSMutableDictionary *)v43 setObject:v26 forKey:v44];

        if (v26)
        {
          v45 = *(v26 + 8);
        }

        else
        {
          v45 = 0;
        }

        [destinationCopy setProcessId:v45];
        [(BKDisplayCloneMirroringManager *)self _lock_recomputeTagsForDisplay:destinationCopy shouldHide:v48 & ~v42];
        v30 = v46;
        goto LABEL_43;
      }

      v36 = BKLogDisplay();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = destinationCopy;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "no record, but source display is already cloned to %{public}@ -- will remove and reapply with current settings, which may result in flicker", buf, 0xCu);
      }

      v37 = firstObject;
    }

    [v37 removeClone:destinationCopy];
    goto LABEL_36;
  }

  v19 = cloneMaster;
  v20 = BKLogDisplay();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v51 = firstObject;
    v52 = 2114;
    v53 = v19;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "source display:%{public}@ is a clone of display:%{public}@; cannot clone a clone", buf, 0x16u);
  }

LABEL_44:
}

- (id)_lock_cloneMirroringOptionsFromSourceDisplay:(id)display destinationDisplay:(id)destinationDisplay virtualMode:(id)mode isStevenote:(BOOL *)stevenote
{
  modeCopy = mode;
  obj = destinationDisplay;
  destinationDisplayCopy = destinationDisplay;
  displayCopy = display;
  v13 = [modeCopy objectForKey:@"ContextIDs"];
  v14 = objc_opt_class();
  v15 = v13;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = [NSSet setWithArray:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = [modeCopy objectForKey:@"DisplayLabel"];
  v20 = objc_opt_class();
  v21 = v19;
  if (v20)
  {
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = [v23 isEqual:@"Stevenote"];
  *stevenote = v24;
  v25 = [(BKDisplayCloneMirroringManager *)self _lock_cloneMirroringOptionsSteveNote:v24 contextIDs:v18];
  v26 = [modeCopy objectForKey:@"ClientPID"];
  intValue = [v26 intValue];

  v28 = [BKDisplayCloneRecord alloc];
  v29 = displayCopy;
  v30 = destinationDisplayCopy;
  v31 = v25;
  if (v28)
  {
    v35.receiver = v28;
    v35.super_class = BKDisplayCloneRecord;
    v32 = [(BKDisplayCloneMirroringManager *)&v35 init];
    v28 = v32;
    if (v32)
    {
      objc_storeStrong(v32 + 2, display);
      objc_storeStrong(&v28->_destinationDisplay, obj);
      v28->_clientPID = intValue;
      objc_storeStrong(&v28->_options, v25);
    }
  }

  return v28;
}

- (void)_lock_evaluateContinuityDisplay:(id)display label:(id)label
{
  displayCopy = display;
  labelCopy = label;
  v7 = BKLogDisplay();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [displayCopy uniqueId];
    v9 = NSStringFromBKSDisplayTags();
    v10 = 138543874;
    v11 = uniqueId;
    v12 = 2114;
    v13 = labelCopy;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tagging display %{public}@ with label %{public}@ as %{public}@", &v10, 0x20u);
  }

  [displayCopy setTag:128];
}

- (void)_lock_evaluateCarPlayDisplay:(id)display label:(id)label
{
  displayCopy = display;
  labelCopy = label;
  v7 = [&off_100107C68 objectForKey:labelCopy];
  v8 = v7;
  if (v7)
  {
    integerValue = [v7 integerValue];
    v10 = BKLogDisplay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromBKSDisplayTags();
      uniqueId = [displayCopy uniqueId];
      v19 = 138543874;
      v20 = labelCopy;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = uniqueId;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Tagging CarPlay display %{public}@ %{public}@ %{public}@", &v19, 0x20u);
    }

    [displayCopy setTag:integerValue];
    uniqueId2 = [displayCopy uniqueId];
    v14 = [[CARSessionStatus alloc] initWithOptions:1];
    currentSession = [v14 currentSession];

    configuration = [currentSession configuration];
    v17 = [configuration screenInfoForScreenID:uniqueId2];

    if ([v17 supportsLayerTracking])
    {
      v18 = BKLogDisplay();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = uniqueId2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Enabling layer tracking for CarPlay display %{public}@", &v19, 0xCu);
      }

      [displayCopy setTracksCarPlayRegions:1];
    }
  }

  else
  {
    uniqueId2 = BKLogDisplay();
    if (!os_log_type_enabled(uniqueId2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    currentSession = [displayCopy uniqueId];
    v19 = 138543874;
    v20 = labelCopy;
    v21 = 2114;
    v22 = currentSession;
    v23 = 2114;
    v24 = displayCopy;
    _os_log_error_impl(&_mh_execute_header, uniqueId2, OS_LOG_TYPE_ERROR, "Unknown CarPlay display label %{public}@ for %{public}@ %{public}@", &v19, 0x20u);
  }

LABEL_11:
}

- (BKDisplayCloneMirroringManager)initWithDisplayProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = BKDisplayCloneMirroringManager;
  v6 = [(BKDisplayCloneMirroringManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayProvider, provider);
    v8 = objc_alloc_init(BKDisplayCloneMirrorRequestCache);
    lock_cloneMirrorRequests = v7->_lock_cloneMirrorRequests;
    v7->_lock_cloneMirrorRequests = v8;

    v10 = v7->_lock_cloneMirrorRequests;
    if (v10)
    {
      objc_storeWeak(&v10->_delegate, v7);
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    lock_destinationDisplayIdentifierToCloneRecord = v7->_lock_destinationDisplayIdentifierToCloneRecord;
    v7->_lock_destinationDisplayIdentifierToCloneRecord = v11;
  }

  return v7;
}

@end