@interface UIConcretePasteboard
@end

@implementation UIConcretePasteboard

void __45___UIConcretePasteboard__saveItemCollection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 40) name];
    NSLog(&cfstr_CouldNotSavePa.isa, v7, v6);
  }

  else
  {
    v8 = _notificationStateQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___UIConcretePasteboard__saveItemCollection___block_invoke_3;
    block[3] = &unk_1E70F3590;
    v9 = v5;
    v12 = v9;
    dispatch_sync(v8, block);

    v10 = [v9 sharingToken];
    [*(a1 + 32) setSharingToken:v10];
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

uint64_t __45___UIConcretePasteboard__saveItemCollection___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) notificationState];
  _notificationStateQueue_notificationState = result;
  return result;
}

void __45___UIConcretePasteboard__saveItemCollection___block_invoke_5(uint64_t a1)
{
  v2 = _notificationStateQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___UIConcretePasteboard__saveItemCollection___block_invoke_6;
  block[3] = &unk_1E70FB728;
  block[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_sync(v2, block);
}

uint64_t __45___UIConcretePasteboard__saveItemCollection___block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) _pasteboardCacheQueue_saveItemCollection:*(a1 + 40) currentNotificationState:_notificationStateQueue_notificationState outNewNotificationState:?];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __59___UIConcretePasteboard__pasteboardNamed_createIfNotFound___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = _pasteboardCacheQueue_pasteboardForName(*(a1 + 32));
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if ((v2 & 1) == 0)
  {
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    if ([v4 _pasteboardCacheQueue_isPersistent])
    {
      if ((*(a1 + 65) & 1) == 0)
      {
        v5 = _pasteboardCacheQueue_existingItemCollectionWithName(*(a1 + 32), 0);

        if (!v5)
        {
          _pasteboardCacheQueue_removePasteboardForName(*(a1 + 32));
          v6 = *(*(a1 + 40) + 8);
          v7 = *(v6 + 40);
          *(v6 + 40) = 0;
        }
      }
    }
  }

  else
  {
    v8 = _pasteboardCacheQueue_existingItemCollectionWithName(*(a1 + 32), 0);

    if (v8)
    {
      v9 = [objc_alloc(*(a1 + 56)) _initWithName:*(a1 + 32)];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else if (*(a1 + 65) == 1)
    {
      v12 = [objc_alloc(*(a1 + 56)) _initWithName:*(a1 + 32)];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      if (([*(a1 + 32) isEqualToString:@"com.apple.UIKit.pboard.general"] & 1) != 0 || !_UIApplicationIsExtension() || (dyld_program_sdk_at_least() & 1) == 0)
      {
        v15 = _notificationStateQueue();
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __59___UIConcretePasteboard__pasteboardNamed_createIfNotFound___block_invoke_2;
        v20[3] = &unk_1E71188B0;
        v21 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
        dispatch_sync(v15, v20);
      }
    }

    v16 = *(*(*(a1 + 40) + 8) + 40);
    if (v16 && (*(a1 + 64) & 1) == 0)
    {
      v17 = *(a1 + 32);
      v18 = v16;
      v19 = _pasteboardCacheQueue_PasteboardNameToPasteboardMap();
      [v19 setObject:v18 forKeyedSubscript:v17];
    }
  }
}

