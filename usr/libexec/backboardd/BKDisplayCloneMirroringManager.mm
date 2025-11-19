@interface BKDisplayCloneMirroringManager
- (BKDisplayCloneMirroringManager)initWithDisplayProvider:(id)a3;
- (id)_lock_cloneMirroringOptionsFromSourceDisplay:(id)a3 destinationDisplay:(id)a4 virtualMode:(id)a5 isStevenote:(BOOL *)a6;
- (id)_lock_cloneMirroringOptionsSteveNote:(BOOL)a3 contextIDs:(id)a4;
- (id)_lock_virtualDisplayModeFromClientParametersForDisplay:(id)a3 shouldHide:(BOOL *)a4 shouldDisable:(BOOL *)a5;
- (void)_lock_clearWindowServerDisplayTags:(id)a3;
- (void)_lock_evaluateAllDisplaysForReason:(id)a3;
- (void)_lock_evaluateCarPlayDisplay:(id)a3 label:(id)a4;
- (void)_lock_evaluateConnectedDisplay:(id)a3 because:(id)a4;
- (void)_lock_evaluateContinuityDisplay:(id)a3 label:(id)a4;
- (void)_lock_evaluateDisplay:(id)a3 reason:(id)a4;
- (void)_lock_evaluateExistingClonesForReason:(id)a3;
- (void)_lock_recomputeTagsForDisplay:(id)a3 shouldHide:(BOOL)a4;
- (void)_lock_removeClone:(id)a3 fromWindowServerDisplay:(id)a4;
- (void)_lock_removeDisplayCloneDestination:(id)a3;
- (void)_lock_setupCloningToDestination:(id)a3 fromVirtualMode:(id)a4 hideByDefault:(BOOL)a5;
- (void)cloneMirroringRequestsDidChange;
- (void)evaluateDisplay:(id)a3 reason:(id)a4;
- (void)removeDisplay:(id)a3;
@end

@implementation BKDisplayCloneMirroringManager

- (void)removeDisplay:(id)a3
{
  v19 = a3;
  if (!v19)
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
      v25 = self;
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
    v11 = [v19 classForCoder];
    if (!v11)
    {
      v11 = objc_opt_class();
    }

    v12 = NSStringFromClass(v11);
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
      v25 = self;
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
  [(BKDisplayCloneMirroringManager *)self _lock_removeDisplayCloneDestination:v19];
  [(BKDisplayCloneMirroringManager *)self _lock_clearWindowServerDisplayTags:v19];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)evaluateDisplay:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23 = v7;
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
      v29 = self;
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
    v15 = [v23 classForCoder];
    if (!v15)
    {
      v15 = objc_opt_class();
    }

    v16 = NSStringFromClass(v15);
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
      v29 = self;
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
  [(BKDisplayCloneMirroringManager *)self _lock_evaluateDisplay:v23 reason:v8];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)cloneMirroringRequestsDidChange
{
  os_unfair_lock_lock(&self->_lock);
  [(BKDisplayCloneMirroringManager *)self _lock_evaluateAllDisplaysForReason:@"cloneMirroringRequestsDidChange"];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_evaluateExistingClonesForReason:(id)a3
{
  v4 = a3;
  lock_destinationDisplayIdentifierToCloneRecord = self->_lock_destinationDisplayIdentifierToCloneRecord;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006AB80;
  v7[3] = &unk_1000FC040;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)lock_destinationDisplayIdentifierToCloneRecord enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_lock_evaluateAllDisplaysForReason:(id)a3
{
  v4 = a3;
  v5 = [(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider windowServerDisplays];
  v6 = [v5 firstObject];
  if (v6)
  {
    v14 = v6;
    v15 = v5;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
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
            v13 = [NSString stringWithFormat:@"updateClonedDisplaysForSettingsChange(%@)", v4];
            [(BKDisplayCloneMirroringManager *)self _lock_evaluateDisplay:v12 reason:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v6 = v14;
    v5 = v15;
  }
}

- (void)_lock_evaluateDisplay:(id)a3 reason:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider displayIsConnected:v7])
  {
    [(BKDisplayCloneMirroringManager *)self _lock_evaluateConnectedDisplay:v7 because:v6];
  }

  else
  {
    [(BKDisplayCloneMirroringManager *)self _lock_removeDisplayCloneDestination:v7];
    [v7 setProcessId:0];
    [(BKDisplayCloneMirroringManager *)self _lock_clearWindowServerDisplayTags:v7];
  }
}

