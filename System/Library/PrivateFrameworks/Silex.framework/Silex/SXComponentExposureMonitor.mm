@interface SXComponentExposureMonitor
- (SXComponentExposureMonitor)initWithViewport:(id)a3 appStateMonitor:(id)a4 componentController:(id)a5 host:(id)a6;
- (void)beginExposure:(id)a3;
- (void)endExposure:(id)a3;
- (void)onExposureOf:(id)a3 traits:(unint64_t)a4 then:(id)a5 when:(id)a6;
- (void)performMonitoring;
- (void)stopTrackingExposureOfComponentView:(id)a3;
- (void)trackExposureForTracking:(id)a3;
@end

@implementation SXComponentExposureMonitor

- (SXComponentExposureMonitor)initWithViewport:(id)a3 appStateMonitor:(id)a4 componentController:(id)a5 host:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v34.receiver = self;
  v34.super_class = SXComponentExposureMonitor;
  v15 = [(SXComponentExposureMonitor *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_viewport, a3);
    objc_storeStrong(&v16->_host, a6);
    v17 = [MEMORY[0x1E695DFA8] set];
    trackingComponents = v16->_trackingComponents;
    v16->_trackingComponents = v17;

    [v11 addViewportChangeListener:v16 forOptions:26];
    objc_initWeak(&location, v16);
    if (objc_opt_respondsToSelector())
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke;
      v31[3] = &unk_1E84FEC28;
      objc_copyWeak(&v32, &location);
      [v12 performOnApplicationWindowDidBecomeBackground:v31];
      objc_destroyWeak(&v32);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke_2;
    v29[3] = &unk_1E84FEC28;
    objc_copyWeak(&v30, &location);
    [v12 performOnApplicationDidEnterBackground:v29];
    if (objc_opt_respondsToSelector())
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke_3;
      v27[3] = &unk_1E84FEC28;
      objc_copyWeak(&v28, &location);
      [v12 performOnApplicationWindowDidBecomeForeground:v27];
      objc_destroyWeak(&v28);
    }

    if (objc_opt_respondsToSelector())
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke_4;
      v25[3] = &unk_1E84FEC28;
      objc_copyWeak(&v26, &location);
      [v12 performOnApplicationWillEnterForeground:v25];
      objc_destroyWeak(&v26);
    }

    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke_5;
    v23 = &unk_1E84FEC28;
    objc_copyWeak(&v24, &location);
    [v12 performOnApplicationDidBecomeActive:&v20];
    [v13 addObserver:{v16, v20, v21, v22, v23}];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained trackingComponents];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 lastObservedVisibilityState] == 1)
        {
          v9 = objc_loadWeakRetained((a1 + 32));
          [v9 endExposure:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained trackingComponents];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 lastObservedVisibilityState] == 1)
        {
          v9 = objc_loadWeakRetained((a1 + 32));
          [v9 endExposure:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performMonitoring];
}

void __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performMonitoring];
}

void __88__SXComponentExposureMonitor_initWithViewport_appStateMonitor_componentController_host___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performMonitoring];
}

- (void)onExposureOf:(id)a3 traits:(unint64_t)a4 then:(id)a5 when:(id)a6
{
  v8 = [SXComponentExposureTracking exposureTrackingWithComponent:a3 traits:a4 exposureStateChangeBlock:a5 conditionBlock:a6];
  v7 = [(SXComponentExposureMonitor *)self trackingComponents];
  [v7 addObject:v8];

  [(SXComponentExposureMonitor *)self trackExposureForTracking:v8];
}

- (void)stopTrackingExposureOfComponentView:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(SXComponentExposureMonitor *)self trackingComponents];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 componentView];

        if (v12 == v4)
        {
          v13 = [(SXComponentExposureMonitor *)self trackingComponents];
          v14 = [v11 componentView];
          [v13 removeObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)performMonitoring
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(SXComponentExposureMonitor *)self viewport];
  v4 = [v3 appearState];

  if (v4 == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [(SXComponentExposureMonitor *)self trackingComponents];
    v6 = [v5 copy];

    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(SXComponentExposureMonitor *)self trackExposureForTracking:*(*(&v23 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = [(SXComponentExposureMonitor *)self viewport];
    v12 = [v11 appearState];

    if (v12)
    {
      return;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [(SXComponentExposureMonitor *)self trackingComponents];
    v6 = [v13 copy];

    v14 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v18 = *(*(&v19 + 1) + 8 * j);
          if ([v18 lastObservedVisibilityState] == 1)
          {
            [(SXComponentExposureMonitor *)self endExposure:v18];
          }
        }

        v15 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }
  }
}

