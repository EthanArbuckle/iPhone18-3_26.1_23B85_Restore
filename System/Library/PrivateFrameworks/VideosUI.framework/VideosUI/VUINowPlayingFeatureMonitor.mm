@interface VUINowPlayingFeatureMonitor
- (BOOL)_hasAnyActiveFeature;
- (BOOL)_isElapsedTimeWithinFeatureTimeWindow:(id)a3;
- (BOOL)_isTimerFeatureExpired:(id)a3;
- (BOOL)_isTimerTriggeredFeature:(id)a3;
- (BOOL)_shouldActivateTimeBoundFeatureInitially:(id)a3;
- (BOOL)_shouldAnimateFeature:(id)a3;
- (BOOL)mediaPlaybackManager:(id)a3 shouldEnableUIModeImplicitly:(int64_t)a4;
- (NSArray)allFeatures;
- (VUINowPlayingFeatureMonitor)init;
- (VUINowPlayingFeatureMonitorDelegate)delegate;
- (id)_activeFeature;
- (id)_activeFeatures;
- (id)_observerInfoForFeature:(id)a3 matchingTime:(double)a4;
- (id)_timeBoundFeatures;
- (id)activeFeatureForType:(unint64_t)a3;
- (id)featuresForType:(unint64_t)a3;
- (void)_activateFeature:(id)a3 ignoringCurrentActivation:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_addObservedToken:(id)a3 forFeature:(id)a4;
- (void)_addTimeObservingForFeature:(id)a3 withStartTime:(double)a4 andRestartTime:(double)a5 andHandler:(id)a6;
- (void)_cancelTimerForFeature:(id)a3;
- (void)_cleanUpEverything;
- (void)_cleanupFeature:(id)a3;
- (void)_createBoundaryObserverForFeature:(id)a3 time:(double)a4 andHandler:(id)a5;
- (void)_deactivateFeature:(id)a3 animated:(BOOL)a4;
- (void)_expireTimerFeaturesIfNeeded;
- (void)_playbackStateChangedNottificaiton:(id)a3;
- (void)_processAnyTimeBoundFeatures;
- (void)_processElapsedTime:(double)a3;
- (void)_processFeature:(id)a3;
- (void)_processLastElapsedTime;
- (void)_processTimeBoundFeature:(id)a3;
- (void)_processTimerTriggeredFeature:(id)a3;
- (void)_processUserTriggeredFeature:(id)a3 activate:(BOOL)a4 animated:(BOOL)a5;
- (void)_registerPlaybackStateChangeNotification;
- (void)_removeAllObservedTokensForFeature:(id)a3;
- (void)_removeTimeObservingForFeature:(id)a3 withStartTime:(double)a4;
- (void)_scheduleDeactivationOfTimeBoundFeature:(id)a3;
- (void)_setupTimerFeatureExpiration;
- (void)_startObservingElapsedTime;
- (void)_unregisterPlaybackStateNotification;
- (void)_updateBoundaryObserverForFeature:(id)a3 change:(id)a4;
- (void)addFeature:(id)a3;
- (void)addFeature:(id)a3 withDependencyToPreferredFeatures:(id)a4;
- (void)deactivateFeature:(id)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)enableUIMode:(int64_t)a3 enabled:(BOOL)a4;
- (void)mediaPlaybackManager:(id)a3 shouldHideUI:(BOOL)a4 animated:(BOOL)a5 animations:(id)a6 completion:(id)a7;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeFeature:(id)a3;
- (void)removeFeaturesMatching:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPlaybackManager:(id)a3;
- (void)setPlayer:(id)a3;
@end

@implementation VUINowPlayingFeatureMonitor

