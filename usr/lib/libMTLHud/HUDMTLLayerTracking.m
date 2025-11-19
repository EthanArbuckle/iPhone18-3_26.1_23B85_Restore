@interface HUDMTLLayerTracking
+ (id)mainTracker;
+ (unint64_t)numTrackers;
+ (void)enumerateTrackers:(id)a3;
+ (void)setMainTracker:(id)a3;
- (BOOL)_presentOrSignalDrawable:(id)a3;
- (BOOL)metal4SignalDrawable:(id)a3;
- (CAMetalLayer)layer;
- (CGRect)safeAreaInsets;
- (HUDMTLLayerTracking)initWithLayer:(id)a3 client:(id)a4 frameNumber:(unint64_t)a5;
- (id)view;
- (void)_bridgeMetrics;
- (void)_initCommon;
- (void)_snapshotDrawable:(id)a3 state:(HUDMTLLayerDrawableState *)a4;
- (void)_updateInfrequentFields;
- (void)appWillEnterForeground:(id)a3;
- (void)dealloc;
- (void)generateReport:(id)a3 forTimeInNs:(unint64_t)a4;
- (void)nextDrawable;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentDrawable:(id)a3;
- (void)resetStats;
- (void)setIsMainLayer:(BOOL)a3;
- (void)snapshotNextDrawable:(unsigned int)a3 callback:(id)a4;
@end

@implementation HUDMTLLayerTracking

+ (id)mainTracker
{
  if (_HUDMTLLayerTrackingGetTrackers_onceToken != -1)
  {
    +[HUDMTLLayerTracking mainTracker];
  }

  os_unfair_lock_lock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = qword_76C70;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isMainLayer])
        {
          os_unfair_lock_unlock(&_HUDMTLLayerTrackingGetTrackers_trackers);
          v8 = v7;

          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_unlock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  v8 = 0;
LABEL_13:

  return v8;
}

+ (void)setMainTracker:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (_HUDMTLLayerTrackingGetTrackers_onceToken != -1)
    {
      +[HUDMTLLayerTracking mainTracker];
    }

    os_unfair_lock_lock(&_HUDMTLLayerTrackingGetTrackers_trackers);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = qword_76C70;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [v9 layer];
          [v9 setIsMainLayer:v10 == v3];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    os_unfair_lock_unlock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  }
}

+ (void)enumerateTrackers:(id)a3
{
  v3 = a3;
  if (_HUDMTLLayerTrackingGetTrackers_onceToken != -1)
  {
    +[HUDMTLLayerTracking mainTracker];
  }

  os_unfair_lock_lock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  v4 = [qword_76C70 copy];
  os_unfair_lock_unlock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v3[2](v3, *(*(&v10 + 1) + 8 * i));
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (unint64_t)numTrackers
{
  if (_HUDMTLLayerTrackingGetTrackers_onceToken != -1)
  {
    +[HUDMTLLayerTracking mainTracker];
  }

  os_unfair_lock_lock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  v2 = [qword_76C70 count];
  os_unfair_lock_unlock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  return v2;
}

- (HUDMTLLayerTracking)initWithLayer:(id)a3 client:(id)a4 frameNumber:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = HUDMTLLayerTracking;
  v10 = [(HUDMTLLayerTracking *)&v15 init];
  v11 = v10;
  if (v10)
  {
    *(v10 + 104) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 8) = 0u;
    bzero(v10 + 120, 0x1688uLL);
    objc_storeWeak(v11 + 782, v8);
    objc_storeStrong(v11 + 783, a4);
    v11[5908] = objc_opt_respondsToSelector() & 1;
    *(v11 + 15) = a5;
    *(v11 + 22) = v8;
    *(v11 + 744) = 0;
    [v8 drawableSize];
    *(v11 + 8) = v12;
    [v8 drawableSize];
    *(v11 + 9) = v13;
    if (v8 && (NSSelectorFromString(@"developerHUDProperties"), (objc_opt_respondsToSelector() & 1) != 0))
    {
      v11[188] = 1;
      [v8 addObserver:v11 forKeyPath:@"developerHUDProperties" options:5 context:0];
    }

    else
    {
      v11[188] = 0;
    }

    [v11 _initCommon];
  }

  return v11;
}

