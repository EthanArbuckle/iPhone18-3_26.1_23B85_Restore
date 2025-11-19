@interface PSURLManager
+ (id)sharedManager;
- (id)currentSpecifierIDPath;
- (id)keyValueDictionaryForURL:(id)a3;
- (id)urlForCurrentNavStack;
- (void)handleDeferredURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 objectOffsetPair:(id)a5 withCompletion:(id)a6;
- (void)handleDeferredURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 withCompletion:(id)a5;
- (void)performURLHandlingForController:(id)a3 dictionary:(id)a4 items:(id)a5 controllerNeedsPush:(BOOL)a6 withCompletion:(id)a7;
- (void)popToRootAndSelectDefaultCategory:(BOOL)a3 performWithoutDeferringTransitions:(BOOL)a4;
- (void)processURL:(id)a3 animated:(BOOL)a4 fromSearch:(BOOL)a5 withCompletion:(id)a6;
- (void)setOffsetForController:(id)a3 fromObjectPair:(id)a4;
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

- (void)processURL:(id)a3 animated:(BOOL)a4 fromSearch:(BOOL)a5 withCompletion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = MEMORY[0x1E695DFF8];
  v11 = [a3 absoluteString];
  v12 = [v11 stringByReplacingOccurrencesOfString:@"%00" withString:&stru_1EFE45030];
  v13 = [v10 URLWithString:v12];

  v14 = [(PSURLManager *)self keyValueDictionaryForURL:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [v14 setObject:v15 forKeyedSubscript:@"fromSearch"];

  v16 = [v14 objectForKey:@"root"];
  v17 = [v16 stringByRemovingPercentEncoding];

  v18 = SFObjectAndOffsetForURLPair();
  v19 = [v18 objectForKey:@"object"];
  v20 = [v18 objectForKey:@"offsetItem"];
  v21 = v20;
  if (v19)
  {
    v34 = v20;
    v32 = v13;
    v22 = [(PSURLManager *)self rootController];
    v23 = [(PSURLManager *)self topLevelController];
    *buf = 0;
    v54 = buf;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__10;
    v57 = __Block_byref_object_dispose__10;
    v58 = [v23 specifierForID:v19];
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x3032000000;
    v51[3] = __Block_byref_object_copy__10;
    v51[4] = __Block_byref_object_dispose__10;
    v52 = [v23 indexPathForIndex:{objc_msgSend(v23, "indexOfSpecifier:", *(v54 + 5))}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PSURLManager_processURL_animated_fromSearch_withCompletion___block_invoke;
    aBlock[3] = &unk_1E71DED18;
    v48 = buf;
    v24 = v23;
    v39 = v24;
    v40 = v19;
    v41 = v17;
    v25 = v22;
    v42 = v25;
    v43 = v34;
    v44 = v14;
    v45 = self;
    v50 = a4;
    v47 = v9;
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
    if (v6 || (v29 = v28, !v24))
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

    if (v9)
    {
      v9[2](v9);
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

- (id)keyValueDictionaryForURL:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [v3 resourceSpecifier];
  v6 = [v5 componentsSeparatedByString:@"&"];

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
          v14 = [v13 stringByRemovingPercentEncoding];

          v15 = [v12 objectAtIndex:0];
          [v4 setObject:v14 forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v4;
}

- (id)currentSpecifierIDPath
{
  v2 = [(PSURLManager *)self rootController];
  v3 = [v2 viewControllers];
  v4 = [v3 mutableCopy];

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

- (void)setOffsetForController:(id)a3 fromObjectPair:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"offsetValue"];
  [v6 floatValue];
  v8 = v7;

  v9 = [v5 objectForKeyedSubscript:@"offsetItem"];

  if ([v11 conformsToProtocol:&unk_1EFE6EBF8])
  {
    if (v8 == 0.0)
    {
      if ([v9 length])
      {
        [v11 setDesiredVerticalContentOffsetItemNamed:v9];
      }
    }

    else
    {
      *&v10 = v8;
      [v11 setDesiredVerticalContentOffset:v10];
    }
  }

  if ([v9 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v11 highlightSpecifierWithID:v9];
  }
}

- (void)performURLHandlingForController:(id)a3 dictionary:(id)a4 items:(id)a5 controllerNeedsPush:(BOOL)a6 withCompletion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v13 objectForKeyedSubscript:@"animate"];
  v17 = [v16 BOOLValue];

  v18 = [v13 objectForKeyedSubscript:@"fromSearch"];
  [v18 BOOLValue];

  v23 = 0;
  if ([v14 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [v14 objectAtIndexedSubscript:0];
    v20 = SFObjectAndOffsetForURLPair();

    v21 = [v20 objectForKeyedSubscript:@"object"];
    if (v21)
    {
      v22 = [v12 prepareHandlingURLForSpecifierID:v21 resourceDictionary:v13 animatePush:&v23 withCompletion:v15] ^ 1;
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

  if (!v8)
  {
    [MEMORY[0x1E69DD250] setAnimationsEnabled:v17];
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_15:
    [v12 handleURL:v13 withCompletion:v15];
    goto LABEL_16;
  }

  if ((v23 & v22 & 1) == 0 && ((v17 ^ 1) & 1) == 0)
  {
    [v14 count];
  }

  [MEMORY[0x1E69DD250] setAnimationsEnabled:v17];
  [(PSSplitViewController *)self->_splitViewController showInitialViewController:v12];
  if ((v22 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  [MEMORY[0x1E69DD250] enableAnimation];
}

- (void)handleDeferredURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 objectOffsetPair:(id)a5 withCompletion:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PSURLManager *)self topLevelController];
  v15 = [v14 specifierForID:v10];
  if (v15)
  {
    v16 = [v14 selectSpecifier:v15];
    if (v16)
    {
      v17 = [v14 indexPathForIndex:{objc_msgSend(v14, "indexOfSpecifier:", v15)}];
      v18 = [v14 table];
      [v18 selectRowAtIndexPath:v17 animated:0 scrollPosition:0];

      [v16 setParentController:v14];
      v19 = [(PSURLManager *)self rootController];
      [v16 setRootController:v19];

      [v16 setSpecifier:v15];
      v25 = v12;
      [(PSURLManager *)self setOffsetForController:v16 fromObjectPair:v12];
      v20 = [v11 objectForKeyedSubscript:@"path"];
      v21 = [v20 pathComponents];

      v22 = _PSLoggingFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&dword_18B008000, v22, OS_LOG_TYPE_DEFAULT, "PSURLManager: Handling deferred url for %@", buf, 0xCu);
      }

      [(PSURLManager *)self performURLHandlingForController:v16 dictionary:v11 items:v21 controllerNeedsPush:1 withCompletion:v13];
      v12 = v25;
    }

    else
    {
      v24 = _PSLoggingFacility();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&dword_18B008000, v24, OS_LOG_TYPE_DEFAULT, "PSURLManager: No controller for deferred URL-handling ID %@", buf, 0xCu);
      }

      if (v13)
      {
        v13[2](v13);
      }
    }
  }

  else
  {
    v23 = _PSLoggingFacility();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v10;
      _os_log_impl(&dword_18B008000, v23, OS_LOG_TYPE_DEFAULT, "PSURLManager: No specifier for deferred URL-handling ID %@", buf, 0xCu);
    }

    if (v13)
    {
      v13[2](v13);
    }
  }
}

