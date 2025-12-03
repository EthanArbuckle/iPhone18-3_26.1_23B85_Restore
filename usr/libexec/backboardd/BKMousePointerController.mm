@interface BKMousePointerController
+ (id)standardConfiguration;
- (BKMousePointerController)init;
- (BKMousePointerController)initWithConfiguration:(id)configuration;
- (BKSMousePointerDevicePreferences)globalDevicePreferences;
- (BOOL)destinationPIDMatchesHapticFeedbackRequestPID:(int)d;
- (CGPoint)globalPointerPosition;
- (CGPoint)normalizedGlobalPointerPosition;
- (NSArray)availableDevices;
- (id)suppressPointerModelUpdatesAssertionForDisplay:(id)display reason:(id)reason;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)_displayLinkFired:(id)fired;
- (void)addGlobalDevicePreferencesObserver:(id)observer;
- (void)addLifecycleObserver:(id)observer;
- (void)dealloc;
- (void)display:(id)display didBecomeBlank:(BOOL)blank;
- (void)getHitTestContextsAtPoint:(id)point withAdditionalContexts:(id)contexts onDisplay:(id)display withCompletion:(id)completion;
- (void)globalKeyboardModifiersDidChange:(int64_t)change;
- (void)hitTestRegionsDidChange:(id)change forDisplayUUID:(id)d;
- (void)invalidate;
- (void)matcher:(id)matcher servicesDidMatch:(id)match;
- (void)monitor:(id)monitor activeDisplaysDidChange:(id)change;
- (void)orientationManager:(id)manager deviceOrientationMayHaveChanged:(int64_t)changed changeSource:(int64_t)source isDeviceOrientationLocked:(BOOL)locked;
- (void)removeGlobalDevicePreferencesObserver:(id)observer;
- (void)removeLifecycleObserver:(id)observer;
- (void)serviceDidDisappear:(id)disappear;
- (void)setDisplayArrangement:(id)arrangement;
- (void)setGlobalDevicePreferences:(id)preferences;
- (void)setGlobalPointerEventRoutes:(id)routes forPID:(int)d displayUUID:(id)iD;
- (void)setGlobalPointerPosition:(CGPoint)position synthesizeEvents:(BOOL)events process:(id)process;
- (void)smartCoverStateDidChange:(int)change;
- (void)stopRoutingGlobalEventsForPID:(int)d;
@end

@implementation BKMousePointerController

- (NSArray)availableDevices
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_pointerHIDServiceByServiceID allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (void)_displayLinkFired:(id)fired
{
  os_unfair_lock_lock(&self->_lock);
  v5 = mach_absolute_time();
  sub_10005A750(self, v5);
  v6 = [(NSMutableArray *)self->_activePointerAnimations copy];
  if (self->_displayLinkPaused)
  {
    self->_displayLinkPaused = 0;
    os_unfair_lock_unlock(&self->_lock);
    displayLinkPauseTime = self->_displayLinkPauseTime;
    displayLinkUnpauseTime = self->_displayLinkUnpauseTime;
    v9 = mach_absolute_time();
    v10 = self->_displayLinkUnpauseTime;
    v11 = BKLogMousePointer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v23 = ((displayLinkUnpauseTime - displayLinkPauseTime) / 24000000.0);
      v24 = 2048;
      v25 = ((v9 - v10) / 24000.0);
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "displayLink unpaused after %.2fs of pausing, took %.2fms to fire after unpause", buf, 0x16u);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16) displayLinkFired:{fired, v17}];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)globalKeyboardModifiersDidChange:(int64_t)change
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_activeKeyboardModifiers != change)
  {
    self->_activeKeyboardModifiers = change;
    if ([(NSSet *)self->_lastEventContexts count])
    {
      v5 = mach_absolute_time();
      sub_10005F5B4(self, v5, 1);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)smartCoverStateDidChange:(int)change
{
  os_unfair_lock_lock(&self->_lock);
  v5 = +[BKDisplayController sharedInstance];
  v6 = [v5 displayIsBlanked:0];

  if ((v6 & 1) != 0 || change != 3)
  {
    v7 = sub_10005F6CC(self, v6 ^ 1, change == 3, self->_rawDeviceOrientation);
    sub_10005F7E8(self, v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)monitor:(id)monitor activeDisplaysDidChange:(id)change
{
  os_unfair_lock_lock(&self->_lock);
  v6 = [change copy];
  availableDisplaysByUUID = self->_availableDisplaysByUUID;
  self->_availableDisplaysByUUID = v6;

  sub_10005FA48(self, @"activeDisplaysDidChange:");

  os_unfair_lock_unlock(&self->_lock);
}

- (void)display:(id)display didBecomeBlank:(BOOL)blank
{
  blankCopy = blank;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v6 = sub_10005F6CC(self, !blankCopy, [(BKSmartCoverHIDEventProcessor *)self->_smartCoverEventProcessor isSmartCoverClosed], self->_rawDeviceOrientation);
  sub_10005F7E8(self, v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)serviceDidDisappear:(id)disappear
{
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    disappearCopy = disappear;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "device removed: %{public}@", buf, 0xCu);
  }

  disappearCopy2 = disappear;
  v6 = [NSArray arrayWithObjects:&disappearCopy2 count:1];
  v7 = sub_100061114(self, v6, @"service removed");

  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [disappear senderID]);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_pointerHIDServiceByServiceID removeObjectForKey:v8];
  [(BKMouseEventAccumulator *)self->_eventAccumulator deviceServiceDidTerminate:disappear];
  displayLink = self->_displayLink;
  sub_10005FA48(self, v7);
  if (!displayLink)
  {
    displayUUID = [disappear displayUUID];
    v11 = [displayUUID length];
    v12 = BKSDisplayUUIDMainKey;
    if (v11)
    {
      v12 = displayUUID;
    }

    v13 = v12;

    sub_10005EE18(self, v13);
  }

  [(NSMutableDictionary *)self->_senderPropertiesBySenderID removeObjectForKey:v8];
  allValues = [(NSMutableDictionary *)self->_pointerHIDServiceByServiceID allValues];
  [(BKMousePointerAnalyticsReporter *)self->_analyticsReporter availableDevicesDidChange];
  sub_1000611BC(self);
  os_unfair_lock_unlock(&self->_lock);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000612D0;
  v16[3] = &unk_1000FBCF0;
  v17 = allValues;
  v15 = allValues;
  os_unfair_lock_assert_not_owner(&self->_lock);
  sub_1000612D0(v16, self->_ipcServer_do_not_access_directly);
}

