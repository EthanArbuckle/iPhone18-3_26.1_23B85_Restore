@interface UIWebGeolocationPolicyDecider
+ (id)sharedPolicyDecider;
+ (void)initialize;
- (BOOL)_getAuthorizationStatusForToken:(id)token userVisibleDomain:(id)domain requestingURL:(id)l promptInfo:(id *)info;
- (BOOL)_isAuthorizationDate:(id)date inclusivelyBetweenDate:(id)betweenDate andDate:(id)andDate;
- (BOOL)getAuthorizationStatusForOrigin:(id)origin requestingURL:(id)l promptInfo:(id *)info;
- (UIWebGeolocationPolicyDecider)init;
- (id)_siteFile;
- (id)_siteFileInContainerDirectory:(id)directory creatingIntermediateDirectoriesIfNecessary:(BOOL)necessary;
- (int64_t)_getChallengeCountFromHistoryForToken:(id)token requestingURL:(id)l;
- (void)_addChallengeCount:(int64_t)count forToken:(id)token requestingURL:(id)l;
- (void)_decidePolicyForGeolocationRequestFromOrigin:(id)origin requestingURL:(id)l view:(id)view listener:(id)listener;
- (void)_executeNextChallenge;
- (void)_load;
- (void)_save;
- (void)clearAllCaches;
- (void)clearAuthorizationForDomain:(id)domain;
- (void)clearAuthorizationsAddedBetween:(id)between and:(id)and;
- (void)clearCache;
- (void)clearSafariCache;
- (void)dealloc;
- (void)decidePolicyForGeolocationRequestFromOrigin:(id)origin requestingURL:(id)l view:(id)view listener:(id)listener;
- (void)didAuthorizeGeolocationForPromptInfo:(id)info;
- (void)didDenyGeolocationForPromptInfo:(id)info;
- (void)webView:(id)view decidePolicyForGeolocationRequestFromOrigin:(id)origin frame:(id)frame listener:(id)listener;
@end

@implementation UIWebGeolocationPolicyDecider

+ (void)initialize
{
  if (objc_opt_class() == self)
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

- (id)_siteFileInContainerDirectory:(id)directory creatingIntermediateDirectoriesIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = [directory stringByAppendingPathComponent:@"Library/WebKit"];
  if (necessaryCopy)
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
      _siteFile = [(UIWebGeolocationPolicyDecider *)self _siteFile];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__UIWebGeolocationPolicyDecider__save__block_invoke;
      block[3] = &unk_1E7101E78;
      block[4] = v4;
      block[5] = _siteFile;
      dispatch_async(webGeolocationCacheFileAccessQueue, block);
    }
  }
}