- (void)_initCommon
{
  *&self->_layerState.logicalPresentTimeRecord.bucketCounts[11] = 0;
  self->_layerState.logicalPresentTimeRecord.totalNumValues = 0;
  *&self->_timebase.denom = -NAN;
  LODWORD(self->_insightReportContext.compilerStatStart.totalSyncCompileTimeMesh) = 0;
  *&self->_layerState.logicalPresentTimeRecord.valuesMinSinceBeginning = 0u;
  *&self->_nextDrawableCout = 0u;
  [(HUDMTLLayerTracking *)self _updateInfrequentFields];
  screenFPS = self->_layerState.screenFPS;
  if (*(HUDGetGlobalConfig() + 33))
  {
    v4 = *(HUDGetGlobalConfig() + 33);
    if (screenFPS <= v4)
    {
      screenFPS = v4;
    }
  }

  if (screenFPS)
  {
    v5 = screenFPS;
  }

  else
  {
    v5 = 60;
  }

  v6 = 0x3B9ACA00uLL / v5;
  HUDValueHistoryRecordInit(&self->_layerState.presentTimeRecord, 0.0, 1000000000.0, v6);
  HUDValueHistoryRecordInit(&self->_layerState.logicalFPSRecord.totalNumValues, 0.0, 1000000000.0, v6);
  HUDValueHistoryRecordInit(&self->_layerState.presentTimeRecord.valuesMaxSinceBeginning, 0.0, 1000000000.0, (2 * v6));
  HUDValueHistoryRecordInit(&self->_layerState.presentToOnGlassRecord.valuesMinSinceBeginning, 0.0, 1000.0, 15.0);
  HUDValueHistoryRecordInit(&self->_layerState.fpsRecord.averageSinceBeginning, 0.0, 1000.0, 15.0);
  [(HUDMTLLayerTracking *)self _bridgeMetrics];
  mach_timebase_info((&self->_layerState.logicalPresentTimeRecord.totalNumValues + 1));
  if (_HUDMTLLayerTrackingGetTrackers_onceToken != -1)
  {
    +[HUDMTLLayerTracking mainTracker];
  }

  os_unfair_lock_lock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  [qword_76C70 addPointer:self];
  os_unfair_lock_unlock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  *&self->_safeAreaUpdateCounter = 0;
  for (i = 745; i != 748; ++i)
  {
    v8 = *(&self->super.isa + i);
    *(&self->super.isa + i) = 0;
  }

  BYTE5(self->_layerState.logicalPresentTimeRecord.averageSinceBeginning) = 0;
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"appWillEnterForeground:" name:@"UIApplicationWillEnterForegroundNotification" object:0];
}

- (void)dealloc
{
  if (_HUDMTLLayerTrackingGetTrackers_onceToken != -1)
  {
    +[HUDMTLLayerTracking mainTracker];
  }

  os_unfair_lock_lock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  [qword_76C70 compact];
  if ([(HUDMTLLayerTracking *)self isMainLayer])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = qword_76C70;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v4)
    {
      v6 = v3;
      goto LABEL_17;
    }

    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v10 && *([*(*(&v14 + 1) + 8 * i) lastDrawableState] + 5) > v7)
        {
          v7 = *([v10 lastDrawableState] + 5);
          v11 = v10;

          v6 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);

    if (v6)
    {
      [v6 setIsMainLayer:1];
LABEL_17:
    }
  }

  os_unfair_lock_unlock(&_HUDMTLLayerTrackingGetTrackers_trackers);
  WeakRetained = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
  [WeakRetained removeObserver:self forKeyPath:@"developerHUDProperties"];

  v13.receiver = self;
  v13.super_class = HUDMTLLayerTracking;
  [(HUDMTLLayerTracking *)&v13 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  isKindOfClass = [a5 objectForKeyedSubscript:{NSKeyValueChangeNewKey, a4}];
  v8 = isKindOfClass;
  if (self->_layerState.hasDeveloperHUDProperties)
  {
    v16 = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v16;
    if (isKindOfClass)
    {
      v9 = [v16 objectForKeyedSubscript:@"mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_layerState.userEnabled = [v9 isEqualToString:@"default"];
        self->_layerState.hasUserMode = 1;
        if ([v9 isEqualToString:@"main"])
        {
          self->_layerState.userEnabled = 1;
          self->_layerState.isUserMainLayer = 1;
          WeakRetained = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
          [HUDMTLLayerTracking setMainTracker:WeakRetained];
        }

        else
        {
          self->_layerState.isUserMainLayer = 0;
        }
      }

      else
      {
        self->_layerState.hasUserMode = 0;
      }

      v11 = [v16 objectForKeyedSubscript:@"logging"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_layerState.userLoggingEnabled = [v11 isEqualToString:@"default"];
      }

      v12 = [v16 objectForKeyedSubscript:@"positionX"];
      v13 = [v16 objectForKeyedSubscript:@"positionY"];
      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_layerState.hasUserPosition = 1;
          [v12 floatValue];
          self->_layerState.userPositionX = v14;
        }
      }

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_layerState.hasUserPosition = 1;
          [v13 floatValue];
          self->_layerState.userPositionY = v15;
        }
      }

      HUDUpdateMutableConfig(v16);

      v8 = v16;
    }
  }

  _objc_release_x1(isKindOfClass, v8);
}

- (void)nextDrawable
{
  v2 = *&self->_layerState.logicalPresentTimeRecord.bucketCounts[11] + 1;
  *&self->_layerState.logicalPresentTimeRecord.bucketCounts[11] = v2;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v2, 2) >= 0x444444444444445uLL && !self->_layerState.isMainLayer)
  {
    HUDDispatchQueueAsync(&__block_literal_global_8);
  }
}

