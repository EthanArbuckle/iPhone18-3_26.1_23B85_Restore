@interface UIWebGeolocationPolicyDecider
+ (id)sharedPolicyDecider;
+ (void)initialize;
- (BOOL)_getAuthorizationStatusForToken:(id)a3 userVisibleDomain:(id)a4 requestingURL:(id)a5 promptInfo:(id *)a6;
- (BOOL)_isAuthorizationDate:(id)a3 inclusivelyBetweenDate:(id)a4 andDate:(id)a5;
- (BOOL)getAuthorizationStatusForOrigin:(id)a3 requestingURL:(id)a4 promptInfo:(id *)a5;
- (UIWebGeolocationPolicyDecider)init;
- (id)_siteFile;
- (id)_siteFileInContainerDirectory:(id)a3 creatingIntermediateDirectoriesIfNecessary:(BOOL)a4;
- (int64_t)_getChallengeCountFromHistoryForToken:(id)a3 requestingURL:(id)a4;
- (void)_addChallengeCount:(int64_t)a3 forToken:(id)a4 requestingURL:(id)a5;
- (void)_decidePolicyForGeolocationRequestFromOrigin:(id)a3 requestingURL:(id)a4 view:(id)a5 listener:(id)a6;
- (void)_executeNextChallenge;
- (void)_load;
- (void)_save;
- (void)clearAllCaches;
- (void)clearAuthorizationForDomain:(id)a3;
- (void)clearAuthorizationsAddedBetween:(id)a3 and:(id)a4;
- (void)clearCache;
- (void)clearSafariCache;
- (void)dealloc;
- (void)decidePolicyForGeolocationRequestFromOrigin:(id)a3 requestingURL:(id)a4 view:(id)a5 listener:(id)a6;
- (void)didAuthorizeGeolocationForPromptInfo:(id)a3;
- (void)didDenyGeolocationForPromptInfo:(id)a3;
- (void)webView:(id)a3 decidePolicyForGeolocationRequestFromOrigin:(id)a4 frame:(id)a5 listener:(id)a6;
@end

@implementation UIWebGeolocationPolicyDecider

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_create("com.apple.UIKit.webGeolocationCacheFileAccessQueue", 0);
    webGeolocationCacheFileAccessQueue = v2;
    global_queue = dispatch_get_global_queue(-32768, 0);

    dispatch_set_target_queue(v2, global_queue);
  }
}

+ (id)sharedPolicyDecider
{
  result = sharedPolicyDecider_policyDecider;
  if (!sharedPolicyDecider_policyDecider)
  {
    result = objc_alloc_init(UIWebGeolocationPolicyDecider);
    sharedPolicyDecider_policyDecider = result;
  }

  return result;
}

- (UIWebGeolocationPolicyDecider)init
{
  v5.receiver = self;
  v5.super_class = UIWebGeolocationPolicyDecider;
  v2 = [(UIWebGeolocationPolicyDecider *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, clearGeolocationCache, @"com.apple.locationd.appreset", 0, CFNotificationSuspensionBehaviorCoalesce);
    v2->_challenges = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_activeChallenges = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.locationd.appreset", 0);

  v4.receiver = self;
  v4.super_class = UIWebGeolocationPolicyDecider;
  [(UIWebGeolocationPolicyDecider *)&v4 dealloc];
}

- (id)_siteFileInContainerDirectory:(id)a3 creatingIntermediateDirectoriesIfNecessary:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 stringByAppendingPathComponent:@"Library/WebKit"];
  if (v4)
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  return [v5 stringByAppendingPathComponent:@"GeolocationSites.plist"];
}

- (id)_siteFile
{
  result = _siteFile_sSiteFile;
  if (!_siteFile_sSiteFile)
  {
    result = [(UIWebGeolocationPolicyDecider *)self _siteFileInContainerDirectory:NSHomeDirectory() creatingIntermediateDirectoriesIfNecessary:1];
    _siteFile_sSiteFile = result;
  }

  return result;
}

- (void)_load
{
  if (!self->_sites)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__UIWebGeolocationPolicyDecider__load__block_invoke;
    block[3] = &unk_1E70F5CA0;
    block[4] = self;
    dispatch_sync(webGeolocationCacheFileAccessQueue, block);
  }
}

