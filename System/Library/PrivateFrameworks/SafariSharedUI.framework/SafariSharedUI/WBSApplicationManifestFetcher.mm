@interface WBSApplicationManifestFetcher
+ (double)_longestEdgeForIcon:(id)icon;
+ (int64_t)_preferredPurposeForIcons:(id)icons;
+ (int64_t)_primaryPurposeForPurposes:(id)purposes;
+ (void)downloadImagesForManifest:(id)manifest linkIconParameters:(id)parameters usingWebView:(id)view withCompletionHandler:(id)handler;
- (WBSApplicationManifestFetcher)initWithWebView:(id)view;
- (void)getApplicationManifestWithCompletionHandler:(id)handler;
@end

@implementation WBSApplicationManifestFetcher

- (WBSApplicationManifestFetcher)initWithWebView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = WBSApplicationManifestFetcher;
  v5 = [(WBSApplicationManifestFetcher *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, viewCopy);
    v7 = v6;
  }

  return v6;
}

- (void)getApplicationManifestWithCompletionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = handlerCopy;
  state = self->_state;
  switch(state)
  {
    case 2:
      (*(handlerCopy + 2))(handlerCopy, self->_manifest);
      break;
    case 1:
      completionHandlers = self->_completionHandlers;
      v12 = _Block_copy(handlerCopy);
      v13 = [(NSArray *)completionHandlers arrayByAddingObject:v12];
      v14 = self->_completionHandlers;
      self->_completionHandlers = v13;

      break;
    case 0:
      v7 = _Block_copy(handlerCopy);
      v16[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      v9 = self->_completionHandlers;
      self->_completionHandlers = v8;

      self->_state = 1;
      WeakRetained = objc_loadWeakRetained(&self->_webView);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __77__WBSApplicationManifestFetcher_getApplicationManifestWithCompletionHandler___block_invoke;
      v15[3] = &unk_1E8283178;
      v15[4] = self;
      [WeakRetained _getApplicationManifestWithCompletionHandler:v15];

      break;
  }
}

void __77__WBSApplicationManifestFetcher_getApplicationManifestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  *(*(a1 + 32) + 32) = 2;
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