- (VUINowPlayingFeatureMonitor)init
{
  v19.receiver = self;
  v19.super_class = VUINowPlayingFeatureMonitor;
  v2 = [(VUINowPlayingFeatureMonitor *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_observingElapsedTime = 0;
    v4 = objc_opt_new();
    features = v3->_features;
    v3->_features = v4;

    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    featureDependencies = v3->_featureDependencies;
    v3->_featureDependencies = v6;

    v8 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    featureBoundaryInfos = v3->_featureBoundaryInfos;
    v3->_featureBoundaryInfos = v8;

    v10 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    featureTokens = v3->_featureTokens;
    v3->_featureTokens = v10;

    v12 = objc_opt_new();
    elapsedTimes = v3->_elapsedTimes;
    v3->_elapsedTimes = v12;

    v14 = [&unk_1F5E5E850 mutableCopy];
    enabledUIModes = v3->_enabledUIModes;
    v3->_enabledUIModes = v14;

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v3 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v3 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(VUINowPlayingFeatureMonitor *)self _cleanUpEverything];
  v3.receiver = self;
  v3.super_class = VUINowPlayingFeatureMonitor;
  [(VUINowPlayingFeatureMonitor *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToFeatureDidChangeState = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToActiveFeatureChangedFrom = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  player = self->_player;
  if (player != v5)
  {
    v7 = v5;
    if (player)
    {
      [(VUINowPlayingFeatureMonitor *)self _unregisterPlaybackStateNotification];
    }

    objc_storeStrong(&self->_player, a3);
    [(VUINowPlayingFeatureMonitor *)self _processAnyTimeBoundFeatures];
    v5 = v7;
    if (v7)
    {
      [(VUINowPlayingFeatureMonitor *)self _registerPlaybackStateChangeNotification];
      v5 = v7;
    }
  }
}

- (void)setPlaybackManager:(id)a3
{
  v5 = a3;
  if (self->_playbackManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_playbackManager, a3);
    [(VUITransitionalPlaybackUIManager *)self->_playbackManager setDelegate:self];
    v5 = v6;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (__FeatureStartTimeContext == a6)
  {
    [(VUINowPlayingFeatureMonitor *)self _updateBoundaryObserverForFeature:v11 change:v12];
  }

  else if (__FeatureRestartTimeContext == a6)
  {
    v14 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
    [v14 doubleValue];
    if (v15 == -9999.0)
    {
      [v14 doubleValue];
      [(VUINowPlayingFeatureMonitor *)self _removeTimeObservingForFeature:v11 withStartTime:?];
    }

    else
    {
      [(VUINowPlayingFeatureMonitor *)self _updateBoundaryObserverForFeature:v11 change:v13];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VUINowPlayingFeatureMonitor;
    [(VUINowPlayingFeatureMonitor *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (NSArray)allFeatures
{
  v2 = [(VUINowPlayingFeatureMonitor *)self features];
  v3 = [v2 allObjects];

  return v3;
}

- (void)addFeature:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(VUINowPlayingFeatureMonitor *)self features];
    v6 = [v5 containsObject:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [(VUINowPlayingFeatureMonitor *)self features];
      [v7 addObject:v4];

      [(VUINowPlayingFeatureMonitor *)self _processFeature:v4];
      v8 = VUIDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] added.", &v9, 0xCu);
      }
    }
  }
}

- (void)addFeature:(id)a3 withDependencyToPreferredFeatures:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(VUINowPlayingFeatureMonitor *)self features];
    v9 = [v8 containsObject:v6];

    if ((v9 & 1) == 0)
    {
      v10 = [(VUINowPlayingFeatureMonitor *)self features];
      [v10 addObject:v6];

      if ([v7 count])
      {
        v11 = [(VUINowPlayingFeatureMonitor *)self featureDependencies];
        [v11 setObject:v7 forKey:v6];
      }

      [(VUINowPlayingFeatureMonitor *)self _processFeature:v6];
      v12 = VUIDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] added.", &v13, 0xCu);
      }
    }
  }
}

- (id)featuresForType:(unint64_t)a3
{
  v4 = [(VUINowPlayingFeatureMonitor *)self features];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__VUINowPlayingFeatureMonitor_featuresForType___block_invoke;
  v8[3] = &__block_descriptor_40_e12_B24__0_8_B16l;
  v8[4] = a3;
  v5 = [v4 objectsPassingTest:v8];
  v6 = [v5 allObjects];

  return v6;
}

BOOL __47__VUINowPlayingFeatureMonitor_featuresForType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F5E93F10])
  {
    v4 = [v3 type] == *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)activeFeatureForType:(unint64_t)a3
{
  v4 = [(VUINowPlayingFeatureMonitor *)self features];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__VUINowPlayingFeatureMonitor_activeFeatureForType___block_invoke;
  v8[3] = &__block_descriptor_40_e12_B24__0_8_B16l;
  v8[4] = a3;
  v5 = [v4 objectsPassingTest:v8];
  v6 = [v5 anyObject];

  return v6;
}

uint64_t __52__VUINowPlayingFeatureMonitor_activeFeatureForType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 conformsToProtocol:&unk_1F5E93F10] && objc_msgSend(v5, "type") == *(a1 + 32) && objc_msgSend(v5, "isActive"))
  {
    v6 = 1;
    *a3 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeFeature:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isActive])
    {
      [v5 setAutoRemove:1];
      v6 = [(VUINowPlayingFeatureMonitor *)self featureLastRequestedUI];
      if (v6 == v5)
      {
        if ([v5 type] != 2)
        {
          v9 = [(VUINowPlayingFeatureMonitor *)self playbackManager];
          [v9 onSupplementaryUIShouldDismiss];
        }
      }

      else
      {
        [(VUINowPlayingFeatureMonitor *)self _deactivateFeature:v5 animated:[(VUINowPlayingFeatureMonitor *)self _shouldAnimateFeature:v5]];
      }
    }

    else
    {
      [(VUINowPlayingFeatureMonitor *)self _cleanupFeature:v5];
      v7 = [(VUINowPlayingFeatureMonitor *)self features];
      [v7 removeObject:v5];

      v8 = VUIDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] removed.", &v10, 0xCu);
      }
    }
  }
}

- (void)_cleanupFeature:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(VUINowPlayingFeatureMonitor *)self _cancelTimerForFeature:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VUINowPlayingFeatureMonitor *)self _isTimerFeatureExpired:v4];
      v6 = VUIDefaultLogObject();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: since timer feature: %@ has already expired, so not removing it.", &v10, 0xCu);
        }
      }

      else
      {
        if (v7)
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: timer feature: %@ has not expired, removing it.", &v10, 0xCu);
        }

        v6 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
        [v6 removeObjectForKey:v4];
      }
    }

    [(VUINowPlayingFeatureMonitor *)self _removeAllObservedTokensForFeature:v4];
    v8 = [(VUINowPlayingFeatureMonitor *)self features];
    if (![v8 containsObject:v4] || !-[VUINowPlayingFeatureMonitor _isTimeBoundFeature:](self, "_isTimeBoundFeature:", v4))
    {
      goto LABEL_15;
    }

    v9 = [v4 conformsToProtocol:&unk_1F5E605A0];

    if (v9)
    {
      v8 = v4;
      [v8 removeObserver:self forKeyPath:@"startTime"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 removeObserver:self forKeyPath:@"restartTime"];
      }

