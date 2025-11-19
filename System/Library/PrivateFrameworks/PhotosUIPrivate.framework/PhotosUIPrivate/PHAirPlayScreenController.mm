@interface PHAirPlayScreenController
+ (PHAirPlayScreenController)sharedInstance;
- (BOOL)_shouldIgnoreScreen:(id)a3;
- (BOOL)_shouldUpdateSecondDisplayModeWithCurrentContent;
- (BOOL)isContentProviderRegistered:(id)a3;
- (BOOL)isDisplayingContent;
- (NSString)debugDescription;
- (PHAirPlayScreenController)init;
- (id)_currentContent;
- (id)_findAvailableScreen;
- (id)_screenAvailabilityName;
- (int64_t)routeUnavailableReason;
- (unint64_t)routeAvailability;
- (unint64_t)screenAvailability;
- (void)_cacheDisplayedContentIfNeededForUnregisteringProvider:(id)a3;
- (void)_handleSettingHighResolutionContent:(BOOL)a3 forRootController:(id)a4 content:(id)a5;
- (void)_notifyWillRequestAirPlayScreenFromSource:(int64_t)a3;
- (void)_outputDeviceDidChange:(id)a3;
- (void)_recordSessionBeganWithScreen:(id)a3;
- (void)_recordSessionEnded;
- (void)_sceneDidActivate:(id)a3;
- (void)_sceneWillDeactivate:(id)a3;
- (void)_switchModeForHighResolutionContent:(BOOL)a3 completionHandler:(id)a4;
- (void)_updateScreenContentWithShouldTryToFindAvailableScreen:(BOOL)a3;
- (void)_updateSecondDisplayModeWithCurrentContent;
- (void)registerContentProvider:(id)a3;
- (void)registerRouteObserver:(id)a3;
- (void)screenDetector:(id)a3 didDetectScreen:(id)a4;
- (void)screenDetector:(id)a3 didLoseScreen:(id)a4;
- (void)unregisterContentProvider:(id)a3;
- (void)unregisterRouteObserver:(id)a3;
@end

@implementation PHAirPlayScreenController

- (NSString)debugDescription
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(PHAirPlayScreenController *)self description];
  v5 = [v3 stringWithString:v4];

  v6 = [(PHAirPlayScreenController *)self _screenAvailabilityName];
  [v5 appendFormat:@"\n\tScreen availability: %@", v6];

  v7 = [(PHAirPlayScreenController *)self isDisplayingContent];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  [v5 appendFormat:@"\n\tDisplaying content: %@", v8];
  v9 = [(PHAirPlayScreenController *)self _currentScreen];
  v10 = [(PHAirPlayScreenController *)self _screenDetector];
  v11 = [v10 availableScreens];

  v12 = [(PHAirPlayScreenController *)self _rootViewController];
  v13 = [(PHAirPlayScreenController *)self _currentContent];
  v14 = [(PHAirPlayScreenController *)self _contentRegistry];
  v32 = [v14 currentContentProvider];

  v31 = +[PUAirPlaySettings sharedInstance];
  [v5 appendString:@"\n\nScreens"];
  v15 = [v9 debugDescription];
  [v5 appendFormat:@"\nCurrent screen: %@", v15];

  [v5 appendFormat:@"\nOther screens:"];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if (*(*(&v33 + 1) + 8 * i) != v9)
        {
          [v5 appendFormat:@"\n\t%@", *(*(&v33 + 1) + 8 * i)];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v18);
  }

  [v5 appendString:@"\n\nRoot view controller"];
  [v5 appendFormat:@"\n\tSystem: %@", v12];
  v21 = [v9 rootViewController];
  [v5 appendFormat:@"\n\tScreen root: %@", v21];

  v22 = [v9 rootViewController];
  if (v12 == v22)
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v5 appendFormat:@"\n\tScreen and system roots match: %@", v23];

  [v5 appendString:@"\n\nContent"];
  [v5 appendFormat:@"\n\tCached: %@", v13];
  [v5 appendFormat:@"\n\tProvider: %@", v32];
  v24 = [v12 childViewController];
  [v5 appendFormat:@"\n\tRoot content: %@", v24];

  v25 = [v12 childViewController];
  if (v13 == v25)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v5 appendFormat:@"\n\tCached and root contents match: %@", v26];

  v27 = [v32 contentViewControllerForAirPlayController:self];
  if (v13 == v27)
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  [v5 appendFormat:@"\n\tCached and provider contents match: %@", v28];

  v29 = [v31 debugDescription];
  [v5 appendFormat:@"\n\nSettings: %@", v29];

  return v5;
}