uint64_t __59___UIConcretePasteboard__pasteboardNamed_createIfNotFound___block_invoke_2(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) _pasteboardCacheQueue_setPersistent:1 currentNotificationState:_notificationStateQueue_notificationState outNewNotificationState:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __59___UIConcretePasteboard__existingCachedPasteboardWithName___block_invoke(uint64_t a1)
{
  v2 = _pasteboardCacheQueue_pasteboardForName(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __50___UIConcretePasteboard_removePasteboardWithName___block_invoke(uint64_t a1)
{
  v2 = _pasteboardCacheQueue_pasteboardForName(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  _pasteboardCacheQueue_removePasteboardForName(*(a1 + 32));
  _pasteboardCacheQueue_removeItemCollectionForName(*(a1 + 32));
  v5 = *(a1 + 32);

  _pasteboardCacheQueue_removePinnedItemCollectionForName(v5);
}

void __81___UIConcretePasteboard__pinItemProviders_forPasteboardNamed_withExpirationDate___block_invoke(uint64_t a1)
{
  v2 = _pasteboardCacheQueue_itemCollectionForName(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    if ([*(a1 + 32) isEqualToString:@"com.apple.UIKit.pboard.general"])
    {
      _getTemporaryLocalGeneralPasteboard(0);
    }

    else
    {
      _pasteboardCacheQueue_existingItemCollectionWithName(*(a1 + 32), 0);
    }
    v5 = ;
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = objc_alloc_init(MEMORY[0x1E69BC808]);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

uint64_t __37___UIConcretePasteboard_isPersistent__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _pasteboardCacheQueue_isPersistent];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __40___UIConcretePasteboard__setPersistent___block_invoke(uint64_t a1)
{
  v2 = _notificationStateQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___UIConcretePasteboard__setPersistent___block_invoke_2;
  block[3] = &unk_1E711A3E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  dispatch_sync(v2, block);
}

uint64_t __40___UIConcretePasteboard__setPersistent___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _pasteboardCacheQueue_setPersistent:*(a1 + 48) currentNotificationState:_notificationStateQueue_notificationState outNewNotificationState:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __36___UIConcretePasteboard_changeCount__block_invoke(uint64_t a1)
{
  v3 = _pasteboardCacheQueue_existingItemCollectionWithName(*(*(a1 + 32) + 8), 0);
  v2 = _pasteboardCacheQueue_countOffsetForName(*(*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = [v3 changeCount] + v2;
}

void __60___UIConcretePasteboard__changeCountIgnoringPinningActivity__block_invoke(uint64_t a1)
{
  v2 = _pasteboardCacheQueue_existingItemCollectionWithName(*(*(a1 + 32) + 8), 0);
  *(*(*(a1 + 40) + 8) + 24) = [v2 changeCount];
}

void __56___UIConcretePasteboard_itemProvidersWithRetryBehavior___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___UIConcretePasteboard_itemProvidersWithRetryBehavior___block_invoke_2;
  block[3] = &unk_1E70F0F78;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __51___UIConcretePasteboard_pasteboardTypesForItemSet___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = [*(a1 + 32) items];
  v5 = [v4 count];

  v6 = *(a1 + 32);
  if (v5 <= a2)
  {
    v10 = [v6 name];
    v8 = [*(a1 + 32) items];
    NSLog(&cfstr_AttemptingToQu.isa, v10, a2, [v8 count]);
  }

  else
  {
    v7 = [v6 items];
    v10 = [v7 objectAtIndexedSubscript:a2];

    v8 = [v10 availableTypes];
    if (v8)
    {
      [*(a1 + 40) addObject:v8];
    }

    else
    {
      v9 = [*(a1 + 32) name];
      NSLog(&cfstr_PasteboardItem.isa, v9, a2);
    }
  }
}

void __59___UIConcretePasteboard_containsPasteboardTypes_inItemSet___block_invoke(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) items];
  v7 = [v6 count];

  if (v7 > a2)
  {
    v8 = [*(a1 + 32) items];
    v9 = [v8 objectAtIndexedSubscript:a2];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([v9 hasRepresentationConformingToType:{*(*(&v15 + 1) + 8 * i), v15}])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            *a3 = 1;
            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

void __59___UIConcretePasteboard_valuesForPasteboardType_inItemSet___block_invoke(uint64_t a1, unint64_t a2)
{
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__152;
  v57 = __Block_byref_object_dispose__152;
  v58 = 0;
  v4 = [*(a1 + 32) items];
  v5 = [v4 count];

  v6 = *(a1 + 32);
  if (v5 <= a2)
  {
    v10 = [v6 name];
    v20 = [*(a1 + 32) items];
    NSLog(&cfstr_AttemptingToCo_0.isa, v10, a2, [v20 count]);

    goto LABEL_31;
  }

  v7 = [v6 items];
  v8 = [v7 objectAtIndexedSubscript:a2];

  v9 = *(a1 + 40);
  v10 = v8;
  v11 = v9;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__152;
  v90 = __Block_byref_object_dispose__152;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__152;
  v84 = __Block_byref_object_dispose__152;
  v85 = 0;
  v12 = +[_UIConcretePasteboard _loadRequestContextForBlockingUIKitCall];
  if ([UIPasteboardTypeListImage containsObject:v11] && objc_msgSend(v10, "uikit_canInstantiateObjectOfClass:", objc_opt_class()))
  {
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__152;
    v70 = __Block_byref_object_dispose__152;
    v71 = 0;
    v13 = dispatch_semaphore_create(0);
    v14 = objc_opt_class();
    v73 = MEMORY[0x1E69E9820];
    v74 = 3221225472;
    v75 = ___coerceItemToType_block_invoke;
    v76 = &unk_1E711A480;
    v78 = &v66;
    v79 = &v80;
    v15 = v13;
    v77 = v15;
    v16 = [v10 uikit_loadObjectOfClass:v14 context:v12 completionBlock:&v73];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);

    if (*(v67 + 40))
    {
      v17 = [*MEMORY[0x1E6982F28] identifier];
      v18 = [v11 isEqualToString:v17];

      if (v18)
      {
        v19 = UIImagePNGRepresentation(*(v67 + 40));
LABEL_19:
        v38 = v87[5];
        v87[5] = v19;

        goto LABEL_20;
      }

      v36 = [*MEMORY[0x1E6982E58] identifier];
      v37 = [v11 isEqualToString:v36];

      if (v37)
      {
        v19 = _UIImageJPEGRepresentation(*(v67 + 40), 0, 0.9);
        goto LABEL_19;
      }
    }

LABEL_20:
    if (!v87[5])
    {
      objc_storeStrong(v87 + 5, *(v67 + 40));
    }

    _Block_object_dispose(&v66, 8);
    v35 = v71;
    goto LABEL_23;
  }

  if ([UIPasteboardTypeListColor containsObject:v11] && objc_msgSend(v10, "uikit_canInstantiateObjectOfClass:", objc_opt_class()))
  {
    v21 = dispatch_semaphore_create(0);
    v22 = objc_opt_class();
    v73 = MEMORY[0x1E69E9820];
    v74 = 3221225472;
    v75 = ___coerceItemToType_block_invoke_2;
    v76 = &unk_1E711A480;
    v78 = &v86;
    v79 = &v80;
    v23 = v21;
    v77 = v23;
    v24 = [v10 uikit_loadObjectOfClass:v22 context:v12 completionBlock:&v73];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_24;
  }

  if (![UIPasteboardTypeListURL containsObject:v11])
  {
    goto LABEL_24;
  }

  if ([v10 uikit_canInstantiateObjectOfClass:objc_opt_class()])
  {
    v25 = dispatch_semaphore_create(0);
    v26 = objc_opt_class();
    v73 = MEMORY[0x1E69E9820];
    v74 = 3221225472;
    v75 = ___coerceItemToType_block_invoke_3;
    v76 = &unk_1E711A480;
    v78 = &v86;
    v79 = &v80;
    v27 = v25;
    v77 = v27;
    v28 = [v10 uikit_loadObjectOfClass:v26 context:v12 completionBlock:&v73];
    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v87[5] || ![v10 uikit_canInstantiateObjectOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__152;
  v63 = __Block_byref_object_dispose__152;
  v64 = 0;
  v29 = dispatch_semaphore_create(0);
  v30 = objc_opt_class();
  v66 = MEMORY[0x1E69E9820];
  v67 = 3221225472;
  v68 = ___coerceItemToType_block_invoke_4;
  v69 = &unk_1E711A480;
  v71 = &v59;
  v72 = &v80;
  v31 = v29;
  v70 = v31;
  v32 = [v10 uikit_loadObjectOfClass:v30 context:v12 completionBlock:&v66];
  dispatch_semaphore_wait(v31, 0xFFFFFFFFFFFFFFFFLL);

  v33 = [MEMORY[0x1E695DFF8] URLWithString:*(v60 + 40) encodingInvalidCharacters:0];
  v34 = v87[5];
  v87[5] = v33;

  _Block_object_dispose(&v59, 8);
  v35 = v64;
LABEL_23:

LABEL_24:
  if (!v87[5] && [UIPasteboardTypeListString containsObject:v11] && objc_msgSend(v10, "uikit_canInstantiateObjectOfClass:", objc_opt_class()))
  {
    v39 = dispatch_semaphore_create(0);
    v40 = objc_opt_class();
    v59 = MEMORY[0x1E69E9820];
    v60 = 3221225472;
    v61 = ___coerceItemToType_block_invoke_5;
    v62 = &unk_1E711A480;
    v64 = &v86;
    v65 = &v80;
    v41 = v39;
    v63 = v41;
    v42 = [v10 uikit_loadObjectOfClass:v40 context:v12 completionBlock:&v59];
    dispatch_semaphore_wait(v41, 0xFFFFFFFFFFFFFFFFLL);
  }

  _recordHangAssertionIfNecessaryForResponseMetadata(v81[5]);
  v43 = v87[5];

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);

  v44 = v54[5];
  v54[5] = v43;

  if (!v54[5] && [v10 hasRepresentationConformingToType:*(a1 + 40)])
  {
    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = __Block_byref_object_copy__152;
    v77 = __Block_byref_object_dispose__152;
    v78 = 0;
    v45 = dispatch_semaphore_create(0);
    v46 = *(a1 + 40);
    v47 = *(a1 + 48);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __59___UIConcretePasteboard_valuesForPasteboardType_inItemSet___block_invoke_2;
    v49[3] = &unk_1E711A430;
    v51 = &v53;
    v52 = &v73;
    v48 = v45;
    v50 = v48;
    [v10 uikit_loadRepresentationAsType:v46 context:v47 completionBlock:v49];
    dispatch_semaphore_wait(v48, 0xFFFFFFFFFFFFFFFFLL);

    _recordHangAssertionIfNecessaryForResponseMetadata(*(v74 + 40));
    _Block_object_dispose(&v73, 8);
  }

LABEL_31:

  if (v54[5])
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:?];
  }

  _Block_object_dispose(&v53, 8);
}

void __59___UIConcretePasteboard_valuesForPasteboardType_inItemSet___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v20 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v20)
  {
    v12 = *(*(a1 + 40) + 8);
    v13 = v20;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    v15 = [v9 readDataToEndOfFile];
    v16 = *(*(a1 + 40) + 8);
    v14 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

LABEL_6:
  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v10;
  v19 = v10;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke(uint64_t a1, unint64_t a2)
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__152;
  v53 = __Block_byref_object_dispose__152;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__152;
  v47 = __Block_byref_object_dispose__152;
  v48 = 0;
  v4 = [*(a1 + 32) items];
  v5 = [v4 count];

  v6 = *(a1 + 32);
  if (v5 <= a2)
  {
    v8 = [v6 name];
    v12 = [*(a1 + 32) items];
    NSLog(&cfstr_AttemptingToRe_2.isa, v8, a2, [v12 count]);
  }

  else
  {
    v7 = [v6 items];
    v8 = [v7 objectAtIndexedSubscript:a2];

    if ([*(a1 + 40) isEqualToString:0x1EFB86090])
    {
      v9 = dispatch_semaphore_create(0);
      v10 = objc_opt_class();
      v11 = *(a1 + 48);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke_2;
      v39[3] = &unk_1E711A480;
      v41 = &v49;
      v42 = &v43;
      v12 = v9;
      v40 = v12;
      v13 = [v8 uikit_loadObjectOfClass:v10 context:v11 completionBlock:v39];
      dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v14 = [v8 representationConformingToType:*(a1 + 40)];
      v12 = v14;
      if (v14)
      {
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 1;
        v15 = MEMORY[0x1E6982C40];
        v16 = [v14 typeIdentifier];
        v17 = [v15 _typeWithIdentifier:v16 allowUndeclared:1];

        if ([v17 conformsToType:*MEMORY[0x1E6982F98]])
        {
          v18 = dispatch_semaphore_create(0);
          v19 = *(a1 + 48);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke_3;
          v30[3] = &unk_1E711A4A8;
          v32 = &v49;
          v33 = &v35;
          v34 = &v43;
          v20 = v18;
          v31 = v20;
          v21 = [v12 loadFileCopyWithContext:v19 completion:v30];
          dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
        }

        if (*(v36 + 24) == 1)
        {
          v22 = dispatch_semaphore_create(0);
          v23 = *(a1 + 48);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke_4;
          v26[3] = &unk_1E711A4D0;
          v28 = &v49;
          v29 = &v43;
          v24 = v22;
          v27 = v24;
          v25 = [v12 loadDataWithContext:v23 completion:v26];
          dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
        }

        _Block_object_dispose(&v35, 8);
      }
    }
  }

  if (v50[5])
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:?];
  }

  _recordHangAssertionIfNecessaryForResponseMetadata(v44[5]);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
}