LABEL_15:
    }
  }
}

- (void)removeFeaturesMatching:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = -[VUINowPlayingFeatureMonitor featuresForType:](self, "featuresForType:", [*(*(&v21 + 1) + 8 * v9) unsignedIntegerValue]);
          if ([v10 count])
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v18;
              do
              {
                v15 = 0;
                do
                {
                  if (*v18 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  [(VUINowPlayingFeatureMonitor *)self removeFeature:*(*(&v17 + 1) + 8 * v15++)];
                }

                while (v13 != v15);
                v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
              }

              while (v13);
            }
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    v4 = v16;
  }
}

- (void)enableUIMode:(int64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(VUINowPlayingFeatureMonitor *)self enabledUIModes];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 containsObject:v8];

  if (v4)
  {
    if (v9)
    {
      return;
    }

    v11 = [(VUINowPlayingFeatureMonitor *)self enabledUIModes];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v11 addObject:v10];
  }

  else
  {
    if (!v9)
    {
      return;
    }

    v11 = [(VUINowPlayingFeatureMonitor *)self enabledUIModes];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v11 removeObject:v10];
  }
}

- (void)deactivateFeature:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v10 = v5;
    v7 = [v5 isActive];
    v6 = v10;
    if (v7)
    {
      v8 = [(VUINowPlayingFeatureMonitor *)self featureLastRequestedUI];
      if (v8 == v10)
      {
        v9 = [(VUINowPlayingFeatureMonitor *)self playbackManager];
        [v9 onSupplementaryUIShouldDismiss];
      }

      else
      {
        [VUINowPlayingFeatureMonitor _deactivateFeature:"_deactivateFeature:animated:" animated:?];
      }

      v6 = v10;
    }
  }
}

- (void)mediaPlaybackManager:(id)a3 shouldHideUI:(BOOL)a4 animated:(BOOL)a5 animations:(id)a6 completion:(id)a7
{
  v9 = a5;
  v10 = a4;
  v20 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [(VUINowPlayingFeatureMonitor *)self featureLastRequestedUI];
  v15 = v14;
  if (!v14)
  {
    if ([v20 currentUIMode])
    {
      v17 = [(VUINowPlayingFeatureMonitor *)self featuresForType:2];
      v18 = [v17 firstObject];

      if (![v18 conformsToProtocol:&unk_1F5E93F70])
      {
        v16 = 0;
LABEL_9:

        if (!v16)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v19 = v18;
      v18 = v19;
    }

    else
    {
      v18 = [(VUINowPlayingFeatureMonitor *)self featuresForType:1];
      v19 = [v18 firstObject];
    }

    v16 = v19;
    goto LABEL_9;
  }

  v16 = v14;
LABEL_10:
  if (-[VUINowPlayingFeatureMonitor _isHybridFeature:](self, "_isHybridFeature:", v16) && ![v16 activationType])
  {
    [v16 setActivationType:1];
  }

  [(VUINowPlayingFeatureMonitor *)self _processUserTriggeredFeature:v16 activate:!v10 animated:v9];
LABEL_14:
  if (v12)
  {
    v12[2](v12);
  }

  if (v13)
  {
    v13[2](v13, 1);
  }
}

- (BOOL)mediaPlaybackManager:(id)a3 shouldEnableUIModeImplicitly:(int64_t)a4
{
  v5 = [(VUINowPlayingFeatureMonitor *)self enabledUIModes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (void)_playbackStateChangedNottificaiton:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKey:*MEMORY[0x1E69D6098]];

  v5 = [MEMORY[0x1E69D5A40] playing];
  if (v7 == v5)
  {
    v6 = [(VUINowPlayingFeatureMonitor *)self observingElapsedTime];

    if (!v6)
    {
      [(VUINowPlayingFeatureMonitor *)self setObservingElapsedTime:1];
      [(VUINowPlayingFeatureMonitor *)self _startObservingElapsedTime];
    }
  }

  else
  {
  }
}

- (id)_activeFeatures
{
  v2 = [(VUINowPlayingFeatureMonitor *)self features];
  v3 = [v2 objectsPassingTest:&__block_literal_global_32];

  return v3;
}

uint64_t __46__VUINowPlayingFeatureMonitor__activeFeatures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F5E93F10])
  {
    v3 = [v2 isActive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_timeBoundFeatures
{
  v2 = [(VUINowPlayingFeatureMonitor *)self features];
  v3 = [v2 objectsPassingTest:&__block_literal_global_147];

  return v3;
}

- (id)_activeFeature
{
  v2 = [(VUINowPlayingFeatureMonitor *)self features];
  v3 = [v2 objectsPassingTest:&__block_literal_global_161];
  v4 = [v3 anyObject];

  return v4;
}

uint64_t __45__VUINowPlayingFeatureMonitor__activeFeature__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_1F5E93F10] && objc_msgSend(v4, "isActive"))
  {
    v5 = 1;
    *a3 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_hasAnyActiveFeature
{
  v2 = [(VUINowPlayingFeatureMonitor *)self _activeFeatures];
  v3 = [v2 count] != 0;

  return v3;
}

uint64_t __57__VUINowPlayingFeatureMonitor__hasActiveFeaturesInArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  if ([v5 conformsToProtocol:&unk_1F5E93F10] && objc_msgSend(v5, "isActive"))
  {
    v6 = 1;
    *a4 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_processFeature:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if ([(VUINowPlayingFeatureMonitor *)self _isTimeBoundFeature:v4])
    {
      if ([v7 conformsToProtocol:&unk_1F5E605A0])
      {
        v5 = v7;
        [v5 addObserver:self forKeyPath:@"startTime" options:3 context:__FeatureStartTimeContext];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObserver:self forKeyPath:@"restartTime" options:3 context:__FeatureRestartTimeContext];
        }
      }

      [(VUINowPlayingFeatureMonitor *)self _processTimeBoundFeature:v7];
    }

    else
    {
      v6 = [(VUINowPlayingFeatureMonitor *)self _isTimerTriggeredFeature:v7];
      v4 = v7;
      if (!v6)
      {
        goto LABEL_11;
      }

      [(VUINowPlayingFeatureMonitor *)self _processTimerTriggeredFeature:v7];
    }

    v4 = v7;
  }