void __35__HUDMTLLayerTracking_nextDrawable__block_invoke(id a1)
{
  if (_HUDMTLLayerTrackingGetTrackers_onceToken != -1)
  {
    +[HUDMTLLayerTracking mainTracker];
  }

  v1 = +[HUDMTLLayerTracking mainTracker];
  v2 = v1;
  if (!v1)
  {
    os_unfair_lock_lock(&_HUDMTLLayerTrackingGetTrackers_trackers);
    [qword_76C70 compact];
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = qword_76C70;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (v11 && *([*(*(&v13 + 1) + 8 * i) lastDrawableState] + 5) > v7)
          {
            v7 = *([v11 lastDrawableState] + 5);
            v12 = v11;

            v8 = v12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);

      if (!v8)
      {
        goto LABEL_23;
      }

      [v8 setIsMainLayer:1];
      [v2 setIsMainLayer:0];
    }

    else
    {
      v8 = v4;
    }

LABEL_23:
    os_unfair_lock_unlock(&_HUDMTLLayerTrackingGetTrackers_trackers);
    goto LABEL_24;
  }

  if (![v1 layerState] || !*(objc_msgSend(v2, "layerState") + 71))
  {
    os_unfair_lock_lock(&_HUDMTLLayerTrackingGetTrackers_trackers);
    [qword_76C70 compact];
    v3 = HUDCurrentTimeInNs();
    if (v3 - *([v2 lastDrawableState] + 4) <= 0x3B9ACA00)
    {
      goto LABEL_23;
    }

    goto LABEL_9;
  }

LABEL_24:
}

- (void)_snapshotDrawable:(id)a3 state:(HUDMTLLayerDrawableState *)a4
{
  v40 = a3;
  os_unfair_lock_lock(&self->_layerState.logicalPresentTimeRecord.totalNumValues);
  v6 = mach_absolute_time();
  prevSnapshotTime = self->_layerState.prevSnapshotTime;
  if (prevSnapshotTime)
  {
    prevSnapshotTime = (mach_absolute_time() - self->_layerState.prevSnapshotTime) * *(&self->_layerState.logicalPresentTimeRecord.totalNumValues + 1) / LODWORD(self->_layerState.logicalPresentTimeRecord.averageSinceBeginning);
  }

  self->_layerState.prevSnapshotTime = v6;
  self->_layerState.lastDeltaNs = prevSnapshotTime;
  [v40 presentedTime];
  a4->presentedTime = (v8 * 1000000000.0);
  a4->drawableID = [v40 drawableID];
  a4->missed = 0;
  if (a4->presentedTime)
  {
    _snapshotDrawable_state__everHadPresentedTime = 1;
    heartbeatRate = self->_layerState.heartbeatRate;
    if (heartbeatRate != 0.0)
    {
      LODWORD(v9) = self->_layerState.screenFPS;
      if (heartbeatRate != v9 && *(HUDGetGlobalConfig() + 25) == 1)
      {
        a4->presentedTime = (self->_layerState.heartbeatRate * round(a4->presentedTime / self->_layerState.heartbeatRate));
      }
    }
  }

  else
  {
    if (_snapshotDrawable_state__everHadPresentedTime == 1)
    {
      a4->presentedTime = self->_layerState.prevPresentedTime;
    }

    else
    {
      v11 = HUDCurrentTimeInNs();
      v12 = _snapshotDrawable_state__everHadPresentedTime;
      a4->presentedTime = v11;
      if (v12 != 1)
      {
        goto LABEL_12;
      }
    }

    a4->missed = 1;
    ++self->_layerState.frameMisses;
  }

LABEL_12:
  v13 = HUDCurrentTimeInNs();
  prevPresentedTime = self->_layerState.prevPresentedTime;
  a4->prevPresentedTime = prevPresentedTime;
  a4->presentedCallbackTime = v13;
  if (a4->missed)
  {
    v15 = 0;
  }

  else
  {
    presentedTime = a4->presentedTime;
    v33 = presentedTime >= prevPresentedTime;
    v15 = presentedTime - prevPresentedTime;
    v17 = v15 != 0 && v33;
    if (!v33)
    {
      v15 = 0;
    }

    if (!v17)
    {
      v15 = 0;
    }
  }

  a4->presentedDeltaTime = v15;
  v18 = [v40 layer];
  [v18 contentsScale];
  *&v19 = v19;
  a4->layerContentsScale = *&v19;

  v20 = [v40 texture];
  v21 = [v20 width];
  v22 = [v40 layer];
  [v22 bounds];
  v24 = v21 / v23;
  a4->contentsScale = v24;

  v25 = [v40 texture];
  a4->drawableWidth = [v25 width];

  v26 = [v40 texture];
  a4->drawableHeight = [v26 height];

  self->_layerState.prevPresentedTime = a4->presentedTime;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * self->_layerState.frameNumber, 2) < 0x444444444444445uLL)
  {
    detachCodeWhenPresented = 0xFFFFFFFFLL;
    a4->detachCodeWhenPresented = 0xFFFFFFFFLL;
  }

  else
  {
    v27 = [v40 texture];
    [v27 iosurface];
    a4->detachCodeWhenPresented = IOSurfaceGetDetachModeCode();

    detachCodeWhenPresented = a4->detachCodeWhenPresented;
    v29 = WORD2(detachCodeWhenPresented);
    if (WORD2(detachCodeWhenPresented) == 0xFFFF)
    {
      v29 = WORD2(self->_layerState.prevDetachCodeWhenPresented);
    }

    self->_layerState.lastDrawableDetached = (LODWORD(a4->detachCodeWhenPresentScheduled) | v29) == 0;
  }

  self->_layerState.prevDetachCodeWhenPresented = detachCodeWhenPresented;
  if (!a4->missed)
  {
    presentedDeltaTime = a4->presentedDeltaTime;
    if (presentedDeltaTime - 1000001 <= 0x3B8B87BE)
    {
      HUDValueHistoryRecordAddValue(&self->_layerState.presentTimeRecord, presentedDeltaTime);
      HUDValueHistoryRecordAddValue(&self->_layerState.presentToOnGlassRecord.valuesMinSinceBeginning, round(1000000000.0 / a4->presentedDeltaTime));
      if (a4->isLogicalFrame)
      {
        v31 = a4->presentedTime;
        prevLogicalPresentedTime = self->_layerState.prevLogicalPresentedTime;
        v33 = v31 >= prevLogicalPresentedTime;
        v34 = v31 - prevLogicalPresentedTime;
        if (v34 != 0 && v33)
        {
          if (v33)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;
          HUDValueHistoryRecordAddValue(&self->_layerState.presentToOnGlassRecord.valuesMinSinceBeginning, round(1000000000.0 / v35));
          HUDValueHistoryRecordAddValue(&self->_layerState.logicalFPSRecord.totalNumValues, v36);
          v31 = a4->presentedTime;
        }

        self->_layerState.prevLogicalPresentedTime = v31;
      }
    }
  }

  v37 = a4->presentedTime;
  presentDrawableTime = a4->presentDrawableTime;
  v17 = v37 > presentDrawableTime;
  v39 = v37 - presentDrawableTime;
  if (v17 && v39 <= 0xBEBC1FF)
  {
    HUDValueHistoryRecordAddValue(&self->_layerState.presentTimeRecord.valuesMaxSinceBeginning, v39);
  }

  os_unfair_lock_unlock(&self->_layerState.logicalPresentTimeRecord.totalNumValues);
}