void __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke_2(uint64_t a1, UIImage *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = UIImagePNGRepresentation(a2);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v19 = 0;
    v7 = [v5 getResourceValue:&v19 forKey:*MEMORY[0x1E695DB78] error:0];
    v8 = v19;
    v9 = v8;
    if (v7 && [v8 BOOLValue])
    {
      v10 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v5 options:1 error:0];
      v11 = [v10 serializedRepresentation];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else
    {
      v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:2 error:0];
      v15 = *(*(a1 + 40) + 8);
      v10 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v6;
  v18 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57___UIConcretePasteboard_dataForPasteboardType_inItemSet___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __30___UIConcretePasteboard_items__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = v9;
    goto LABEL_18;
  }

  if (!v9 && v10)
  {
    v9 = [v10 readDataToEndOfFile];
  }

  v14 = *(a1 + 32);
  v13 = v9;
  v15 = v14;
  v16 = v15;
  if (!v13)
  {
    goto LABEL_12;
  }

  if (!v15)
  {
    NSLog(&cfstr_SMustBeCalledW_3.isa, "_magicallyConvertDataToObject");
LABEL_12:
    v18 = 0;
    goto LABEL_16;
  }

  if (![UIPasteboardTypeListImage containsObject:v15])
  {
    if (![UIPasteboardTypeListColor containsObject:v16])
    {
      if ([UIPasteboardTypeListURL containsObject:v16])
      {
        v28 = [MEMORY[0x1E696AE40] propertyListWithData:v13 options:0 format:0 error:0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 count] >= 2)
        {
          v43 = v16;
          v29 = [v28 objectAtIndex:1];
          v30 = [v29 isEqualToString:&stru_1EFB14550];

          v31 = MEMORY[0x1E695DFF8];
          if (v30)
          {
            v32 = [v28 objectAtIndexedSubscript:0];
            v33 = v31;
            v34 = v32;
            v18 = [v33 URLWithString:v32 encodingInvalidCharacters:0];
          }

          else
          {
            v40 = [v28 objectAtIndexedSubscript:1];
            v34 = [v31 URLWithString:v40 encodingInvalidCharacters:0];

            if (v34)
            {
              v41 = MEMORY[0x1E695DFF8];
              v42 = [v28 objectAtIndexedSubscript:0];
              v18 = [v41 URLWithString:v42 relativeToURL:v34];
            }

            else
            {
              v18 = 0;
            }
          }

          v16 = v43;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v44 = v16;
        v46 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v16 allowUndeclared:1];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = UIPasteboardTypeListString;
        v35 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v48;
          while (2)
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v48 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = [MEMORY[0x1E6982C40] _typeWithIdentifier:*(*(&v47 + 1) + 8 * i) allowUndeclared:1];
              if ([v46 conformsToType:v39])
              {
                v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 usedEncoding:0];

                goto LABEL_35;
              }
            }

            v36 = [(NSArray *)obj countByEnumeratingWithState:&v47 objects:v51 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }

        v18 = v13;