LABEL_11:
}

- (BOOL)_isTimerTriggeredFeature:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_1F5E93F10])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_shouldAnimateFeature:(id)a3
{
  v4 = a3;
  v5 = -[VUINowPlayingFeatureMonitor _isUserTriggeredFeature:](self, "_isUserTriggeredFeature:", v4) || [v4 type] == 2 || objc_msgSend(v4, "type") == 1 || objc_msgSend(v4, "type") == 9 || objc_msgSend(v4, "type") == 7;

  return v5;
}

- (void)_activateFeature:(id)a3 ignoringCurrentActivation:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v19 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = v11;
  if (!v10)
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_7:
    v12[2](v12, v13);
    goto LABEL_8;
  }

  if ([v10 isActive] && !a4)
  {
    v13 = [(VUINowPlayingFeatureMonitor *)self _isTVAdvisoryFeature:v10]^ 1;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = VUIDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] activated.", &v17, 0xCu);
  }

  v15 = [(VUINowPlayingFeatureMonitor *)self delegate];
  v16 = [(VUINowPlayingFeatureMonitor *)self _activeFeature];
  if ([v16 conformsToProtocol:&unk_1F5E93F70] && objc_msgSend(v10, "conformsToProtocol:", &unk_1F5E93F70))
  {
    if (v16 != v10)
    {
      [v16 setActive:0];
      [v10 setActive:1];
      if (self->_delegateFlags.respondsToActiveFeatureChangedFrom)
      {
        [v15 featureMonitor:self activeFeatureDidChangeFrom:v16 toFeature:v10 animated:v7];
      }
    }
  }

  else
  {
    [v10 setActive:1];
    if (self->_delegateFlags.respondsToFeatureDidChangeState)
    {
      [v15 featureMonitor:self featureDidChangeState:v10 animated:v7];
    }
  }

  v13 = 1;
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_deactivateFeature:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 isActive])
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] deactivated.", &v17, 0xCu);
    }

    [v7 setActive:0];
    v9 = [(VUINowPlayingFeatureMonitor *)self featureLastRequestedUI];
    if (v9 == v7)
    {
      [(VUINowPlayingFeatureMonitor *)self setFeatureLastRequestedUI:0];
    }

    if (self->_delegateFlags.respondsToFeatureDidChangeState)
    {
      v10 = [(VUINowPlayingFeatureMonitor *)self delegate];
      [v10 featureMonitor:self featureDidChangeState:v7 animated:v4];
    }

    if ([(VUINowPlayingFeatureMonitor *)self _isTimeBoundFeature:v7])
    {
      v11 = v7;
      [v11 startTime];
      v13 = v12;
      [v11 duration];
      [(VUINowPlayingFeatureMonitor *)self _removeTimeObservingForFeature:v11 withStartTime:v13 + v14];
    }

    if ([v7 shouldAutoRemove])
    {
      [(VUINowPlayingFeatureMonitor *)self _cleanupFeature:v7];
      v15 = [(VUINowPlayingFeatureMonitor *)self features];
      [v15 removeObject:v7];

      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] removed.", &v17, 0xCu);
      }
    }
  }
}

- (void)_registerPlaybackStateChangeNotification
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69D6090];
  v4 = [(VUINowPlayingFeatureMonitor *)self player];
  [v5 addObserver:self selector:sel__playbackStateChangedNottificaiton_ name:v3 object:v4];
}

- (void)_unregisterPlaybackStateNotification
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69D6090];
  v4 = [(VUINowPlayingFeatureMonitor *)self player];
  [v5 removeObserver:self name:v3 object:v4];
}

