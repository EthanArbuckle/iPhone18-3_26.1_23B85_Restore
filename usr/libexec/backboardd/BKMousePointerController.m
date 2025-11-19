@interface BKMousePointerController
+ (id)standardConfiguration;
- (BKMousePointerController)init;
- (BKMousePointerController)initWithConfiguration:(id)a3;
- (BKSMousePointerDevicePreferences)globalDevicePreferences;
- (BOOL)destinationPIDMatchesHapticFeedbackRequestPID:(int)a3;
- (CGPoint)globalPointerPosition;
- (CGPoint)normalizedGlobalPointerPosition;
- (NSArray)availableDevices;
- (id)suppressPointerModelUpdatesAssertionForDisplay:(id)a3 reason:(id)a4;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (void)_displayLinkFired:(id)a3;
- (void)addGlobalDevicePreferencesObserver:(id)a3;
- (void)addLifecycleObserver:(id)a3;
- (void)dealloc;
- (void)display:(id)a3 didBecomeBlank:(BOOL)a4;
- (void)getHitTestContextsAtPoint:(id)a3 withAdditionalContexts:(id)a4 onDisplay:(id)a5 withCompletion:(id)a6;
- (void)globalKeyboardModifiersDidChange:(int64_t)a3;
- (void)hitTestRegionsDidChange:(id)a3 forDisplayUUID:(id)a4;
- (void)invalidate;
- (void)matcher:(id)a3 servicesDidMatch:(id)a4;
- (void)monitor:(id)a3 activeDisplaysDidChange:(id)a4;
- (void)orientationManager:(id)a3 deviceOrientationMayHaveChanged:(int64_t)a4 changeSource:(int64_t)a5 isDeviceOrientationLocked:(BOOL)a6;
- (void)removeGlobalDevicePreferencesObserver:(id)a3;
- (void)removeLifecycleObserver:(id)a3;
- (void)serviceDidDisappear:(id)a3;
- (void)setDisplayArrangement:(id)a3;
- (void)setGlobalDevicePreferences:(id)a3;
- (void)setGlobalPointerEventRoutes:(id)a3 forPID:(int)a4 displayUUID:(id)a5;
- (void)setGlobalPointerPosition:(CGPoint)a3 synthesizeEvents:(BOOL)a4 process:(id)a5;
- (void)smartCoverStateDidChange:(int)a3;
- (void)stopRoutingGlobalEventsForPID:(int)a3;
@end

@implementation BKMousePointerController

- (NSArray)availableDevices
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_pointerHIDServiceByServiceID allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_displayLinkFired:(id)a3
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

        [*(*(&v17 + 1) + 8 * v16) displayLinkFired:{a3, v17}];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)globalKeyboardModifiersDidChange:(int64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_activeKeyboardModifiers != a3)
  {
    self->_activeKeyboardModifiers = a3;
    if ([(NSSet *)self->_lastEventContexts count])
    {
      v5 = mach_absolute_time();
      sub_10005F5B4(self, v5, 1);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)smartCoverStateDidChange:(int)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = +[BKDisplayController sharedInstance];
  v6 = [v5 displayIsBlanked:0];

  if ((v6 & 1) != 0 || a3 != 3)
  {
    v7 = sub_10005F6CC(self, v6 ^ 1, a3 == 3, self->_rawDeviceOrientation);
    sub_10005F7E8(self, v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)monitor:(id)a3 activeDisplaysDidChange:(id)a4
{
  os_unfair_lock_lock(&self->_lock);
  v6 = [a4 copy];
  availableDisplaysByUUID = self->_availableDisplaysByUUID;
  self->_availableDisplaysByUUID = v6;

  sub_10005FA48(self, @"activeDisplaysDidChange:");

  os_unfair_lock_unlock(&self->_lock);
}

- (void)display:(id)a3 didBecomeBlank:(BOOL)a4
{
  v4 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v6 = sub_10005F6CC(self, !v4, [(BKSmartCoverHIDEventProcessor *)self->_smartCoverEventProcessor isSmartCoverClosed], self->_rawDeviceOrientation);
  sub_10005F7E8(self, v6);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)serviceDidDisappear:(id)a3
{
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "device removed: %{public}@", buf, 0xCu);
  }

  v18 = a3;
  v6 = [NSArray arrayWithObjects:&v18 count:1];
  v7 = sub_100061114(self, v6, @"service removed");

  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a3 senderID]);
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_pointerHIDServiceByServiceID removeObjectForKey:v8];
  [(BKMouseEventAccumulator *)self->_eventAccumulator deviceServiceDidTerminate:a3];
  displayLink = self->_displayLink;
  sub_10005FA48(self, v7);
  if (!displayLink)
  {
    v10 = [a3 displayUUID];
    v11 = [v10 length];
    v12 = BKSDisplayUUIDMainKey;
    if (v11)
    {
      v12 = v10;
    }

    v13 = v12;

    sub_10005EE18(self, v13);
  }

  [(NSMutableDictionary *)self->_senderPropertiesBySenderID removeObjectForKey:v8];
  v14 = [(NSMutableDictionary *)self->_pointerHIDServiceByServiceID allValues];
  [(BKMousePointerAnalyticsReporter *)self->_analyticsReporter availableDevicesDidChange];
  sub_1000611BC(self);
  os_unfair_lock_unlock(&self->_lock);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000612D0;
  v16[3] = &unk_1000FBCF0;
  v17 = v14;
  v15 = v14;
  os_unfair_lock_assert_not_owner(&self->_lock);
  sub_1000612D0(v16, self->_ipcServer_do_not_access_directly);
}