- (void)matcher:(id)matcher servicesDidMatch:(id)match
{
  v6 = BKLogMousePointer();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v111 = match;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "devices added: %{public}@", buf, 0xCu);
  }

  sub_100061114(self, match, @"services added");
  v76 = v74 = match;
  selfCopy = self;
  if (self)
  {
    v79 = objc_alloc_init(NSMutableDictionary);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = match;
    v81 = [obj countByEnumeratingWithState:&v101 objects:buf count:{16, match, v76}];
    if (v81)
    {
      v78 = *v102;
      do
      {
        v7 = 0;
        do
        {
          if (*v102 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v101 + 1) + 8 * v7);
          v9 = [_BKMousePointerSenderProperties alloc];
          if (v9)
          {
            v105.receiver = v9;
            v105.super_class = _BKMousePointerSenderProperties;
            v10 = [(BKMousePointerController *)&v105 init];
            if (v10)
            {
              v11 = [v8 propertyOfClass:objc_opt_class() forKey:@"SurfaceDimensions"];
              v12 = v11;
              if (v11)
              {
                v13 = [v11 objectForKeyedSubscript:@"Width"];
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

                v18 = [v12 objectForKeyedSubscript:@"Height"];
                v19 = objc_opt_class();
                v20 = v18;
                if (v19)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v21 = v20;
                  }

                  else
                  {
                    v21 = 0;
                  }
                }

                else
                {
                  v21 = 0;
                }

                v22 = v21;

                [v17 floatValue];
                *&v10->_configuration = v23;
                [v22 floatValue];
                v25 = v24;

                v10->_mainDisplayCornerRadius = v25;
              }

              v26 = [v8 propertyOfClass:objc_opt_class() forKey:@"HIDScrollResolutionX"];
              v27 = [v8 propertyOfClass:objc_opt_class() forKey:@"HIDScrollResolutionY"];
              v28 = [v8 propertyOfClass:objc_opt_class() forKey:@"HIDScrollResolutionZ"];
              v29 = [v8 propertyOfClass:objc_opt_class() forKey:@"HIDScrollResolution"];
              if ([v26 unsignedIntValue] > 0x120000 || objc_msgSend(v27, "unsignedIntValue") > 0x120000 || objc_msgSend(v28, "unsignedIntValue") > 0x120000 || objc_msgSend(v29, "unsignedIntValue") > 0x120000)
              {
                LOBYTE(v10->_lock._os_unfair_lock_opaque) = 1;
              }

              v30 = [v8 propertyForKey:@"NeedsHostState"];
              v31 = objc_opt_class();
              v32 = v30;
              if (v31)
              {
                if (objc_opt_isKindOfClass())
                {
                  v33 = v32;
                }

                else
                {
                  v33 = 0;
                }
              }

              else
              {
                v33 = 0;
              }

              v34 = v33;

              bOOLValue = [v34 BOOLValue];
              BYTE1(v10->_lock._os_unfair_lock_opaque) = bOOLValue;
              v36 = [v8 propertyOfClass:objc_opt_class() forKey:@"ignoresNaturalScrollingPreference"];
              BYTE2(v10->_lock._os_unfair_lock_opaque) = [v36 BOOLValue];
            }
          }

          else
          {
            v10 = 0;
          }

          v37 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 senderID]);
          [v79 setObject:v10 forKeyedSubscript:v37];

          v7 = v7 + 1;
        }

        while (v81 != v7);
        v38 = [obj countByEnumeratingWithState:&v101 objects:buf count:16];
        v81 = v38;
      }

      while (v38);
    }
  }

  else
  {
    v79 = 0;
  }

  v39 = +[BKDisplayController sharedInstance];
  v40 = [v39 displayIsBlanked:0];

  v82 = sub_10005F6CC(selfCopy, v40 ^ 1, [(BKSmartCoverHIDEventProcessor *)selfCopy->_smartCoverEventProcessor isSmartCoverClosed], selfCopy->_rawDeviceOrientation);
  os_unfair_lock_lock(&selfCopy->_lock);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v41 = v75;
  v42 = [v41 countByEnumeratingWithState:&v97 objects:v109 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v98;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v98 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v97 + 1) + 8 * i);
        pointerHIDServiceByServiceID = selfCopy->_pointerHIDServiceByServiceID;
        v48 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 senderID]);
        [(NSMutableDictionary *)pointerHIDServiceByServiceID setObject:v46 forKey:v48];
      }

      v43 = [v41 countByEnumeratingWithState:&v97 objects:v109 count:16];
    }

    while (v43);
  }

  sub_1000611BC(selfCopy);
  os_unfair_lock_lock(&selfCopy->_preferencesLock);
  v49 = sub_100061C90(selfCopy);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v50 = v41;
  v51 = [v50 countByEnumeratingWithState:&v93 objects:v108 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v94;
    do
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v94 != v53)
        {
          objc_enumerationMutation(v50);
        }

        sub_100061E40(selfCopy, v49, *(*(&v93 + 1) + 8 * j));
      }

      v52 = [v50 countByEnumeratingWithState:&v93 objects:v108 count:16];
    }

    while (v52);
  }

  os_unfair_lock_unlock(&selfCopy->_preferencesLock);
  sub_10005FA48(selfCopy, v76);
  if (selfCopy)
  {
    senderPropertiesBySenderID = selfCopy->_senderPropertiesBySenderID;
    if (!senderPropertiesBySenderID)
    {
      v56 = objc_alloc_init(NSMutableDictionary);
      v57 = selfCopy->_senderPropertiesBySenderID;
      selfCopy->_senderPropertiesBySenderID = v56;

      senderPropertiesBySenderID = selfCopy->_senderPropertiesBySenderID;
    }

    [(NSMutableDictionary *)senderPropertiesBySenderID addEntriesFromDictionary:v79];
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v58 = v50;
  v59 = [v58 countByEnumeratingWithState:&v89 objects:v107 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v90;
    do
    {
      for (k = 0; k != v60; k = k + 1)
      {
        if (*v90 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v89 + 1) + 8 * k);
        [(BKMouseEventAccumulator *)selfCopy->_eventAccumulator deviceServiceDidAppear:v63];
        sub_10005F884(selfCopy, v63, v82);
        v64 = BKLogMousePointer();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          readyToReceiveEvents = selfCopy->_readyToReceiveEvents;
          *buf = 67109378;
          *v111 = readyToReceiveEvents;
          *&v111[4] = 2114;
          *&v111[6] = v63;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "set _readyToReceiveEvents:%{BOOL}u on %{public}@", buf, 0x12u);
        }

        v66 = [NSNumber numberWithBool:selfCopy->_readyToReceiveEvents];
        [v63 asyncSetProperty:v66 forKey:@"BKReadyToReceivePointerEvents"];
      }

      v60 = [v58 countByEnumeratingWithState:&v89 objects:v107 count:16];
    }

    while (v60);
  }

  allValues = [(NSMutableDictionary *)selfCopy->_pointerHIDServiceByServiceID allValues];
  [(BKMousePointerAnalyticsReporter *)selfCopy->_analyticsReporter availableDevicesDidChange];
  os_unfair_lock_unlock(&selfCopy->_lock);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v68 = v58;
  v69 = [v68 countByEnumeratingWithState:&v85 objects:v106 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v86;
    do
    {
      for (m = 0; m != v70; m = m + 1)
      {
        if (*v86 != v71)
        {
          objc_enumerationMutation(v68);
        }

        [*(*(&v85 + 1) + 8 * m) addDisappearanceObserver:selfCopy queue:selfCopy->_serviceTerminationQueue];
      }

      v70 = [v68 countByEnumeratingWithState:&v85 objects:v106 count:16];
    }

    while (v70);
  }

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_100062204;
  v83[3] = &unk_1000FBCF0;
  v84 = allValues;
  v73 = allValues;
  os_unfair_lock_assert_not_owner(&selfCopy->_lock);
  sub_100062204(v83, selfCopy->_ipcServer_do_not_access_directly);
}