- (id)_screenAvailabilityName
{
  v2 = [(PHAirPlayScreenController *)self screenAvailability];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7B73E08[v2];
  }
}

- (void)_sceneDidActivate:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 session];
  v5 = [v4 role];
  if ([v5 isEqualToString:*MEMORY[0x1E69DE808]])
  {
    v6 = [(PHAirPlayScreenController *)self _shouldUpdateSecondDisplayModeWithCurrentContent];

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = [(PHAirPlayScreenController *)self _currentContent];
    [(PHAirPlayScreenController *)self _switchModeForHighResolutionContent:v4 != 0 completionHandler:0];
  }

  else
  {
  }

LABEL_6:
}

- (void)_sceneWillDeactivate:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 session];
  v5 = [v4 role];
  if ([v5 isEqualToString:*MEMORY[0x1E69DE808]])
  {
    v6 = [(PHAirPlayScreenController *)self _shouldUpdateSecondDisplayModeWithCurrentContent];

    if (v6)
    {
      [(PHAirPlayScreenController *)self _switchModeForHighResolutionContent:0 completionHandler:0];
    }
  }

  else
  {
  }
}

- (void)_outputDeviceDidChange:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = PLAirPlayGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PHAirPlayScreenController *)self outputContext];
    v6 = [v5 outputDevice];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "AVOutputDevice did change: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PHAirPlayScreenController__outputDeviceDidChange___block_invoke;
  block[3] = &unk_1E7B80638;
  objc_copyWeak(&v8, buf);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __52__PHAirPlayScreenController__outputDeviceDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSecondDisplayModeWithCurrentContent];
}

- (void)_recordSessionEnded
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(PHAirPlayScreenController *)self _lastScreenRequestOrigin];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v3 > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E7B73DF0[v3];
  }

  v6 = [v4 initWithFormat:@"com.apple.photos.CPAnalytics.airPlayedFrom%@", v5];
  v7 = MEMORY[0x1E6991F28];
  v8 = [(PHAirPlayScreenController *)self airPlaySessionSignpost];
  v9 = *MEMORY[0x1E6991C98];
  v11 = *MEMORY[0x1E6991E40];
  v12[0] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v7 endSignpost:v8 forEventName:v9 withPayload:v10];

  [(PHAirPlayScreenController *)self setAirPlaySessionSignpost:0];
}

- (void)_recordSessionBeganWithScreen:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(PHAirPlayScreenController *)self _lastScreenRequestDate];
  if (!v6 || [v4 type] == 2 || (objc_msgSend(v5, "timeIntervalSinceDate:", v6), v7 >= 30.0))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(PHAirPlayScreenController *)self _lastScreenRequestOrigin];
  }

  [(PHAirPlayScreenController *)self _setLastScreenRequestDate:0];
  [(PHAirPlayScreenController *)self _setLastScreenRequestOrigin:v8];
  if ([(PHAirPlayScreenController *)self airPlaySessionSignpost])
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "AirPlay session started twice", v10, 2u);
    }
  }

  -[PHAirPlayScreenController setAirPlaySessionSignpost:](self, "setAirPlaySessionSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
}

- (void)_notifyWillRequestAirPlayScreenFromSource:(int64_t)a3
{
  if (![(PHAirPlayScreenController *)self screenAvailability])
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [(PHAirPlayScreenController *)self _setLastScreenRequestDate:v5];
    [(PHAirPlayScreenController *)self _setLastScreenRequestOrigin:a3];
  }
}