- (BOOL)_isElapsedTimeWithinFeatureTimeWindow:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && ([(VUINowPlayingFeatureMonitor *)self player], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(VUINowPlayingFeatureMonitor *)self player];
    [v6 elapsedTime];
    v8 = v7;

    if ([(VUINowPlayingFeatureMonitor *)self _isTVAdvisoryFeature:v4])
    {
      v9 = [v4 advisoryDisabledTimeRanges];
      if ([v9 count])
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v20 + 1) + 8 * i) containsTime:{v8, v20}])
              {
                v15 = 0;
                goto LABEL_17;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v15 = 1;
LABEL_17:
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      [v4 startTime];
      v17 = v16;
      [v4 duration];
      v9 = [objc_alloc(MEMORY[0x1E69D5A68]) initWithStartTime:v17 endTime:v17 + v18];
      v15 = [v9 containsTime:v8];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_startObservingElapsedTime
{
  v3 = [(VUINowPlayingFeatureMonitor *)self player];

  if (v3)
  {
    objc_initWeak(&location, self);
    v4 = [(VUINowPlayingFeatureMonitor *)self player];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __57__VUINowPlayingFeatureMonitor__startObservingElapsedTime__block_invoke;
    v12 = &unk_1E872F880;
    objc_copyWeak(&v13, &location);
    v5 = [v4 addElapsedTimeObserver:&v9];

    v6 = [(VUINowPlayingFeatureMonitor *)self elapsedTimeObserverToken:v9];

    if (v6)
    {
      v7 = [(VUINowPlayingFeatureMonitor *)self player];
      v8 = [(VUINowPlayingFeatureMonitor *)self elapsedTimeObserverToken];
      [v7 removeElapsedTimeObserverWithToken:v8];

      [(VUINowPlayingFeatureMonitor *)self setElapsedTimeObserverToken:0];
    }

    if (v5)
    {
      [(VUINowPlayingFeatureMonitor *)self setElapsedTimeObserverToken:v5];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __57__VUINowPlayingFeatureMonitor__startObservingElapsedTime__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processElapsedTime:a2];
}

- (void)_processElapsedTime:(double)a3
{
  [(VUINowPlayingFeatureMonitor *)self lastProcessedElapsedTime];
  if (v5 != a3)
  {
    [(VUINowPlayingFeatureMonitor *)self setLastProcessedElapsedTime:a3];
    v6 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v6 addObject:v7];

    v8 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
    v9 = [v8 count];

    if (v9 == 1)
    {

      [(VUINowPlayingFeatureMonitor *)self _processLastElapsedTime];
    }
  }
}

- (void)_processLastElapsedTime
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
    v6 = [v5 lastObject];

    if (v6)
    {
      v7 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
      v8 = [v7 count] - 1;

      v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v8}];
      if ([v9 count])
      {
        v10 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
        [v10 removeObjectsAtIndexes:v9];
      }

      [v6 doubleValue];
      v12 = v11;
      v13 = [(VUINowPlayingFeatureMonitor *)self _timeBoundFeatures];
      if ([v13 count])
      {
        v51 = v9;
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v50 = v13;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v57 objects:v62 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v58;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v58 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v57 + 1) + 8 * i);
              if ([v20 type] == 7 && objc_msgSend(v20, "isActive"))
              {
                [v14 insertObject:v20 atIndex:0];
              }

              else
              {
                [v14 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v57 objects:v62 count:16];
          }

          while (v17);
        }

        v52 = v6;

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v21 = v14;
        v22 = [v21 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v54;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v54 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v53 + 1) + 8 * j);
              [v26 startTime];
              v28 = v27;
              [v26 duration];
              if (v29 == -9999.0)
              {
                v31 = 0.0;
              }

              else
              {
                [v26 duration];
                v31 = v30;
              }

              objc_opt_class();
              v32 = -9999.0;
              if (objc_opt_isKindOfClass())
              {
                [v26 restartTime];
                v32 = v33;
              }

              v34 = v28 + v31;
              v35 = [(VUINowPlayingFeatureMonitor *)self _isTVAdvisoryFeature:v26];
              if (v35)
              {
                if (v12 < v28)
                {
                  goto LABEL_42;
                }

                v36 = 0;
                v37 = v28;
              }

              else if (v12 >= v28 && v12 < v34)
              {
                if (v12 < v28)
                {
                  goto LABEL_42;
                }

                v39 = v32 != -9999.0;
                v40 = v12 >= v32;
                v36 = v40 && v39;
                if (v40 && v39)
                {
                  v37 = v32;
                }

                else
                {
                  v37 = v28;
                }
              }

              else
              {
                v36 = 0;
                v37 = v34;
              }

              v41 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v26 matchingTime:v37];
              if (v41)
              {
                v42 = v41;
                if (([v41 notifiedOfEntry] & 1) == 0)
                {
                  [v42 setNotifiedOfEntry:!v35];
                  v43 = [v42 handler];
                  (v43)[2](v43, v36);
                }

                goto LABEL_55;
              }

LABEL_42:
              if (v12 >= v28 && v12 < v34)
              {
                v42 = 0;
              }

              else
              {
                v45 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v26 matchingTime:v28];
                v46 = v45;
                if (v45 && [v45 notifiedOfEntry])
                {
                  [v46 setNotifiedOfEntry:0];
                }

                if (v32 == -9999.0)
                {
                  v42 = v46;
                }

                else
                {
                  v42 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v26 matchingTime:v32];

                  if (v42 && [v42 notifiedOfEntry])
                  {
                    [v42 setNotifiedOfEntry:0];
                  }
                }
              }

LABEL_55:
            }

            v23 = [v21 countByEnumeratingWithState:&v53 objects:v61 count:16];
          }

          while (v23);
        }

        v9 = v51;
        v6 = v52;
        v13 = v50;
      }

      v47 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
      [v47 removeObjectAtIndex:0];

      v48 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
      v49 = [v48 count];

      if (v49)
      {
        [(VUINowPlayingFeatureMonitor *)self _processLastElapsedTime];
      }
    }
  }
}

