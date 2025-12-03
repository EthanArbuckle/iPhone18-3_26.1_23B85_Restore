@interface BKDisplayRenderOverlayManager
+ (id)sharedInstance;
- (BOOL)applyOverlay:(id)overlay withAnimationSettings:(id)settings;
- (BOOL)freezeOverlay:(id)overlay;
- (BOOL)isShowingNonBootUIOverlays;
- (BOOL)removeOverlay:(id)overlay withAnimationSettings:(id)settings;
- (NSMutableSet)activeOverlays;
- (id)_initWithPersistenceCoordinator:(id)coordinator orientationManager:(id)manager backlightManager:(id)backlightManager windowServer:(id)server;
- (id)_updateWindowServerUpdatesForOverlays:(id)overlays;
- (id)activeOverlayWithDescriptor:(id)descriptor;
- (id)description;
- (void)_lock_freezeOverlay:(id)overlay;
- (void)_lock_setBacklightLocked:(BOOL)locked;
- (void)_lock_setLockedOrientation:(int64_t)orientation;
- (void)_lock_setOverlaysDisablingUpdates:(id)updates;
- (void)_lock_updateStateForActiveOverlayChange;
- (void)prepareForRestart;
@end

@implementation BKDisplayRenderOverlayManager

- (id)_updateWindowServerUpdatesForOverlays:(id)overlays
{
  overlaysCopy = overlays;
  v38 = objc_alloc_init(NSMutableSet);
  displays = [(CAWindowServer *)self->_windowServer displays];
  v6 = [displays mutableCopy];

  v7 = objc_alloc_init(NSMutableArray);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = overlaysCopy;
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        if ([v13 disablesDisplayUpdates])
        {
          windowServer = self->_windowServer;
          display = [v13 display];
          v16 = -[CAWindowServer displayWithDisplayId:](windowServer, "displayWithDisplayId:", [display displayId]);

          [v38 addObject:v13];
          [v6 removeObject:v16];
          [v7 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v10);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v44;
    *&v19 = 67109120;
    v36 = v19;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v43 + 1) + 8 * j);
        if (([v23 disablesUpdates] & 1) == 0)
        {
          v24 = sub_100052810();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            displayId = [v23 displayId];
            *buf = v36;
            v53 = displayId;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Disabling framebuffer changes on display (%d) because we have overlays that require disabled updates.", buf, 8u);
          }

          [v23 setDisablesUpdates:1];
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v20);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = v6;
  v27 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v27)
  {
    v29 = v27;
    v30 = *v40;
    *&v28 = 67109120;
    v37 = v28;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v39 + 1) + 8 * k);
        if ([v32 disablesUpdates])
        {
          v33 = sub_100052810();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            displayId2 = [v32 displayId];
            *buf = v37;
            v53 = displayId2;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Enabling framebuffer changes on display (%d) because we have don't have any overlays that require disabled updates.", buf, 8u);
          }

          [v32 setDisablesUpdates:0];
        }
      }

      v29 = [v26 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v29);
  }

  return v38;
}

- (void)_lock_setBacklightLocked:(BOOL)locked
{
  lockedCopy = locked;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_backlightLocked != lockedCopy)
  {
    self->_backlightLocked = lockedCopy;
    v5 = sub_100052810();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = lockedCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "backlight locked now:%{BOOL}u for render overlays", v9, 8u);
    }

    backlightManager = self->_backlightManager;
    backlightLocked = self->_backlightLocked;
    v8 = [objc_opt_class() description];
    [(BKDisplayBrightnessController *)backlightManager setBacklightLocked:backlightLocked forReason:v8];
  }
}

- (void)_lock_setLockedOrientation:(int64_t)orientation
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lockedOrientation != orientation)
  {
    self->_lockedOrientation = orientation;
    IsValid = BSInterfaceOrientationIsValid();
    orientationManager = self->_orientationManager;
    v7 = BSGetVersionedPID();
    if (IsValid)
    {

      sub_100091D58(orientationManager, 4, orientation, v7);
    }

    else
    {

      sub_1000923C0(orientationManager, 4, v7);
    }
  }
}

- (void)_lock_updateStateForActiveOverlayChange
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v4 = self->_activeOverlays;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    interfaceOrientation = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 interfaceOrientation];
        if (BSInterfaceOrientationIsValid())
        {
          if (BSInterfaceOrientationIsValid() && interfaceOrientation != [v10 interfaceOrientation])
          {
            v11 = sub_100052810();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              succinctDescription = [v10 succinctDescription];
              *buf = 138543362;
              v19 = succinctDescription;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Conflicting choices for orientation lock, choosing orientation for this overlay: %{public}@", buf, 0xCu);
            }
          }

          interfaceOrientation = [v10 interfaceOrientation];
        }

        if ([v10 lockBacklight])
        {
          [v3 addObject:v10];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    interfaceOrientation = 0;
  }

  [(BKDisplayRenderOverlayManager *)selfCopy _lock_setLockedOrientation:interfaceOrientation];
  -[BKDisplayRenderOverlayManager _lock_setBacklightLocked:](selfCopy, "_lock_setBacklightLocked:", [v3 count] != 0);
}