- (void)screenDetector:(id)a3 didLoseScreen:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PLAirPlayGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "AirPlay screen disappeared: %@", &v16, 0xCu);
  }

  v7 = [(PHAirPlayScreenController *)self _currentScreen];

  if (v7 == v5)
  {
    [(PHAirPlayScreenController *)self _setCurrentScreen:0];
    [(PHAirPlayScreenController *)self _setLastDisplayedContent:0];
    [(PHAirPlayScreenController *)self _updateScreenContentWithShouldTryToFindAvailableScreen:0];
    v10 = +[PUAirPlaySettings sharedInstance];
    v11 = [v10 switchToMediaPresentationMode];

    if (v11)
    {
      v12 = PLAirPlayGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(PHAirPlayScreenController *)self secondDisplayModeToken];
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "\tReleasing second display mode token %@", &v16, 0xCu);
      }

      [(PHAirPlayScreenController *)self setSecondDisplayModeToken:0];
    }

    [(PHAirPlayScreenController *)self _updateSecondDisplayModeWithCurrentContent];
    [(PHAirPlayScreenController *)self _recordSessionEnded];
    v14 = [(PHAirPlayScreenController *)self _contentRegistry];
    v8 = [v14 currentContentProvider];

    if (objc_opt_respondsToSelector())
    {
      [v8 airPlayControllerScreenAvailabilityChanged:self];
    }

    v15 = [(PHAirPlayScreenController *)self _contentRegistry];
    [v15 clearContent];

    [(PHAirPlayScreenController *)self _setLastDisplayedContent:0];
  }

  else
  {
    v8 = PLAirPlayGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PHAirPlayScreenController *)self _currentScreen];
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "\tIgnoring disconnected screen, doesn't match current screen %@", &v16, 0xCu);
    }
  }
}

- (void)screenDetector:(id)a3 didDetectScreen:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PLAirPlayGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Detected new AirPlay screen to use: %@", &v15, 0xCu);
  }

  v7 = [(PHAirPlayScreenController *)self _currentScreen];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isValid];
    v10 = PLAirPlayGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = [(PHAirPlayScreenController *)self _currentScreen];
        v15 = 138412290;
        v16 = v12;
        v13 = "\tIgnoring connected screen, using current screen %@";
LABEL_13:
        _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    if (v11)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "\tCurrent screen connected but is invalid, replacing with the new screen", &v15, 2u);
    }
  }

  if ([(PHAirPlayScreenController *)self _shouldIgnoreScreen:v5])
  {
    v10 = PLAirPlayGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(PHAirPlayScreenController *)self _currentScreen];
      v15 = 138412290;
      v16 = v12;
      v13 = "\tIgnoring screen: %@";
      goto LABEL_13;
    }
  }

  else
  {
    [(PHAirPlayScreenController *)self _recordSessionBeganWithScreen:v5];
    [(PHAirPlayScreenController *)self _setCurrentScreen:v5];
    [(PHAirPlayScreenController *)self _updateScreenContentWithShouldTryToFindAvailableScreen:1];
    [(PHAirPlayScreenController *)self _updateSecondDisplayModeWithCurrentContent];
    v14 = [(PHAirPlayScreenController *)self _contentRegistry];
    v10 = [v14 currentContentProvider];

    if (objc_opt_respondsToSelector())
    {
      [v10 airPlayControllerScreenAvailabilityChanged:self];
    }
  }

LABEL_16:
}

- (int64_t)routeUnavailableReason
{
  if ([(PHAirPlayScreenController *)self routeAvailability]!= 2)
  {
    return 0;
  }

  if ([(PHAirPlayScreenController *)self _shouldHideRoutesForExternalDisplay])
  {
    return 2;
  }

  return 1;
}

- (unint64_t)routeAvailability
{
  v3 = [(PHAirPlayScreenController *)self _routeObserverRegistry];
  v4 = [v3 routeAvailability];

  if ([(PHAirPlayScreenController *)self _shouldHideRoutesForExternalDisplay])
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (void)unregisterRouteObserver:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLAirPlayGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Unregistering route observer: %@", &v7, 0xCu);
  }

  v6 = [(PHAirPlayScreenController *)self _routeObserverRegistry];
  [v6 removeRouteObserver:v4];
}