- (void)matcher:(id)a3 servicesDidMatch:(id)a4
{
  v6 = BKLogMousePointer();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v111 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "devices added: %{public}@", buf, 0xCu);
  }

  sub_100061114(self, a4, @"services added");
  v76 = v74 = a4;
  v80 = self;
  if (self)
  {
    v79 = objc_alloc_init(NSMutableDictionary);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = a4;
    v81 = [obj countByEnumeratingWithState:&v101 objects:buf count:{16, a4, v76}];
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

              v35 = [v34 BOOLValue];
              BYTE1(v10->_lock._os_unfair_lock_opaque) = v35;
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

  v82 = sub_10005F6CC(v80, v40 ^ 1, [(BKSmartCoverHIDEventProcessor *)v80->_smartCoverEventProcessor isSmartCoverClosed], v80->_rawDeviceOrientation);
  os_unfair_lock_lock(&v80->_lock);
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
        pointerHIDServiceByServiceID = v80->_pointerHIDServiceByServiceID;
        v48 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 senderID]);
        [(NSMutableDictionary *)pointerHIDServiceByServiceID setObject:v46 forKey:v48];
      }

      v43 = [v41 countByEnumeratingWithState:&v97 objects:v109 count:16];
    }

    while (v43);
  }

  sub_1000611BC(v80);
  os_unfair_lock_lock(&v80->_preferencesLock);
  v49 = sub_100061C90(v80);
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

        sub_100061E40(v80, v49, *(*(&v93 + 1) + 8 * j));
      }

      v52 = [v50 countByEnumeratingWithState:&v93 objects:v108 count:16];
    }

    while (v52);
  }

  os_unfair_lock_unlock(&v80->_preferencesLock);
  sub_10005FA48(v80, v76);
  if (v80)
  {
    senderPropertiesBySenderID = v80->_senderPropertiesBySenderID;
    if (!senderPropertiesBySenderID)
    {
      v56 = objc_alloc_init(NSMutableDictionary);
      v57 = v80->_senderPropertiesBySenderID;
      v80->_senderPropertiesBySenderID = v56;

      senderPropertiesBySenderID = v80->_senderPropertiesBySenderID;
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
        [(BKMouseEventAccumulator *)v80->_eventAccumulator deviceServiceDidAppear:v63];
        sub_10005F884(v80, v63, v82);
        v64 = BKLogMousePointer();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          readyToReceiveEvents = v80->_readyToReceiveEvents;
          *buf = 67109378;
          *v111 = readyToReceiveEvents;
          *&v111[4] = 2114;
          *&v111[6] = v63;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "set _readyToReceiveEvents:%{BOOL}u on %{public}@", buf, 0x12u);
        }

        v66 = [NSNumber numberWithBool:v80->_readyToReceiveEvents];
        [v63 asyncSetProperty:v66 forKey:@"BKReadyToReceivePointerEvents"];
      }

      v60 = [v58 countByEnumeratingWithState:&v89 objects:v107 count:16];
    }

    while (v60);
  }

  v67 = [(NSMutableDictionary *)v80->_pointerHIDServiceByServiceID allValues];
  [(BKMousePointerAnalyticsReporter *)v80->_analyticsReporter availableDevicesDidChange];
  os_unfair_lock_unlock(&v80->_lock);
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

        [*(*(&v85 + 1) + 8 * m) addDisappearanceObserver:v80 queue:v80->_serviceTerminationQueue];
      }

      v70 = [v68 countByEnumeratingWithState:&v85 objects:v106 count:16];
    }

    while (v70);
  }

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_100062204;
  v83[3] = &unk_1000FBCF0;
  v84 = v67;
  v73 = v67;
  os_unfair_lock_assert_not_owner(&v80->_lock);
  sub_100062204(v83, v80->_ipcServer_do_not_access_directly);
}

