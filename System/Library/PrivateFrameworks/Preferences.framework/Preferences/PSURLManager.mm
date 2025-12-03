@interface PSURLManager
+ (id)sharedManager;
- (id)currentSpecifierIDPath;
- (id)keyValueDictionaryForURL:(id)l;
- (id)urlForCurrentNavStack;
- (void)handleDeferredURLForSpecifierID:(id)d resourceDictionary:(id)dictionary objectOffsetPair:(id)pair withCompletion:(id)completion;
- (void)handleDeferredURLForSpecifierID:(id)d resourceDictionary:(id)dictionary withCompletion:(id)completion;
- (void)performURLHandlingForController:(id)controller dictionary:(id)dictionary items:(id)items controllerNeedsPush:(BOOL)push withCompletion:(id)completion;
- (void)popToRootAndSelectDefaultCategory:(BOOL)category performWithoutDeferringTransitions:(BOOL)transitions;
- (void)processURL:(id)l animated:(BOOL)animated fromSearch:(BOOL)search withCompletion:(id)completion;
- (void)setOffsetForController:(id)controller fromObjectPair:(id)pair;
@end

@implementation PSURLManager

+ (id)sharedManager
{
  if (sharedManager_once_0 != -1)
  {
    +[PSURLManager sharedManager];
  }

  v3 = sharedManager_manager_0;

  return v3;
}

void __29__PSURLManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(PSURLManager);
  v1 = sharedManager_manager_0;
  sharedManager_manager_0 = v0;
}