id __38__UIWebGeolocationPolicyDecider__load__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:objc_msgSend(*(a1 + 32) options:"_siteFile") error:{1, 0}];
  if (v1)
  {
    v21 = 200;
    v22 = 0;
    v2 = [MEMORY[0x1E696AE40] propertyListWithData:v1 options:0 format:&v21 error:&v22];
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    result = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    v5 = result;
    if (result)
    {
      v6 = *v18;
      v7 = 0x1E695D000uLL;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          v10 = [v2 objectForKey:v9];
          v11 = [v10 objectForKey:@"ChallengeDate"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v3 setObject:v10 forKey:v9];
          }

          else
          {
            v12 = v7;
            v13 = *(v7 + 3840);
            [v11 doubleValue];
            v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
            v23[0] = @"ChallengeCount";
            v7 = v12;
            v15 = [v10 objectForKey:?];
            v23[1] = @"ChallengeDate";
            v24[0] = v15;
            v24[1] = v14;
            [v3 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v24, v23, 2), v9}];
          }

          v8 = v8 + 1;
        }

        while (v5 != v8);
        result = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    result = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = result;
  }

  *(*(a1 + 32) + 8) = v3;
  return result;
}

- (void)_save
{
  if ([(NSMutableDictionary *)self->_sites count])
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:self->_sites format:200 options:0 error:&v7];
    if (v3)
    {
      v4 = v3;
      v5 = [(UIWebGeolocationPolicyDecider *)self _siteFile];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__UIWebGeolocationPolicyDecider__save__block_invoke;
      block[3] = &unk_1E7101E78;
      block[4] = v4;
      block[5] = v5;
      dispatch_async(webGeolocationCacheFileAccessQueue, block);
    }
  }
}

- (void)clearCache
{
  self->_sites = 0;
  v3 = [(UIWebGeolocationPolicyDecider *)self _siteFile];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIWebGeolocationPolicyDecider_clearCache__block_invoke;
  block[3] = &unk_1E70F5CA0;
  block[4] = v3;
  dispatch_async(webGeolocationCacheFileAccessQueue, block);
}

uint64_t __43__UIWebGeolocationPolicyDecider_clearCache__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);

  return [v2 _web_removeFileOnlyAtPath:v3];
}

- (void)clearSafariCache
{
  v5 = 0;
  v3 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:&v5];
  if (v5)
  {
    NSLog(&cfstr_UnableToClearT.isa, [v5 localizedDescription]);
  }

  else
  {
    v4 = [objc_msgSend(v3 "dataContainerURL")];
    if (v4)
    {
      [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    }

    else
    {
      NSLog(&cfstr_UnableToClearT_0.isa);
    }
  }
}

- (void)clearAllCaches
{
  v3 = UIApp;
  v4 = [UIApp _beginBackgroundTaskWithName:@"com.apple.UIKit.ClearAllGeolocationPolicyCaches" expirationHandler:&__block_literal_global_738];
  [(UIWebGeolocationPolicyDecider *)self clearCache];
  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:CPSharedResourcesDirectory()];
  v7 = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__UIWebGeolocationPolicyDecider_clearAllCaches__block_invoke_2;
  v10[3] = &unk_1E712C978;
  v10[4] = v6;
  v10[5] = v7;
  [v5 enumerateBundlesOfType:1 block:v10];
  global_queue = dispatch_get_global_queue(-2, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__UIWebGeolocationPolicyDecider_clearAllCaches__block_invoke_3;
  v9[3] = &unk_1E712C9A0;
  v9[4] = v7;
  v9[5] = self;
  v9[6] = v3;
  v9[7] = v4;
  dispatch_async(global_queue, v9);
}

uint64_t __47__UIWebGeolocationPolicyDecider_clearAllCaches__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 dataContainerURL];
  if (result)
  {
    v4 = result;
    result = [result isEqual:*(a1 + 32)];
    if ((result & 1) == 0)
    {
      v5 = *(a1 + 40);

      return [v5 addObject:v4];
    }
  }

  return result;
}

uint64_t __47__UIWebGeolocationPolicyDecider_clearAllCaches__block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
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

        [v2 _web_removeFileOnlyAtPath:{objc_msgSend(*(a1 + 40), "_siteFileInContainerDirectory:creatingIntermediateDirectoriesIfNecessary:", objc_msgSend(*(*(&v9 + 1) + 8 * i), "path"), 0)}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return [*(a1 + 48) _endBackgroundTask:*(a1 + 56)];
}

- (BOOL)_isAuthorizationDate:(id)a3 inclusivelyBetweenDate:(id)a4 andDate:(id)a5
{
  v7 = [a4 compare:?];
  v8 = [a3 compare:a5];
  return v7 <= 0 && v8 < 1 || (v7 | v8) >= 0;
}