LABEL_35:

        v16 = v44;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if ([v16 isEqual:0x1EFB86090])
  {
LABEL_14:
    v19 = objc_opt_class();
    v17 = _UISecurelyDecodePasteboardDataToObject(v13, v19);
    goto LABEL_15;
  }

  v17 = [UIImage imageWithData:v13];
LABEL_15:
  v18 = v17;
LABEL_16:

  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v18;

  v22 = *(*(a1 + 48) + 8);
  v24 = *(v22 + 40);
  v23 = (v22 + 40);
  if (!v24)
  {
    objc_storeStrong(v23, v9);
  }

LABEL_18:
  v25 = *(*(a1 + 56) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v11;
  v27 = v11;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __80___UIConcretePasteboard__setItemsAndSave_options_coerceStringsToURLs_dataOwner___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __51___UIConcretePasteboard_setData_forPasteboardType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69BC828];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:*(a1 + 32)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___UIConcretePasteboard_setData_forPasteboardType___block_invoke_2;
  v8[3] = &unk_1E70F3590;
  v9 = *(a1 + 40);
  (*(v5 + 2))(v5, 0, v6, 0, 0, v8);

  return 0;
}

void __51___UIConcretePasteboard_setData_forPasteboardType___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

void __61___UIConcretePasteboard__setItemsAndSaveFromObjects_ofClass___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = _NSFullMethodName();
    v8 = NSStringFromClass(*(a1 + 48));
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v5 raise:v6 format:{@"%@: Item %ld is not an object of type %@ [%@]", v7, a3, v8, v10}];
  }

  v11 = [objc_alloc(MEMORY[0x1E69BC800]) initWithObject:v12];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
}