- (void)processURL:(id)l animated:(BOOL)animated fromSearch:(BOOL)search withCompletion:(id)completion
{
  searchCopy = search;
  completionCopy = completion;
  v10 = MEMORY[0x1E695DFF8];
  absoluteString = [l absoluteString];
  v12 = [absoluteString stringByReplacingOccurrencesOfString:@"%00" withString:&stru_1EFE45030];
  v13 = [v10 URLWithString:v12];

  v14 = [(PSURLManager *)self keyValueDictionaryForURL:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:searchCopy];
  [v14 setObject:v15 forKeyedSubscript:@"fromSearch"];

  v16 = [v14 objectForKey:@"root"];
  stringByRemovingPercentEncoding = [v16 stringByRemovingPercentEncoding];

  v18 = SFObjectAndOffsetForURLPair();
  v19 = [v18 objectForKey:@"object"];
  v20 = [v18 objectForKey:@"offsetItem"];
  v21 = v20;
  if (v19)
  {
    v34 = v20;
    v32 = v13;
    rootController = [(PSURLManager *)self rootController];
    topLevelController = [(PSURLManager *)self topLevelController];
    *buf = 0;
    v54 = buf;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__10;
    v57 = __Block_byref_object_dispose__10;
    v58 = [topLevelController specifierForID:v19];
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = __Block_byref_object_copy__10;
    v51[4] = __Block_byref_object_dispose__10;
    v52 = [topLevelController indexPathForIndex:{objc_msgSend(topLevelController, "indexOfSpecifier:", *(v54 + 5))}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke;
    aBlock[3] = &unk_1E71DED18;
    v48 = buf;
    v24 = topLevelController;
    v39 = v24;
    v40 = v19;
    v41 = stringByRemovingPercentEncoding;
    v25 = rootController;
    v42 = v25;
    v43 = v34;
    v44 = v14;
    selfCopy = self;
    animatedCopy = animated;
    v47 = completionCopy;
    v49 = v51;
    v46 = v18;
    v26 = _Block_copy(aBlock);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_138;
    v35[3] = &unk_1E71DD4D8;
    v27 = v25;
    v36 = v27;
    v28 = v26;
    v37 = v28;
    v29 = _Block_copy(v35);
    v30 = v29;
    if (searchCopy || (v29 = v28, !v24))
    {
      (*(v29 + 2))();
    }

    else
    {
      [v24 dismissViewControllerAnimated:0 completion:v30];
    }

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(buf, 8);

    v13 = v32;
    v21 = v34;
  }

  else
  {
    v31 = _PSLoggingFacility();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v31, OS_LOG_TYPE_DEFAULT, "PSURLManager: No root object in url", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 104) + 8) + 40))
  {
    v2 = [*(a1 + 32) specifierForBundle:*(a1 + 40)];
    v3 = *(*(a1 + 104) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = _PSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Special ROOT processing: %@ and %@", buf, 0x16u);
  }

  if ([*(a1 + 40) hasPrefix:@"ROOT"])
  {
    [*(a1 + 56) popRecursivelyToRootController];
    v8 = [*(a1 + 32) navigationController];
    v9 = [v8 topViewController];
    v10 = v9 == *(a1 + 32);

    v11 = *(a1 + 32);
    v12 = *(a1 + 64);
    if (v10)
    {
      [v11 _scrollToSpecifierWithID:v12 animated:0];
    }

    else
    {
      [v11 setDesiredVerticalContentOffsetItemNamed:v12];
    }
  }

  v13 = *(*(*(a1 + 104) + 8) + 40);
  if (v13 && (([v13 propertyForKey:@"enabled"], (v14 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(*(*(*(a1 + 104) + 8) + 40), "propertyForKey:", @"enabled"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLValue"), v15, v14, v16)))
  {
    v17 = _PSLoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(*(a1 + 104) + 8) + 40);
      v19 = [v18 properties];
      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "Trying to navigate to: %@ and %@", buf, 0x16u);
    }

    v20 = [*(a1 + 72) objectForKeyedSubscript:@"path"];
    v21 = [v20 pathComponents];

    v22 = [*(a1 + 80) currentSpecifierIDPath];
    if ([v22 count] >= 2)
    {
      v23 = [v22 subarrayWithRange:{1, objc_msgSend(v22, "count") - 1}];

      v22 = v23;
    }

    v24 = [MEMORY[0x1E695DF70] array];
    v25 = [MEMORY[0x1E695DF70] arrayWithArray:v21];
    v26 = [*(a1 + 80) splitViewController];
    v27 = [v26 categoryController];
    v28 = [v27 specifier];
    v29 = v28 == *(*(*(a1 + 104) + 8) + 40);

    if (v29)
    {
      v33 = [*(a1 + 80) splitViewController];
      v30 = [v33 categoryController];

      v34 = [*(*(*(a1 + 104) + 8) + 40) identifier];
      [v24 addObject:v34];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v91 = 0;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_26;
      v85[3] = &unk_1E71DECC8;
      v86 = v22;
      v87 = v24;
      v88 = v25;
      v89 = buf;
      [v21 enumerateObjectsUsingBlock:v85];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v30 = [*(a1 + 32) selectSpecifier:*(*(*(a1 + 104) + 8) + 40)];
    }

    v35 = [*(a1 + 40) hasPrefix:@"FollowUpList_"];
    if (v30)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    if (v36 == 1)
    {
      [*(a1 + 56) popRecursivelyToRootController];
      v37 = [*(a1 + 32) navigationController];
      v38 = [v37 topViewController];
      v39 = v38 == *(a1 + 32);

      v40 = *(a1 + 32);
      v41 = *(a1 + 40);
      if (v39)
      {
        [v40 _scrollToSpecifierWithID:v41 animated:0];
      }

      else
      {
        [v40 setDesiredVerticalContentOffsetItemNamed:v41];
      }

      v57 = _PSLoggingFacility();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B008000, v57, OS_LOG_TYPE_DEFAULT, "PSURLManager: skipping push for specifier that returns nil controller", buf, 2u);
      }

      v58 = *(a1 + 96);
      if (v58)
      {
        (*(v58 + 16))();
      }
    }

    else
    {
      v42 = [*(a1 + 32) shouldDeferPushForSpecifierID:*(a1 + 40) urlDictionary:*(a1 + 72)];
      v43 = [v24 containsObject:*(a1 + 40)];
      v44 = [v24 count];
      if (v43)
      {
        v45 = v44 != 0;
      }

      else
      {
        v45 = v44 > 1;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v91 = __Block_byref_object_copy__10;
      v92 = __Block_byref_object_dispose__10;
      v93 = 0;
      if ((v42 & 1) == 0)
      {
        if (v45)
        {
          v46 = [v24 lastObject];
          v47 = [*(a1 + 56) viewControllers];
          v82[0] = MEMORY[0x1E69E9820];
          v82[1] = 3221225472;
          v82[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_31;
          v82[3] = &unk_1E71DECF0;
          v48 = v46;
          v83 = v48;
          v84 = buf;
          [v47 enumerateObjectsWithOptions:2 usingBlock:v82];

          v49 = *(*&buf[8] + 40);
          v50 = [*(a1 + 56) topViewController];
          LOBYTE(v49) = v49 == v50;

          if ((v49 & 1) == 0)
          {
            v51 = [v25 count] == 0;
            v52 = [*(a1 + 56) popToViewController:*(*&buf[8] + 40) animated:v51];
          }

          v53 = *(*&buf[8] + 40);

          v54 = [*(*&buf[8] + 40) specifier];
          v55 = *(*(a1 + 104) + 8);
          v56 = *(v55 + 40);
          *(v55 + 40) = v54;

          v30 = v53;
        }

        else
        {
          [*(a1 + 56) setViewControllers:MEMORY[0x1E695E0F0]];
          [*(a1 + 32) setSkipSelectingDefaultCategoryOnLaunch:1];
        }
      }

      v59 = [*(a1 + 32) view];
      v60 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 120)];
      [*(a1 + 72) setObject:v60 forKeyedSubscript:@"animate"];

      if (v42)
      {
        v61 = *(a1 + 32);
        v62 = [v61 table];
        v63 = [v61 tableView:v62 willSelectRowAtIndexPath:*(*(*(a1 + 112) + 8) + 40)];
        v64 = *(*(a1 + 112) + 8);
        v65 = *(v64 + 40);
        *(v64 + 40) = v63;

        if (v63)
        {
          v66 = [*(a1 + 32) table];
          [v66 selectRowAtIndexPath:*(*(*(a1 + 112) + 8) + 40) animated:0 scrollPosition:0];

          [*(a1 + 80) popToRootAndSelectDefaultCategory:0 performWithoutDeferringTransitions:{objc_msgSend(*(a1 + 40), "isEqualToString:", @"PASSBOOK"}];
          v67 = *(a1 + 32);
          v68 = [v67 table];
          [v67 tableView:v68 didSelectRowAtIndexPath:*(*(*(a1 + 112) + 8) + 40)];

          v69 = _PSLoggingFacility();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *v81 = 0;
            _os_log_impl(&dword_18B008000, v69, OS_LOG_TYPE_DEFAULT, "PSURLManager: selecting top level tableview row", v81, 2u);
          }

          v70 = *(a1 + 96);
          if (v70)
          {
            (*(v70 + 16))();
          }
        }
      }

      else if (v45)
      {
        v71 = [*(a1 + 32) table];
        [v71 selectRowAtIndexPath:*(*(*(a1 + 112) + 8) + 40) animated:0 scrollPosition:0];

        if ([v25 count])
        {
          v72 = [*(a1 + 72) mutableCopy];
          v73 = [MEMORY[0x1E696AEC0] pathWithComponents:v25];
          [v72 setObject:v73 forKeyedSubscript:@"path"];

          v74 = [v25 firstObject];
          v75 = SFObjectAndOffsetForURLPair();

          [*(a1 + 80) setOffsetForController:v30 fromObjectPair:v75];
          v76 = _PSLoggingFacility();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *v81 = 0;
            _os_log_impl(&dword_18B008000, v76, OS_LOG_TYPE_DEFAULT, "PSURLManager: handling url reusing existing controllers", v81, 2u);
          }

          [*(a1 + 80) performURLHandlingForController:*(*&buf[8] + 40) dictionary:v72 items:v25 controllerNeedsPush:0 withCompletion:*(a1 + 96)];
        }

        else
        {
          v72 = [v21 lastObject];
          if (![v72 length])
          {
            v78 = [*(a1 + 72) objectForKeyedSubscript:@"root"];

            v72 = v78;
          }

          v75 = SFObjectAndOffsetForURLPair();
          if (v75)
          {
            [*(a1 + 80) setOffsetForController:*(*&buf[8] + 40) fromObjectPair:v75];
          }

          if ([v30 conformsToProtocol:&unk_1EFEC66D0] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v30 handleResourceDictionaryWhenAlreadyPresented:*(a1 + 72)];
          }

          v79 = _PSLoggingFacility();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            *v81 = 0;
            _os_log_impl(&dword_18B008000, v79, OS_LOG_TYPE_DEFAULT, "PSURLManager: handling url while already at destination", v81, 2u);
          }

          v80 = *(a1 + 96);
          if (v80)
          {
            (*(v80 + 16))();
          }
        }
      }

      else
      {
        v77 = _PSLoggingFacility();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *v81 = 0;
          _os_log_impl(&dword_18B008000, v77, OS_LOG_TYPE_DEFAULT, "PSURLManager: handling url", v81, 2u);
        }

        [*(a1 + 80) handleDeferredURLForSpecifierID:*(a1 + 40) resourceDictionary:*(a1 + 72) objectOffsetPair:*(a1 + 88) withCompletion:*(a1 + 96)];
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else if ([*(a1 + 32) shouldDeferPushForSpecifierID:*(a1 + 40) urlDictionary:*(a1 + 72)])
  {
    [*(a1 + 32) prepareHandlingURLForSpecifierID:*(a1 + 40) resourceDictionary:*(a1 + 72) animatePush:0 withCompletion:*(a1 + 96)];
  }

  else
  {
    v31 = _PSLoggingFacility();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v31, OS_LOG_TYPE_DEFAULT, "PSURLManager: Couldn't find top level specifier and loading was not deferred", buf, 2u);
    }

    v32 = *(a1 + 96);
    if (v32)
    {
      (*(v32 + 16))();
    }
  }
}