- (void)_updateInfrequentFields
{
  if (BYTE4(self->_layerState.logicalPresentTimeRecord.averageSinceBeginning) == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
    v4 = [WeakRetained currentDisplay];

    if (v4)
    {
      [v4 refreshRate];
      if (v5 > 0.0)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v6 = [v4 availableModes];
        v7 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v10 = *v41;
          v11 = 1000;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v41 != v10)
              {
                objc_enumerationMutation(v6);
              }

              v13 = *(*(&v40 + 1) + 8 * i);
              [v13 refreshRate];
              *&v14 = v14;
              v15 = vcvtas_u32_f32(*&v14);
              if (v9 <= v15)
              {
                v9 = v15;
              }

              [v13 refreshRate];
              *&v16 = v16;
              v17 = vcvtas_u32_f32(*&v16);
              if (v11 >= v17)
              {
                v11 = v17;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v8);
        }

        else
        {
          v9 = 0;
          v11 = 1000;
        }

        [v4 refreshRate];
        self->_layerState.screenFPS = (1.0 / v36);
        [v4 heartbeatRate];
        self->_layerState.heartbeatRate = v37;
        if (v9)
        {
          self->_layerState.screenMinRefreshRate = v11;
          self->_layerState.screenMaxRefreshRate = v9;
        }

        else
        {
          [v4 refreshRate];
          self->_layerState.screenMinRefreshRate = v38;
          [v4 refreshRate];
          self->_layerState.screenMaxRefreshRate = v39;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v18 = NSClassFromString(@"UIScreen");
  if (v18)
  {
    v19 = ([(objc_class *)v18 methodForSelector:"mainScreen"])(v18, "mainScreen");
    v20 = ([v19 methodForSelector:"maximumFramesPerSecond"])(v19, "maximumFramesPerSecond");
    self->_layerState.screenMaxRefreshRate = v20;
    self->_layerState.screenFPS = v20;
    self->_layerState.screenMinRefreshRate = v20;
    self->_layerState.heartbeatRate = 0.0;
  }

LABEL_19:
  v21 = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
  self->_layerState.pixelFormat = [v21 pixelFormat];

  self->_layerState.wantsExtendedDynamicRangeContent = 0;
  v22 = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
    self->_layerState.wantsExtendedDynamicRangeContent = [v24 wantsExtendedDynamicRangeContent];
  }

  if ([(HUDMTLLayerTracking *)self isMainLayer])
  {
    v25 = HUDGetGlobalConfig();
    if ((v25[11] & 1) == 0)
    {
      drawableWidth = self->_lastDrawableState.drawableWidth;
      if (drawableWidth)
      {
        v27 = *(v25 + 11);
        v28 = *(v25 + 28);
        if ((v27 * drawableWidth) < v28)
        {
          if (v27 < (v28 / drawableWidth))
          {
            v27 = v28 / drawableWidth;
          }

          *(v25 + 11) = v27;
        }
      }
    }

    v29 = +[_CADeveloperHUDProperties instance];
    screenFPS = self->_layerState.screenFPS;
    v31 = [v29 getMetric:@"com.apple.hud-stat.screen-fps"];
    [v31 setIntValue:screenFPS];

    screenMinRefreshRate = self->_layerState.screenMinRefreshRate;
    v33 = [v29 getMetric:@"com.apple.hud-stat.screen-refresh-rate-low"];
    [v33 setIntValue:screenMinRefreshRate];

    screenMaxRefreshRate = self->_layerState.screenMaxRefreshRate;
    v35 = [v29 getMetric:@"com.apple.hud-stat.screen-refresh-rate-high"];
    [v35 setIntValue:screenMaxRefreshRate];
  }
}