- (void)orientationManager:(id)manager deviceOrientationMayHaveChanged:(int64_t)changed changeSource:(int64_t)source isDeviceOrientationLocked:(BOOL)locked
{
  os_unfair_lock_lock(&self->_lock);
  v8 = sub_100005168(manager);
  if (self->_mainDisplayInterfaceOrientation != v8)
  {
    self->_mainDisplayInterfaceOrientation = v8;
    sub_10005FD40(self);
  }

  v9 = sub_100091A9C(manager);
  if (self->_rawDeviceOrientation != v9)
  {
    self->_rawDeviceOrientation = v9;
    v10 = +[BKDisplayController sharedInstance];
    v11 = [v10 displayIsBlanked:0];

    v12 = sub_10005F6CC(self, v11 ^ 1, [(BKSmartCoverHIDEventProcessor *)self->_smartCoverEventProcessor isSmartCoverClosed], self->_rawDeviceOrientation);
    sub_10005F7E8(self, v12);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v8 = *event;
  if ([sender eventSource] - 11 <= 1)
  {
    os_unfair_lock_lock(&self->_lock);
    displayUUID = [sender displayUUID];
    v10 = [displayUUID length];
    v11 = BKSDisplayUUIDMainKey;
    if (v10)
    {
      v11 = displayUUID;
    }

    v12 = v11;

    displayUUID2 = [(BKMousePointerRegion *)self->_pointerRegion displayUUID];
    v14 = [v12 isEqual:displayUUID2];

    if ((v14 & 1) == 0)
    {
      v15 = BKLogMousePointer();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        displayUUID3 = [sender displayUUID];
        displayUUID4 = [(BKMousePointerRegion *)self->_pointerRegion displayUUID];
        *buf = 138543618;
        v53 = displayUUID3;
        v54 = 2114;
        v55 = displayUUID4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "processEvent senderDisplayUUID %{public}@ pointerdisplayUUID %{public}@", buf, 0x16u);
      }

      os_unfair_lock_assert_owner(&self->_lock);
      v18 = v12;
      v19 = v18;
      if (!v18)
      {
        v19 = self->_mainDisplayUUID;
      }

      v20 = [(NSDictionary *)self->_regionArrangementByDisplayUUID objectForKeyedSubscript:v18];
      sub_1000605D0(self, v20);
    }

    v21 = sub_10005F0C4(self);
    os_unfair_lock_unlock(&self->_lock);
    if (v21)
    {
      v22 = BKLogMousePointer();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "ignoring events because policy", buf, 2u);
      }

      v23 = 1;
      goto LABEL_58;
    }

    sub_100062998(self);
    eventSource = [sender eventSource];
    Type = IOHIDEventGetType();
    if (eventSource == 12)
    {
      v23 = 1;
      if ((Type - 6) < 2 || Type == 11)
      {
        goto LABEL_58;
      }

      if (Type == 17)
      {
        os_unfair_lock_lock(&self->_lock);
        if (self->_pointerRegion)
        {
          if (IOHIDEventGetType() != 17)
          {
            v41 = [NSString stringWithFormat:@"must be a pointer event"];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v42 = NSStringFromSelector("_processTopLevelTrackpadEvent:sender:dispatcher:");
              v43 = objc_opt_class();
              v44 = NSStringFromClass(v43);
              *buf = 138544642;
              v53 = v42;
              v54 = 2114;
              v55 = v44;
              v56 = 2048;
              selfCopy = self;
              v58 = 2114;
              v59 = @"BKMousePointerController.m";
              v60 = 1024;
              v61 = 3399;
              v62 = 2114;
              v63 = v41;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            [v41 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x100062990);
          }

          [(BKMouseEventAccumulator *)self->_eventAccumulator addTopLevelEvent:v8 fromSender:sender];
          [(BKMousePointerAnnotationController *)self->_annotationController didReceiveEventFromDevice];
          digitizerEvents = [(BKMouseEventAccumulator *)self->_eventAccumulator digitizerEvents];
          if ([digitizerEvents count])
          {
            displayUUID5 = [(BKMousePointerRegion *)self->_pointerRegion displayUUID];
            mainDisplayUUID = self->_mainDisplayUUID;
            if (BSEqualObjects())
            {
              +[BKSHIDEventDisplay builtinDisplay];
            }

            else
            {
              [BKSHIDEventDisplay displayWithHardwareIdentifier:displayUUID5];
            }
            v30 = ;
            if (self->_touchPadManager)
            {
              v45 = displayUUID5;
              v46 = digitizerEvents;
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v31 = digitizerEvents;
              v32 = [v31 countByEnumeratingWithState:&v48 objects:buf count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v49;
                do
                {
                  for (i = 0; i != v33; i = i + 1)
                  {
                    if (*v49 != v34)
                    {
                      objc_enumerationMutation(v31);
                    }

                    *v47 = *(*(&v48 + 1) + 8 * i);
                    [(BKTouchPadManager *)self->_touchPadManager processEvent:v47 sender:sender display:v30 dispatcher:dispatcher, v45, v46];
                  }

                  v33 = [v31 countByEnumeratingWithState:&v48 objects:buf count:16];
                }

                while (v33);
              }

              displayUUID5 = v45;
              digitizerEvents = v46;
            }
          }

          if ([(BKMouseEventAccumulator *)self->_eventAccumulator eventTypeMask:v45])
          {
            if ([(BKMouseEventAccumulator *)self->_eventAccumulator positionType]== 1)
            {
              ++self->_pointerAnimationRevisionID;
            }

            if ([(BKMouseEventAccumulator *)self->_eventAccumulator touchingPathIndexesDidChange])
            {
              touchingPathIndexes = [(BKMouseEventAccumulator *)self->_eventAccumulator touchingPathIndexes];
              v37 = [touchingPathIndexes count];

              if (v37)
              {
                ++self->_pointerAnimationRevisionID;
              }
            }

            sub_100062B00(self);
            TimeStamp = IOHIDEventGetTimeStamp();
            sub_10005F5B4(self, TimeStamp, 1);
          }

          else
          {
            v39 = BKLogMousePointer();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *v47 = 0;
              _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "no relevant subevents in trackpad collection; ignoring event", v47, 2u);
            }
          }

          os_unfair_lock_unlock(&self->_lock);
          v23 = 1;
        }

        else
        {
          os_unfair_lock_unlock(&self->_lock);
          digitizerEvents = BKLogMousePointer();
          if (os_log_type_enabled(digitizerEvents, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, digitizerEvents, OS_LOG_TYPE_ERROR, "ignoring trackpad event; display layout hasn't been initialized", buf, 2u);
          }

          v23 = 0;
        }

        goto LABEL_58;
      }

      goto LABEL_28;
    }

    switch(Type)
    {
      case 6:
        os_unfair_lock_lock(&self->_lock);
        [(BKMouseEventAccumulator *)self->_eventAccumulator addTopLevelScrollEvent:v8 fromSender:sender];
        sub_100062B00(self);
        break;
      case 7:
        os_unfair_lock_lock(&self->_lock);
        [(BKMouseEventAccumulator *)self->_eventAccumulator addTopLevelScaleEvent:v8 fromSender:sender];
        break;
      case 17:
        os_unfair_lock_assert_not_owner(&self->_lock);
        os_unfair_lock_lock(&self->_lock);
        [(BKMouseEventAccumulator *)self->_eventAccumulator addTopLevelEvent:v8 fromSender:sender];
        sub_100062B00(self);
        [(BKMousePointerAnnotationController *)self->_annotationController didReceiveEventFromDevice];
        break;
      default:
LABEL_28:
        v23 = 0;
LABEL_58:

        return v23;
    }

    v29 = IOHIDEventGetTimeStamp();
    v23 = 1;
    sub_10005F5B4(self, v29, 1);
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_58;
  }

  return 0;
}