+ (void)downloadImagesForManifest:(id)manifest linkIconParameters:(id)parameters usingWebView:(id)view withCompletionHandler:(id)handler
{
  v93 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  parametersCopy = parameters;
  viewCopy = view;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (viewCopy)
  {
    v15 = dispatch_group_create();
    icons = [manifestCopy icons];
    v17 = [self _preferredPurposeForIcons:icons];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke;
    v90[3] = &__block_descriptor_40_e36_B16__0___WKApplicationManifestIcon_8l;
    v90[4] = v17;
    v18 = [icons safari_filterObjectsUsingBlock:v90];

    v63 = parametersCopy;
    if (![v18 count])
    {
      icons2 = [manifestCopy icons];

      v18 = icons2;
    }

    v59 = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke_2;
    aBlock[3] = &unk_1E8283210;
    group = v15;
    v87 = group;
    v60 = viewCopy;
    v88 = viewCopy;
    v61 = manifestCopy;
    v62 = manifestCopy;
    v89 = v62;
    v20 = _Block_copy(aBlock);
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v18;
    v21 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v83;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v83 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v82 + 1) + 8 * i);
          purposes = [v25 purposes];
          v27 = [purposes containsObject:&unk_1F466C930];

          v28 = [v25 src];
          v20[2](v20, v28, array, v27);
        }

        v22 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
      }

      while (v22);
    }

    startURL = [v62 startURL];
    v30 = [MEMORY[0x1E695DFF8] URLWithString:@"/favicon.ico" relativeToURL:startURL];
    absoluteURL = [v30 absoluteURL];

    v32 = [MEMORY[0x1E695DFF8] URLWithString:@"/apple-touch-icon.png" relativeToURL:startURL];
    absoluteURL2 = [v32 absoluteURL];

    v57 = startURL;
    v34 = [MEMORY[0x1E695DFF8] URLWithString:@"/apple-touch-icon-precomposed.png" relativeToURL:startURL];
    absoluteURL3 = [v34 absoluteURL];

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v68 = v63;
    v36 = [v68 countByEnumeratingWithState:&v78 objects:v91 count:16];
    v67 = absoluteURL3;
    if (v36)
    {
      v37 = v36;
      v38 = *v79;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          v40 = absoluteURL2;
          v41 = absoluteURL;
          if (*v79 != v38)
          {
            objc_enumerationMutation(v68);
          }

          v42 = *(*(&v78 + 1) + 8 * j);
          attributes = [v42 attributes];
          v44 = [attributes objectForKeyedSubscript:@"mask"];

          if (v44)
          {
            absoluteURL = v41;
            absoluteURL2 = v40;
            continue;
          }

          v45 = [v42 url];
          absoluteURL4 = [v45 absoluteURL];

          iconType = [v42 iconType];
          if (iconType == 2)
          {
            v20[2](v20, absoluteURL4, array4, 0);
            absoluteURL = v41;
            if ([absoluteURL4 isEqual:v67])
            {

              v67 = 0;
            }

            absoluteURL2 = v40;
            goto LABEL_31;
          }

          absoluteURL = v41;
          if (iconType == 1)
          {
            absoluteURL2 = v40;
            if ([absoluteURL4 isEqual:v40])
            {

              absoluteURL2 = 0;
            }

            v48 = v20[2];
            v49 = v20;
            v50 = absoluteURL4;
            v51 = array3;
            goto LABEL_27;
          }

          absoluteURL2 = v40;
          if (!iconType)
          {
            if ([absoluteURL4 isEqual:absoluteURL])
            {

              absoluteURL = 0;
            }

            v48 = v20[2];
            v49 = v20;
            v50 = absoluteURL4;
            v51 = array2;
LABEL_27:
            v48(v49, v50, v51, 0);
          }

LABEL_31:
        }

        v37 = [v68 countByEnumeratingWithState:&v78 objects:v91 count:16];
      }

      while (v37);
    }

    v20[2](v20, absoluteURL, array2, 0);
    v20[2](v20, absoluteURL2, array3, 0);
    v20[2](v20, v67, array4, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke_93;
    block[3] = &unk_1E8283238;
    v72 = array;
    v73 = v62;
    v74 = array2;
    v75 = array3;
    v76 = array4;
    v14 = v59;
    v77 = v59;
    v52 = array4;
    v53 = array3;
    v54 = array2;
    v55 = absoluteURL2;
    v56 = array;
    dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

    viewCopy = v60;
    manifestCopy = v61;
    parametersCopy = v63;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, manifestCopy);
  }
}

BOOL __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 purposes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 purposes];
    if ([v7 count])
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 32) == 1;
    }
  }

  return v6;
}

void __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a3;
  if (a2)
  {
    v8 = *(a1 + 32);
    v9 = a2;
    dispatch_group_enter(v8);
    v10 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:v9];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke_3;
    v12[3] = &unk_1E82831E8;
    v11 = *(a1 + 40);
    v13 = *(a1 + 32);
    v16 = a4;
    v14 = *(a1 + 48);
    v15 = v7;
    [v11 _loadAndDecodeImage:v10 constrainedToSize:-1 maximumBytesFromNetwork:v12 completionHandler:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  }
}

void __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke_4;
    block[3] = &unk_1E82831C0;
    v11 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) themeColor];
    [*(a1 + 40) safari_setThemeColor:v2];
  }

  [*(a1 + 48) addObject:*(a1 + 40)];
  v3 = *(a1 + 56);

  dispatch_group_leave(v3);
}