- (void)registerRouteObserver:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLAirPlayGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Registering route observer: %@", &v7, 0xCu);
  }

  v6 = [(PHAirPlayScreenController *)self _routeObserverRegistry];
  [v6 addRouteObserver:v4];
}

- (BOOL)isContentProviderRegistered:(id)a3
{
  v4 = a3;
  v5 = [(PHAirPlayScreenController *)self _contentRegistry];
  v6 = [v5 isContentProviderRegistered:v4];

  return v6;
}

- (void)unregisterContentProvider:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLAirPlayGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Unregistering content provider: %@", &v7, 0xCu);
  }

  [(PHAirPlayScreenController *)self _cacheDisplayedContentIfNeededForUnregisteringProvider:v4];
  v6 = [(PHAirPlayScreenController *)self _contentRegistry];
  [v6 removeContentProvider:v4];

  [(PHAirPlayScreenController *)self _updateScreenContentWithShouldTryToFindAvailableScreen:0];
  [(PHAirPlayScreenController *)self _updateSecondDisplayModeWithCurrentContent];
}

- (void)registerContentProvider:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLAirPlayGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Registering content provider: %@", &v7, 0xCu);
  }

  [(PHAirPlayScreenController *)self _setLastDisplayedContent:0];
  v6 = [(PHAirPlayScreenController *)self _contentRegistry];
  [v6 addContentProvider:v4];

  [(PHAirPlayScreenController *)self _updateScreenContentWithShouldTryToFindAvailableScreen:1];
  [(PHAirPlayScreenController *)self _updateSecondDisplayModeWithCurrentContent];
}

- (BOOL)_shouldIgnoreScreen:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[PUAirPlaySettings sharedInstance];
  if ([v3 type] != 2)
  {
    goto LABEL_12;
  }

  if ([v4 ignoreMirroredScreens])
  {
    v5 = PLAirPlayGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring mirrored screen per AirPlay settings: %@", &v9, 0xCu);
    }

    goto LABEL_10;
  }

  if (![v4 ignoreScreenRecordingScreens])
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 size];
  PXSizeGetAspectRatio();
  [v5 bounds];
  PXSizeGetAspectRatio();
  if (!PXFloatEqualToFloatWithTolerance())
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = PLAirPlayGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring screen recording screen per AirPlay settings: %@", &v9, 0xCu);
  }

LABEL_10:
  v7 = 1;
LABEL_11:

LABEL_13:
  return v7;
}

- (id)_findAvailableScreen
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PHAirPlayScreenController *)self _screenDetector];
  v4 = [v3 availableScreens];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![(PHAirPlayScreenController *)self _shouldIgnoreScreen:v11, v14])
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handleSettingHighResolutionContent:(BOOL)a3 forRootController:(id)a4 content:(id)a5
{
  v6 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = PLAirPlayGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Set up content for presentation with root controller %@, content %@", &v14, 0x16u);
  }

  [(PHAirPlayScreenController *)self _updateScreenContentWithShouldTryToFindAvailableScreen:1];
  v11 = [(PHAirPlayScreenController *)self _currentScreen];
  v12 = v11;
  if (v6)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  [v11 setRootViewController:v13];

  [v8 setChildViewController:v9 animated:0];
}

- (void)_switchModeForHighResolutionContent:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PHAirPlayScreenController *)self outputContext];
  v8 = [v7 outputDevice];

  if (v8)
  {
    v9 = MEMORY[0x1E69587B8];
    if (!v4)
    {
      v9 = MEMORY[0x1E69587B0];
    }

    v10 = *v9;
    v11 = PLAirPlayGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Switch AirPlay mode to %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__PHAirPlayScreenController__switchModeForHighResolutionContent_completionHandler___block_invoke;
    v14[3] = &unk_1E7B73DD0;
    v12 = v10;
    v15 = v12;
    v18 = v4;
    objc_copyWeak(&v17, buf);
    v16 = v6;
    [v8 setSecondDisplayMode:v12 completionHandler:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = PLAirPlayGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "Skip switching AirPlay mode as output device is nil", buf, 2u);
    }

    if (v6)
    {
      v6[2](v6);
    }
  }
}

