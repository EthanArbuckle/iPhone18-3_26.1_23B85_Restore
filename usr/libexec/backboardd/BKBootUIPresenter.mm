@interface BKBootUIPresenter
+ (id)sharedInstance;
- (BKBootUIPresenter)initWithSystemAppSentinel:(id)a3 alternateSystemAppManager:(id)a4 firstBootDetector:(id)a5 bootUIOverlayVendor:(id)a6 renderOverlayManager:(id)a7;
- (BOOL)isShowingBootUI;
- (BOOL)sustainOverlayForReason:(id)a3;
- (NSString)description;
- (void)_queue_acquireActivityAssertionForReason:(id)a3 generation:(unint64_t)a4 continuation:(id)a5;
- (void)_queue_addOverlayForReason:(id)a3;
- (void)_queue_addUnderlay;
- (void)_queue_continueAddingOverlayForReason:(id)a3 generation:(unint64_t)a4;
- (void)_queue_removeOverlayWithAnimationSettings:(id)a3;
- (void)_queue_removeUnderlay;
- (void)_queue_setScreenOwnerPID:(int)a3;
- (void)_queue_updateOverlayForReason:(id)a3;
- (void)dealloc;
- (void)dismissOverlayWithAnimationSettings:(id)a3 requstedByPID:(int)a4;
- (void)firstBootDetectorDidFinishFirstBoot:(id)a3;
- (void)systemShellChangedWithPrimary:(id)a3;
- (void)systemShellDidFinishLaunching:(id)a3;
- (void)unsustainOverlayForReason:(id)a3;
@end

@implementation BKBootUIPresenter

- (void)_queue_removeUnderlay
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (self->_underlay)
  {
    v4 = sub_1000524BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_queue_removeUnderlay: Removing the underlay", v6, 2u);
    }

    [(BKDisplayRenderOverlayManager *)self->_renderOverlayManager removeOverlay:self->_underlay withAnimationSettings:0];
    underlay = self->_underlay;
    self->_underlay = 0;
  }
}

- (void)_queue_addUnderlay
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  v4 = +[BKSDefaults localDefaults];
  v5 = [v4 hideAppleLogoOnLaunch];

  if (v5)
  {
    v6 = sub_1000524BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "addUnderlay: Not showing the boot UI underlay because we were told to hide it", buf, 2u);
    }
  }

  else
  {
    underlay = self->_underlay;
    v8 = sub_1000524BC();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (underlay)
    {
      if (v9)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addUnderlay: Underlay already in place", v13, 2u);
      }
    }

    else
    {
      if (v9)
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "addUnderlay:  Adding the underlay", v14, 2u);
      }

      LODWORD(v10) = -1.0;
      v11 = [(BKBootUIOverlayVendor *)self->_bootUIOverlayVendor currentOverlayWithLevel:v10];
      v12 = self->_underlay;
      self->_underlay = v11;

      [(BKDisplayRenderOverlayManager *)self->_renderOverlayManager applyOverlay:self->_underlay withAnimationSettings:0];
    }
  }
}