void __58___UIConcretePasteboard__detectedPasteboardTypesForTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 present])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __58___UIConcretePasteboard__detectedPasteboardTypesForTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58___UIConcretePasteboard__detectedPasteboardTypesForTypes___block_invoke_3;
  v5[3] = &unk_1E711A5E8;
  v6 = *(a1 + 32);
  v4 = a2;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
  [*(a1 + 40) addPatternDetections:v4];

  dispatch_semaphore_signal(*(a1 + 48));
}

void __58___UIConcretePasteboard__detectedPasteboardTypesForTypes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 present])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __64___UIConcretePasteboard__detectedPasteboardTypeStringsForTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 present])
  {
    v6 = [v5 value];

    if (v6)
    {
      v7 = [v5 value];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
    }

    else
    {
      [*(a1 + 40) addObject:v8];
    }
  }
}

void __64___UIConcretePasteboard__detectedPasteboardTypeStringsForTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64___UIConcretePasteboard__detectedPasteboardTypeStringsForTypes___block_invoke_3;
  v5[3] = &unk_1E711A5E8;
  v6 = *(a1 + 32);
  v4 = a2;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
  [*(a1 + 40) addPatternDetections:v4];

  dispatch_semaphore_signal(*(a1 + 48));
}

void __64___UIConcretePasteboard__detectedPasteboardTypeStringsForTypes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 present])
  {
    v6 = [v5 value];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

void __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PBIndexOutOfRangeError();
  (*(v1 + 16))(v1, 0, v2);
}