- (void)handleDeferredURLForSpecifierID:(id)a3 resourceDictionary:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 objectForKey:@"root"];
  v14 = [v11 stringByRemovingPercentEncoding];

  v12 = SFObjectAndOffsetForURLPair();
  v13 = [v9 mutableCopy];

  [(PSURLManager *)self handleDeferredURLForSpecifierID:v10 resourceDictionary:v13 objectOffsetPair:v12 withCompletion:v8];
}

- (void)popToRootAndSelectDefaultCategory:(BOOL)a3 performWithoutDeferringTransitions:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PSURLManager *)self topLevelController];
  v8 = v7;
  if (v4)
  {
    v9 = MEMORY[0x1E69DD258];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PSURLManager_popToRootAndSelectDefaultCategory_performWithoutDeferringTransitions___block_invoke;
    v12[3] = &unk_1E71DBE20;
    v13 = v7;
    [v9 _performWithoutDeferringTransitions:v12];

    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [v7 navigationController];
    v11 = [v10 popToRootViewControllerAnimated:0];

    if (!v5)
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
  v3 = [(PSURLManager *)self splitViewController];
  v4 = [v3 containerNavigationController];
  v5 = [v4 topViewController];

  v6 = v5;
  v7 = 0.0;
  if ([v5 conformsToProtocol:&unk_1EFE6EBF8])
  {
    [v5 verticalContentOffset];
    v7 = v8;
  }

  v61 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v9 = [(PSURLManager *)self splitViewController];
  v10 = [v9 categoryController];

  v59 = v10;
  if ([v10 conformsToProtocol:&unk_1EFE6C730])
  {
    v11 = [v10 specifier];
    v12 = [v11 identifier];
    v13 = v12;
    v14 = @"ROOT";
    if (v12)
    {
      v14 = v12;
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
  v20 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v58 = v15;
  v21 = [(__CFString *)v15 stringByAddingPercentEncodingWithAllowedCharacters:v20];
  [v61 appendFormat:@"prefs:root=%@", v21];

  if (v7 != 0.0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%0.0f", v7];
    v23 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v24 = [v22 stringByAddingPercentEncodingWithAllowedCharacters:v23];
    [v61 appendString:v24];
  }

  v25 = MEMORY[0x1E695DEC8];
  v26 = [(PSURLManager *)self splitViewController];
  v27 = [v26 containerNavigationController];
  v28 = [v27 viewControllers];
  v29 = [v25 arrayWithArray:v28];

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
            v39 = [v37 specifier];
            v40 = [v39 identifier];

            v41 = [v37 specifier];
            v42 = [v41 propertyForKey:@"id"];

            if (!v42)
            {
              v43 = [v37 specifier];
              v44 = [v37 specifier];
              v45 = [v44 identifier];
              [v43 setProperty:v45 forKey:@"id"];
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
            v48 = [*(v38 + 2824) URLPathAllowedCharacterSet];
            v49 = [v40 stringByAddingPercentEncodingWithAllowedCharacters:v48];
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
              v53 = [*(v38 + 2824) URLPathAllowedCharacterSet];
              v54 = [v52 stringByAddingPercentEncodingWithAllowedCharacters:v53];
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