- (BOOL)_presentOrSignalDrawable:(id)a3
{
  v4 = a3;
  v5 = HUDGetGlobalConfig();
  objc_initWeak(&location, self);
  v27 = 0;
  v28 = &v27;
  v29 = 0x9010000000;
  v36 = 0u;
  v37 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  BYTE8(v37) = self->_layerState.lastDrawableDetached;
  frameNumber = self->_layerState.frameNumber;
  v30 = &unk_5D621;
  *(&v31 + 1) = frameNumber;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  CurrentFrame = HUDGPUTimeTrackerGetCurrentFrame(GlobalInstance);
  v9 = v28;
  v28[6] = CurrentFrame;
  v9[12] = self->_layerState.lastDeltaNs;
  v10 = HUDCurrentTimeInNs();
  v11 = v28;
  v28[15] = v10;
  *(v11 + 138) = 1;
  if (self->_layerState.isMainLayer)
  {
    v12 = *&self->_CAMetalLayerHasCurrentDisplay;
    v14 = v12 == 0x7FFFFFFF || v12 == 1;
    *(v11 + 138) = v14;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __48__HUDMTLLayerTracking__presentOrSignalDrawable___block_invoke;
  v25[3] = &unk_69E48;
  objc_copyWeak(&v26, &location);
  v25[4] = &v27;
  [v4 addPresentScheduledHandler:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __48__HUDMTLLayerTracking__presentOrSignalDrawable___block_invoke_2;
  v23[3] = &unk_69E98;
  objc_copyWeak(&v24, &location);
  v23[4] = self;
  v23[5] = &v27;
  [v4 addPresentedHandler:v23];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  _Block_object_dispose(&v27, 8);
  if (self->_layerState.isMainLayer && (v5[4] & 1) == 0)
  {
    if (*(v5 + 13) == 1)
    {
      *(v5 + 13) = 0;
      *&self->_CAMetalLayerHasCurrentDisplay = 0;
LABEL_14:
      v16 = HUDGPUTimeTrackerGetGlobalInstance();
      HUDGPUTimeTrackerMarkFrameBoundary(v16);
      goto LABEL_15;
    }

    v15 = *&self->_CAMetalLayerHasCurrentDisplay;
    if (v15 == 0x7FFFFFFF)
    {
      goto LABEL_14;
    }

    *&self->_CAMetalLayerHasCurrentDisplay = v15 + 1;
    if (v15 >= 9)
    {
      *&self->_CAMetalLayerHasCurrentDisplay = 0x7FFFFFFF;
      [(HUDMTLLayerTracking *)self resetStats];
      v20 = +[_CADeveloperHUDProperties instance];
      [v20 metalFXFrameInterpolatorDisable];
    }
  }

LABEL_15:
  v17 = [self->_insightReportContext.compilerStatStart.totalSyncCompileTimeCompute layerTracking:self presentDrawable:v4];
  ++self->_layerState.frameNumber;
  v18 = HUDGPUTimeTrackerGetGlobalInstance();
  self->_layerState.logicalFrameNumber = HUDGPUTimeTrackerGetCurrentFrame(v18);
  if (HUDCurrentTimeInNs() - *&self->_cachedSafeArea.origin.x >= 0x3B9ACA01)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __48__HUDMTLLayerTracking__presentOrSignalDrawable___block_invoke_4;
    v21[3] = &unk_69EC0;
    objc_copyWeak(&v22, &location);
    v21[4] = self;
    HUDDispatchQueueAsync(v21);
    *&self->_cachedSafeArea.origin.x = HUDCurrentTimeInNs();
    objc_destroyWeak(&v22);
  }

  HUDInternalPerfMetricFrameBegin();
  objc_destroyWeak(&location);

  return v17;
}

void __48__HUDMTLLayerTracking__presentOrSignalDrawable___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 782);

    if (v5)
    {
      v6 = [v8 texture];
      [v6 iosurface];
      DetachModeCode = IOSurfaceGetDetachModeCode();

      *(*(*(a1 + 32) + 8) + 104) = DetachModeCode;
    }
  }
}