- (void)_queue_addOverlayForReason:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  addOverlayGeneration = self->_addOverlayGeneration;
  if (addOverlayGeneration + 1 > 1)
  {
    v8 = addOverlayGeneration + 1;
  }

  else
  {
    v8 = 1;
  }

  self->_addOverlayGeneration = v8;
  v9 = +[BKSDefaults localDefaults];
  v10 = [v9 hideAppleLogoOnLaunch];

  if (v10)
  {
    v11 = sub_1000524BC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v21 = v8;
      *&v21[4] = 2114;
      *&v21[6] = v5;
      v12 = "addOverlay(%d-%{public}@): Not showing the boot UI overlay because we were told to hide it";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0x12u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (self->_systemActivityAssertion)
  {
    v11 = sub_1000524BC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v21 = v8;
      *&v21[4] = 2114;
      *&v21[6] = v5;
      v12 = "addOverlay(%d-%{public}@): Overlay pending or already in place";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (self->_overlay)
  {
    v13 = [NSString stringWithFormat:@"overlay should have been removed"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      *v21 = v14;
      *&v21[8] = 2114;
      *&v21[10] = v16;
      v22 = 2048;
      v23 = self;
      v24 = 2114;
      v25 = @"BKBootUIPresenter.m";
      v26 = 1024;
      v27 = 373;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009C7FCLL);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009C804;
  v17[3] = &unk_1000FD260;
  v17[4] = self;
  v18 = v5;
  v19 = v8;
  [(BKBootUIPresenter *)self _queue_acquireActivityAssertionForReason:v18 generation:v8 continuation:v17];

LABEL_12:
}

- (void)_queue_acquireActivityAssertionForReason:(id)a3 generation:(unint64_t)a4 continuation:(id)a5
{
  v9 = a3;
  v10 = a5;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v12 = [[SWSystemActivityAssertion alloc] initWithIdentifier:@"BKBootUIPresenter"];
  if (!v12)
  {
    v21 = [NSString stringWithFormat:@"nil activity assertion"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      *v32 = v22;
      *&v32[8] = 2114;
      *&v32[10] = v24;
      v33 = 2048;
      v34 = self;
      v35 = 2114;
      v36 = @"BKBootUIPresenter.m";
      v37 = 1024;
      v38 = 339;
      v39 = 2114;
      v40 = v21;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009CC70);
  }

  v13 = v12;
  v14 = sub_1000524BC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v32 = a4;
    *&v32[4] = 2114;
    *&v32[6] = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "addOverlay(%d-%{public}@): waiting for activity assertion", buf, 0x12u);
  }

  BSContinuousMachTimeNow();
  v16 = v15;
  objc_storeStrong(&self->_systemActivityAssertion, v13);
  systemActivityAssertion = self->_systemActivityAssertion;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009CC78;
  v25[3] = &unk_1000FD210;
  v30 = v16;
  v28 = v10;
  v29 = a4;
  v26 = v9;
  v27 = v13;
  v18 = v13;
  v19 = v10;
  v20 = v9;
  [(SWSystemActivityAssertion *)systemActivityAssertion acquireWithTimeout:v25 handler:16.0];
}

- (void)_queue_continueAddingOverlayForReason:(id)a3 generation:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  systemActivityAssertion = self->_systemActivityAssertion;
  v9 = sub_1000524BC();
  v10 = v9;
  if (systemActivityAssertion)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109378;
      v16 = v4;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "addOverlay(%d-%{public}@): Adding the overlay", &v15, 0x12u);
    }

    LODWORD(v11) = 1161523200;
    v12 = [(BKBootUIOverlayVendor *)self->_bootUIOverlayVendor currentOverlayWithLevel:v11];
    overlay = self->_overlay;
    self->_overlay = v12;

    [(BKDisplayRenderOverlay *)self->_overlay setAnimates:1];
    v14 = [(BKDisplayRenderOverlay *)self->_overlay descriptor];
    [v14 _setInterstitial:1];

    [(BKDisplayRenderOverlayManager *)self->_renderOverlayManager applyOverlay:self->_overlay withAnimationSettings:0];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 67109378;
      v16 = v4;
      v17 = 2114;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "addOverlay(%d-%{public}@): canceled adding overlay", &v15, 0x12u);
    }
  }
}

- (void)_queue_removeOverlayWithAnimationSettings:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (self->_systemActivityAssertion)
  {
    v6 = sub_1000524BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "removeOverlayWithAnimationSettings: Removing the overlay", v10, 2u);
    }

    overlay = self->_overlay;
    if (overlay)
    {
      [(BKDisplayRenderOverlayManager *)self->_renderOverlayManager removeOverlay:overlay withAnimationSettings:v4];
      v8 = self->_overlay;
      self->_overlay = 0;
    }

    [(SWSystemActivityAssertion *)self->_systemActivityAssertion invalidate];
    systemActivityAssertion = self->_systemActivityAssertion;
    self->_systemActivityAssertion = 0;
  }
}