- (BOOL)destinationPIDMatchesHapticFeedbackRequestPID:(int)d
{
  os_unfair_lock_lock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_lastEventContexts;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (sub_10001B448(*(*(&v12 + 1) + 8 * i), self->_HIDConnectionManager) == d)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  return v10;
}

- (void)setDisplayArrangement:(id)arrangement
{
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    arrangementCopy = arrangement;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Display arrangement update: %{public}@", &v6, 0xCu);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_displayArrangement, arrangement);
  sub_10005FA48(self, @"display arrangement changed");
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeGlobalDevicePreferencesObserver:(id)observer
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_globalDevicePreferencesObservers removeObject:observer];
  if (![(NSHashTable *)self->_globalDevicePreferencesObservers count])
  {
    globalDevicePreferencesObservers = self->_globalDevicePreferencesObservers;
    self->_globalDevicePreferencesObservers = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addGlobalDevicePreferencesObserver:(id)observer
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  globalDevicePreferencesObservers = self->_globalDevicePreferencesObservers;
  if (!globalDevicePreferencesObservers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_globalDevicePreferencesObservers;
    self->_globalDevicePreferencesObservers = v6;

    globalDevicePreferencesObservers = self->_globalDevicePreferencesObservers;
  }

  [(NSHashTable *)globalDevicePreferencesObservers addObject:observer];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeLifecycleObserver:(id)observer
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_1000639C0(self, observer);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addLifecycleObserver:(id)observer
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_100063A80(self, observer);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGlobalDevicePreferences:(id)preferences
{
  os_unfair_lock_assert_not_owner(&self->_preferencesLock);
  os_unfair_lock_lock(&self->_preferencesLock);
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_globalDevicePreferencesObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  if ([allObjects count])
  {
    v6 = sub_100061C90(self);
    v7 = BSEqualObjects() ^ 1;
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_assert_owner(&self->_preferencesLock);
  v8 = +[BKSDefaults localDefaults];
  v31 = 0;
  v9 = [BSProtobufSerialization encodeObject:preferences error:&v31];
  v10 = v31;
  if (v9)
  {
    [v8 setGlobalMouseDevicePreferences:v9];
  }

  else
  {
    v11 = BKLogMousePointer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot encode global prefs : %{public}@", buf, 0xCu);
    }
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_pointerHIDServiceByServiceID allValues];
  os_unfair_lock_unlock(&self->_lock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = allValues;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        sub_100061E40(self, preferences, *(*(&v27 + 1) + 8 * v17));
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v15);
  }

  os_unfair_lock_unlock(&self->_preferencesLock);
  os_unfair_lock_lock(&self->_lock);
  sub_100063698(self);
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = allObjects;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * v22) mousePointerGlobalDevicePreferencesDidChange:{preferences, v23}];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v20);
    }
  }
}