void __48__HUDMTLLayerTracking__presentOrSignalDrawable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 782);

    if (v6)
    {
      [v5 _snapshotDrawable:v3 state:*(*(a1 + 40) + 8) + 32];
      v7 = *(*(a1 + 40) + 8);
      v8 = v7[7];
      v9 = v7[8];
      v10 = v7[6];
      *(v5 + 7) = v7[5];
      *(v5 + 13) = v9;
      *(v5 + 11) = v8;
      *(v5 + 9) = v10;
      v11 = v7[2];
      v12 = v7[3];
      *(v5 + 5) = v7[4];
      *(v5 + 3) = v12;
      *(v5 + 1) = v11;
      if (*(v5 + 190) && !*(HUDGetGlobalConfig() + 37))
      {
        GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
        HUDGPUTimeTrackerFramePresented(GlobalInstance, *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 64));
      }

      [v5[783] layerTracking:v5 drawablePresented:v3];
      v14 = *(*(*(a1 + 40) + 8) + 88);
      objc_initWeak(&location, v5);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __48__HUDMTLLayerTracking__presentOrSignalDrawable___block_invoke_3;
      v15[3] = &unk_69E70;
      objc_copyWeak(v16, &location);
      v15[4] = *(a1 + 32);
      v16[1] = v14;
      HUDDispatchQueueAsync(v15);
      objc_destroyWeak(v16);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __48__HUDMTLLayerTracking__presentOrSignalDrawable___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 782);

    if (v3)
    {
      v5 = *(v10 + 1562);
      switch(v5)
      {
        case 3:
          HUDInsightReportGenerate((v10 + 749), *(a1 + 32), v4);
          v6 = v10;
          v7 = 0;
          break;
        case 2:
          v8 = HUDInsightReportHeartbeat(v10 + 749, *(a1 + 32), *(a1 + 48));
          v6 = v10;
          if (!v8)
          {
            goto LABEL_11;
          }

          v7 = 3;
          break;
        case 1:
          HUDInsightReportStart((v10 + 749), *(a1 + 32));
          v6 = v10;
          v7 = 2;
          break;
        default:
          goto LABEL_11;
      }

      *(v6 + 1562) = v7;
    }
  }

LABEL_11:

  return _objc_release_x3();
}

void __48__HUDMTLLayerTracking__presentOrSignalDrawable___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 782);

    WeakRetained = v4;
    if (v3)
    {
      [*(a1 + 32) _updateInfrequentFields];
      WeakRetained = v4;
    }
  }
}

- (void)presentDrawable:(id)a3
{
  if ((BYTE5(self->_layerState.logicalPresentTimeRecord.averageSinceBeginning) & 1) == 0)
  {
    [(HUDMTLLayerTracking *)self _presentOrSignalDrawable:a3];
  }
}

- (BOOL)metal4SignalDrawable:(id)a3
{
  v4 = a3;
  BYTE5(self->_layerState.logicalPresentTimeRecord.averageSinceBeginning) = 1;
  if (!self->_insightReportContext.frameIntervals)
  {
    WeakRetained = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
    v6 = [WeakRetained device];
    v7 = [v6 newSharedEvent];
    frameIntervals = self->_insightReportContext.frameIntervals;
    self->_insightReportContext.frameIntervals = v7;

    self->_insightReportContext.frameIntervalsWritingOffset = 0;
  }

  v9 = [(HUDMTLLayerTracking *)self _presentOrSignalDrawable:v4];
  self->_insightReportContext.frameIntervalsWritingOffset += 2;

  return v9;
}

- (void)setIsMainLayer:(BOOL)a3
{
  if (self->_layerState.isMainLayer != a3)
  {
    self->_layerState.isMainLayer = a3;
    if (self->_layerState.isUserMainLayer && !a3)
    {
      self->_layerState.isUserMainLayer = 0;
    }

    if (a3)
    {
      [(HUDMTLLayerTracking *)self resetStats];
      GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
      HUDGPUTimeTrackerReset(GlobalInstance);
      v5 = HUDGetGlobalConfig();
      if ((v5[11] & 1) == 0)
      {
        v6 = v5;
        v7 = [*(v5 + 21) objectForKeyedSubscript:@"MTL_HUD_SCALE"];
        [v7 floatValue];
        *(v6 + 11) = v8;
      }

      [(HUDMTLLayerTracking *)self _bridgeMetrics];
    }
  }
}