- (void)_queue_updateOverlayForReason:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v6 = [(BKSystemShellSentinel *)self->_systemAppSentinel systemShellState];
  v7 = v6;
  if (!v6)
  {
    v48 = 0;
    v8 = 0;
    p_screenOwnerPID = &self->_screenOwnerPID;
    if (self->_screenOwnerPID > 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

LABEL_31:
    v9 = sub_1000524BC();
    v7 = v48;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v10 = "updateOverlay: No explicit screen owner";
    v11 = v9;
    v12 = 2;
    goto LABEL_33;
  }

  v8 = *(v6 + 16);
  if (*(v7 + 8) == 1)
  {
    v9 = sub_1000524BC();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 138543362;
    *v54 = v8;
    v10 = "updateOverlay: Waiting for alternate shells -- (%{public}@) is temporary screen owner";
    v11 = v9;
    v12 = 12;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    goto LABEL_34;
  }

  v48 = v7;
  p_screenOwnerPID = &self->_screenOwnerPID;
  if (self->_screenOwnerPID <= 0)
  {
    goto LABEL_31;
  }

  v14 = *(v48 + 24);
LABEL_7:
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = v14;
  v15 = [v9 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    v47 = v4;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        v20 = *p_screenOwnerPID;
        if (v20 == [v19 pid])
        {
          v28 = sub_1000524BC();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *p_screenOwnerPID;
            *buf = 67109378;
            *v54 = v29;
            *&v54[4] = 2114;
            *&v54[6] = v19;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "updateOverlay: pid:%d still exists (%{public}@)", buf, 0x12u);
          }

          v30 = v19;
          v8 = v30;
          v4 = v47;
          goto LABEL_24;
        }

        screenOwnerBundleIdentifier = self->_screenOwnerBundleIdentifier;
        if (screenOwnerBundleIdentifier)
        {
          v22 = [v19 bundleIdentifier];
          v23 = [(NSString *)screenOwnerBundleIdentifier isEqual:v22];

          if (v23)
          {
            v24 = sub_1000524BC();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *v54 = v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "updateOverlay: New instance of owner shell (%{public}@)", buf, 0xCu);
            }

            v25 = v19;
            self->_screenOwnerPID = [v25 pid];
            v26 = [v25 bundleIdentifier];
            v27 = self->_screenOwnerBundleIdentifier;
            self->_screenOwnerBundleIdentifier = v26;

            v8 = v25;
          }
        }
      }

      v16 = [v9 countByEnumeratingWithState:&v49 objects:v55 count:16];
      v4 = v47;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  v31 = self->_screenOwnerBundleIdentifier;
  v32 = [v8 bundleIdentifier];
  LOBYTE(v31) = [(NSString *)v31 isEqual:v32];

  if (v31)
  {
    v7 = v48;
  }

  else
  {
    v33 = sub_1000524BC();
    v7 = v48;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = self->_screenOwnerBundleIdentifier;
      v35 = [v8 bundleIdentifier];
      *buf = 138543618;
      *v54 = v34;
      *&v54[8] = 2114;
      *&v54[10] = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "updateOverlay: Screen owner missing (expected:%{public}@) got:%{public}@", buf, 0x16u);
    }

    self->_screenOwnerPID = -1;
    v36 = self->_screenOwnerBundleIdentifier;
    self->_screenOwnerBundleIdentifier = 0;
  }

LABEL_34:

  screenOwnerPID = self->_screenOwnerPID;
  v38 = [v8 pid];
  if (v8)
  {
    if (v7)
    {
      v39 = *(v7 + 32);
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;
    v41 = [v40 containsObject:v8];
  }

  else
  {
    v41 = 0;
  }

  if (screenOwnerPID == v38 || v41)
  {
    v42 = sub_1000524BC();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v8 pid];
      *buf = 67109632;
      *v54 = v43;
      *&v54[4] = 1024;
      *&v54[6] = screenOwnerPID == v38;
      *&v54[10] = 1024;
      *&v54[12] = v41;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "updateOverlay: pid:%d explicitlyDismissed:%{BOOL}u finishedStartup:%{BOOL}u", buf, 0x14u);
    }

    if (self->_isOverlaySustained)
    {
      v44 = v7;
      self->_dismissSustainedOverlayIfUnsustained = 1;
      v45 = sub_1000524BC();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v54 = v4;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "updateOverlay: Not dismissing because overlay has been sustained by the system app: %{public}@ ", buf, 0xCu);
      }

      v7 = v44;
    }

    else
    {
      v46 = sub_1000524BC();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v54 = v4;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "updateOverlay: Dismissing overlay: %{public}@ ", buf, 0xCu);
      }

      [(BKBootUIPresenter *)self _queue_removeOverlayWithAnimationSettings:0];
    }
  }

  else
  {
    [(BKBootUIPresenter *)self _queue_addOverlayForReason:v4];
  }
}

- (void)_queue_setScreenOwnerPID:(int)a3
{
  self->_screenOwnerPID = a3;
  [(BKSystemShellSentinel *)self->_systemAppSentinel systemShells];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 pid] == a3)
        {
          v13 = [v10 bundleIdentifier];
          v14 = [v13 copy];
          screenOwnerBundleIdentifier = self->_screenOwnerBundleIdentifier;
          self->_screenOwnerBundleIdentifier = v14;

          v12 = v5;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = BSBundleIDForPID();
  v12 = self->_screenOwnerBundleIdentifier;
  self->_screenOwnerBundleIdentifier = v11;
LABEL_11:

  v16 = sub_1000524BC();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = self->_screenOwnerBundleIdentifier;
    *buf = 67109378;
    v23 = a3;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "screen owner is now pid:%d (%{public}@)", buf, 0x12u);
  }
}