- (BKSMousePointerDevicePreferences)globalDevicePreferences
{
  os_unfair_lock_assert_not_owner(&self->_preferencesLock);
  os_unfair_lock_lock(&self->_preferencesLock);
  v3 = sub_100061C90(self);
  os_unfair_lock_unlock(&self->_preferencesLock);

  return v3;
}

- (void)hitTestRegionsDidChange:(id)change forDisplayUUID:(id)d
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(NSSet *)self->_lastEventContexts count])
  {
    displayUUID = [(BKMousePointerRegion *)self->_pointerRegion displayUUID];
    dCopy = d;
    v8 = [dCopy length];
    v9 = BKSDisplayUUIDMainKey;
    if (v8)
    {
      v9 = dCopy;
    }

    v10 = v9;

    v11 = [displayUUID isEqual:v10];
    if (v11)
    {
      v12 = mach_absolute_time();
      sub_10005F5B4(self, v12, 1);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)stopRoutingGlobalEventsForPID:(int)d
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_globalEventRoutesByDisplayID copy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100063FDC;
  v6[3] = &unk_1000FBC48;
  v6[4] = self;
  dCopy = d;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGlobalPointerEventRoutes:(id)routes forPID:(int)d displayUUID:(id)iD
{
  if (d <= 0)
  {
    v10 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"pid > 0"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BKMousePointerController.m";
      v26 = 1024;
      v27 = 833;
      v28 = 2114;
      v29 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100064A90);
  }

  if (!iD)
  {
    v14 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"displayUUID != ((void *)0)"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544642;
      v19 = v15;
      v20 = 2114;
      v21 = v17;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2114;
      v25 = @"BKMousePointerController.m";
      v26 = 1024;
      v27 = 834;
      v28 = 2114;
      v29 = v14;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100064B88);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_100063FF4(self, routes, d, iD);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)getHitTestContextsAtPoint:(id)point withAdditionalContexts:(id)contexts onDisplay:(id)display withCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    os_unfair_lock_lock(&self->_lock);
    v11 = +[NSMutableArray array];
    v12 = +[NSMutableArray array];
    v13 = sub_10005DD24(self, display);
    if (v13)
    {
      contextsCopy = contexts;
      v37 = completionCopy;
      v14 = sub_10005DDD4(self, display);
      sub_10005F144(self, point, v13);
      sub_10005DE60(v13, v14, self->_displayController);
      sub_100007C3C(display);
      v16 = v15;
      v18 = v17;
      v36 = v13;
      sub_10001AE04(v15, v17, BKMouseDestination, 0, v13, 0, self->_configuration, self->_lastEventContexts);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v46 = 0u;
      v19 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v44;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            if (v23 && (*(v23 + 12) - 1) <= 0xFFFFFFFD)
            {
              v24 = *(v23 + 8);
              v25 = sub_10001B448(v23, self->_HIDConnectionManager);
              v26 = objc_alloc_init(BKSHIDEventHitTestClientContext);
              [v26 setContextID:{v24, contextsCopy}];
              [v26 setPid:v25];
              [v11 addObject:v26];
              [(BKDisplayController *)self->_displayController convertCAScreenLocation:v24 toContextID:display displayUUID:v16, v18];
              v27 = [NSValue bs_valueWithCGPoint:?];
              [v12 addObject:v27];
            }
          }

          v20 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v20);
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v28 = contextsCopy;
      v29 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v40;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v40 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v39 + 1) + 8 * j);
            [v11 addObject:{v33, contextsCopy}];
            -[BKDisplayController convertCAScreenLocation:toContextID:displayUUID:](self->_displayController, "convertCAScreenLocation:toContextID:displayUUID:", [v33 contextID], display, v16, v18);
            v34 = [NSValue bs_valueWithCGPoint:?];
            [v12 addObject:v34];
          }

          v30 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v30);
      }

      v13 = v36;
      completionCopy = v37;
    }

    os_unfair_lock_unlock(&self->_lock);
    completionCopy[2](completionCopy, v11, v12, 0);
  }
}