- (void)orientationManager:(id)a3 deviceOrientationMayHaveChanged:(int64_t)a4 changeSource:(int64_t)a5 isDeviceOrientationLocked:(BOOL)a6
{
  os_unfair_lock_lock(&self->_lock);
  v8 = sub_100005168(a3);
  if (self->_mainDisplayInterfaceOrientation != v8)
  {
    self->_mainDisplayInterfaceOrientation = v8;
    sub_10005FD40(self);
  }

  v9 = sub_100091A9C(a3);
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

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = *a3;
  if ([a4 eventSource] - 11 <= 1)
  {
    os_unfair_lock_lock(&self->_lock);
    v9 = [a4 displayUUID];
    v10 = [v9 length];
    v11 = BKSDisplayUUIDMainKey;
    if (v10)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [(BKMousePointerRegion *)self->_pointerRegion displayUUID];
    v14 = [v12 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      v15 = BKLogMousePointer();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [a4 displayUUID];
        v17 = [(BKMousePointerRegion *)self->_pointerRegion displayUUID];
        *buf = 138543618;
        v53 = v16;
        v54 = 2114;
        v55 = v17;
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
    v24 = [a4 eventSource];
    Type = IOHIDEventGetType();
    if (v24 == 12)
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
              v57 = self;
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

          [(BKMouseEventAccumulator *)self->_eventAccumulator addTopLevelEvent:v8 fromSender:a4];
          [(BKMousePointerAnnotationController *)self->_annotationController didReceiveEventFromDevice];
          v26 = [(BKMouseEventAccumulator *)self->_eventAccumulator digitizerEvents];
          if ([v26 count])
          {
            v27 = [(BKMousePointerRegion *)self->_pointerRegion displayUUID];
            mainDisplayUUID = self->_mainDisplayUUID;
            if (BSEqualObjects())
            {
              +[BKSHIDEventDisplay builtinDisplay];
            }

            else
            {
              [BKSHIDEventDisplay displayWithHardwareIdentifier:v27];
            }
            v30 = ;
            if (self->_touchPadManager)
            {
              v45 = v27;
              v46 = v26;
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v31 = v26;
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
                    [(BKTouchPadManager *)self->_touchPadManager processEvent:v47 sender:a4 display:v30 dispatcher:a5, v45, v46];
                  }

                  v33 = [v31 countByEnumeratingWithState:&v48 objects:buf count:16];
                }

                while (v33);
              }

              v27 = v45;
              v26 = v46;
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
              v36 = [(BKMouseEventAccumulator *)self->_eventAccumulator touchingPathIndexes];
              v37 = [v36 count];

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
          v26 = BKLogMousePointer();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "ignoring trackpad event; display layout hasn't been initialized", buf, 2u);
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
        [(BKMouseEventAccumulator *)self->_eventAccumulator addTopLevelScrollEvent:v8 fromSender:a4];
        sub_100062B00(self);
        break;
      case 7:
        os_unfair_lock_lock(&self->_lock);
        [(BKMouseEventAccumulator *)self->_eventAccumulator addTopLevelScaleEvent:v8 fromSender:a4];
        break;
      case 17:
        os_unfair_lock_assert_not_owner(&self->_lock);
        os_unfair_lock_lock(&self->_lock);
        [(BKMouseEventAccumulator *)self->_eventAccumulator addTopLevelEvent:v8 fromSender:a4];
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

- (BOOL)destinationPIDMatchesHapticFeedbackRequestPID:(int)a3
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

        if (sub_10001B448(*(*(&v12 + 1) + 8 * i), self->_HIDConnectionManager) == a3)
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

- (void)setDisplayArrangement:(id)a3
{
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Display arrangement update: %{public}@", &v6, 0xCu);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_displayArrangement, a3);
  sub_10005FA48(self, @"display arrangement changed");
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeGlobalDevicePreferencesObserver:(id)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_globalDevicePreferencesObservers removeObject:a3];
  if (![(NSHashTable *)self->_globalDevicePreferencesObservers count])
  {
    globalDevicePreferencesObservers = self->_globalDevicePreferencesObservers;
    self->_globalDevicePreferencesObservers = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addGlobalDevicePreferencesObserver:(id)a3
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

  [(NSHashTable *)globalDevicePreferencesObservers addObject:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeLifecycleObserver:(id)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_1000639C0(self, a3);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addLifecycleObserver:(id)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_100063A80(self, a3);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGlobalDevicePreferences:(id)a3
{
  os_unfair_lock_assert_not_owner(&self->_preferencesLock);
  os_unfair_lock_lock(&self->_preferencesLock);
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_globalDevicePreferencesObservers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  if ([v5 count])
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
  v9 = [BSProtobufSerialization encodeObject:a3 error:&v31];
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
  v12 = [(NSMutableDictionary *)self->_pointerHIDServiceByServiceID allValues];
  os_unfair_lock_unlock(&self->_lock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v12;
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

        sub_100061E40(self, a3, *(*(&v27 + 1) + 8 * v17));
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
    v18 = v5;
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

          [*(*(&v23 + 1) + 8 * v22) mousePointerGlobalDevicePreferencesDidChange:{a3, v23}];
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

- (void)hitTestRegionsDidChange:(id)a3 forDisplayUUID:(id)a4
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(NSSet *)self->_lastEventContexts count])
  {
    v6 = [(BKMousePointerRegion *)self->_pointerRegion displayUUID];
    v7 = a4;
    v8 = [v7 length];
    v9 = BKSDisplayUUIDMainKey;
    if (v8)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v6 isEqual:v10];
    if (v11)
    {
      v12 = mach_absolute_time();
      sub_10005F5B4(self, v12, 1);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)stopRoutingGlobalEventsForPID:(int)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_globalEventRoutesByDisplayID copy];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100063FDC;
  v6[3] = &unk_1000FBC48;
  v6[4] = self;
  v7 = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGlobalPointerEventRoutes:(id)a3 forPID:(int)a4 displayUUID:(id)a5
{
  if (a4 <= 0)
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
      v23 = self;
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

  if (!a5)
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
      v23 = self;
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
  sub_100063FF4(self, a3, a4, a5);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)getHitTestContextsAtPoint:(id)a3 withAdditionalContexts:(id)a4 onDisplay:(id)a5 withCompletion:(id)a6
{
  if (a6)
  {
    v6 = a6;
    os_unfair_lock_lock(&self->_lock);
    v11 = +[NSMutableArray array];
    v12 = +[NSMutableArray array];
    v13 = sub_10005DD24(self, a5);
    if (v13)
    {
      v35 = a4;
      v37 = v6;
      v14 = sub_10005DDD4(self, a5);
      sub_10005F144(self, a3, v13);
      sub_10005DE60(v13, v14, self->_displayController);
      sub_100007C3C(a5);
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
              [v26 setContextID:{v24, v35}];
              [v26 setPid:v25];
              [v11 addObject:v26];
              [(BKDisplayController *)self->_displayController convertCAScreenLocation:v24 toContextID:a5 displayUUID:v16, v18];
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
      v28 = v35;
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
            [v11 addObject:{v33, v35}];
            -[BKDisplayController convertCAScreenLocation:toContextID:displayUUID:](self->_displayController, "convertCAScreenLocation:toContextID:displayUUID:", [v33 contextID], a5, v16, v18);
            v34 = [NSValue bs_valueWithCGPoint:?];
            [v12 addObject:v34];
          }

          v30 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v30);
      }

      v13 = v36;
      v6 = v37;
    }

    os_unfair_lock_unlock(&self->_lock);
    v6[2](v6, v11, v12, 0);
  }
}