- (void)clearAuthorizationForDomain:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"www.%@", a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_sites allKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [objc_msgSend(MEMORY[0x1E695DFF8] URLWithString:{v11), "host"}];
        if (([v12 isEqualToString:a3] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", v5))
        {
          [(NSMutableDictionary *)self->_sites removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(UIWebGeolocationPolicyDecider *)self _save];
}

- (void)clearAuthorizationsAddedBetween:(id)a3 and:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableDictionary *)self->_sites mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSMutableDictionary *)v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (-[UIWebGeolocationPolicyDecider _isAuthorizationDate:inclusivelyBetweenDate:andDate:](self, "_isAuthorizationDate:inclusivelyBetweenDate:andDate:", [-[NSMutableDictionary objectForKey:](v7 objectForKey:{v13), "objectForKey:", @"ChallengeDate"}], a3, a4))
        {
          [(NSMutableDictionary *)v7 removeObjectForKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  self->_sites = v7;
  [(UIWebGeolocationPolicyDecider *)self _save];
}

- (int64_t)_getChallengeCountFromHistoryForToken:(id)a3 requestingURL:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_sites objectForKey:a3];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([objc_msgSend(a4 "scheme")])
  {
    return 0;
  }

  v7 = [objc_msgSend(v6 objectForKey:{@"ChallengeDate", "dateByAddingTimeInterval:", 86400.0}];
  if ([v7 compare:{objc_msgSend(MEMORY[0x1E695DF00], "date")}] == -1)
  {
    return 0;
  }

  v8 = [v6 objectForKey:@"ChallengeCount"];

  return [v8 integerValue];
}

- (void)_addChallengeCount:(int64_t)a3 forToken:(id)a4 requestingURL:(id)a5
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8 = [(UIWebGeolocationPolicyDecider *)self _getChallengeCountFromHistoryForToken:a4 requestingURL:a5];
  v9[0] = @"ChallengeCount";
  v9[1] = @"ChallengeDate";
  v10[0] = [MEMORY[0x1E696AD98] numberWithInteger:v8 + a3];
  v10[1] = [MEMORY[0x1E695DF00] date];
  -[NSMutableDictionary setObject:forKey:](self->_sites, "setObject:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2], a4);
  [(UIWebGeolocationPolicyDecider *)self _save];
}

- (void)_executeNextChallenge
{
  if ([(NSMutableArray *)self->_challenges count]&& ![(NSMapTable *)self->_activeChallenges count])
  {
    v3 = [(NSMutableArray *)self->_challenges objectAtIndex:0];
    [(NSMutableArray *)self->_challenges removeObjectAtIndex:0];
    v11 = 0;
    v4 = -[UIWebGeolocationPolicyDecider _getAuthorizationStatusForToken:userVisibleDomain:requestingURL:promptInfo:](self, "_getAuthorizationStatusForToken:userVisibleDomain:requestingURL:promptInfo:", [v3 token], objc_msgSend(v3, "userVisibleDomain"), objc_msgSend(v3, "requestingURL"), &v11);
    if (v11)
    {
      v5 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", [v11 objectForKeyedSubscript:@"title"], 0, 1);
      [(UIAlertController *)v5 _setTitleMaximumLineCount:0];
      [(NSMapTable *)self->_activeChallenges setObject:v3 forKey:v5];
      v6 = [v11 objectForKeyedSubscript:@"denyButtonTitle"];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__UIWebGeolocationPolicyDecider__executeNextChallenge__block_invoke;
      v10[3] = &unk_1E712C9C8;
      v10[4] = self;
      v10[5] = v5;
      [(UIAlertController *)v5 addAction:[UIAlertAction actionWithTitle:v6 style:1 handler:v10]];
      v7 = [v11 objectForKeyedSubscript:@"allowButtonTitle"];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__UIWebGeolocationPolicyDecider__executeNextChallenge__block_invoke_2;
      v9[3] = &unk_1E712C9C8;
      v9[4] = self;
      v9[5] = v5;
      [(UIAlertController *)v5 addAction:[UIAlertAction actionWithTitle:v7 style:0 handler:v9]];
      [+[UIViewController _viewControllerForFullScreenPresentationFromView:](UIViewController _viewControllerForFullScreenPresentationFromView:{objc_msgSend(v3, "view")), "presentViewController:animated:completion:", v5, 1, 0}];
    }

    else
    {
      v8 = [v3 listener];
      if (v4)
      {
        [v8 allow];
      }

      else
      {
        [v8 deny];
      }
    }
  }
}

void *__54__UIWebGeolocationPolicyDecider__executeNextChallenge__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (result)
  {
    v3 = result;
    [objc_msgSend(result "listener")];
    [*(a1 + 32) _addChallengeCount:-1 forToken:objc_msgSend(v3 requestingURL:{"token"), objc_msgSend(v3, "requestingURL")}];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 24);

    return [v5 removeObjectForKey:v4];
  }

  return result;
}

void *__54__UIWebGeolocationPolicyDecider__executeNextChallenge__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (result)
  {
    v3 = result;
    [objc_msgSend(result "listener")];
    [*(a1 + 32) _addChallengeCount:1 forToken:objc_msgSend(v3 requestingURL:{"token"), objc_msgSend(v3, "requestingURL")}];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 24);

    return [v5 removeObjectForKey:v4];
  }

  return result;
}