- (void)trackExposureForTracking:(id)a3
{
  v66 = a3;
  v4 = [v66 componentView];
  v5 = [v4 superview];

  v7 = v66;
  if (!v5)
  {
    goto LABEL_27;
  }

  v8 = [v66 componentView];
  [v8 absoluteFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SXComponentExposureMonitor *)self viewport];
  [v17 dynamicBounds];
  v80.origin.x = v18;
  v80.origin.y = v19;
  v80.size.width = v20;
  v80.size.height = v21;
  v70.origin.x = v10;
  v70.origin.y = v12;
  v70.size.width = v14;
  v70.size.height = v16;
  v71 = CGRectIntersection(v70, v80);
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;

  v26 = [(SXComponentExposureMonitor *)self viewport];
  [v26 dynamicBounds];
  MinY = CGRectGetMinY(v72);
  v28 = [v66 componentView];
  [v28 absoluteFrame];
  v29 = MinY - CGRectGetMinY(v73);

  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  v30 = CGRectGetWidth(v74);
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  v31 = CGRectGetHeight(v75);
  v76.origin.x = 0.0;
  v76.origin.y = v29;
  v76.size.width = v30;
  v76.size.height = v31;
  [v66 setMinimumVisibleY:CGRectGetMinY(v76)];
  v77.origin.x = 0.0;
  v77.origin.y = v29;
  v77.size.width = v30;
  v77.size.height = v31;
  [v66 setMaximumVisibleY:CGRectGetMaxY(v77)];
  v6 = [v66 lastObservedVisibilityState];
  v7 = v66;
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      if (v6)
      {
        goto LABEL_27;
      }

      goto LABEL_7;
    }

    [v66 visibilityFactor];
    if (v33 < 0.0 || ([v66 visibilityFactor], v34 >= 0.00000011920929))
    {
      v6 = [v66 conditionBlock];
      v7 = v66;
      if (!v6)
      {
        goto LABEL_27;
      }

      v35 = v6;
      v44 = [v66 conditionBlock];
      v47 = v44[2]();
    }

    else
    {
      if (([v66 traits] & 2) == 0)
      {
LABEL_17:
        v6 = [(SXComponentExposureMonitor *)self endExposure:v66];
LABEL_26:
        v7 = v66;
        goto LABEL_27;
      }

      v35 = [(SXComponentExposureMonitor *)self viewport];
      [v35 dynamicBounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = [v66 componentView];
      [v44 absoluteFrame];
      v68.x = v45;
      v68.y = v46;
      v78.origin.x = v37;
      v78.origin.y = v39;
      v78.size.width = v41;
      v78.size.height = v43;
      v47 = CGRectContainsPoint(v78, v68);
    }

    v48 = v47;

    v7 = v66;
    if (v48)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

LABEL_7:
  v32 = [v66 conditionBlock];
  if (v32)
  {
    v28 = [v66 conditionBlock];
    if (v28[2]())
    {

      v7 = v66;
LABEL_21:
      [v7 visibilityFactor];
      if (v50 < 0.00000011920929)
      {
        v6 = [v66 traits];
        v7 = v66;
        if ((v6 & 2) == 0)
        {
          goto LABEL_27;
        }

        v51 = [(SXComponentExposureMonitor *)self viewport];
        [v51 dynamicBounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v60 = [v66 componentView];
        [v60 absoluteFrame];
        v69.x = v61;
        v69.y = v62;
        v79.origin.x = v53;
        v79.origin.y = v55;
        v79.size.width = v57;
        v79.size.height = v59;
        v63 = CGRectContainsPoint(v79, v69);

        v7 = v66;
        if (!v63)
        {
          goto LABEL_27;
        }
      }

      v64 = [(SXComponentExposureMonitor *)self host];
      v65 = [v64 active];

      v7 = v66;
      if (!v65)
      {
        goto LABEL_27;
      }

      v6 = [(SXComponentExposureMonitor *)self beginExposure:v66];
      goto LABEL_26;
    }
  }

  v49 = [v66 conditionBlock];

  if (v32)
  {
  }

  v7 = v66;
  if (!v49)
  {
    goto LABEL_21;
  }

LABEL_27:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)beginExposure:(id)a3
{
  v3 = a3;
  [v3 setLastObservedVisibilityState:1];
  v4 = [v3 exposureStateChangeBlock];

  v4[2](v4, 1, 0.0);
}

- (void)endExposure:(id)a3
{
  v6 = a3;
  v3 = [v6 exposureStateChangeBlock];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v6 lastStateChange];
  [v4 timeIntervalSinceDate:v5];
  v3[2](v3, 2);

  [v6 setLastObservedVisibilityState:2];
}

@end