- (void)_processTimeBoundFeature:(id)a3
{
  v4 = a3;
  v5 = [(VUINowPlayingFeatureMonitor *)self player];

  if (v4 && v5)
  {
    objc_initWeak(&location, self);
    [v4 startTime];
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 restartTime];
      v9 = v8;
    }

    else
    {
      v9 = -9999.0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke;
    v10[3] = &unk_1E872F8D0;
    v11 = v4;
    objc_copyWeak(&v12, &location);
    [(VUINowPlayingFeatureMonitor *)self _addTimeObservingForFeature:v11 withStartTime:v10 andRestartTime:v7 andHandler:v9];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

void __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke(uint64_t a1, char a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Boundary time observer triggered for feature activation - %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained _shouldAnimateFeature:*(a1 + 32)];
  v8 = [WeakRetained _isElapsedTimeWithinFeatureTimeWindow:*(a1 + 32)];
  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = VUIBoolLogString();
    *buf = 138412290;
    v22 = v10;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Is elapsed time within feature time window - %@", buf, 0xCu);
  }

  if (v8)
  {
    v11 = [WeakRetained featureDependencies];
    v12 = [v11 objectForKey:*(a1 + 32)];

    v13 = VUIDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Dependent preferred features: [%@]", buf, 0xCu);
    }

    if ([v12 count] && (objc_msgSend(WeakRetained, "_hasActiveFeaturesInArray:", v12) & 1) != 0)
    {
      v14 = VUIDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Not activating this feature since there's a preferred feature already active.", buf, 2u);
      }
    }

    else
    {
      if ([WeakRetained _isHybridFeature:*(a1 + 32)])
      {
        [*(a1 + 32) setActivationType:2];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke_183;
      aBlock[3] = &unk_1E872F8A8;
      objc_copyWeak(&v18, (a1 + 40));
      v17 = *(a1 + 32);
      v19 = a2;
      v20 = v7;
      v15 = _Block_copy(aBlock);
      [WeakRetained _needsUIForFeature:*(a1 + 32)];
      v15[2](v15);

      objc_destroyWeak(&v18);
    }
  }
}

void __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke_183(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 49);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke_2;
  v6[3] = &unk_1E872E9C8;
  v6[4] = WeakRetained;
  v7 = v3;
  [WeakRetained _activateFeature:v7 ignoringCurrentActivation:v4 animated:v5 completion:v6];
}

uint64_t __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _scheduleDeactivationOfTimeBoundFeature:*(result + 40)];
  }

  return result;
}

- (BOOL)_shouldActivateTimeBoundFeatureInitially:(id)a3
{
  v3 = a3;
  v4 = [v3 type] == 4 || objc_msgSend(v3, "type") == 5 || objc_msgSend(v3, "type") == 6 || objc_msgSend(v3, "type") == 9;

  return v4;
}

- (void)_scheduleDeactivationOfTimeBoundFeature:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 startTime];
    v7 = v6;
    [v5 duration];
    v9 = v8;
    objc_initWeak(&location, self);
    v10 = [(VUINowPlayingFeatureMonitor *)self _shouldAnimateFeature:v5];
    if ([(VUINowPlayingFeatureMonitor *)self _isTVAdvisoryFeature:v5])
    {
      v11 = MEMORY[0x1E695DFF0];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__VUINowPlayingFeatureMonitor__scheduleDeactivationOfTimeBoundFeature___block_invoke;
      v22[3] = &unk_1E872F8F8;
      v12 = &v24;
      objc_copyWeak(&v24, &location);
      v13 = v5;
      v23 = v13;
      v25 = v10;
      v14 = [v11 scheduledTimerWithTimeInterval:0 repeats:v22 block:v9];
      v15 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
      v16 = [v15 objectForKey:v13];

      [v16 setOneTimeTimer:v14];
      v17 = &v23;
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__VUINowPlayingFeatureMonitor__scheduleDeactivationOfTimeBoundFeature___block_invoke_188;
      v18[3] = &unk_1E872F920;
      v12 = &v20;
      objc_copyWeak(&v20, &location);
      v19 = v5;
      v21 = v10;
      [(VUINowPlayingFeatureMonitor *)self _addTimeObservingForFeature:v19 withStartTime:v18 andRestartTime:v7 + v9 andHandler:-9999.0];
      v17 = &v19;
    }

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __71__VUINowPlayingFeatureMonitor__scheduleDeactivationOfTimeBoundFeature___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: TV advisory deactivation timer fired.", v4, 2u);
  }

  [WeakRetained deactivateFeature:*(a1 + 32) animated:*(a1 + 48)];
}

void __71__VUINowPlayingFeatureMonitor__scheduleDeactivationOfTimeBoundFeature___block_invoke_188(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Boundary time observer triggered for feature deactivation - %@", &v5, 0xCu);
  }

  [WeakRetained deactivateFeature:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)_processAnyTimeBoundFeatures
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(VUINowPlayingFeatureMonitor *)self features];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([(VUINowPlayingFeatureMonitor *)self _isTimeBoundFeature:v8])
        {
          [(VUINowPlayingFeatureMonitor *)self _processTimeBoundFeature:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_observerInfoForFeature:(id)a3 matchingTime:(double)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    v8 = [v7 objectForKey:v6];

    if ([v8 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
          v16 = [v15 objectForKey:v14];

          [v16 time];
          if (v17 == a4)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v16 = 0;
      }
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

  return v16;
}

- (void)_addTimeObservingForFeature:(id)a3 withStartTime:(double)a4 andRestartTime:(double)a5 andHandler:(id)a6
{
  v11 = a3;
  v10 = a6;
  if (v11)
  {
    if (v10)
    {
      if (a4 != -9999.0)
      {
        [(VUINowPlayingFeatureMonitor *)self _createBoundaryObserverForFeature:v11 time:v10 andHandler:a4];
        if (a5 != -9999.0)
        {
          [(VUINowPlayingFeatureMonitor *)self _createBoundaryObserverForFeature:v11 time:v10 andHandler:a5];
        }
      }
    }
  }
}

- (void)_createBoundaryObserverForFeature:(id)a3 time:(double)a4 andHandler:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v12 matchingTime:a4];
  if (!v9)
  {
    v9 = objc_opt_new();
    [v9 setTime:a4];
    [v9 setHandler:v8];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    [v9 setToken:v10];
    v11 = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
    [v11 setObject:v9 forKey:v10];

    [(VUINowPlayingFeatureMonitor *)self _addObservedToken:v10 forFeature:v12];
  }
}