- (void)setGlobalPointerPosition:(CGPoint)position synthesizeEvents:(BOOL)events process:(id)process
{
  eventsCopy = events;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = +[CADisplay mainDisplay];
  sub_10005F494(v8, self->_mainDisplayInterfaceOrientation, self->_displayController);
  v10 = v9;
  v12 = v11;

  process = [NSString stringWithFormat:@"setGlobalPointerPosition (%@)", process];
  sub_10005E2D4(self, 0, process, v10, v12);

  if (eventsCopy)
  {
    v14 = mach_absolute_time();
    sub_10005F5B4(self, v14, 1);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (CGPoint)globalPointerPosition
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_pointerRegion)
  {
    [(BKMousePointerRegionArrangement *)self->_regionArrangement convertToGlobalPoint:self->_pointerRegionPoint.x fromRegion:self->_pointerRegionPoint.y];
  }

  else
  {
    y = CGPointZero.y;
  }

  v4 = +[CADisplay mainDisplay];
  sub_10005DE60(v4, self->_mainDisplayInterfaceOrientation, self->_displayController);
  v6 = v5;
  v8 = v7;

  os_unfair_lock_unlock(&self->_lock);
  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)normalizedGlobalPointerPosition
{
  if (self->_pointerRegion)
  {
    [(BKMousePointerRegionArrangement *)self->_regionArrangement convertToGlobalPoint:self->_pointerRegionPoint.x fromRegion:self->_pointerRegionPoint.y];
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  regionArrangement = self->_regionArrangement;

  [(BKMousePointerRegionArrangement *)regionArrangement normalizedGlobalPosition:x, y];
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)suppressPointerModelUpdatesAssertionForDisplay:(id)display reason:(id)reason
{
  v7 = BKLogMousePointer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    displayCopy = display;
    v15 = 2114;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "suppress pointer updates: display:%{public}@ because %{public}@", buf, 0x16u);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_modelUpdateSuppressionAssertionsByDisplayID objectForKeyedSubscript:display];
  if (!v8)
  {
    v9 = [@"modelUpdate-" stringByAppendingString:display];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100066794;
    v12[3] = &unk_1000FBB60;
    v12[4] = display;
    v8 = [BSCompoundAssertion assertionWithIdentifier:v9 stateDidChangeHandler:v12];

    [(NSMutableDictionary *)self->_modelUpdateSuppressionAssertionsByDisplayID setObject:v8 forKeyedSubscript:display];
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = [v8 acquireForReason:reason];

  return v10;
}

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalid._Value, 1u) & 1) == 0)
  {
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    [(BKMousePointerAnnotationController *)self->_annotationController invalidate];
    annotationController = self->_annotationController;
    self->_annotationController = 0;

    [(BSInvalidatable *)self->_displayBlankingObservationAssertion invalidate];
    displayBlankingObservationAssertion = self->_displayBlankingObservationAssertion;
    self->_displayBlankingObservationAssertion = 0;

    [(BSInvalidatable *)self->_keyboardEventObservationAssertion invalidate];
    keyboardEventObservationAssertion = self->_keyboardEventObservationAssertion;
    self->_keyboardEventObservationAssertion = 0;

    [(BKCADisplayMonitor *)self->_displayMonitor invalidate];
    displayMonitor = self->_displayMonitor;
    self->_displayMonitor = 0;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allValues = [(NSMutableDictionary *)self->_modelUpdateSuppressionAssertionsByDisplayID allValues];
    v8 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v23 + 1) + 8 * v11) invalidate];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [allValues countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    modelUpdateSuppressionAssertionsByDisplayID = self->_modelUpdateSuppressionAssertionsByDisplayID;
    self->_modelUpdateSuppressionAssertionsByDisplayID = 0;

    [(BSAbsoluteMachTimer *)self->_displayLinkPauseTimer invalidate];
    displayLinkPauseTimer = self->_displayLinkPauseTimer;
    self->_displayLinkPauseTimer = 0;

    [(BKDisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;

    regionArrangement = self->_regionArrangement;
    self->_regionArrangement = 0;

    regionArrangementByCoalitionID = self->_regionArrangementByCoalitionID;
    self->_regionArrangementByCoalitionID = 0;

    regionArrangementByDisplayUUID = self->_regionArrangementByDisplayUUID;
    self->_regionArrangementByDisplayUUID = 0;

    sub_100063358(self);
    [(BSInvalidatable *)self->_displayMonitorObservingAssertion invalidate];
    displayMonitorObservingAssertion = self->_displayMonitorObservingAssertion;
    self->_displayMonitorObservingAssertion = 0;

    [(BSInvalidatable *)self->_smartCoverObservationAssertion invalidate];
    smartCoverObservationAssertion = self->_smartCoverObservationAssertion;
    self->_smartCoverObservationAssertion = 0;

    [(BSInvalidatable *)self->_orientationManagerObservationAssertion invalidate];
    orientationManagerObservationAssertion = self->_orientationManagerObservationAssertion;
    self->_orientationManagerObservationAssertion = 0;

    [(BKIOHIDServiceMatcher *)self->_pointerHIDServiceMatcher invalidate];
    pointerHIDServiceMatcher = self->_pointerHIDServiceMatcher;
    self->_pointerHIDServiceMatcher = 0;

    [(BKMouseEventAccumulator *)self->_eventAccumulator invalidate];
    eventAccumulator = self->_eventAccumulator;
    self->_eventAccumulator = 0;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)dealloc
{
  [(BKMousePointerController *)self invalidate];
  v3.receiver = self;
  v3.super_class = BKMousePointerController;
  [(BKMousePointerController *)&v3 dealloc];
}

- (BKMousePointerController)initWithConfiguration:(id)configuration
{
  v75.receiver = self;
  v75.super_class = BKMousePointerController;
  v4 = [(BKMousePointerController *)&v75 init];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_preferencesLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v4->_configuration, configuration);
    displayProvider = [configuration displayProvider];
    v5 = [BKCADisplayMonitor alloc];
    v6 = BKLogMousePointer();
    v7 = [(BKCADisplayMonitor *)v5 initWithDisplayProvider:displayProvider log:v6 filterPredicate:0];
    displayMonitor = v4->_displayMonitor;
    v4->_displayMonitor = v7;

    v9 = [(BKCADisplayMonitor *)v4->_displayMonitor addObserver:v4];
    displayMonitorObservingAssertion = v4->_displayMonitorObservingAssertion;
    v4->_displayMonitorObservingAssertion = v9;

    localDefaults = [configuration localDefaults];
    localDefaults = v4->_localDefaults;
    v4->_localDefaults = localDefaults;

    clientConnectionManager = [configuration clientConnectionManager];
    HIDConnectionManager = v4->_HIDConnectionManager;
    v4->_HIDConnectionManager = clientConnectionManager;

    touchPadManager = [configuration touchPadManager];
    touchPadManager = v4->_touchPadManager;
    v4->_touchPadManager = touchPadManager;

    keyboardEventProcessor = [configuration keyboardEventProcessor];
    keyboardEventProcessor = v4->_keyboardEventProcessor;
    v4->_keyboardEventProcessor = keyboardEventProcessor;

    smartCoverEventProcessor = [configuration smartCoverEventProcessor];
    smartCoverEventProcessor = v4->_smartCoverEventProcessor;
    v4->_smartCoverEventProcessor = smartCoverEventProcessor;

    v21 = [(BKSmartCoverHIDEventProcessor *)v4->_smartCoverEventProcessor addSmartCoverObserver:v4];
    smartCoverObservationAssertion = v4->_smartCoverObservationAssertion;
    v4->_smartCoverObservationAssertion = v21;

    displayController = [configuration displayController];
    displayController = v4->_displayController;
    v4->_displayController = displayController;

    v25 = [(BKDisplayController *)v4->_displayController addDisplayBlankingObserver:v4];
    displayBlankingObservationAssertion = v4->_displayBlankingObservationAssertion;
    v4->_displayBlankingObservationAssertion = v25;

    v27 = [(BKKeyboardHIDEventProcessor *)v4->_keyboardEventProcessor addGlobalKeyboardObserver:v4];
    keyboardEventObservationAssertion = v4->_keyboardEventObservationAssertion;
    v4->_keyboardEventObservationAssertion = v27;

    v4->_displayLinkDisabled = [(BKMousePointerControllerConfiguration *)v4->_configuration displayLinkDisabled];
    sub_100062998(v4);
    v29 = v4->_localDefaults;
    v30 = [NSString stringWithUTF8String:"visualizeMousePointer"];
    v31 = &_dispatch_main_q;
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1000671B8;
    v72[3] = &unk_1000FCBA8;
    objc_copyWeak(&v73, &location);
    v32 = [(BKSLocalDefaults *)v29 observeDefault:v30 onQueue:&_dispatch_main_q withBlock:v72];

    v33 = v4->_localDefaults;
    v34 = [NSString stringWithUTF8String:"pointerRegionArrangementEdge"];
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1000671F8;
    v69[3] = &unk_1000FBB38;
    v35 = v4;
    v70 = v35;
    objc_copyWeak(&v71, &location);
    v36 = [(BKSLocalDefaults *)v33 observeDefault:v34 onQueue:&_dispatch_main_q withBlock:v69];

    v37 = v4->_localDefaults;
    v38 = [NSString stringWithUTF8String:"mouseInterpolation"];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100067250;
    v67[3] = &unk_1000FCBA8;
    objc_copyWeak(&v68, &location);
    v39 = [(BKSLocalDefaults *)v37 observeDefault:v38 onQueue:&_dispatch_main_q withBlock:v67];

    sub_100067290(v35);
    [configuration mainDisplayCornerRadius];
    v35->_mainDisplayCornerRadius = v40;
    orientationManager = [configuration orientationManager];
    orientationManager = v35->_orientationManager;
    v35->_orientationManager = orientationManager;

    v43 = sub_1000924EC(&v35->_orientationManager->super.isa, v35);
    orientationManagerObservationAssertion = v35->_orientationManagerObservationAssertion;
    v35->_orientationManagerObservationAssertion = v43;

    v35->_mainDisplayInterfaceOrientation = sub_100005168(v35->_orientationManager);
    v35->_rawDeviceOrientation = sub_100091A9C(v35->_orientationManager);
    v45 = +[NSMutableArray array];
    activePointerAnimations = v35->_activePointerAnimations;
    v35->_activePointerAnimations = v45;

    v47 = +[NSMutableDictionary dictionary];
    modelUpdateSuppressionAssertionsByDisplayID = v35->_modelUpdateSuppressionAssertionsByDisplayID;
    v35->_modelUpdateSuppressionAssertionsByDisplayID = v47;

    v76[0] = @"DeviceUsagePage";
    v76[1] = @"DeviceUsage";
    v77[0] = &off_100107A48;
    v77[1] = &off_100107A60;
    v49 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
    v50 = [BKIOHIDServiceMatcher alloc];
    v51 = +[BKHIDSystemInterface sharedInstance];
    v52 = [v50 initWithMatchingDictionary:v49 dataProvider:v51];
    pointerHIDServiceMatcher = v35->_pointerHIDServiceMatcher;
    v35->_pointerHIDServiceMatcher = v52;

    v54 = [(BKIOHIDServiceMatcher *)v35->_pointerHIDServiceMatcher startObservingSynchronously:v35];
    v55 = objc_alloc_init(NSMutableDictionary);
    pointerHIDServiceByServiceID = v35->_pointerHIDServiceByServiceID;
    v35->_pointerHIDServiceByServiceID = v55;

    if ([v54 count])
    {
      [(BKMousePointerController *)v35 matcher:v35->_pointerHIDServiceMatcher servicesDidMatch:v54];
    }

    v57 = dispatch_queue_create("backboardd.BKMousePointerController.serviceTermination", 0);
    serviceTerminationQueue = v35->_serviceTerminationQueue;
    v35->_serviceTerminationQueue = v57;

    analyticsReporter = [configuration analyticsReporter];
    analyticsReporter = v35->_analyticsReporter;
    v35->_analyticsReporter = analyticsReporter;

    [(BKMousePointerAnalyticsReporter *)v35->_analyticsReporter setMousePointerController:v35];
    [(BKCADisplayMonitor *)v4->_displayMonitor reevaluateActiveDisplaysWithReason:@"init"];
    os_unfair_lock_lock(&v4->_lock);
    sub_100063244(v35);
    sub_10005FA48(v35, @"init");
    os_unfair_lock_unlock(&v4->_lock);
    v61 = objc_alloc_init(BKMousePointerEventStatisticsLogger);
    statisticsLogger = v35->_statisticsLogger;
    v35->_statisticsLogger = v61;

    serviceServer = [configuration serviceServer];
    ipcServer_do_not_access_directly = v35->_ipcServer_do_not_access_directly;
    v35->_ipcServer_do_not_access_directly = serviceServer;

    objc_destroyWeak(&v68);
    objc_destroyWeak(&v71);

    objc_destroyWeak(&v73);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (BKMousePointerController)init
{
  standardConfiguration = [objc_opt_class() standardConfiguration];
  v4 = [(BKMousePointerController *)self initWithConfiguration:standardConfiguration];

  return v4;
}

+ (id)standardConfiguration
{
  v2 = objc_alloc_init(BKMousePointerControllerConfiguration);
  [(BKMousePointerControllerConfiguration *)v2 setDisplayProvider:0];
  v3 = sub_100005110();
  [(BKMousePointerControllerConfiguration *)v2 setOrientationManager:v3];

  v4 = sub_100008F48();
  [(BKMousePointerControllerConfiguration *)v2 setTouchEventServer:v4];

  v5 = +[BKDisplayController sharedInstance];
  [(BKMousePointerControllerConfiguration *)v2 setDisplayController:v5];

  v6 = +[BKSDefaults localDefaults];
  [(BKMousePointerControllerConfiguration *)v2 setLocalDefaults:v6];

  v7 = BKHIDEventRoutingGetClientConnectionManager();
  [(BKMousePointerControllerConfiguration *)v2 setClientConnectionManager:v7];

  v8 = objc_alloc_init(BKMousePointerAnalyticsReporter);
  [(BKMousePointerControllerConfiguration *)v2 setAnalyticsReporter:v8];

  [(BKMousePointerControllerConfiguration *)v2 setServiceServer:0];
  v9 = +[BKTouchDeliveryPolicyServer sharedServer];
  [(BKMousePointerControllerConfiguration *)v2 setTouchDeliveryPolicyServer:v9];

  v10 = +[BKHIDEventProcessorRegistry sharedInstance];
  v11 = +[BKTouchPadManager sharedInstance];
  [(BKMousePointerControllerConfiguration *)v2 setTouchPadManager:v11];

  v12 = [v10 eventProcessorOfClass:objc_opt_class()];
  [(BKMousePointerControllerConfiguration *)v2 setKeyboardEventProcessor:v12];

  v13 = [v10 eventProcessorOfClass:objc_opt_class()];
  [(BKMousePointerControllerConfiguration *)v2 setSmartCoverEventProcessor:v13];

  v14 = objc_alloc_init(BKHIDEventHitTestDispatcher);
  [(BKMousePointerControllerConfiguration *)v2 setEventDispatcher:v14];

  [(BKMousePointerControllerConfiguration *)v2 setDisplayLinkClass:objc_opt_class()];
  [(BKMousePointerControllerConfiguration *)v2 setShouldUseHighFrequencyAttributeOption:1];
  MGGetFloat32Answer();
  [(BKMousePointerControllerConfiguration *)v2 setMainDisplayCornerRadius:v15];

  return v2;
}

@end