- (void)_decidePolicyForGeolocationRequestFromOrigin:(id)a3 requestingURL:(id)a4 view:(id)a5 listener:(id)a6
{
  v11 = objc_alloc_init(_UIWebGeolocationChallengeData);
  if ([a4 isFileURL])
  {
    v12 = [a4 path];
  }

  else
  {
    v12 = [objc_msgSend(a3 "host")];
  }

  [(_UIWebGeolocationChallengeData *)v11 setUserVisibleDomain:v12];
  [(_UIWebGeolocationChallengeData *)v11 setToken:getToken(a3, a4)];
  [(_UIWebGeolocationChallengeData *)v11 setRequestingURL:a4];
  [(_UIWebGeolocationChallengeData *)v11 setView:a5];
  [(_UIWebGeolocationChallengeData *)v11 setListener:a6];
  [(NSMutableArray *)self->_challenges addObject:v11];

  [(UIWebGeolocationPolicyDecider *)self _executeNextChallenge];
}

- (BOOL)getAuthorizationStatusForOrigin:(id)a3 requestingURL:(id)a4 promptInfo:(id *)a5
{
  Token = getToken(a3, a4);
  if ([a4 isFileURL])
  {
    v10 = [a4 path];
  }

  else
  {
    v10 = [objc_msgSend(a3 "host")];
  }

  return [(UIWebGeolocationPolicyDecider *)self _getAuthorizationStatusForToken:Token userVisibleDomain:v10 requestingURL:a4 promptInfo:a5];
}

- (BOOL)_getAuthorizationStatusForToken:(id)a3 userVisibleDomain:(id)a4 requestingURL:(id)a5 promptInfo:(id *)a6
{
  v19[4] = *MEMORY[0x1E69E9840];
  [(UIWebGeolocationPolicyDecider *)self _load];
  v11 = [(UIWebGeolocationPolicyDecider *)self _getChallengeCountFromHistoryForToken:a3 requestingURL:a5];
  v12 = v11;
  if (a6 && (v11 - 2) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:_UINSLocalizedStringWithDefaultValue(@"“%@” Would Like To Use Your Current Location", @"“%@” Would Like To Use Your Current Location", a4];
    v14 = _UINSLocalizedStringWithDefaultValue(@"Don’t Allow", @"Don’t Allow");
    v18[0] = @"title";
    v18[1] = @"allowButtonTitle";
    v19[0] = v13;
    v19[1] = [_UIKitBundle() localizedStringForKey:@"OK (Geolocation)" value:@"OK" table:@"Localizable"];
    v18[2] = @"denyButtonTitle";
    v18[3] = @"token";
    v19[2] = v14;
    v19[3] = a3;
    v15 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:{4), "mutableCopy"}];
    v16 = v15;
    if (a5)
    {
      [v15 setObject:a5 forKeyedSubscript:@"requestingURL"];
    }

    *a6 = [v16 copy];
  }

  return v12 > 1;
}

- (void)webView:(id)a3 decidePolicyForGeolocationRequestFromOrigin:(id)a4 frame:(id)a5 listener:(id)a6
{
  if ([a6 shouldClearCache])
  {
    [(UIWebGeolocationPolicyDecider *)self clearCache];
  }

  v10 = [objc_msgSend(objc_msgSend(a5 "dataSource")];
  v11 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:a5];

  [(UIWebGeolocationPolicyDecider *)self _decidePolicyForGeolocationRequestFromOrigin:a4 requestingURL:v10 view:v11 listener:a6];
}

- (void)decidePolicyForGeolocationRequestFromOrigin:(id)a3 requestingURL:(id)a4 view:(id)a5 listener:(id)a6
{
  if ([a6 shouldClearCache])
  {
    [(UIWebGeolocationPolicyDecider *)self clearCache];
  }

  [(UIWebGeolocationPolicyDecider *)self _decidePolicyForGeolocationRequestFromOrigin:a3 requestingURL:a4 view:a5 listener:a6];
}

- (void)didAuthorizeGeolocationForPromptInfo:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"token"];
  v6 = [a3 objectForKeyedSubscript:@"requestingURL"];

  [(UIWebGeolocationPolicyDecider *)self _addChallengeCount:1 forToken:v5 requestingURL:v6];
}

- (void)didDenyGeolocationForPromptInfo:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"token"];
  v6 = [a3 objectForKeyedSubscript:@"requestingURL"];

  [(UIWebGeolocationPolicyDecider *)self _addChallengeCount:-1 forToken:v5 requestingURL:v6];
}

@end