- (void)systemShellChangedWithPrimary:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009D86C;
  v7[3] = &unk_1000FD128;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)systemShellDidFinishLaunching:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009D9E0;
  v7[3] = &unk_1000FD128;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)firstBootDetectorDidFinishFirstBoot:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009DB54;
  v7[3] = &unk_1000FD128;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)unsustainOverlayForReason:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009DD04;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (BOOL)sustainOverlayForReason:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009DEFC;
  block[3] = &unk_1000FD1C8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)dismissOverlayWithAnimationSettings:(id)a3 requstedByPID:(int)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E0C4;
  block[3] = &unk_1000FD1A0;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (BOOL)isShowingBootUI
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009E294;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(BKDisplayRenderOverlay *)self->_overlay succinctDescription];
  v5 = [v3 appendObject:v4 withName:@"_overlay" skipIfNil:1];

  v6 = [(BKDisplayRenderOverlay *)self->_underlay succinctDescription];
  v7 = [v3 appendObject:v6 withName:@"_underlay" skipIfNil:1];

  v8 = [v3 build];

  return v8;
}

- (void)dealloc
{
  if (self->_systemActivityAssertion)
  {
    v5 = [NSString stringWithFormat:@"Must dismiss overlay before releasing"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v19 = v6;
      v20 = 2114;
      v21 = v8;
      v22 = 2048;
      v23 = self;
      v24 = 2114;
      v25 = @"BKBootUIPresenter.m";
      v26 = 1024;
      v27 = 105;
      v28 = 2114;
      v29 = v5;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009E518);
  }

  if (self->_overlay)
  {
    v9 = [NSString stringWithFormat:@"Must dismiss overlay before releasing"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v19 = v10;
      v20 = 2114;
      v21 = v12;
      v22 = 2048;
      v23 = self;
      v24 = 2114;
      v25 = @"BKBootUIPresenter.m";
      v26 = 1024;
      v27 = 106;
      v28 = 2114;
      v29 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009E604);
  }

  if (self->_underlay)
  {
    v13 = [NSString stringWithFormat:@"Must dismiss underlay before releasing"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      v23 = self;
      v24 = 2114;
      v25 = @"BKBootUIPresenter.m";
      v26 = 1024;
      v27 = 107;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10009E6F0);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v17.receiver = self;
  v17.super_class = BKBootUIPresenter;
  [(BKBootUIPresenter *)&v17 dealloc];
}

- (BKBootUIPresenter)initWithSystemAppSentinel:(id)a3 alternateSystemAppManager:(id)a4 firstBootDetector:(id)a5 bootUIOverlayVendor:(id)a6 renderOverlayManager:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v37.receiver = self;
  v37.super_class = BKBootUIPresenter;
  v16 = [(BKBootUIPresenter *)&v37 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_systemAppSentinel, a3);
    objc_storeStrong(&v17->_bootUIOverlayVendor, a6);
    objc_storeStrong(&v17->_renderOverlayManager, a7);
    objc_storeStrong(&v17->_firstBootDetector, a5);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    queue = v17->_queue;
    v17->_queue = SerialWithQoS;

    v17->_screenOwnerPID = -1;
    [(BKFirstBootDetector *)v17->_firstBootDetector addObserver:v17];
    v22 = [(BKSystemShellSentinel *)v17->_systemAppSentinel addSystemShellObserver:v17 reason:@"BootUIPresenter"];
    systemShellObserving = v17->_systemShellObserving;
    v17->_systemShellObserving = v22;

    v24 = +[BKSDefaults localDefaults];
    v25 = [NSString stringWithUTF8String:"hideAppleLogoOnLaunch"];
    v26 = v17->_queue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10009E960;
    v34[3] = &unk_1000FD128;
    v35 = v24;
    v27 = v17;
    v36 = v27;
    v28 = v24;
    v29 = [v28 observeDefault:v25 onQueue:v26 withBlock:v34];

    v30 = v17->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009E9BC;
    block[3] = &unk_1000FD150;
    v33 = v27;
    dispatch_sync(v30, block);
  }

  return v17;
}

+ (id)sharedInstance
{
  if (qword_100126148 != -1)
  {
    dispatch_once(&qword_100126148, &stru_1000FD100);
  }

  v3 = qword_100126140;

  return v3;
}

@end