void __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 present])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _pasteboardCompletionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_5;
    block[3] = &unk_1E70F4A50;
    v8 = &v18;
    v18 = a1[6];
    v9 = &v17;
    v17 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_6;
    v14[3] = &unk_1E711A5E8;
    v8 = &v15;
    v15 = a1[4];
    [v5 enumerateKeysAndObjectsUsingBlock:v14];
    [a1[5] addPatternDetections:v5];
    v10 = _pasteboardCompletionQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_7;
    v11[3] = &unk_1E70F4A50;
    v9 = &v13;
    v13 = a1[6];
    v12 = a1[4];
    dispatch_async(v10, v11);

    v7 = v12;
  }
}

void __93___UIConcretePasteboard__detectPatternsForPatterns_atIndex_itemCollection_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 present])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"com.apple.uikit.pasteboard-detection-pattern.dd.link";
  v2[1] = @"com.apple.uikit.pasteboard-detection-pattern.dd.phone";
  v3[0] = &__block_literal_global_93_2;
  v3[1] = &__block_literal_global_97_2;
  v2[2] = @"com.apple.uikit.pasteboard-detection-pattern.dd.email";
  v2[3] = @"com.apple.uikit.pasteboard-detection-pattern.dd.address";
  v3[2] = &__block_literal_global_101_2;
  v3[3] = &__block_literal_global_105;
  v2[4] = @"com.apple.uikit.pasteboard-detection-pattern.dd.event";
  v2[5] = @"com.apple.uikit.pasteboard-detection-pattern.dd.shipment";
  v3[4] = &__block_literal_global_109_1;
  v3[5] = &__block_literal_global_113_4;
  v2[6] = @"com.apple.uikit.pasteboard-detection-pattern.dd.flight";
  v2[7] = @"com.apple.uikit.pasteboard-detection-pattern.dd.money";
  v3[6] = &__block_literal_global_117_0;
  v3[7] = &__block_literal_global_121_2;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = _MergedGlobals_5_18;
  _MergedGlobals_5_18 = v0;
}

id __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966730];
  v3 = a2;
  v4 = [[v2 alloc] initWithDDScannerResult:v3];

  return v4;
}

id __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966740];
  v3 = a2;
  v4 = [[v2 alloc] initWithDDScannerResult:v3];

  return v4;
}

id __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966720];
  v3 = a2;
  v4 = [[v2 alloc] initWithDDScannerResult:v3];

  return v4;
}