- (void)_lock_clearWindowServerDisplayTags:(id)a3
{
  v3 = a3;
  if ([v3 tag])
  {
    v4 = BKLogDisplay();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Untagging %{public}@", &v5, 0xCu);
    }

    [v3 setTag:0];
    [v3 setTracksCarPlayRegions:0];
  }
}

- (void)_lock_removeClone:(id)a3 fromWindowServerDisplay:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v6 && v7)
  {
    v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 displayId]);
    v9 = [(NSMutableDictionary *)self->_lock_destinationDisplayIdentifierToCloneRecord objectForKey:v8];
    [(NSMutableDictionary *)self->_lock_destinationDisplayIdentifierToCloneRecord removeObjectForKey:v8];
    v10 = [v7 clones];
    v11 = [v10 containsObject:v6];

    if (v11)
    {
      v12 = BKLogDisplay();
      v13 = v12;
      if (v9)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543618;
          v16 = v6;
          v17 = 2114;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removing clone %{public}@ from %{public}@", &v15, 0x16u);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543618;
        v16 = v6;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Display %{public}@ cloning from %{public}@, but we're missing a record of the clone", &v15, 0x16u);
      }

      [v7 removeClone:v6];
    }

    else if (v9)
    {
      v14 = BKLogDisplay();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543618;
        v16 = v6;
        v17 = 2114;
        v18 = v7;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Clone missing: expected to see %{public}@ cloning from %{public}@", &v15, 0x16u);
      }
    }
  }
}

- (void)_lock_removeDisplayCloneDestination:(id)a3
{
  v5 = a3;
  v4 = [v5 cloneMaster];
  if (v4)
  {
    [(BKDisplayCloneMirroringManager *)self _lock_removeClone:v5 fromWindowServerDisplay:v4];
  }
}

- (void)_lock_recomputeTagsForDisplay:(id)a3 shouldHide:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 tag];
  v7 = v6 & 0xFFFFFFFFFFFFFFFALL | v4 | (4 * ((v6 & 0xF8) == 0));
  v8 = [v5 name];
  v9 = [v8 isEqual:@"TVOut"];

  if (v9)
  {
    v10 = +[BKSDefaults externalDefaults];
    v11 = [v10 iapDefaults];

    v12 = [v11 videoTVOutReservedForIPodOut];
    v13 = [v11 videoTVOutReservedForRemoteUI];
    if ([v12 isEqualToString:@"Yes"])
    {
      v7 = v7 & 0xFFFFFFFFFFFFFFE5 | 0xA;
    }

    else if ([v13 isEqualToString:@"Yes"])
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
    v17 = v5;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "tagging %{public}@ with %{public}@", &v16, 0x16u);
  }

  [v5 setTag:v7];
}

- (id)_lock_virtualDisplayModeFromClientParametersForDisplay:(id)a3 shouldHide:(BOOL *)a4 shouldDisable:(BOOL *)a5
{
  v9 = a3;
  if (!v9)
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
      v47 = self;
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

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = [v10 classForCoder];
    if (!v34)
    {
      v34 = objc_opt_class();
    }

    v35 = NSStringFromClass(v34);
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
      v47 = self;
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
  v12 = [v10 virtualDisplayMode];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 objectForKey:@"DisplayLabel"];
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

  v16 = [v10 uniqueId];
  v17 = v16;
  lock_cloneMirrorRequests = self->_lock_cloneMirrorRequests;
  if (lock_cloneMirrorRequests)
  {
    v19 = v16;
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
  v24 = [v23 disableCloneMirroring];
  if (v21 == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = [v23 forceCloneMirroring];
  }

  if (v21 == 2)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  *a4 = v25;
  *a5 = v26;

  return v11;
}

- (id)_lock_cloneMirroringOptionsSteveNote:(BOOL)a3 contextIDs:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = +[BKSDefaults localDefaults];
  v8 = [NSNumber numberWithBool:self->_lock_cloneRotationDisabled];
  v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, kCAWindowServerClone_DisableRotation, 0];

  v10 = [v7 disableCAOverscan];
  v11 = v10;
  if (v4 || v10)
  {
    if (((v10 | !v4) & 1) == 0)
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

  v14 = [v7 disableCAYUV];
  if (v4 || v14)
  {
    v15 = [NSNumber numberWithBool:1];
    [v9 setObject:v15 forKey:kCAWindowServerClone_DisableYUV];
  }

  if ([v6 count])
  {
    [v9 setObject:v6 forKey:kCAWindowServerClone_ReplayContexts];
  }

  return v9;
}