void __83__PHAirPlayScreenController__switchModeForHighResolutionContent_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLAirPlayGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "Switched AirPlay mode to %@ with token %@, error %@", &v12, 0x20u);
  }

  if (v5 && (*(a1 + 56) & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setSecondDisplayModeToken:v5];

    v10 = PLAirPlayGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "Storing second display mode token %@", &v12, 0xCu);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (void)_updateSecondDisplayModeWithCurrentContent
{
  if ([(PHAirPlayScreenController *)self _shouldUpdateSecondDisplayModeWithCurrentContent])
  {
    objc_initWeak(&location, self);
    v3 = [(PHAirPlayScreenController *)self _rootViewController];
    v4 = [(PHAirPlayScreenController *)self _currentContent];
    v5 = v4 != 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__PHAirPlayScreenController__updateSecondDisplayModeWithCurrentContent__block_invoke;
    v8[3] = &unk_1E7B7CD70;
    objc_copyWeak(&v11, &location);
    v12 = v4 != 0;
    v6 = v3;
    v9 = v6;
    v7 = v4;
    v10 = v7;
    [(PHAirPlayScreenController *)self _switchModeForHighResolutionContent:v5 completionHandler:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __71__PHAirPlayScreenController__updateSecondDisplayModeWithCurrentContent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleSettingHighResolutionContent:*(a1 + 56) forRootController:*(a1 + 32) content:*(a1 + 40)];
}

- (BOOL)_shouldUpdateSecondDisplayModeWithCurrentContent
{
  v3 = +[PUAirPlaySettings sharedInstance];
  v4 = [v3 switchToMediaPresentationMode];

  v5 = [(PHAirPlayScreenController *)self _currentScreen];

  v6 = [(PHAirPlayScreenController *)self _currentScreen];
  v7 = [v6 type];

  if (v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v7 != 1 && v8;
}

- (void)_updateScreenContentWithShouldTryToFindAvailableScreen:(BOOL)a3
{
  v3 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v5 = PLAirPlayGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Updating PHAirPlayScreenController", &v29, 2u);
  }

  v6 = [(PHAirPlayScreenController *)self _currentScreen];
  v7 = [(PHAirPlayScreenController *)self _rootViewController];
  if (!v6 && v3)
  {
    v8 = PLAirPlayGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "\tNo screen currently in use; searching for screens", &v29, 2u);
    }

    v6 = [(PHAirPlayScreenController *)self _findAvailableScreen];
    [(PHAirPlayScreenController *)self _setCurrentScreen:v6];
  }

  v9 = PLAirPlayGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      v29 = 138412290;
      v30 = v6;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "\tUsing AirPlay screen: %@", &v29, 0xCu);
    }

    v11 = [(PHAirPlayScreenController *)self _currentContent];
    v12 = PLAirPlayGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v11;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "\tFetched content: %@", &v29, 0xCu);
    }

    v13 = PLAirPlayGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(PHAirPlayScreenController *)self _contentRegistry];
      v15 = [v14 currentContentProvider];
      v29 = 138412290;
      v30 = v15;
      _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "\tContent provider: %@", &v29, 0xCu);
    }

    v16 = [(__CFString *)v6 placeholderType];
    if (v11 || v16 == 1)
    {
      if (!v7)
      {
        v19 = PLAirPlayGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "\tCreating system root view controller", &v29, 2u);
        }

        v7 = objc_alloc_init(PUAirPlayRootViewController);
      }

      v20 = PLAirPlayGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEFAULT, "\tProviding system root view controller to AirPlay screen", &v29, 2u);
      }

      v18 = v7;
      v7 = v18;
    }

    else
    {
      v17 = PLAirPlayGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "\tRemoving AirPlay screen's view controller because there is no content to display and placeholders are disabled for the current screen in AirPlay settings", &v29, 2u);
      }

      v11 = 0;
      v18 = 0;
    }
  }

  else
  {
    if (v10)
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "\tNo available screen; ignoring any registered content and discarding root view controller", &v29, 2u);
    }

    v11 = 0;
    v18 = 0;
    v7 = 0;
  }

  v21 = [(__CFString *)v6 rootViewController];

  if (v18 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x1E69DD6A8]);
  }

  [(PHAirPlayScreenController *)self _setRootViewController:v7];
  v23 = +[PUAirPlaySettings sharedInstance];
  v24 = [v23 switchToMediaPresentationMode];

  v25 = [(PHAirPlayScreenController *)self _currentScreen];
  v26 = [v25 type];

  if (!v24 || v26 == 1)
  {
    [(__CFString *)v6 setRootViewController:v18];
    [(PUAirPlayRootViewController *)v7 setChildViewController:v11 animated:v18 == v21];
  }

  if (v22)
  {
    [v22 setCurrentOutputDeviceEnabled:v18 != 0];
    v27 = PLAirPlayGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"NO";
      if (v18)
      {
        v28 = @"YES";
      }

      v29 = 138412546;
      v30 = v28;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_1B36F3000, v27, OS_LOG_TYPE_DEFAULT, "\tSetting enabled %@ on screen picker %@", &v29, 0x16u);
    }
  }
}