- (void)clearCache
{
  self->_sites = 0;
  _siteFile = [(UIWebGeolocationPolicyDecider *)self _siteFile];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIWebGeolocationPolicyDecider_clearCache__block_invoke;
  block[3] = &unk_1E70F5CA0;
  block[4] = _siteFile;
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
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:CPSharedResourcesDirectory()];
  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__UIWebGeolocationPolicyDecider_clearAllCaches__block_invoke_2;
  v10[3] = &unk_1E712C978;
  v10[4] = v6;
  v10[5] = array;
  [defaultWorkspace enumerateBundlesOfType:1 block:v10];
  global_queue = dispatch_get_global_queue(-2, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__UIWebGeolocationPolicyDecider_clearAllCaches__block_invoke_3;
  v9[3] = &unk_1E712C9A0;
  v9[4] = array;
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

- (BOOL)_isAuthorizationDate:(id)date inclusivelyBetweenDate:(id)betweenDate andDate:(id)andDate
{
  v7 = [betweenDate compare:?];
  v8 = [date compare:andDate];
  return v7 <= 0 && v8 < 1 || (v7 | v8) >= 0;
}

- (void)clearAuthorizationForDomain:(id)domain
{
  v18 = *MEMORY[0x1E69E9840];
  domain = [MEMORY[0x1E696AEC0] stringWithFormat:@"www.%@", domain];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_sites allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [objc_msgSend(MEMORY[0x1E695DFF8] URLWithString:{v11), "host"}];
        if (([v12 isEqualToString:domain] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", domain))
        {
          [(NSMutableDictionary *)self->_sites removeObjectForKey:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(UIWebGeolocationPolicyDecider *)self _save];
}

- (void)clearAuthorizationsAddedBetween:(id)between and:(id)and
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableDictionary *)self->_sites mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSMutableDictionary *)v7 allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (-[UIWebGeolocationPolicyDecider _isAuthorizationDate:inclusivelyBetweenDate:andDate:](self, "_isAuthorizationDate:inclusivelyBetweenDate:andDate:", [-[NSMutableDictionary objectForKey:](v7 objectForKey:{v13), "objectForKey:", @"ChallengeDate"}], between, and))
        {
          [(NSMutableDictionary *)v7 removeObjectForKey:v13];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  self->_sites = v7;
  [(UIWebGeolocationPolicyDecider *)self _save];
}

- (int64_t)_getChallengeCountFromHistoryForToken:(id)token requestingURL:(id)l
{
  v5 = [(NSMutableDictionary *)self->_sites objectForKey:token];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([objc_msgSend(l "scheme")])
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

- (void)_addChallengeCount:(int64_t)count forToken:(id)token requestingURL:(id)l
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8 = [(UIWebGeolocationPolicyDecider *)self _getChallengeCountFromHistoryForToken:token requestingURL:l];
  v9[0] = @"ChallengeCount";
  v9[1] = @"ChallengeDate";
  v10[0] = [MEMORY[0x1E696AD98] numberWithInteger:v8 + count];
  v10[1] = [MEMORY[0x1E695DF00] date];
  -[NSMutableDictionary setObject:forKey:](self->_sites, "setObject:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2], token);
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
      listener = [v3 listener];
      if (v4)
      {
        [listener allow];
      }

      else
      {
        [listener deny];
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

- (void)_decidePolicyForGeolocationRequestFromOrigin:(id)origin requestingURL:(id)l view:(id)view listener:(id)listener
{
  v11 = objc_alloc_init(_UIWebGeolocationChallengeData);
  if ([l isFileURL])
  {
    path = [l path];
  }

  else
  {
    path = [objc_msgSend(origin "host")];
  }

  [(_UIWebGeolocationChallengeData *)v11 setUserVisibleDomain:path];
  [(_UIWebGeolocationChallengeData *)v11 setToken:getToken(origin, l)];
  [(_UIWebGeolocationChallengeData *)v11 setRequestingURL:l];
  [(_UIWebGeolocationChallengeData *)v11 setView:view];
  [(_UIWebGeolocationChallengeData *)v11 setListener:listener];
  [(NSMutableArray *)self->_challenges addObject:v11];

  [(UIWebGeolocationPolicyDecider *)self _executeNextChallenge];
}

- (BOOL)getAuthorizationStatusForOrigin:(id)origin requestingURL:(id)l promptInfo:(id *)info
{
  Token = getToken(origin, l);
  if ([l isFileURL])
  {
    path = [l path];
  }

  else
  {
    path = [objc_msgSend(origin "host")];
  }

  return [(UIWebGeolocationPolicyDecider *)self _getAuthorizationStatusForToken:Token userVisibleDomain:path requestingURL:l promptInfo:info];
}

- (BOOL)_getAuthorizationStatusForToken:(id)token userVisibleDomain:(id)domain requestingURL:(id)l promptInfo:(id *)info
{
  v19[4] = *MEMORY[0x1E69E9840];
  [(UIWebGeolocationPolicyDecider *)self _load];
  v11 = [(UIWebGeolocationPolicyDecider *)self _getChallengeCountFromHistoryForToken:token requestingURL:l];
  v12 = v11;
  if (info && (v11 - 2) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    domain = [MEMORY[0x1E696AEC0] stringWithFormat:_UINSLocalizedStringWithDefaultValue(@"“%@” Would Like To Use Your Current Location", @"“%@” Would Like To Use Your Current Location", domain];
    v14 = _UINSLocalizedStringWithDefaultValue(@"Don’t Allow", @"Don’t Allow");
    v18[0] = @"title";
    v18[1] = @"allowButtonTitle";
    v19[0] = domain;
    v19[1] = [_UIKitBundle() localizedStringForKey:@"OK (Geolocation)" value:@"OK" table:@"Localizable"];
    v18[2] = @"denyButtonTitle";
    v18[3] = @"token";
    v19[2] = v14;
    v19[3] = token;
    v15 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:{4), "mutableCopy"}];
    v16 = v15;
    if (l)
    {
      [v15 setObject:l forKeyedSubscript:@"requestingURL"];
    }

    *info = [v16 copy];
  }

  return v12 > 1;
}

- (void)webView:(id)view decidePolicyForGeolocationRequestFromOrigin:(id)origin frame:(id)frame listener:(id)listener
{
  if ([listener shouldClearCache])
  {
    [(UIWebGeolocationPolicyDecider *)self clearCache];
  }

  v10 = [objc_msgSend(objc_msgSend(frame "dataSource")];
  v11 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:frame];

  [(UIWebGeolocationPolicyDecider *)self _decidePolicyForGeolocationRequestFromOrigin:origin requestingURL:v10 view:v11 listener:listener];
}

- (void)decidePolicyForGeolocationRequestFromOrigin:(id)origin requestingURL:(id)l view:(id)view listener:(id)listener
{
  if ([listener shouldClearCache])
  {
    [(UIWebGeolocationPolicyDecider *)self clearCache];
  }

  [(UIWebGeolocationPolicyDecider *)self _decidePolicyForGeolocationRequestFromOrigin:origin requestingURL:l view:view listener:listener];
}

- (void)didAuthorizeGeolocationForPromptInfo:(id)info
{
  v5 = [info objectForKeyedSubscript:@"token"];
  v6 = [info objectForKeyedSubscript:@"requestingURL"];

  [(UIWebGeolocationPolicyDecider *)self _addChallengeCount:1 forToken:v5 requestingURL:v6];
}

- (void)didDenyGeolocationForPromptInfo:(id)info
{
  v5 = [info objectForKeyedSubscript:@"token"];
  v6 = [info objectForKeyedSubscript:@"requestingURL"];

  [(UIWebGeolocationPolicyDecider *)self _addChallengeCount:-1 forToken:v5 requestingURL:v6];
}

@end