- (void)_lock_evaluateConnectedDisplay:(id)a3 because:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 virtualDisplayMode];
  v9 = [v8 objectForKey:@"MirroringMode"];
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

  v14 = [v13 intValue];
  v15 = [v6 uniqueId];
  v16 = BKLogDisplay();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v29 = v7;
    v30 = 2114;
    v31 = v15;
    v32 = 2114;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "evaluateDisplay(%{public}@) incoming virtual display mode(%{public}@): %{public}@", buf, 0x20u);
  }

  if (v14 - 1 >= 2)
  {
    if (v14 == 3)
    {
      [(BKDisplayCloneMirroringManager *)self _lock_removeDisplayCloneDestination:v6];
      [(BKDisplayCloneMirroringManager *)self _lock_clearWindowServerDisplayTags:v6];
      v17 = [v8 objectForKey:@"DisplayLabel"];
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
        [v6 setProcessId:0];
        [(BKDisplayCloneMirroringManager *)self _lock_evaluateContinuityDisplay:v6 label:v21];
        goto LABEL_25;
      }

      if ([v21 hasPrefix:@"CarPlay"])
      {
        [v6 setProcessId:0];
        [(BKDisplayCloneMirroringManager *)self _lock_evaluateCarPlayDisplay:v6 label:v21];
        goto LABEL_25;
      }

      v24 = [v8 objectForKey:@"ClientPID"];
      v25 = [v24 intValue];

      if (v25 == [v6 processId])
      {
        goto LABEL_18;
      }

      v26 = BKLogDisplay();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v29 = v6;
        v30 = 1024;
        LODWORD(v31) = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "setting %{public}@ processID to %d", buf, 0x12u);
      }

      v22 = v6;
      v23 = v25;
    }

    else
    {
      buf[0] = 0;
      v27 = 0;
      v21 = [(BKDisplayCloneMirroringManager *)self _lock_virtualDisplayModeFromClientParametersForDisplay:v6 shouldHide:buf shouldDisable:&v27];
      if (v27 != 1)
      {
        [(BKDisplayCloneMirroringManager *)self _lock_setupCloningToDestination:v6 fromVirtualMode:v21 hideByDefault:buf[0]];
        goto LABEL_25;
      }

      [(BKDisplayCloneMirroringManager *)self _lock_removeDisplayCloneDestination:v6];
      v22 = v6;
      v23 = 0;
    }

    [v22 setProcessId:v23];
LABEL_18:
    [(BKDisplayCloneMirroringManager *)self _lock_recomputeTagsForDisplay:v6 shouldHide:0];
LABEL_25:

    goto LABEL_26;
  }

  [(BKDisplayCloneMirroringManager *)self _lock_setupCloningToDestination:v6 fromVirtualMode:v8 hideByDefault:1];
LABEL_26:
}