- (void)_updateBoundaryObserverForFeature:(id)a3 change:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v13 = v6;
    v7 = *MEMORY[0x1E696A500];
    v8 = a4;
    v9 = [v8 objectForKey:v7];
    v10 = [v8 objectForKey:*MEMORY[0x1E696A4F0]];

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && ([v9 isEqual:v10] & 1) == 0)
    {
      [v9 doubleValue];
      v12 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v13 matchingTime:?];
      if (v12)
      {
        [v10 doubleValue];
        [v12 setTime:?];
      }
    }

    v6 = v13;
  }
}

- (void)_removeTimeObservingForFeature:(id)a3 withStartTime:(double)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6 && a4 != -9999.0)
  {
    v7 = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    v8 = [v7 objectForKey:v6];

    if ([v8 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
            v16 = [v15 objectForKey:v14];

            [v16 time];
            if (v17 == a4)
            {
              v18 = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
              [v18 removeObjectForKey:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_addObservedToken:(id)a3 forFeature:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    v10 = [v9 objectForKey:v8];

    v11 = [v10 count];
    v12 = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    if (v11)
    {
      v13 = [v10 mutableCopy];
      v14 = [v13 arrayByAddingObject:v6];
      [v12 setObject:v14 forKey:v8];
    }

    else
    {
      v15[0] = v6;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v12 setObject:v13 forKey:v8];
    }
  }
}

- (void)_removeAllObservedTokensForFeature:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    v6 = [v5 objectForKey:v4];

    if ([v6 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            v13 = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
            [v13 removeObjectForKey:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      v14 = [(VUINowPlayingFeatureMonitor *)self featureTokens];
      [v14 removeObjectForKey:v4];
    }
  }
}

- (void)_processUserTriggeredFeature:(id)a3 activate:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      if (([v8 isActive] & 1) == 0)
      {
        objc_initWeak(&location, self);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __78__VUINowPlayingFeatureMonitor__processUserTriggeredFeature_activate_animated___block_invoke;
        v10[3] = &unk_1E872F328;
        objc_copyWeak(&v12, &location);
        v11 = v9;
        [(VUINowPlayingFeatureMonitor *)self _activateFeature:v11 animated:v5 completion:v10];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(VUINowPlayingFeatureMonitor *)self _deactivateFeature:v8 animated:v5];
    }
  }
}

void __78__VUINowPlayingFeatureMonitor__processUserTriggeredFeature_activate_animated___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _isTimeBoundFeature:*(a1 + 32)];
  if (a2 && v4)
  {
    [WeakRetained _scheduleDeactivationOfTimeBoundFeature:*(a1 + 32)];
  }
}

- (void)_processTimerTriggeredFeature:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 duration];
    v6 = v5;
    v7 = [v4 repeats];
    if (v6 > 0.0)
    {
      v8 = v7;
      v9 = [(VUINowPlayingFeatureMonitor *)self featureTimers];

      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:1];
        [(VUINowPlayingFeatureMonitor *)self setFeatureTimers:v10];
      }

      objc_initWeak(&location, self);
      objc_initWeak(&from, v4);
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v26 = v6;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Scheduling a timer with interval:<%f> for feature: %@", buf, 0x16u);
      }

      v12 = MEMORY[0x1E695DFF0];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __61__VUINowPlayingFeatureMonitor__processTimerTriggeredFeature___block_invoke;
      v20 = &unk_1E872F948;
      objc_copyWeak(&v21, &from);
      objc_copyWeak(&v22, &location);
      v13 = [v12 scheduledTimerWithTimeInterval:v8 repeats:&v17 block:v6];
      v14 = objc_opt_new();
      [v14 setRepeatingTimer:{v13, v17, v18, v19, v20}];
      v15 = [MEMORY[0x1E695DF00] date];
      [v14 setStartDate:v15];

      v16 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
      [v16 setObject:v14 forKey:v4];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __61__VUINowPlayingFeatureMonitor__processTimerTriggeredFeature___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 featureTimers];
  v5 = [v4 objectForKey:WeakRetained];

  v6 = [MEMORY[0x1E695DF00] date];
  [v5 setStartDate:v6];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = WeakRetained;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Will activate timer triggered feature: %@", &v8, 0xCu);
  }

  [v3 _activateFeature:WeakRetained animated:1 completion:0];
}

- (void)_cancelTimerForFeature:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
    v8 = [v5 objectForKey:v4];

    if (v8)
    {
      v6 = [v8 repeatingTimer];
      [v6 invalidate];

      v7 = [v8 oneTimeTimer];
      [v7 invalidate];
    }
  }
}

- (BOOL)_isTimerFeatureExpired:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    LOBYTE(v9) = 0;
    goto LABEL_9;
  }

  v5 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 backgroundedDate];
  v8 = [v6 startDate];
  v9 = v8;
  if (v7)
  {
    [v7 timeIntervalSinceDate:v8];
    v11 = v10;

    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSinceDate:v7];
    v14 = v13;

    v15 = v11 + v14;