- (void)_bridgeMetrics
{
  v23 = xmmword_69F00;
  v24 = unk_69F10;
  v25 = 30;
  v21 = *off_69EE0;
  v22 = *&off_69EF0;
  v3 = +[_CADeveloperHUDProperties instance];
  v4 = [v3 addBridgedMetric:&v21 record:&self->_layerState.presentTimeRecord];

  v5 = *(&v21 + 1);
  *(&v21 + 1) = @"com.apple.hud-stat.present-delay";

  v6 = v21;
  *&v23 = 0x10000;
  *&v21 = @"Present Delay";

  v7 = +[_CADeveloperHUDProperties instance];
  v8 = [v7 addBridgedMetric:&v21 record:&self->_layerState.presentTimeRecord.valuesMaxSinceBeginning];

  v9 = *(&v21 + 1);
  *(&v21 + 1) = @"com.apple.hud-stat.fps";

  v10 = v21;
  *&v23 = 16;
  *&v21 = @"FPS";

  HIDWORD(v24) = 0;
  v11 = +[_CADeveloperHUDProperties instance];
  v12 = [v11 addBridgedMetric:&v21 record:&self->_layerState.presentToOnGlassRecord.valuesMinSinceBeginning];

  v13 = *(&v21 + 1);
  *(&v21 + 1) = @"com.apple.hud-stat.logical-fps";

  v14 = v21;
  *&v23 = 16;
  *&v21 = @"Logical FPS";

  HIDWORD(v24) = 0;
  v15 = +[_CADeveloperHUDProperties instance];
  v16 = [v15 addBridgedMetric:&v21 record:&self->_layerState.fpsRecord.averageSinceBeginning];

  v17 = *(&v21 + 1);
  *(&v21 + 1) = @"com.apple.hud-stat.logical-frame-interval";

  v18 = v21;
  *&v23 = 32;
  *&v21 = @"Logical Frame Interval";

  HIDWORD(v24) = 2;
  v19 = +[_CADeveloperHUDProperties instance];
  v20 = [v19 addBridgedMetric:&v21 record:&self->_layerState.logicalFPSRecord.totalNumValues];
}

- (void)resetStats
{
  self->_layerState.frameMisses = 0;
  HUDValueHistoryReset(&self->_layerState.presentTimeRecord);
  HUDValueHistoryReset(&self->_layerState.presentTimeRecord.valuesMaxSinceBeginning);
  HUDValueHistoryReset(&self->_layerState.presentToOnGlassRecord.valuesMinSinceBeginning);
  HUDValueHistoryReset(&self->_layerState.fpsRecord.averageSinceBeginning);

  HUDValueHistoryReset(&self->_layerState.logicalFPSRecord.totalNumValues);
}

- (void)snapshotNextDrawable:(unsigned int)a3 callback:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = *(&self->_cachedSafeArea.origin.y + *&self->_safeAreaUpdateCounter);
    v8 = v7;
    v9 = ((self->_lastDrawableState.drawableHeight / self->_lastDrawableState.drawableWidth) * a3);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v21[3] = *&self->_safeAreaUpdateCounter;
    if (v7)
    {
      v10 = a3;
      if ([v7 width] == a3 && objc_msgSend(v8, "height") == v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = a3;
    }

    v11 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:v10 height:v9 mipmapped:0];
    [v11 setUsage:{objc_msgSend(v11, "usage") | 4}];
    [v11 setResourceOptions:0];
    WeakRetained = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
    v13 = [WeakRetained device];
    v14 = [v13 newTextureWithDescriptor:v11];

    objc_storeStrong(&self->_cachedSafeArea.origin.y + *&self->_safeAreaUpdateCounter, v14);
    v8 = v14;
    if (!v14)
    {
LABEL_9:
      *&self->_safeAreaUpdateCounter = (*&self->_safeAreaUpdateCounter + 1) % 3uLL;
      _Block_object_dispose(v21, 8);

      goto LABEL_10;
    }

LABEL_8:
    objc_initWeak(&location, self);
    totalSyncCompileTimeCompute = self->_insightReportContext.compilerStatStart.totalSyncCompileTimeCompute;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __53__HUDMTLLayerTracking_snapshotNextDrawable_callback___block_invoke;
    v16[3] = &unk_69F30;
    objc_copyWeak(&v19, &location);
    v18 = v21;
    v17 = v6;
    [totalSyncCompileTimeCompute layerTracking:self setSnapshotTexture:v8 callback:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

LABEL_10:
}