- (void)_lock_setupCloningToDestination:(id)a3 fromVirtualMode:(id)a4 hideByDefault:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 objectForKey:@"MirroredDisplayID"];
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
    v15 = [v14 integerValue];
    v16 = BKLogDisplay();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mirroring source display is %{public}@", buf, 0xCu);
    }

    v17 = [(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider windowServerDisplayForDisplayIdentifier:v15];
    if (v17)
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
    v51 = v8;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "no mirroring source display specified for %{public}@; assuming main", buf, 0xCu);
  }

  v22 = [(BKDisplayCloneMirroringManagerInformationProvider *)self->_displayProvider windowServerDisplays];
  v17 = [v22 firstObject];

  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v17 == v8)
  {
    v19 = BKLogDisplay();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 138543362;
    v51 = v8;
    v23 = "cannot clone display to itself: %{public}@";
    v24 = v19;
    v25 = 12;
    goto LABEL_22;
  }

  v18 = [v17 cloneMaster];
  if (!v18)
  {
    v48 = v5;
    v49 = 0;
    v26 = [(BKDisplayCloneMirroringManager *)self _lock_cloneMirroringOptionsFromSourceDisplay:v17 destinationDisplay:v8 virtualMode:v9 isStevenote:&v49];
    v27 = [v8 displayId];
    lock_destinationDisplayIdentifierToCloneRecord = self->_lock_destinationDisplayIdentifierToCloneRecord;
    v47 = v27;
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
      v34 = [v17 clones];
      v35 = [v34 containsObject:v8];

      if (!v35)
      {
LABEL_36:
        v38 = BKLogDisplay();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v51 = v17;
          v52 = 2114;
          v53 = v8;
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

        [v17 addClone:v8 options:v39];
        v40 = [v8 name];
        v41 = [v40 isEqualToString:@"TVOut"];

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

        [v8 setProcessId:v45];
        [(BKDisplayCloneMirroringManager *)self _lock_recomputeTagsForDisplay:v8 shouldHide:v48 & ~v42];
        v30 = v46;
        goto LABEL_43;
      }

      v36 = BKLogDisplay();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v51 = v8;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "no record, but source display is already cloned to %{public}@ -- will remove and reapply with current settings, which may result in flicker", buf, 0xCu);
      }

      v37 = v17;
    }

    [v37 removeClone:v8];
    goto LABEL_36;
  }

  v19 = v18;
  v20 = BKLogDisplay();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v51 = v17;
    v52 = 2114;
    v53 = v19;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "source display:%{public}@ is a clone of display:%{public}@; cannot clone a clone", buf, 0x16u);
  }

LABEL_44:
}

- (id)_lock_cloneMirroringOptionsFromSourceDisplay:(id)a3 destinationDisplay:(id)a4 virtualMode:(id)a5 isStevenote:(BOOL *)a6
{
  v10 = a5;
  obj = a4;
  v11 = a4;
  v12 = a3;
  v13 = [v10 objectForKey:@"ContextIDs"];
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

  v19 = [v10 objectForKey:@"DisplayLabel"];
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
  *a6 = v24;
  v25 = [(BKDisplayCloneMirroringManager *)self _lock_cloneMirroringOptionsSteveNote:v24 contextIDs:v18];
  v26 = [v10 objectForKey:@"ClientPID"];
  v27 = [v26 intValue];

  v28 = [BKDisplayCloneRecord alloc];
  v29 = v12;
  v30 = v11;
  v31 = v25;
  if (v28)
  {
    v35.receiver = v28;
    v35.super_class = BKDisplayCloneRecord;
    v32 = [(BKDisplayCloneMirroringManager *)&v35 init];
    v28 = v32;
    if (v32)
    {
      objc_storeStrong(v32 + 2, a3);
      objc_storeStrong(&v28->_destinationDisplay, obj);
      v28->_clientPID = v27;
      objc_storeStrong(&v28->_options, v25);
    }
  }

  return v28;
}

- (void)_lock_evaluateContinuityDisplay:(id)a3 label:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BKLogDisplay();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 uniqueId];
    v9 = NSStringFromBKSDisplayTags();
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tagging display %{public}@ with label %{public}@ as %{public}@", &v10, 0x20u);
  }

  [v5 setTag:128];
}

- (void)_lock_evaluateCarPlayDisplay:(id)a3 label:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [&off_100107C68 objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
    v10 = BKLogDisplay();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromBKSDisplayTags();
      v12 = [v5 uniqueId];
      v19 = 138543874;
      v20 = v6;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Tagging CarPlay display %{public}@ %{public}@ %{public}@", &v19, 0x20u);
    }

    [v5 setTag:v9];
    v13 = [v5 uniqueId];
    v14 = [[CARSessionStatus alloc] initWithOptions:1];
    v15 = [v14 currentSession];

    v16 = [v15 configuration];
    v17 = [v16 screenInfoForScreenID:v13];

    if ([v17 supportsLayerTracking])
    {
      v18 = BKLogDisplay();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Enabling layer tracking for CarPlay display %{public}@", &v19, 0xCu);
      }

      [v5 setTracksCarPlayRegions:1];
    }
  }

  else
  {
    v13 = BKLogDisplay();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v15 = [v5 uniqueId];
    v19 = 138543874;
    v20 = v6;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v5;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unknown CarPlay display label %{public}@ for %{public}@ %{public}@", &v19, 0x20u);
  }

LABEL_11:
}

- (BKDisplayCloneMirroringManager)initWithDisplayProvider:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = BKDisplayCloneMirroringManager;
  v6 = [(BKDisplayCloneMirroringManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayProvider, a3);
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