- (void)setGlobalPointerPosition:(CGPoint)a3 synthesizeEvents:(BOOL)a4 process:(id)a5
{
  v6 = a4;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = +[CADisplay mainDisplay];
  sub_10005F494(v8, self->_mainDisplayInterfaceOrientation, self->_displayController);
  v10 = v9;
  v12 = v11;

  v13 = [NSString stringWithFormat:@"setGlobalPointerPosition (%@)", a5];
  sub_10005E2D4(self, 0, v13, v10, v12);

  if (v6)
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

- (id)suppressPointerModelUpdatesAssertionForDisplay:(id)a3 reason:(id)a4
{
  v7 = BKLogMousePointer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = a3;
    v15 = 2114;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "suppress pointer updates: display:%{public}@ because %{public}@", buf, 0x16u);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_modelUpdateSuppressionAssertionsByDisplayID objectForKeyedSubscript:a3];
  if (!v8)
  {
    v9 = [@"modelUpdate-" stringByAppendingString:a3];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100066794;
    v12[3] = &unk_1000FBB60;
    v12[4] = a3;
    v8 = [BSCompoundAssertion assertionWithIdentifier:v9 stateDidChangeHandler:v12];

    [(NSMutableDictionary *)self->_modelUpdateSuppressionAssertionsByDisplayID setObject:v8 forKeyedSubscript:a3];
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = [v8 acquireForReason:a4];

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
    v7 = [(NSMutableDictionary *)self->_modelUpdateSuppressionAssertionsByDisplayID allValues];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v23 + 1) + 8 * v11) invalidate];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (BKMousePointerController)initWithConfiguration:(id)a3
{
  v75.receiver = self;
  v75.super_class = BKMousePointerController;
  v4 = [(BKMousePointerController *)&v75 init];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_preferencesLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v4->_configuration, a3);
    v66 = [a3 displayProvider];
    v5 = [BKCADisplayMonitor alloc];
    v6 = BKLogMousePointer();
    v7 = [(BKCADisplayMonitor *)v5 initWithDisplayProvider:v66 log:v6 filterPredicate:0];
    displayMonitor = v4->_displayMonitor;
    v4->_displayMonitor = v7;

    v9 = [(BKCADisplayMonitor *)v4->_displayMonitor addObserver:v4];
    displayMonitorObservingAssertion = v4->_displayMonitorObservingAssertion;
    v4->_displayMonitorObservingAssertion = v9;

    v11 = [a3 localDefaults];
    localDefaults = v4->_localDefaults;
    v4->_localDefaults = v11;

    v13 = [a3 clientConnectionManager];
    HIDConnectionManager = v4->_HIDConnectionManager;
    v4->_HIDConnectionManager = v13;

    v15 = [a3 touchPadManager];
    touchPadManager = v4->_touchPadManager;
    v4->_touchPadManager = v15;

    v17 = [a3 keyboardEventProcessor];
    keyboardEventProcessor = v4->_keyboardEventProcessor;
    v4->_keyboardEventProcessor = v17;

    v19 = [a3 smartCoverEventProcessor];
    smartCoverEventProcessor = v4->_smartCoverEventProcessor;
    v4->_smartCoverEventProcessor = v19;

    v21 = [(BKSmartCoverHIDEventProcessor *)v4->_smartCoverEventProcessor addSmartCoverObserver:v4];
    smartCoverObservationAssertion = v4->_smartCoverObservationAssertion;
    v4->_smartCoverObservationAssertion = v21;

    v23 = [a3 displayController];
    displayController = v4->_displayController;
    v4->_displayController = v23;

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
    [a3 mainDisplayCornerRadius];
    v35->_mainDisplayCornerRadius = v40;
    v41 = [a3 orientationManager];
    orientationManager = v35->_orientationManager;
    v35->_orientationManager = v41;

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

    v59 = [a3 analyticsReporter];
    analyticsReporter = v35->_analyticsReporter;
    v35->_analyticsReporter = v59;

    [(BKMousePointerAnalyticsReporter *)v35->_analyticsReporter setMousePointerController:v35];
    [(BKCADisplayMonitor *)v4->_displayMonitor reevaluateActiveDisplaysWithReason:@"init"];
    os_unfair_lock_lock(&v4->_lock);
    sub_100063244(v35);
    sub_10005FA48(v35, @"init");
    os_unfair_lock_unlock(&v4->_lock);
    v61 = objc_alloc_init(BKMousePointerEventStatisticsLogger);
    statisticsLogger = v35->_statisticsLogger;
    v35->_statisticsLogger = v61;

    v63 = [a3 serviceServer];
    ipcServer_do_not_access_directly = v35->_ipcServer_do_not_access_directly;
    v35->_ipcServer_do_not_access_directly = v63;

    objc_destroyWeak(&v68);
    objc_destroyWeak(&v71);

    objc_destroyWeak(&v73);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (BKMousePointerController)init
{
  v3 = [objc_opt_class() standardConfiguration];
  v4 = [(BKMousePointerController *)self initWithConfiguration:v3];

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