void __113__WBSApplicationManifestFetcher_downloadImagesForManifest_linkIconParameters_usingWebView_withCompletionHandler___block_invoke_93(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) safari_setIconKind:@"Manifest"];
    [*(a1 + 40) safari_setImages:*(a1 + 32)];
  }

  v2 = [MEMORY[0x1E69DCAB8] safari_largestSizedBitmapImageOrSVGFromImages:*(a1 + 48)];
  v3 = [MEMORY[0x1E69DCAB8] safari_largestSizedBitmapImageOrSVGFromImages:*(a1 + 56)];
  v4 = (a1 + 64);
  v5 = [MEMORY[0x1E69DCAB8] safari_largestSizedBitmapImageOrSVGFromImages:*(a1 + 64)];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v5 safari_isSVGImage] && !objc_msgSend(v3, "safari_isSVGImage"))
  {
    v9 = v6;
    goto LABEL_10;
  }

  [v6 safari_longestEdgeInPixels];
  v8 = v7;
  [v3 safari_longestEdgeInPixels];
  v9 = v6;
  if (v8 <= v10)
  {
LABEL_7:
    v4 = (a1 + 56);
    v9 = v3;
    if (!v3)
    {
      v11 = 0;
      v12 = 0;
      v29 = 0;
      goto LABEL_11;
    }
  }

LABEL_10:
  v12 = @"Touch";
  v29 = *v4;
  v11 = v9;
LABEL_11:
  if (([v11 safari_isSVGImage] & 1) == 0)
  {
    [v11 safari_longestEdgeInPixels];
    v14 = v13;
    [v2 safari_longestEdgeInPixels];
    v16 = v15;
    v17 = 64.0;
    if (v16 <= 64.0)
    {
      [v2 safari_longestEdgeInPixels];
    }

    if (v14 < v17)
    {
      v18 = @"Favicon";

      v19 = *(a1 + 48);
      v20 = v2;

      v11 = v20;
      v12 = v18;
      v29 = v19;
    }
  }

  v21 = [MEMORY[0x1E69DCAB8] safari_largestSizedBitmapImageOrSVGFromImages:*(a1 + 32)];
  [v21 safari_longestEdgeInPixels];
  v23 = v22;
  [v11 safari_longestEdgeInPixels];
  v25 = v24;
  v26 = [v11 safari_transparencyAnalysisResult];
  v27 = [v21 safari_themeColor];
  if (v27)
  {
  }

  else if ([v21 safari_transparencyAnalysisResult] == 2 && v26 != 2)
  {
    v28 = 128.0;
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v28 = v23 * 0.7;
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (!v21 || fabs(v25 + -512.0) <= 2.22044605e-16 || ([v21 safari_isSVGImage] & 1) == 0 && v25 >= v28)
  {
    [*(a1 + 40) safari_setIconKind:v12];
    [*(a1 + 40) safari_setImages:v29];
  }

LABEL_24:
  (*(*(a1 + 72) + 16))();
}

+ (double)_longestEdgeForIcon:(id)icon
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  sizes = [icon sizes];
  v4 = [sizes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(sizes);
        }

        [*(*(&v12 + 1) + 8 * i) floatValue];
        v10 = v9;
        if (v7 < v10)
        {
          v7 = v10;
        }
      }

      v5 = [sizes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (int64_t)_preferredPurposeForIcons:(id)icons
{
  v22 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [iconsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = 0.0;
    v9 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(iconsCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [self _longestEdgeForIcon:v11];
        if (v12 >= v8)
        {
          v13 = v12;
          purposes = [v11 purposes];
          v15 = [self _primaryPurposeForPurposes:purposes];

          if (v13 != v8 || v15 >= v9)
          {
            v8 = v13;
            v9 = v15;
          }
        }
      }

      v6 = [iconsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (int64_t)_primaryPurposeForPurposes:(id)purposes
{
  purposesCopy = purposes;
  if ([purposesCopy containsObject:&unk_1F466C948])
  {
    v4 = 4;
  }

  else if ([purposesCopy containsObject:&unk_1F466C930])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end