void __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_26(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v7 = SFObjectAndOffsetForURLPair();
  v15 = [v7 objectForKeyedSubscript:@"object"];

  v8 = v15;
  if (v15 && (v9 = [*(a1 + 32) count] > a3, v8 = v15, v9))
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v15 isEqualToString:v10];

    if (v11)
    {
      [*(a1 + 40) addObject:v15];
      v12 = *(a1 + 48);
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 24);
      *(v13 + 24) = v14 + 1;
      [v12 removeObjectAtIndex:a3 - v14];
    }

    else
    {
      *a4 = 1;
    }

    v8 = v15;
  }

  else
  {
    *a4 = 1;
  }
}

void __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_31(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 conformsToProtocol:&unk_1EFE6C730];
  v8 = v11;
  if (v7)
  {
    v9 = [v11 specifier];
    v10 = [v9 identifier];

    if (v10 && [v10 isEqualToString:*(a1 + 32)])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }

    v8 = v11;
  }
}

uint64_t __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke_138(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    return [v2 dismissViewControllerAnimated:0 completion:v3];
  }

  else
  {
    return (*(v3 + 16))(*(a1 + 40));
  }
}

- (id)keyValueDictionaryForURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  resourceSpecifier = [lCopy resourceSpecifier];
  v6 = [resourceSpecifier componentsSeparatedByString:@"&"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:{@"=", v17}];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:1];
          stringByRemovingPercentEncoding = [v13 stringByRemovingPercentEncoding];

          v15 = [v12 objectAtIndex:0];
          [dictionary setObject:stringByRemovingPercentEncoding forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return dictionary;
}