void __53__HUDMTLLayerTracking_snapshotNextDrawable_callback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = &WeakRetained[8 * *(*(*(a1 + 40) + 8) + 24)];
    v4 = *(v3 + 745);
    *(v3 + 745) = 0;
    v5 = WeakRetained;

    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

- (id)view
{
  v3 = [(HUDMTLLayerTracking *)self _viewClass];
  WeakRetained = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
  v5 = [WeakRetained delegate];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = WeakRetained == 0;
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    do
    {
      v8 = WeakRetained;
      WeakRetained = [WeakRetained superlayer];

      v7 = [WeakRetained delegate];
    }

    while (!v7 && WeakRetained);
  }

  if (v3 && v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);
    v10 = [v9 delegate];
  }

  return v10;
}

- (CGRect)safeAreaInsets
{
  denom = self->_timebase.denom;
  self->_timebase.denom = denom + 1;
  if (denom)
  {
    self->_timebase.denom = 0;
    v8 = [(HUDMTLLayerTracking *)self view];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 methodForSelector:"safeAreaInsets"];
      objc_initWeak(&location, self);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __37__HUDMTLLayerTracking_safeAreaInsets__block_invoke;
      block[3] = &unk_69F58;
      objc_copyWeak(v17, &location);
      v17[1] = v10;
      v16 = v9;
      v17[2] = "safeAreaInsets";
      dispatch_async(&_dispatch_main_q, block);
      valuesMinSinceBeginning = self->_layerState.logicalPresentTimeRecord.valuesMinSinceBeginning;
      valuesMaxSinceBeginning = self->_layerState.logicalPresentTimeRecord.valuesMaxSinceBeginning;
      nextDrawableCout = self->_nextDrawableCout;
      v7 = *&self->_lock._os_unfair_lock_opaque;

      objc_destroyWeak(v17);
      objc_destroyWeak(&location);
    }

    else
    {
      valuesMinSinceBeginning = 0.0;
      valuesMaxSinceBeginning = 0.0;
      *&nextDrawableCout = 0.0;
      v7 = 0.0;
    }
  }

  else
  {
    valuesMinSinceBeginning = self->_layerState.logicalPresentTimeRecord.valuesMinSinceBeginning;
    valuesMaxSinceBeginning = self->_layerState.logicalPresentTimeRecord.valuesMaxSinceBeginning;
    nextDrawableCout = self->_nextDrawableCout;
    v7 = *&self->_lock._os_unfair_lock_opaque;
  }

  v11 = valuesMinSinceBeginning;
  v12 = valuesMaxSinceBeginning;
  v13 = *&nextDrawableCout;
  v14 = v7;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void __37__HUDMTLLayerTracking_safeAreaInsets__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = (*(a1 + 48))(*(a1 + 32), *(a1 + 56));
    WeakRetained = v7;
    *(v7 + 739) = v4;
    *(v7 + 740) = v3;
    *(v7 + 741) = v5;
    *(v7 + 742) = v6;
  }
}

- (void)generateReport:(id)a3 forTimeInNs:(unint64_t)a4
{
  obj = a3;
  if (![(HUDMTLLayerTracking *)self isGeneratingReport])
  {
    v6 = obj;
    if (!obj)
    {
      v7 = +[_CADeveloperHUDProperties instance];
      v8 = [v7 reportOutputURL];

      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = +[_CADeveloperHUDProperties instance];
      v10 = [v9 reportOutputURL];
      obja = [NSURL fileURLWithPath:v10];

      v6 = obja;
      if (!obja)
      {
LABEL_5:
        v11 = objc_opt_new();
        v12 = +[NSLocale currentLocale];
        [v11 setLocale:v12];

        [v11 setDateFormat:@"yyyy_MM_dd_HH_mm"];
        v13 = +[NSDate date];
        v14 = [v11 stringFromDate:v13];

        v15 = NSTemporaryDirectory();
        v16 = +[_CADeveloperHUDProperties instance];
        v17 = [v16 progName];
        v18 = [NSString stringWithFormat:@"libMTLHud_%@_%@_%llus.html", v17, v14, a4 / 0x3B9ACA00];
        v19 = [v15 stringByAppendingPathComponent:v18];

        objb = [NSURL fileURLWithPath:v19];

        v6 = objb;
      }
    }

    LODWORD(self->_insightReportContext.compilerStatStart.totalSyncCompileTimeMesh) = 1;
    obj = v6;
    objc_storeStrong(&self->_lastInfrequentFieldUpdateTime, v6);
    self->_insightReportContext.startFrameNumber = a4;
  }
}

- (void)appWillEnterForeground:(id)a3
{
  if ([(HUDMTLLayerTracking *)self isMainLayer])
  {

    HUDUpdateMutableConfig(0);
  }
}

- (CAMetalLayer)layer
{
  WeakRetained = objc_loadWeakRetained(&self->_insightReportContext.compilerStatStart.totalSyncCompileTimeObject);

  return WeakRetained;
}

@end