id __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966748];
  v3 = a2;
  v4 = [[v2 alloc] initWithDDScannerResult:v3];

  return v4;
}

id __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966718];
  v3 = a2;
  v4 = [[v2 alloc] initWithDDScannerResult:v3];

  return v4;
}

id __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966750];
  v3 = a2;
  v4 = [[v2 alloc] initWithDDScannerResult:v3];

  return v4;
}

id __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966728];
  v3 = a2;
  v4 = [[v2 alloc] initWithDDScannerResult:v3];

  return v4;
}

id __53___UIConcretePasteboard_clientValueForValue_pattern___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966738];
  v3 = a2;
  v4 = [[v2 alloc] initWithDDScannerResult:v3];

  return v4;
}

void __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PBIndexOutOfRangeError();
  (*(v1 + 16))(v1, 0, v2);
}

void __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 present])
  {
    v6 = [v5 value];

    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = [v5 value];
      v9 = [v7 clientValueForValue:v8 pattern:v10];

      if (v9)
      {
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
      }
    }

    else
    {
      [*(a1 + 40) addObject:v10];
    }
  }
}

void __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _pasteboardCompletionQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_5;
    block[3] = &unk_1E70F4A50;
    v8 = &v18;
    v18 = *(a1 + 48);
    v9 = &v17;
    v17 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_6;
    v14[3] = &unk_1E711A7B0;
    v15[1] = *(a1 + 56);
    v8 = v15;
    v15[0] = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v14];
    [*(a1 + 40) addPatternDetections:v5];
    v10 = _pasteboardCompletionQueue();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_7;
    v11[3] = &unk_1E70F4A50;
    v9 = &v13;
    v13 = *(a1 + 48);
    v12 = *(a1 + 32);
    dispatch_async(v10, v11);

    v7 = v12;
  }
}

void __91___UIConcretePasteboard__detectValuesForPatterns_atIndex_itemCollection_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v5 present])
  {
    v6 = *(a1 + 40);
    v7 = [v5 value];
    v8 = [v6 clientValueForValue:v7 pattern:v9];

    if (v8)
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
    }
  }
}

void __95___UIConcretePasteboard__asynchronouslyEnumerateItemSet_itemsCompletionHandler_usingItemBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (a2)
  {
    v10[0] = a2;
    v5 = MEMORY[0x1E695DEC8];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:v10 count:1];
    (*(v3 + 16))(v3, v8, v6);
  }

  else
  {
    v9 = *(v3 + 16);
    v7 = a3;
    v9(v3, 0, v7);
    v8 = 0;
  }
}

void __95___UIConcretePasteboard__asynchronouslyEnumerateItemSet_itemsCompletionHandler_usingItemBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (v16)
  {
    v6 = v16;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  objc_storeStrong((*(a1 + 48) + 8 * *(a1 + 56)), v6);
  add = atomic_fetch_add((*(*(a1 + 40) + 8) + 24), 1uLL);
  v9 = *(a1 + 64);
  if (add == v9 - 1)
  {
    if (v9)
    {
      v10 = 0;
      while (1)
      {
        v11 = *(*(a1 + 48) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (++v10 >= *(a1 + 64))
        {
          goto LABEL_9;
        }
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v11);
    }

    else
    {
LABEL_9:
      v12 = *(a1 + 32);
      v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:*(a1 + 48) count:*(a1 + 64)];
      (*(v12 + 16))(v12, v11, 0);
    }

    if (*(a1 + 64))
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + 48);
        v15 = *(v14 + 8 * v13);
        *(v14 + 8 * v13) = 0;

        ++v13;
      }

      while (v13 < *(a1 + 64));
    }

    free(*(a1 + 48));
  }
}

void __115___UIConcretePasteboard__requestSecurePasteAuthenticationMessageWithContext_forClientVersionedPID_completionBlock___block_invoke(uint64_t a1)
{
  v2 = _serverConnection();
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v15 = 0;
  v5 = [v2 requestSecurePasteAuthenticationMessageWithContext:v3 forClientVersionedPID:v4 error:&v15];
  v6 = v15;

  v7 = _pasteboardCompletionQueue();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115___UIConcretePasteboard__requestSecurePasteAuthenticationMessageWithContext_forClientVersionedPID_completionBlock___block_invoke_2;
  v11[3] = &unk_1E70FD548;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

@end