LABEL_7:
    [v4 duration];
    LOBYTE(v9) = v15 >= v19;
    goto LABEL_8;
  }

  if (v9)
  {
    v16 = [MEMORY[0x1E695DF00] date];
    v17 = [v6 startDate];
    [v16 timeIntervalSinceDate:v17];
    v15 = v18;

    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
  v20 = VUIDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = VUIBoolLogString();
    v23 = 138412546;
    v24 = v4;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: timerFeature: %@ hasExpired:<%@>", &v23, 0x16u);
  }

  return v9;
}

- (void)_setupTimerFeatureExpiration
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
    v6 = [v5 keyEnumerator];

    v7 = [v6 nextObject];
    if (v7)
    {
      v9 = v7;
      *&v8 = 138412546;
      v22 = v8;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
          v12 = [v11 objectForKey:v10];

          v13 = [MEMORY[0x1E695DF00] date];
          [v12 setBackgroundedDate:v13];

          if (([v10 isBackgroundTimer] & 1) == 0)
          {
            [v10 duration];
            v15 = v14;
            v16 = [MEMORY[0x1E695DF00] date];
            v17 = [v12 startDate];
            [v16 timeIntervalSinceDate:v17];
            v19 = v18;

            v20 = VUIDefaultLogObject();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v24 = v10;
              v25 = 2048;
              v26 = v15 - v19;
              _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: cancelling timer for feature: %@, timeRemaining:<%f>", buf, 0x16u);
            }

            [(VUINowPlayingFeatureMonitor *)self _cancelTimerForFeature:v10];
          }
        }

        v21 = [v6 nextObject];

        v9 = v21;
      }

      while (v21);
    }
  }
}

- (void)_expireTimerFeaturesIfNeeded
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
    *buf = 134217984;
    v43 = [v4 count];
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Will expire feature timers, count:<%lu>", buf, 0xCu);
  }

  v5 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
    v8 = [v7 keyEnumerator];

    v9 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    v10 = [v8 nextObject];
    if (v10)
    {
      do
      {
        v11 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
        v12 = [v11 objectForKey:v10];

        [v9 setObject:v12 forKey:v10];
        v13 = [v8 nextObject];

        v10 = v13;
      }

      while (v13);
    }

    v14 = [v9 keyEnumerator];

    v15 = [v14 nextObject];
    if (v15)
    {
      *&v16 = 138412546;
      v35 = v16;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v15;
          objc_initWeak(&location, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __59__VUINowPlayingFeatureMonitor__expireTimerFeaturesIfNeeded__block_invoke;
          aBlock[3] = &unk_1E872F970;
          objc_copyWeak(&v40, &location);
          v18 = v17;
          v39 = v18;
          v19 = _Block_copy(aBlock);
          v20 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
          v21 = [v20 objectForKey:v18];

          if ([(VUINowPlayingFeatureMonitor *)self _isTimerFeatureExpired:v18])
          {
            v22 = VUIDefaultLogObject();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v18;
              _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: activating feature after application entered foreground: %@", buf, 0xCu);
            }

            v19[2](v19, 0);
          }

          else if ([v18 isBackgroundTimer])
          {
            v23 = VUIDefaultLogObject();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v18;
              _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: background timer feature %@ did not expire while in background. Cancelling feature now that it is in the foreground", buf, 0xCu);
            }

            [(VUINowPlayingFeatureMonitor *)self _cancelTimerForFeature:v18];
          }

          else
          {
            v24 = [v21 backgroundedDate];
            v25 = [v21 startDate];
            [v24 timeIntervalSinceDate:v25];
            v27 = v26;

            [v18 duration];
            v29 = v28;
            v30 = VUIDefaultLogObject();
            v31 = v29 - v27;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v35;
              v43 = v18;
              v44 = 2048;
              v45 = v31;
              _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: timer feature %@ has not expired yet after entering to foreground. creating a one time timer with interval: %f", buf, 0x16u);
            }

            v32 = MEMORY[0x1E695DFF0];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __59__VUINowPlayingFeatureMonitor__expireTimerFeaturesIfNeeded__block_invoke_194;
            v36[3] = &unk_1E872F998;
            v37 = v19;
            v33 = [v32 scheduledTimerWithTimeInterval:0 repeats:v36 block:v31];
            [v21 setOneTimeTimer:v33];
          }

          [v21 setBackgroundedDate:{0, v35}];

          objc_destroyWeak(&v40);
          objc_destroyWeak(&location);
        }

        v34 = [v14 nextObject];

        v15 = v34;
      }

      while (v34);
    }
  }
}

void __59__VUINowPlayingFeatureMonitor__expireTimerFeaturesIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _activateFeature:*(a1 + 32) animated:1 completion:0];
  v2 = [WeakRetained featureTimers];
  [v2 removeObjectForKey:*(a1 + 32)];

  if ([*(a1 + 32) repeats])
  {
    [WeakRetained _processTimerTriggeredFeature:*(a1 + 32)];
  }
}

- (void)_cleanUpEverything
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(VUINowPlayingFeatureMonitor *)self _unregisterPlaybackStateNotification];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(VUINowPlayingFeatureMonitor *)self features];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(VUINowPlayingFeatureMonitor *)self _cleanupFeature:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
  [v9 removeAllObjects];

  [(VUINowPlayingFeatureMonitor *)self setFeatureTimers:0];
  v10 = [(VUINowPlayingFeatureMonitor *)self features];
  [v10 removeAllObjects];
}

- (VUINowPlayingFeatureMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end