- (void)_lock_freezeOverlay:(id)overlay
{
  overlayCopy = overlay;
  os_unfair_lock_assert_owner(&self->_lock);
  isFrozen = [overlayCopy isFrozen];
  v6 = sub_100052810();
  display = v6;
  if (isFrozen)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16[0] = overlayCopy;
      _os_log_error_impl(&_mh_execute_header, display, OS_LOG_TYPE_ERROR, "Requested freezing of an already frozen overlay; ignoring freeze request for overlay:%{public}@", &v15, 0xCu);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16[0] = overlayCopy;
    _os_log_impl(&_mh_execute_header, display, OS_LOG_TYPE_DEFAULT, "Freezing overlay:%{public}@", &v15, 0xCu);
  }

  [overlayCopy freeze];
  v8 = [(BKDisplayRenderOverlayManager *)self _updateWindowServerUpdatesForOverlays:self->_overlaysDisablingUpdates];
  [(BKDisplayRenderOverlayManager *)self _lock_setOverlaysDisablingUpdates:v8];

  if ([overlayCopy disablesDisplayUpdates])
  {
    display = [overlayCopy display];
    displayId = [display displayId];
    if (([(NSMutableIndexSet *)self->_frozenDisplayIDs containsIndex:displayId]& 1) != 0)
    {
      v10 = sub_100052810();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = 67109378;
        LODWORD(v16[0]) = displayId;
        WORD2(v16[0]) = 2114;
        *(v16 + 6) = overlayCopy;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Display %d previously frozen; ignoring freeze request for overlay:%{public}@", &v15, 0x12u);
      }
    }

    else
    {
      frozenDisplayIDs = self->_frozenDisplayIDs;
      if (!frozenDisplayIDs)
      {
        v12 = objc_alloc_init(NSMutableIndexSet);
        v13 = self->_frozenDisplayIDs;
        self->_frozenDisplayIDs = v12;

        frozenDisplayIDs = self->_frozenDisplayIDs;
      }

      [(NSMutableIndexSet *)frozenDisplayIDs addIndex:displayId];
      v10 = [(CAWindowServer *)self->_windowServer displayWithDisplayId:displayId];
      if (v10)
      {
        v14 = sub_100052810();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138543362;
          v16[0] = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Freezing display: %{public}@", &v15, 0xCu);
        }

        [v10 freeze];
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_lock_setOverlaysDisablingUpdates:(id)updates
{
  updatesCopy = updates;
  os_unfair_lock_assert_owner(&self->_lock);
  overlaysDisablingUpdates = self->_overlaysDisablingUpdates;
  p_overlaysDisablingUpdates = &self->_overlaysDisablingUpdates;
  if (overlaysDisablingUpdates != updatesCopy)
  {
    objc_storeStrong(p_overlaysDisablingUpdates, updates);
  }
}

- (BOOL)isShowingNonBootUIOverlays
{
  os_unfair_lock_lock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_activeOverlays;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 type] != 2 && objc_msgSend(v7, "type") != 3)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)prepareForRestart
{
  os_unfair_lock_lock(&self->_lock);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_activeOverlays;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(BKDisplayRenderOverlayManager *)self _lock_freezeOverlay:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)freezeOverlay:(id)overlay
{
  overlayCopy = overlay;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_activeOverlays containsObject:overlayCopy];
  if (v5)
  {
    [(BKDisplayRenderOverlayManager *)self _lock_freezeOverlay:overlayCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)removeOverlay:(id)overlay withAnimationSettings:(id)settings
{
  overlayCopy = overlay;
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableSet *)self->_activeOverlays containsObject:overlayCopy];
  if (v8)
  {
    [overlayCopy dismissWithAnimationSettings:settingsCopy];
    [(NSMutableSet *)self->_activeOverlays removeObject:overlayCopy];
    [(NSMutableSet *)self->_overlaysDisablingUpdates removeObject:overlayCopy];
    v9 = [(BKDisplayRenderOverlayManager *)self _updateWindowServerUpdatesForOverlays:self->_overlaysDisablingUpdates];
    [(BKDisplayRenderOverlayManager *)self _lock_setOverlaysDisablingUpdates:v9];

    [(BKDisplayRenderOverlayManager *)self _lock_updateStateForActiveOverlayChange];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (BOOL)applyOverlay:(id)overlay withAnimationSettings:(id)settings
{
  overlayCopy = overlay;
  settingsCopy = settings;
  os_unfair_lock_lock(&self->_lock);
  v8 = [overlayCopy presentWithAnimationSettings:settingsCopy];

  if (v8)
  {
    [(NSMutableSet *)self->_activeOverlays addObject:overlayCopy];
    [(BKDisplayRenderOverlayManager *)self _lock_updateStateForActiveOverlayChange];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (NSMutableSet)activeOverlays
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_activeOverlays copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)activeOverlayWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_activeOverlays;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        descriptor = [v9 descriptor];
        v11 = [descriptor isEqual:descriptorCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_activeOverlays withName:@"activeOverlays"];
  build = [v3 build];

  return build;
}

- (id)_initWithPersistenceCoordinator:(id)coordinator orientationManager:(id)manager backlightManager:(id)backlightManager windowServer:(id)server
{
  coordinatorCopy = coordinator;
  managerCopy = manager;
  backlightManagerCopy = backlightManager;
  serverCopy = server;
  v49.receiver = self;
  v49.super_class = BKDisplayRenderOverlayManager;
  v15 = [(BKDisplayRenderOverlayManager *)&v49 init];
  v16 = v15;
  if (v15)
  {
    if (!serverCopy)
    {
      v29 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"windowServer"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(a2);
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138544642;
        v52 = v30;
        v53 = 2114;
        v54 = v32;
        v55 = 2048;
        v56 = v16;
        v57 = 2114;
        v58 = @"BKDisplayRenderOverlayManager.m";
        v59 = 1024;
        v60 = 55;
        v61 = 2114;
        v62 = v29;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v29 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10009A354);
    }

    if (!backlightManagerCopy)
    {
      v33 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"backlightManager"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(a2);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138544642;
        v52 = v34;
        v53 = 2114;
        v54 = v36;
        v55 = 2048;
        v56 = v16;
        v57 = 2114;
        v58 = @"BKDisplayRenderOverlayManager.m";
        v59 = 1024;
        v60 = 56;
        v61 = 2114;
        v62 = v33;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v33 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10009A44CLL);
    }

    if (!managerCopy)
    {
      v37 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"orientationManager"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(a2);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138544642;
        v52 = v38;
        v53 = 2114;
        v54 = v40;
        v55 = 2048;
        v56 = v16;
        v57 = 2114;
        v58 = @"BKDisplayRenderOverlayManager.m";
        v59 = 1024;
        v60 = 57;
        v61 = 2114;
        v62 = v37;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v37 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10009A544);
    }

    if (!coordinatorCopy)
    {
      v41 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"persistenceCoordinator"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v42 = NSStringFromSelector(a2);
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138544642;
        v52 = v42;
        v53 = 2114;
        v54 = v44;
        v55 = 2048;
        v56 = v16;
        v57 = 2114;
        v58 = @"BKDisplayRenderOverlayManager.m";
        v59 = 1024;
        v60 = 58;
        v61 = 2114;
        v62 = v41;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v41 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10009A63CLL);
    }

    objc_storeStrong(&v15->_windowServer, server);
    objc_storeStrong(&v16->_orientationManager, manager);
    objc_storeStrong(&v16->_backlightManager, backlightManager);
    v17 = objc_alloc_init(NSMutableSet);
    activeOverlays = v16->_activeOverlays;
    v16->_activeOverlays = v17;

    v16->_lock._os_unfair_lock_opaque = 0;
    v16->_lockedOrientation = 0;
    v16->_backlightLocked = 0;
    rebuildPersistentOverlays = [coordinatorCopy rebuildPersistentOverlays];
    v20 = [NSSet setWithArray:rebuildPersistentOverlays];

    v21 = [(BKDisplayRenderOverlayManager *)v16 _updateWindowServerUpdatesForOverlays:v20];
    overlaysDisablingUpdates = v16->_overlaysDisablingUpdates;
    v16->_overlaysDisablingUpdates = v21;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v46;
      do
      {
        v27 = 0;
        do
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [(BKDisplayRenderOverlayManager *)v16 applyOverlay:*(*(&v45 + 1) + 8 * v27) withAnimationSettings:0];
          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v25);
    }
  }

  return v16;
}

+ (id)sharedInstance
{
  if (qword_100126138 != -1)
  {
    dispatch_once(&qword_100126138, &stru_1000FD0B8);
  }

  v3 = qword_100126130;

  return v3;
}

@end