- (void)_cacheDisplayedContentIfNeededForUnregisteringProvider:(id)a3
{
  v7 = a3;
  v4 = [(PHAirPlayScreenController *)self _currentScreen];
  v5 = [(PHAirPlayScreenController *)self _contentRegistry];
  if ([v5 isCurrentContentProvider:v7] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v7, "wantsContentVisibleAfterUnregisteringWithAirPlayController:", self) && objc_msgSend(v4, "placeholderType") == 2 && -[PHAirPlayScreenController isDisplayingContent](self, "isDisplayingContent"))
  {
    v6 = [v5 contentForController:self];
    [(PHAirPlayScreenController *)self _setLastDisplayedContent:v6];
  }
}

- (id)_currentContent
{
  v3 = [(PHAirPlayScreenController *)self _contentRegistry];
  v4 = [v3 contentForController:self];

  if (!v4)
  {
    v4 = [(PHAirPlayScreenController *)self _lastDisplayedContent];
  }

  return v4;
}

- (BOOL)isDisplayingContent
{
  v3 = [(PHAirPlayScreenController *)self _currentScreen];
  v4 = [v3 rootViewController];
  v5 = [(PHAirPlayScreenController *)self screenAvailability];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 childViewController];
    if (!v8)
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)screenAvailability
{
  v2 = [(PHAirPlayScreenController *)self _currentScreen];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 type];
    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4 == 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PHAirPlayScreenController)init
{
  v10.receiver = self;
  v10.super_class = PHAirPlayScreenController;
  v2 = [(PHAirPlayScreenController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(PUAirPlayScreenDetector);
    [(PUAirPlayScreenDetector *)v3 setReceiver:v2];
    [(PHAirPlayScreenController *)v2 _setScreenDetector:v3];
    v4 = objc_alloc_init(PUAirPlayContentRegistry);
    [(PHAirPlayScreenController *)v2 _setContentRegistry:v4];

    v5 = objc_alloc_init(PUAirPlayRouteObserverRegistry);
    [(PUAirPlayRouteObserverRegistry *)v5 setDelegate:v2];
    [(PHAirPlayScreenController *)v2 _setRouteObserverRegistry:v5];
    v6 = [MEMORY[0x1E69587F0] sharedSystemScreenContext];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel__outputDeviceDidChange_ name:*MEMORY[0x1E69586A8] object:v6];
    [v7 addObserver:v2 selector:sel__sceneWillDeactivate_ name:*MEMORY[0x1E69DE358] object:0];
    [v7 addObserver:v2 selector:sel__sceneDidActivate_ name:*MEMORY[0x1E69DE338] object:0];
    outputContext = v2->_outputContext;
    v2->_outputContext = v6;
  }

  return v2;
}

+ (PHAirPlayScreenController)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_305);
  }

  v3 = sharedInstance_sharedController;

  return v3;
}

uint64_t __43__PHAirPlayScreenController_sharedInstance__block_invoke()
{
  sharedInstance_sharedController = objc_alloc_init(PHAirPlayScreenController);

  return MEMORY[0x1EEE66BB8]();
}

@end