- (id)currentSpecifierIDPath
{
  rootController = [(PSURLManager *)self rootController];
  viewControllers = [rootController viewControllers];
  v4 = [viewControllers mutableCopy];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PSURLManager_currentSpecifierIDPath__block_invoke;
  v8[3] = &unk_1E71DED40;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __38__PSURLManager_currentSpecifierIDPath__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 specifier];
    v7 = [v6 identifier];

    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
  }
}

- (void)setOffsetForController:(id)controller fromObjectPair:(id)pair
{
  controllerCopy = controller;
  pairCopy = pair;
  v6 = [pairCopy objectForKeyedSubscript:@"offsetValue"];
  [v6 floatValue];
  v8 = v7;

  v9 = [pairCopy objectForKeyedSubscript:@"offsetItem"];

  if ([controllerCopy conformsToProtocol:&unk_1EFE6EBF8])
  {
    if (v8 == 0.0)
    {
      if ([v9 length])
      {
        [controllerCopy setDesiredVerticalContentOffsetItemNamed:v9];
      }
    }

    else
    {
      *&v10 = v8;
      [controllerCopy setDesiredVerticalContentOffset:v10];
    }
  }

  if ([v9 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [controllerCopy highlightSpecifierWithID:v9];
  }
}

- (void)performURLHandlingForController:(id)controller dictionary:(id)dictionary items:(id)items controllerNeedsPush:(BOOL)push withCompletion:(id)completion
{
  pushCopy = push;
  controllerCopy = controller;
  dictionaryCopy = dictionary;
  itemsCopy = items;
  completionCopy = completion;
  v16 = [dictionaryCopy objectForKeyedSubscript:@"animate"];
  bOOLValue = [v16 BOOLValue];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"fromSearch"];
  [v18 BOOLValue];

  v23 = 0;
  if ([itemsCopy count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [itemsCopy objectAtIndexedSubscript:0];
    v20 = SFObjectAndOffsetForURLPair();

    v21 = [v20 objectForKeyedSubscript:@"object"];
    if (v21)
    {
      v22 = [controllerCopy prepareHandlingURLForSpecifierID:v21 resourceDictionary:dictionaryCopy animatePush:&v23 withCompletion:completionCopy] ^ 1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  if (!pushCopy)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:bOOLValue];
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_15:
    [controllerCopy handleURL:dictionaryCopy withCompletion:completionCopy];
    goto LABEL_16;
  }

  if ((v23 & v22 & 1) == 0 && ((bOOLValue ^ 1) & 1) == 0)
  {
    [itemsCopy count];
  }

  [MEMORY[0x1E69DD250] setAnimationsEnabled:bOOLValue];
  [(PSSplitViewController *)self->_splitViewController showInitialViewController:controllerCopy];
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  [MEMORY[0x1E69DD250] enableAnimation];
}

- (void)handleDeferredURLForSpecifierID:(id)d resourceDictionary:(id)dictionary objectOffsetPair:(id)pair withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dictionaryCopy = dictionary;
  pairCopy = pair;
  completionCopy = completion;
  topLevelController = [(PSURLManager *)self topLevelController];
  v15 = [topLevelController specifierForID:dCopy];
  if (v15)
  {
    v16 = [topLevelController selectSpecifier:v15];
    if (v16)
    {
      v17 = [topLevelController indexPathForIndex:{objc_msgSend(topLevelController, "indexOfSpecifier:", v15)}];
      table = [topLevelController table];
      [table selectRowAtIndexPath:v17 animated:0 scrollPosition:0];

      [v16 setParentController:topLevelController];
      rootController = [(PSURLManager *)self rootController];
      [v16 setRootController:rootController];

      [v16 setSpecifier:v15];
      v25 = pairCopy;
      [(PSURLManager *)self setOffsetForController:v16 fromObjectPair:pairCopy];
      v20 = [dictionaryCopy objectForKeyedSubscript:@"path"];
      pathComponents = [v20 pathComponents];

      v22 = _PSLoggingFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = dCopy;
        _os_log_impl(&dword_18B008000, v22, OS_LOG_TYPE_DEFAULT, "PSURLManager: Handling deferred url for %@", buf, 0xCu);
      }

      [(PSURLManager *)self performURLHandlingForController:v16 dictionary:dictionaryCopy items:pathComponents controllerNeedsPush:1 withCompletion:completionCopy];
      pairCopy = v25;
    }

    else
    {
      v24 = _PSLoggingFacility();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = dCopy;
        _os_log_impl(&dword_18B008000, v24, OS_LOG_TYPE_DEFAULT, "PSURLManager: No controller for deferred URL-handling ID %@", buf, 0xCu);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }

  else
  {
    v23 = _PSLoggingFacility();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = dCopy;
      _os_log_impl(&dword_18B008000, v23, OS_LOG_TYPE_DEFAULT, "PSURLManager: No specifier for deferred URL-handling ID %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)handleDeferredURLForSpecifierID:(id)d resourceDictionary:(id)dictionary withCompletion:(id)completion
{
  completionCopy = completion;
  dictionaryCopy = dictionary;
  dCopy = d;
  v11 = [dictionaryCopy objectForKey:@"root"];
  stringByRemovingPercentEncoding = [v11 stringByRemovingPercentEncoding];

  v12 = SFObjectAndOffsetForURLPair();
  v13 = [dictionaryCopy mutableCopy];

  [(PSURLManager *)self handleDeferredURLForSpecifierID:dCopy resourceDictionary:v13 objectOffsetPair:v12 withCompletion:completionCopy];
}

- (void)popToRootAndSelectDefaultCategory:(BOOL)category performWithoutDeferringTransitions:(BOOL)transitions
{
  transitionsCopy = transitions;
  categoryCopy = category;
  topLevelController = [(PSURLManager *)self topLevelController];
  v8 = topLevelController;
  if (transitionsCopy)
  {
    v9 = MEMORY[0x1E69DD258];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PSURLManager_popToRootAndSelectDefaultCategory_performWithoutDeferringTransitions___block_invoke;
    v12[3] = &unk_1E71DBE20;
    v13 = topLevelController;
    [v9 _performWithoutDeferringTransitions:v12];

    if (!categoryCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    navigationController = [topLevelController navigationController];
    v11 = [navigationController popToRootViewControllerAnimated:0];

    if (!categoryCopy)
    {
      goto LABEL_7;
    }
  }

  if (([(PSSplitViewController *)self->_splitViewController isCollapsed]& 1) == 0)
  {
    [v8 selectDefaultCategoryForced:1];
  }

LABEL_7:
}

void __85__PSURLManager_popToRootAndSelectDefaultCategory_performWithoutDeferringTransitions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popToRootViewControllerAnimated:0];
}

- (id)urlForCurrentNavStack
{
  v71 = *MEMORY[0x1E69E9840];
  splitViewController = [(PSURLManager *)self splitViewController];
  containerNavigationController = [splitViewController containerNavigationController];
  topViewController = [containerNavigationController topViewController];

  v6 = topViewController;
  v7 = 0.0;
  if ([topViewController conformsToProtocol:&unk_1EFE6EBF8])
  {
    [topViewController verticalContentOffset];
    v7 = v8;
  }

  v61 = objc_alloc_init(MEMORY[0x1E696AD60]);
  splitViewController2 = [(PSURLManager *)self splitViewController];
  categoryController = [splitViewController2 categoryController];

  v59 = categoryController;
  if ([categoryController conformsToProtocol:&unk_1EFE6C730])
  {
    specifier = [categoryController specifier];
    identifier = [specifier identifier];
    v13 = identifier;
    v14 = @"ROOT";
    if (identifier)
    {
      v14 = identifier;
    }

    v15 = v14;
  }

  else
  {
    v16 = _PSLoggingFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 136315394;
      v68 = "[PSURLManager urlForCurrentNavStack]";
      v69 = 2114;
      v70 = v18;
      _os_log_impl(&dword_18B008000, v16, OS_LOG_TYPE_DEFAULT, "%s: Category controller doesn't have a specifier: %{public}@", buf, 0x16u);
    }

    v15 = @"ROOT";
  }

  v19 = 0x1E696A000uLL;
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v58 = v15;
  v21 = [(__CFString *)v15 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  [v61 appendFormat:@"prefs:root=%@", v21];

  if (v7 != 0.0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%0.0f", v7];
    uRLPathAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v24 = [v22 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];
    [v61 appendString:v24];
  }

  v25 = MEMORY[0x1E695DEC8];
  splitViewController3 = [(PSURLManager *)self splitViewController];
  containerNavigationController2 = [splitViewController3 containerNavigationController];
  viewControllers = [containerNavigationController2 viewControllers];
  v29 = [v25 arrayWithArray:viewControllers];

  if ([v29 count] >= 2)
  {
    v57 = v6;
    v30 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{1, objc_msgSend(v29, "count") - 1}];
    v31 = [v29 objectsAtIndexes:v30];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v29 = v31;
    v32 = [v29 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v63;
      v35 = 1;
      v60 = v29;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v63 != v34)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(*(&v62 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = v19;
            specifier2 = [v37 specifier];
            identifier2 = [specifier2 identifier];

            specifier3 = [v37 specifier];
            v42 = [specifier3 propertyForKey:@"id"];

            if (!v42)
            {
              specifier4 = [v37 specifier];
              specifier5 = [v37 specifier];
              identifier3 = [specifier5 identifier];
              [specifier4 setProperty:identifier3 forKey:@"id"];
            }

            if (![v37 canBeShownFromSuspendedState])
            {

              v29 = v60;
              goto LABEL_34;
            }

            v46 = 0.0;
            if ([v37 conformsToProtocol:&unk_1EFE6EBF8])
            {
              [v37 verticalContentOffset];
              v46 = v47;
            }

            v19 = v38;
            uRLPathAllowedCharacterSet3 = [*(v38 + 2824) URLPathAllowedCharacterSet];
            v49 = [identifier2 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet3];
            v50 = v49;
            if (v35)
            {
              v51 = @"&path=%@";
            }

            else
            {
              v51 = @"/%@";
            }

            [v61 appendFormat:v51, v49];

            if (v46 != 0.0)
            {
              v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%0.0f", v46];
              uRLPathAllowedCharacterSet4 = [*(v38 + 2824) URLPathAllowedCharacterSet];
              v54 = [v52 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet4];
              [v61 appendString:v54];

              v19 = v38;
            }

            v35 = 0;
            v29 = v60;
          }
        }

        v33 = [v29 countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:

    v6 = v57;
  }

  v55 = [MEMORY[0x1E695DFF8] URLWithString:v61];

  return v55;
}

@end