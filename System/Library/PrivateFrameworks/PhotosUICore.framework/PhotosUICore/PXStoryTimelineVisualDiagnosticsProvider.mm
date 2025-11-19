@interface PXStoryTimelineVisualDiagnosticsProvider
- (PXStoryTimelineVisualDiagnosticsProvider)init;
- (PXStoryTimelineVisualDiagnosticsProvider)initWithModel:(id)a3 screenScale:(double)a4;
- (id)_autoEditDebugInfoBySegmentInTimeline:(id)a3;
- (id)_descriptionForDurationInfo:(id *)a3;
- (id)_descriptionForFaces:(id)a3 context:(id)a4;
- (id)_descriptionForMovementType:(int64_t)a3;
- (id)_displayStringForPrivateString:(id)a3 context:(id)a4;
- (id)_moduleDescriptionsBySegmentInTimeline:(id)a3;
- (id)_moduleStartSegmentIndexesInTimeline:(id)a3;
- (id)_momentEndSegmentIndexesInTimeline:(id)a3;
- (id)_movementDescriptionForSegmentAtIndex:(int64_t)a3 inTimeline:(id)a4;
- (id)_segmentIndexesWithInvalidOrderOutTransitionInTimeline:(id)a3;
- (id)_tvPreviewRankByAssetUUIDForMemory:(id)a3;
- (unint64_t)_approxLinesInString:(id)a3 lineLength:(unint64_t)a4;
- (void)_addAssetsDetailsTable:(id)a3;
- (void)_addCinematicDiagnostics:(id)a3;
- (void)_addCropDiagnostics:(id)a3;
- (void)_addDetailedSaliencyDiagnostics:(id)a3;
- (void)_addMiscellaneousDiagnostics:(id)a3;
- (void)_addSegmentsAutoEditDebugInfoTables:(id)a3 debugInfoKeys:(id)a4;
- (void)_addSegmentsDetailsTable:(id)a3;
- (void)_drawAsset:(id)a3 inRect:(CGRect)a4 context:(id)a5;
- (void)_drawSegmentAtIndex:(int64_t)a3 timeline:(id)a4 inRect:(CGRect)a5 options:(unint64_t)a6 context:(id)a7;
- (void)_drawVerticalInRect:(CGRect)a3 backgroundColor:(id)a4 context:(id)a5 configuration:(id)a6;
- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4;
@end

@implementation PXStoryTimelineVisualDiagnosticsProvider

- (id)_tvPreviewRankByAssetUUIDForMemory:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 rankedPreviewAssetsForLength:4 targetSize:{1920.0, 1080.0}];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PXStoryTimelineVisualDiagnosticsProvider__tvPreviewRankByAssetUUIDForMemory___block_invoke;
  v9[3] = &unk_1E773FD18;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __79__PXStoryTimelineVisualDiagnosticsProvider__tvPreviewRankByAssetUUIDForMemory___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v9 = [v5 numberWithUnsignedInteger:a3];
  v7 = *(a1 + 32);
  v8 = [v6 uuid];

  [v7 setObject:v9 forKeyedSubscript:v8];
}

- (void)_drawVerticalInRect:(CGRect)a3 backgroundColor:(id)a4 context:(id)a5 configuration:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  CGContextSaveGState([v9 CGContext]);
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  PXRectGetCenter();
}

- (void)_drawAsset:(id)a3 inRect:(CGRect)a4 context:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = a3;
  v13 = [(PXStoryTimelineVisualDiagnosticsProvider *)self helper];
  [v13 drawAsset:v12 inRect:v11 context:{x, y, width, height}];
}

- (id)_displayStringForPrivateString:(id)a3 context:(id)a4
{
  v5 = a3;
  if ([a4 isPrivateDataAllowed])
  {
    v6 = v5;
  }

  else
  {
    v6 = [&stru_1F1741150 stringByPaddingToLength:objc_msgSend(v5 withString:"length") startingAtIndex:{@"*", 0}];
  }

  v7 = v6;

  return v7;
}

- (void)_drawSegmentAtIndex:(int64_t)a3 timeline:(id)a4 inRect:(CGRect)a5 options:(unint64_t)a6 context:(id)a7
{
  v8 = a6;
  width = a5.size.width;
  height = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = a7;
  v12 = [v10 identifierForSegmentAtIndex:a3];
  if (v10)
  {
    [v10 timeRangeForSegmentWithIdentifier:v12];
  }

  v13 = [v11 CGContext];
  CGContextSaveGState(v13);
  if ((v8 & 2) != 0)
  {
    v14 = 6.0;
  }

  else
  {
    v14 = 0.0;
  }

  v24.origin.x = x;
  v24.origin.y = v18;
  v24.size.width = v20;
  v24.size.height = v22;
  v15 = CGPathCreateWithRoundedRect(v24, v14, v14, 0);
  CGContextAddPath(v13, v15);
  v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.9 alpha:1.0];
  CGContextSetFillColorWithColor(v13, [v16 CGColor]);

  CGContextFillPath(v13);
  CGPathRelease(v15);
  CGContextClip(v13);
  [v10 size];
  PXRectWithOriginAndSize();
}

void __96__PXStoryTimelineVisualDiagnosticsProvider__drawSegmentAtIndex_timeline_inRect_options_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v22 = a1 + 72;
    v7 = a1 + 64;
    v8 = a4 + 16;
    v9 = (a5 + 8);
    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *v9;
      v12 = [*(a1 + 32) clipWithIdentifier:*(v9 - 1)];
      if (!v12)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:@"PXStoryTimelineVisualDiagnosticsProvider.m" lineNumber:1212 description:{@"Invalid parameter not satisfying: %@", @"clip != nil"}];
      }

      if (v11 != 3)
      {
        if (v11 == 1)
        {
          v13 = [v12 resource];
          v14 = [v13 px_storyResourceDisplayAsset];

          if (!v14)
          {
            v21 = [MEMORY[0x1E696AAA8] currentHandler];
            [v21 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:@"PXStoryTimelineVisualDiagnosticsProvider.m" lineNumber:1219 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
          }

          PXRectNormalize();
        }

        goto LABEL_15;
      }

      v15 = [v12 resource];
      v16 = [v15 px_storyResourceTextResourceInfo];
      v17 = [v16 string];

      v18 = [v15 px_storyResourceTextType];
      v19 = v7;
      if (!v18)
      {
        goto LABEL_13;
      }

      if (v18 == 1)
      {
        break;
      }

LABEL_14:

LABEL_15:
      v9 += 96;

      objc_autoreleasePoolPop(v10);
      v8 += 32;
      if (!--v5)
      {
        return;
      }
    }

    v19 = v22;
LABEL_13:
    objc_storeStrong((*(*v19 + 8) + 40), v17);
    goto LABEL_14;
  }
}

void __96__PXStoryTimelineVisualDiagnosticsProvider__drawSegmentAtIndex_timeline_inRect_options_context___block_invoke_3(void *a1, void *a2)
{
  aBlock = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __96__PXStoryTimelineVisualDiagnosticsProvider__drawSegmentAtIndex_timeline_inRect_options_context___block_invoke_4;
  v16 = &unk_1E7732D08;
  v4 = a1[5];
  v17 = a1[4];
  v18 = v4;
  v5 = a2;
  v6 = _Block_copy(&aBlock);
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = v6[2](v6, *(*(a1[6] + 8) + 40));
  v9 = v6[2](v6, *(*(a1[7] + 8) + 40));
  v10 = [v7 initWithFormat:@"%@\n%@", v8, v9, aBlock, v14, v15, v16, v17];
  [v5 setText:v10];

  v11 = [MEMORY[0x1E69DC888] whiteColor];
  [v5 setTextColor:v11];

  v12 = [MEMORY[0x1E69DC888] orangeColor];
  [v5 setBackgroundColor:v12];

  [v5 setFontSize:8.0];
  [v5 setRelativePosition:{0.0, 0.0}];
}

uint64_t __96__PXStoryTimelineVisualDiagnosticsProvider__drawSegmentAtIndex_timeline_inRect_options_context___block_invoke_4(uint64_t a1, __CFString *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = &stru_1F1741150;
  }

  return [*(a1 + 32) _displayStringForPrivateString:v2 context:*(a1 + 40)];
}

void __96__PXStoryTimelineVisualDiagnosticsProvider__drawSegmentAtIndex_timeline_inRect_options_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v11 = a2;
  v5 = [v4 uuid];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) localCreationDate];
  v8 = [v6 stringFromDate:v7];
  v9 = [v3 stringWithFormat:@"%@\n%@", v5, v8];
  [v11 setText:v9];

  v10 = [MEMORY[0x1E69DC888] whiteColor];
  [v11 setTextColor:v10];

  [v11 setFontSize:4.0];
  [v11 setRelativePosition:{0.0, 1.0}];
}

- (id)_descriptionForFaces:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v5 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_15:

      if (++v8 >= [v5 count])
      {
        goto LABEL_19;
      }
    }

    v10 = MEMORY[0x1E6978980];
    v11 = [v9 photoLibrary];
    v12 = [v11 librarySpecificFetchOptions];
    v13 = [v10 fetchPersonWithFace:v9 options:v12];
    v14 = [v13 firstObject];

    if (v14)
    {
      if (![v6 isPrivateDataAllowed] || (objc_msgSend(v14, "name"), (v15 = objc_claimAutoreleasedReturnValue()) == 0) && (objc_msgSend(v14, "displayName"), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = [v14 localIdentifier];
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v16 = v15;
      if (![(__CFString *)v15 length])
      {

        v16 = @"<unnamed>";
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = @"?";
    }

    if (!v8)
    {
LABEL_14:
      [v7 appendFormat:@"%li: %@", v8, v16];

      goto LABEL_15;
    }

LABEL_13:
    [v7 appendString:{@", "}];
    goto LABEL_14;
  }

LABEL_19:
  v17 = [v7 copy];

  return v17;
}

- (void)_addMiscellaneousDiagnostics:(id)a3
{
  v4 = a3;
  [v4 addTitlePageWithTitle:@"Timeline" subtitle:@"Miscellaneous"];
  [v4 beginPage];
  [v4 currentPageBounds];
  v17 = CGRectInset(v16, 20.0, 20.0);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __73__PXStoryTimelineVisualDiagnosticsProvider__addMiscellaneousDiagnostics___block_invoke;
  v13 = &unk_1E7732CB8;
  v14 = self;
  v15 = v4;
  v9 = v4;
  [v9 drawTextInRect:&v10 configuration:{x, y, width, height}];
  [v9 endPage];
}

void __73__PXStoryTimelineVisualDiagnosticsProvider__addMiscellaneousDiagnostics___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  a2;
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [*(a1 + 32) configuration];
  v5 = [v4 assetCollection];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v3 appendFormat:@"%@\n", v7];

    v8 = [v5 uuid];
    [v3 appendFormat:@"\tUUID: %@\n", v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      v10 = [MEMORY[0x1E69788F0] stringForCategory:{objc_msgSend(v9, "category")}];
      [v3 appendFormat:@"\tCategory: %@", v10];

      v11 = [v9 subcategory];
      if (v11)
      {
        v12 = [MEMORY[0x1E69788F0] stringForSubcategory:v11];
        [v3 appendFormat:@" (%@)", v12];
      }

      [v3 appendString:@"\n"];
      v13 = [v9 featuredPersonLocalIdentifiers];
      [v3 appendFormat:@"\tFeatured: %li\n", objc_msgSend(v13, "count")];
      v38 = v9;
      v14 = [v9 photoLibrary];
      v15 = [v14 librarySpecificFetchOptions];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v16 = v13;
      v40 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v40)
      {
        v17 = *v42;
        v39 = *v42;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v16);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            v20 = MEMORY[0x1E6978980];
            v45 = v19;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            v22 = [v20 fetchPersonsWithLocalIdentifiers:v21 options:v15];
            v23 = [v22 firstObject];

            if ([*(a1 + 40) isPrivateDataAllowed])
            {
              v24 = objc_alloc(MEMORY[0x1E696AEC0]);
              v25 = [v23 name];
              v26 = v25;
              if (v25)
              {
                v27 = [v24 initWithFormat:@"%@ (%@)", v25, v19];
              }

              else
              {
                [v23 displayName];
                v28 = v16;
                v29 = v15;
                v30 = a1;
                v32 = v31 = v3;
                v27 = [v24 initWithFormat:@"%@ (%@)", v32, v19];

                v3 = v31;
                a1 = v30;
                v15 = v29;
                v16 = v28;
                v17 = v39;
              }
            }

            else
            {
              v27 = v19;
            }

            [v3 appendFormat:@"\t\t%@\n", v27];
          }

          v40 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v40);
      }
    }
  }

  v33 = [MEMORY[0x1E696AAE8] mainBundle];
  v34 = [v33 infoDictionary];
  v35 = [v33 bundleIdentifier];
  v36 = [v34 objectForKeyedSubscript:@"CFBundleShortVersionString"];
  v37 = [v34 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
  [v3 appendFormat:@"Main Bundle: %@ %@ (%@)\n", v35, v36, v37];

  [*(a1 + 32) model];
  [objc_claimAutoreleasedReturnValue() timelineSpec];
  [objc_claimAutoreleasedReturnValue() layoutDirection];
  PXUserInterfaceLayoutDirectionDescription();
}

- (void)_addDetailedSaliencyDiagnostics:(id)a3
{
  v4 = a3;
  [v4 addTitlePageWithTitle:@"Assets" subtitle:@"Detailed Saliency"];
  v12 = v4;
  [v4 CGContext];
  v5 = [(PXStoryTimelineVisualDiagnosticsProvider *)self resourcesDataSource];
  v6 = [v5 detailedSaliency];
  v13 = objc_opt_respondsToSelector();
  if ([v5 numberOfDisplayAssetResources] >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [v5 displayAssetResourceAtIndex:v7];
      v9 = [v8 px_storyResourceDisplayAsset];

      v10 = [v6 saliencyAreasForDisplayAsset:v9];
      if (v13)
      {
        v11 = [v6 rawSaliencyAreasForDisplayAsset:v9];
      }

      else
      {
        v11 = 0;
      }

      if ([v10 count] || objc_msgSend(v11, "count"))
      {
        [v12 beginPage];
        memset(&slice, 0, sizeof(slice));
        [v12 currentPageBounds];
        slice = CGRectInset(v17, 10.0, 10.0);
        memset(&remainder, 0, sizeof(remainder));
        memset(&v14, 0, sizeof(v14));
        CGRectDivide(slice, &slice, &remainder, 40.0, CGRectMaxYEdge);
        CGRectDivide(slice, &v14, &slice, 30.0, CGRectMaxYEdge);
        [v9 aspectRatio];
        PXRectWithAspectRatioFittingRect();
      }

      ++v7;
    }

    while (v7 < [v5 numberOfDisplayAssetResources]);
  }
}

void __76__PXStoryTimelineVisualDiagnosticsProvider__addDetailedSaliencyDiagnostics___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v12 = a6;
  v13 = a7;
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  if (!CGRectIsEmpty(v14))
  {
    PXRectFlippedVertically();
  }
}

void __76__PXStoryTimelineVisualDiagnosticsProvider__addDetailedSaliencyDiagnostics___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  obj = a2;
  if ([obj countByEnumeratingWithState:v3 objects:v4 count:16])
  {
    [**(&v3[0] + 1) confidence];
    PXFloatDenormalize();
  }
}

void __76__PXStoryTimelineVisualDiagnosticsProvider__addDetailedSaliencyDiagnostics___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

void __76__PXStoryTimelineVisualDiagnosticsProvider__addDetailedSaliencyDiagnostics___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setText:v3];
  [v4 setFontSize:7.0];
  [v4 setTextColor:*(a1 + 40)];
  [v4 setRelativePosition:{0.0, *(a1 + 48)}];
}

- (void)_addCropDiagnostics:(id)a3
{
  [a3 addTitlePageWithTitle:@"Timeline" subtitle:@"Crops"];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self helper];
  objc_claimAutoreleasedReturnValue();
  v4 = [(PXStoryTimelineVisualDiagnosticsProvider *)self timeline];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self resourcesDataSource];
  objc_claimAutoreleasedReturnValue();
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
  [v5 setTimeZone:v6];

  [v5 setTimeStyle:2];
  [v5 setDateStyle:1];
  v7 = [(PXStoryTimelineVisualDiagnosticsProvider *)self configuration];
  v8 = [v7 assetCollection];

  [[PXStoryDefaultDisplayAssetCroppingContext alloc] initWithAssetCollection:v8 detailedSaliency:0];
  v9 = +[PXStorySettings sharedInstance];
  v10 = [v9 showTVPreviewInDiagnostics];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PXStoryTimelineVisualDiagnosticsProvider *)self _tvPreviewRankByAssetUUIDForMemory:v8];
      objc_claimAutoreleasedReturnValue();
    }
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__54976;
  v12[4] = __Block_byref_object_dispose__54977;
  v12[5] = 0;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    [v4 timeRange];
  }

  [v4 size];
  PXRectWithOriginAndSize();
}

void __64__PXStoryTimelineVisualDiagnosticsProvider__addCropDiagnostics___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = (a5 + 8);
    do
    {
      v8 = objc_autoreleasePoolPush();
      if (*v7 == 1)
      {
        v9 = [*(a1 + 32) clipWithIdentifier:*(v7 - 1)];
        v10 = [v9 resource];

        v11 = [v10 px_storyResourceDisplayAsset];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = *(a1 + 48);
          v14 = [v12 localIdentifier];
          [v13 addObject:v14];

          if (!*(*(*(a1 + 56) + 8) + 40))
          {
            v15 = [v12 photoLibrary];
            v16 = *(*(a1 + 56) + 8);
            v17 = *(v16 + 40);
            *(v16 + 40) = v15;
          }
        }
      }

      objc_autoreleasePoolPop(v8);
      v7 += 96;
      --v5;
    }

    while (v5);
  }
}

void __64__PXStoryTimelineVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      context = objc_autoreleasePoolPush();
      v5 = (a5 + 768 * i);
      v6 = *v5;
      v7 = v5[1];
      v41 = *(v5 + 1);
      v8 = *(v5 + 11);
      v9 = *(v5 + 15);
      v38 = *(v5 + 13);
      v39 = v9;
      v40 = *(v5 + 17);
      v10 = *(v5 + 7);
      v34 = *(v5 + 5);
      v35 = v10;
      v11 = *(v5 + 9);
      v37 = v8;
      v36 = v11;
      v25 = v5[19];
      memcpy(__dst, v5 + 20, sizeof(__dst));
      if (v7 == 1)
      {
        v12 = [*(a1 + 32) clipWithIdentifier:v6];
        if (!v12)
        {
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          [v20 handleFailureInMethod:*(a1 + 112) object:*(a1 + 40) file:@"PXStoryTimelineVisualDiagnosticsProvider.m" lineNumber:922 description:{@"Invalid parameter not satisfying: %@", @"clip != nil"}];

          v12 = 0;
        }

        v13 = [v12 resource];
        v27 = [v13 px_storyResourceDisplayAsset];

        if (!v27)
        {
          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          [v21 handleFailureInMethod:*(a1 + 112) object:*(a1 + 40) file:@"PXStoryTimelineVisualDiagnosticsProvider.m" lineNumber:924 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
        }

        v14 = *(a1 + 48);
        v15 = [off_1E7721490 alloc];
        v16 = *(off_1E7722228 + 1);
        v29[0] = *off_1E7722228;
        v29[1] = v16;
        v17 = [v15 initWithSectionObject:v27 itemObject:0 subitemObject:0 indexPath:v29];
        v18 = [v14 indexForDisplayAssetReference:v17];

        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = [*(a1 + 48) movieHighlightsForDisplayAssetAtIndex:v18];
          PXStoryMovieHighlightForPlaybackStyle(v19, v25);
          objc_claimAutoreleasedReturnValue();
        }

        [*(a1 + 56) beginPage];
        memset(&slice, 0, sizeof(slice));
        [*(a1 + 56) currentPageBounds];
        slice = CGRectInset(v43, 10.0, 10.0);
        memset(&remainder, 0, sizeof(remainder));
        memset(&v30, 0, sizeof(v30));
        CGRectDivide(slice, &slice, &remainder, 260.0, CGRectMaxYEdge);
        CGRectDivide(slice, &v30, &slice, 250.0, CGRectMaxYEdge);
        [v27 aspectRatio];
        PXRectWithAspectRatioFittingRect();
      }

      objc_autoreleasePoolPop(context);
    }
  }
}

void __64__PXStoryTimelineVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 672);
  v7[4] = *(a1 + 656);
  v7[5] = v4;
  v7[6] = *(a1 + 688);
  v8 = *(a1 + 704);
  v5 = *(a1 + 608);
  v7[0] = *(a1 + 592);
  v7[1] = v5;
  v6 = *(a1 + 640);
  v7[2] = *(a1 + 624);
  v7[3] = v6;
  [v3 setKenBurnsAnimationInfo:v7];
  [v3 setMovieHighlight:*(a1 + 32)];
  if (*(a1 + 808) == 1)
  {
    [v3 setTVPreviewSize:{1920.0, 1080.0}];
  }
}

void __64__PXStoryTimelineVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  *(*(*(a1 + 56) + 8) + 24) = a4;
  v6 = [*(a1 + 32) _descriptionForFaces:a5 context:*(a1 + 40)];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __64__PXStoryTimelineVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) appendFormat:@" %@", v3];
  }
}

void __64__PXStoryTimelineVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:10.0];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

- (id)_segmentIndexesWithInvalidOrderOutTransitionInTimeline:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (v3)
  {
    [v3 timeRange];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __99__PXStoryTimelineVisualDiagnosticsProvider__segmentIndexesWithInvalidOrderOutTransitionInTimeline___block_invoke;
  v12 = &unk_1E773B9D8;
  v13 = v3;
  v14 = v4;
  v5 = v4;
  v6 = v3;
  [v6 enumerateSegmentsInTimeRange:v15 usingBlock:&v9];
  v7 = [v5 copy];

  return v7;
}

uint64_t __99__PXStoryTimelineVisualDiagnosticsProvider__segmentIndexesWithInvalidOrderOutTransitionInTimeline___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 >= 2)
  {
    v19 = v9;
    v20 = v8;
    v21 = v7;
    v22 = v6;
    v23 = v5;
    v24 = v4;
    v25 = v10;
    v26 = v11;
    v13 = result;
    v14 = 0;
    v15 = a2 - 1;
    do
    {
      v16 = *a4;
      v17 = *(a4 + 48);
      v18 = a4[25];
      a4 += 25;
      result = [PXStoryTransitionProducer isSupportedTransitionWithKind:v17 fromSegmentIdentifier:v16 toSegmentIdentifier:v18 inTimeline:*(v13 + 32), v19, v20, v21, v22, v23, v24, v25, v26];
      if ((result & 1) == 0)
      {
        result = [*(v13 + 40) addIndex:v14];
      }

      ++v14;
    }

    while (v15 != v14);
  }

  return result;
}

- (id)_moduleStartSegmentIndexesInTimeline:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v7 = [(PXStoryTimelineVisualDiagnosticsProvider *)self model];
  v8 = [v7 currentStyle];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 autoEditDecisionList];
    if (v9)
    {
      v10 = v9;
      if (v5)
      {
        [v5 timeRange];
      }

      else
      {
        memset(v20, 0, sizeof(v20));
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __81__PXStoryTimelineVisualDiagnosticsProvider__moduleStartSegmentIndexesInTimeline___block_invoke;
      v14[3] = &unk_1E7732BA0;
      v15 = v5;
      v16 = self;
      v19 = a2;
      v17 = v10;
      v18 = v6;
      v11 = v10;
      [v15 enumerateSegmentsInTimeRange:v20 usingBlock:v14];
    }
  }

  v12 = [v6 copy];

  return v12;
}

uint64_t __81__PXStoryTimelineVisualDiagnosticsProvider__moduleStartSegmentIndexesInTimeline___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    v3 = *(result + 32);
    v4 = [v3 identifierForSegmentAtIndex:0];
    if (v3)
    {
      [v3 timeRangeForSegmentWithIdentifier:v4];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2020000000;
    v6 = 0;
    [*(v2 + 32) size];
    PXRectWithOriginAndSize();
  }

  return result;
}

void __81__PXStoryTimelineVisualDiagnosticsProvider__moduleStartSegmentIndexesInTimeline___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = (a5 + 8);
    do
    {
      if (*v7 == 1)
      {
        v8 = [*(a1 + 32) clipWithIdentifier:*(v7 - 1)];
        v9 = [v8 resource];

        v10 = [v9 px_storyResourceDisplayAsset];

        v11 = [*(a1 + 48) clipForDisplayAsset:v10];
        [v11 moduleInfo];
        *(*(*(a1 + 56) + 8) + 24) |= v12 & 1;
      }

      v7 += 96;
      --v5;
    }

    while (v5);
  }
}

- (id)_autoEditDebugInfoBySegmentInTimeline:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [(PXStoryTimelineVisualDiagnosticsProvider *)self model];
  v8 = [v7 currentStyle];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 autoEditDecisionList];
    if (v9)
    {
      v10 = v9;
      if (v5)
      {
        [v5 timeRange];
      }

      else
      {
        memset(v20, 0, sizeof(v20));
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __82__PXStoryTimelineVisualDiagnosticsProvider__autoEditDebugInfoBySegmentInTimeline___block_invoke;
      v14[3] = &unk_1E7732BA0;
      v15 = v5;
      v16 = self;
      v19 = a2;
      v17 = v10;
      v18 = v6;
      v11 = v10;
      [v15 enumerateSegmentsInTimeRange:v20 usingBlock:v14];
    }
  }

  v12 = [v6 copy];

  return v12;
}

uint64_t __82__PXStoryTimelineVisualDiagnosticsProvider__autoEditDebugInfoBySegmentInTimeline___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    v3 = *(result + 32);
    v4 = [v3 identifierForSegmentAtIndex:0];
    if (v3)
    {
      [v3 timeRangeForSegmentWithIdentifier:v4];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
    }

    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3032000000;
    v5[3] = __Block_byref_object_copy__54976;
    v5[4] = __Block_byref_object_dispose__54977;
    v5[5] = MEMORY[0x1E695E0F8];
    [*(v2 + 32) size];
    PXRectWithOriginAndSize();
  }

  return result;
}

void __82__PXStoryTimelineVisualDiagnosticsProvider__autoEditDebugInfoBySegmentInTimeline___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = (a5 + 8);
    do
    {
      if (*v7 == 1)
      {
        v8 = [*(a1 + 32) clipWithIdentifier:*(v7 - 1)];
        v9 = [v8 resource];

        v10 = [v9 px_storyResourceDisplayAsset];

        v11 = [*(a1 + 48) clipForDisplayAsset:v10];
        v12 = [v11 debugInfo];

        if (v12)
        {
          v13 = [v11 debugInfo];
          v14 = *(*(a1 + 56) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;
        }
      }

      v7 += 96;
      --v5;
    }

    while (v5);
  }
}

- (id)_moduleDescriptionsBySegmentInTimeline:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(PXStoryTimelineVisualDiagnosticsProvider *)self model];
  v8 = [v7 currentStyle];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 autoEditDecisionList];
    if (v9)
    {
      v10 = v9;
      if (v5)
      {
        [v5 timeRange];
      }

      else
      {
        memset(v20, 0, sizeof(v20));
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __83__PXStoryTimelineVisualDiagnosticsProvider__moduleDescriptionsBySegmentInTimeline___block_invoke;
      v14[3] = &unk_1E7732BA0;
      v15 = v5;
      v16 = self;
      v19 = a2;
      v17 = v10;
      v18 = v6;
      v11 = v10;
      [v15 enumerateSegmentsInTimeRange:v20 usingBlock:v14];
    }
  }

  v12 = [v6 copy];

  return v12;
}

uint64_t __83__PXStoryTimelineVisualDiagnosticsProvider__moduleDescriptionsBySegmentInTimeline___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    v3 = *(result + 32);
    v4 = [v3 identifierForSegmentAtIndex:0];
    if (v3)
    {
      [v3 timeRangeForSegmentWithIdentifier:v4];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
    }

    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x3032000000;
    v5[3] = __Block_byref_object_copy__54976;
    v5[4] = __Block_byref_object_dispose__54977;
    v5[5] = objc_opt_new();
    [*(v2 + 32) size];
    PXRectWithOriginAndSize();
  }

  return result;
}

void __83__PXStoryTimelineVisualDiagnosticsProvider__moduleDescriptionsBySegmentInTimeline___block_invoke_474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    v7 = (a5 + 8);
    do
    {
      if (*v7 == 1)
      {
        v8 = [*(a1 + 32) clipWithIdentifier:*(v7 - 1)];
        v9 = [v8 resource];

        v10 = [v9 px_storyResourceDisplayAsset];

        v11 = [*(a1 + 48) clipForDisplayAsset:v10];
        if ([*(*(*(a1 + 56) + 8) + 40) length])
        {
          [*(*(*(a1 + 56) + 8) + 40) appendString:@" / "];
        }

        v12 = *(*(*(a1 + 56) + 8) + 40);
        v13 = [v11 moduleInfo];
        v14 = @"??";
        if (v13 <= 3)
        {
          v14 = off_1E7731FC0[v13];
        }

        v15 = v14;
        [v11 moduleInfo];
        if (v16)
        {
          v17 = @" start";
        }

        else
        {
          v17 = &stru_1F1741150;
        }

        [v11 moduleInfo];
        v19 = @" empty space break";
        if ((v18 & 0x100) == 0)
        {
          v19 = &stru_1F1741150;
        }

        [v12 appendFormat:@"%@%@%@", v15, v17, v19];
      }

      v7 += 96;
      --v5;
    }

    while (v5);
  }
}

- (id)_momentEndSegmentIndexesInTimeline:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [(PXStoryTimelineVisualDiagnosticsProvider *)self momentsProvider];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__PXStoryTimelineVisualDiagnosticsProvider__momentEndSegmentIndexesInTimeline___block_invoke;
  v22[3] = &unk_1E7741B80;
  v8 = v6;
  v23 = v8;
  [v7 enumerateMomentsUsingBlock:v22];

  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PXStoryTimelineVisualDiagnosticsProvider__momentEndSegmentIndexesInTimeline___block_invoke_2;
  v15[3] = &unk_1E7732BA0;
  v19 = v9;
  v20 = a2;
  v16 = v5;
  v17 = self;
  v18 = v8;
  v10 = v9;
  v11 = v8;
  v12 = v5;
  [v12 enumerateSegmentsInTimeRange:v21 usingBlock:v15];
  v13 = [v10 copy];

  return v13;
}

void __79__PXStoryTimelineVisualDiagnosticsProvider__momentEndSegmentIndexesInTimeline___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastAsset];
  v5 = [v3 uuid];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

uint64_t __79__PXStoryTimelineVisualDiagnosticsProvider__momentEndSegmentIndexesInTimeline___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    v3 = *(result + 32);
    v4 = [v3 identifierForSegmentAtIndex:0];
    if (v3)
    {
      [v3 timeRangeForSegmentWithIdentifier:v4];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    v5[0] = 0;
    v5[1] = v5;
    v5[2] = 0x2020000000;
    v6 = 0;
    [*(v2 + 32) size];
    PXRectWithOriginAndSize();
  }

  return result;
}

void __79__PXStoryTimelineVisualDiagnosticsProvider__momentEndSegmentIndexesInTimeline___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a2 >= 1)
  {
    v7 = a2;
    v9 = (a5 + 8);
    do
    {
      if (*v9 == 1)
      {
        v10 = [*(a1 + 32) clipWithIdentifier:*(v9 - 1)];
        v11 = [v10 resource];

        v12 = [v11 px_storyResourceDisplayAsset];

        v13 = [v12 uuid];
        if (v13)
        {
          v14 = *(a1 + 48);
          v15 = [v12 uuid];
          LODWORD(v14) = [v14 containsObject:v15];

          if (v14)
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
            *a6 = 1;
          }
        }
      }

      v9 += 96;
      --v7;
    }

    while (v7);
  }
}

- (id)_descriptionForMovementType:(int64_t)a3
{
  if (a3 > 0xD)
  {
    return @"??";
  }

  else
  {
    return off_1E7732DC8[a3];
  }
}

- (id)_movementDescriptionForSegmentAtIndex:(int64_t)a3 inTimeline:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 identifierForSegmentAtIndex:a3];
  if (v5)
  {
    [v5 timeRangeForSegmentWithIdentifier:v7];
  }

  [v5 size];
  PXRectWithOriginAndSize();
}

void __93__PXStoryTimelineVisualDiagnosticsProvider__movementDescriptionForSegmentAtIndex_inTimeline___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v14 = v5;
    v15 = v6;
    v8 = a2;
    do
    {
      if (*(a5 + 8) == 1)
      {
        v13 = *(a5 + 664);
        v9 = *(a5 + 632);
        v12[4] = *(a5 + 616);
        v12[5] = v9;
        v12[6] = *(a5 + 648);
        v10 = *(a5 + 568);
        v12[0] = *(a5 + 552);
        v12[1] = v10;
        v11 = *(a5 + 600);
        v12[2] = *(a5 + 584);
        v12[3] = v11;
        PXStoryClipKenBurnsAnimationInfoGetMovementType(v12);
      }

      a5 += 768;
      --v8;
    }

    while (v8);
  }
}

- (id)_descriptionForDurationInfo:(id *)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  var1 = a3->var1;
  v5 = PXStoryTimeDescription(&var1);
  var1 = a3->var0;
  v6 = PXStoryTimeDescription(&var1);
  var1 = a3->var2;
  v7 = PXStoryTimeDescription(&var1);
  v8 = [v4 initWithFormat:@"%@ (%@ - %@)", v5, v6, v7];

  return v8;
}

- (void)_addAssetsDetailsTable:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_2;
  v10[3] = &unk_1E7732A60;
  v11 = @"Assets";
  v12 = @"Distance";
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_5;
  v6[3] = &unk_1E7732B50;
  v6[4] = self;
  v7 = @"Assets";
  v8 = v4;
  v9 = @"Distance";
  v5 = v4;
  [v5 addPagesForTableWithConfiguration:&__block_literal_global_400 columnsConfiguration:v10 rowsConfiguration:v6];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 addColumnWithIdentifier:v3 configuration:&__block_literal_global_405];
  [v4 addColumnWithIdentifier:*(a1 + 40) configuration:&__block_literal_global_407];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] resourcesDataSource];
  v5 = [v4 numberOfDisplayAssetResources];
  if (v5 >= 2)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = v5 - 1;
    do
    {
      v14[0] = v7;
      v14[1] = 3221225472;
      v14[2] = __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_6;
      v14[3] = &unk_1E7732B28;
      v15 = v4;
      v18 = v6;
      *&v9 = a1[5];
      *(&v9 + 1) = a1[4];
      v13 = v9;
      v10 = a1[6];
      v11 = a1[7];
      *&v12 = v10;
      *(&v12 + 1) = v11;
      v16 = v13;
      v17 = v12;
      [v3 addRowWithConfiguration:v14];

      ++v6;
    }

    while (v8 != v6);
  }
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Assets Pairs"];
  [v2 setDefaultRowHeight:30.0];
  [v2 setDefaultRowFontSize:7.0];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_6(uint64_t a1, void *a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_7;
  aBlock[3] = &unk_1E7732AD8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v20 = v4;
  v21 = v5;
  v6 = a2;
  v7 = _Block_copy(aBlock);
  v8 = v7[2](v7, 0);
  v9 = v7[2](v7, 1);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_8;
  v14[3] = &unk_1E7732B00;
  v18 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v14[4] = *(a1 + 48);
  v15 = v8;
  v16 = v11;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  [v6 addCellForColumnWithIdentifier:v10 rendering:v14];
  [v6 addCellForColumnWithIdentifier:*(a1 + 64) text:@"..."];
}

id __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) displayAssetResourceAtIndex:*(a1 + 40) + a2];
  v3 = [v2 px_storyResourceDisplayAsset];

  return v3;
}

uint64_t __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_8(uint64_t a1, void *a2, double a3, CGFloat a4, double a5, CGFloat a6)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_9;
  v12[3] = &__block_descriptor_40_e52_v16__0___PXVisualDiagnosticsDrawTextConfiguration__8l;
  v12[4] = *(a1 + 64);
  [a2 drawTextInRect:v12 configuration:a3];
  v10 = a3 + 25.0;
  [*(a1 + 32) _drawAsset:*(a1 + 40) inRect:*(a1 + 48) context:{v10, a4, a6, a6}];
  v13.origin.x = v10;
  v13.origin.y = a4;
  v13.size.width = a6;
  v13.size.height = a6;
  return [*(a1 + 32) _drawAsset:*(a1 + 56) inRect:*(a1 + 48) context:{CGRectGetMaxX(v13) + 2.0, a4, a6, a6}];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v4 = [[v3 alloc] initWithFormat:@"%li-%li", *(a1 + 32), *(a1 + 32) + 1];
  [v5 setText:v4];

  [v5 setFontSize:7.0];
  [v5 setRelativePosition:{0.0, 0.5}];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Distance"];
  [v2 setWidth:200.0];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addAssetsDetailsTable___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Assets"];
  [v2 setWidth:100.0];
}

- (void)_addSegmentsAutoEditDebugInfoTables:(id)a3 debugInfoKeys:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v6 = a4;
  [(PXStoryTimelineVisualDiagnosticsProvider *)self timeline];
  v17 = v19 = self;
  v20 = [(PXStoryTimelineVisualDiagnosticsProvider *)self _autoEditDebugInfoBySegmentInTimeline:?];
  v7 = [v20 allValues];
  v8 = [v7 firstObject];

  v9 = [v8 allKeys];
  v10 = [v9 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        if (!v6 || [v6 containsObject:*(*(&v31 + 1) + 8 * i)])
        {
          v29 = v15;
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke;
          v30[3] = &unk_1E7732A10;
          v30[4] = v15;
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_2;
          v27[3] = &unk_1E7732A60;
          v28 = @"Segment";
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_5;
          v22[3] = &unk_1E7732AB0;
          v22[4] = v19;
          v23 = @"Segment";
          v16 = v21;
          v24 = v16;
          v25 = v20;
          v26 = v15;
          [v16 addPagesForTableWithConfiguration:v30 columnsConfiguration:v27 rowsConfiguration:v22];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }
}

void __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v2 stringWithFormat:@"Segment AutoEdit Debug Info: %@", v3];
  [v5 setTitle:v4];

  [v5 setDefaultRowHeight:30.0];
  [v5 setDefaultRowFontSize:7.0];
}

void __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 addColumnWithIdentifier:v3 configuration:&__block_literal_global_392];
  v5 = *(a1 + 40);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_4;
  v9 = &unk_1E7732A38;
  v10 = v5;
  [v4 addColumnWithIdentifier:? configuration:?];
}

void __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) timeline];
  v5 = [v4 numberOfSegments];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = MEMORY[0x1E69E9820];
    do
    {
      v13[0] = v8;
      v13[1] = 3221225472;
      v13[2] = __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_6;
      v13[3] = &unk_1E7732A88;
      v9 = *(a1 + 40);
      v20 = v7;
      v10 = *(a1 + 32);
      v14 = v9;
      v15 = v10;
      v16 = v4;
      v17 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v18 = v11;
      v19 = v12;
      [v3 addRowWithConfiguration:v13];

      ++v7;
    }

    while (v6 != v7);
  }
}

void __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_6(uint64_t a1, void *a2)
{
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_7;
  v17 = &unk_1E7732970;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v21 = *(a1 + 80);
  v18 = v4;
  v19 = v6;
  v20 = *(a1 + 56);
  v7 = a2;
  [v7 addCellForColumnWithIdentifier:v5 rendering:&v14];
  v8 = *(a1 + 64);
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{*(a1 + 80), v14, v15, v16, v17, v18}];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [v10 objectForKeyedSubscript:*(a1 + 72)];
  v12 = [*(a1 + 40) _approxLinesInString:v11 lineLength:100];
  [v7 height];
  if (v13 < v12 * 8.5)
  {
    v13 = v12 * 8.5;
  }

  [v7 setHeight:v13];
  [v7 addCellForColumnWithIdentifier:*(a1 + 72) text:v11];
}

uint64_t __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_7(uint64_t a1, void *a2, double a3, double a4)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_8;
  v8[3] = &__block_descriptor_40_e52_v16__0___PXVisualDiagnosticsDrawTextConfiguration__8l;
  v8[4] = *(a1 + 56);
  [a2 drawTextInRect:v8 configuration:a3];
  return [*(a1 + 32) _drawSegmentAtIndex:*(a1 + 56) timeline:*(a1 + 40) inRect:0 options:*(a1 + 48) context:{a3 + 25.0, a4, 30.0, 30.0}];
}

void __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v4 = [[v3 alloc] initWithFormat:@"#%li", *(a1 + 32)];
  [v5 setText:v4];

  [v5 setFontSize:7.0];
  [v5 setRelativePosition:{0.0, 0.5}];
}

void __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setTitle:v2];
  [v3 setWidth:500.0];
}

void __94__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsAutoEditDebugInfoTables_debugInfoKeys___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Segment"];
  [v2 setWidth:70.0];
}

- (unint64_t)_approxLinesInString:(id)a3 lineLength:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 componentsSeparatedByString:{@"\n", 0}];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v12 + 1) + 8 * i) length] / a4 + 1;
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_addSegmentsDetailsTable:(id)a3
{
  v4 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_2;
  v13[3] = &unk_1E7732948;
  v14 = @"Segment";
  v15 = @"Duration";
  v16 = @"Movement";
  v17 = @"Transition";
  v18 = @"MomentBoundary";
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_8;
  v6[3] = &unk_1E77329E8;
  v6[4] = self;
  v7 = @"Segment";
  v8 = v4;
  v9 = @"Duration";
  v10 = @"Movement";
  v11 = @"Transition";
  v12 = @"MomentBoundary";
  v5 = v4;
  [v5 addPagesForTableWithConfiguration:&__block_literal_global_55201 columnsConfiguration:v13 rowsConfiguration:v6];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 addColumnWithIdentifier:v3 configuration:&__block_literal_global_366];
  [v4 addColumnWithIdentifier:a1[5] configuration:&__block_literal_global_368];
  [v4 addColumnWithIdentifier:a1[6] configuration:&__block_literal_global_370_55217];
  [v4 addColumnWithIdentifier:a1[7] configuration:&__block_literal_global_372];
  [v4 addColumnWithIdentifier:a1[8] configuration:&__block_literal_global_374];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_8(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] timeline];
  v5 = [v4 numberOfSegments];
  v6 = [a1[4] _momentEndSegmentIndexesInTimeline:v4];
  v7 = [a1[4] _moduleStartSegmentIndexesInTimeline:v4];
  v8 = [a1[4] _moduleDescriptionsBySegmentInTimeline:v4];
  v9 = [a1[4] _segmentIndexesWithInvalidOrderOutTransitionInTimeline:v4];
  if (v5 >= 1)
  {
    v10 = 0;
    v21 = MEMORY[0x1E69E9820];
    do
    {
      v23[0] = v21;
      v23[1] = 3221225472;
      v23[2] = __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_9;
      v23[3] = &unk_1E77329C0;
      v24 = v4;
      v34 = v10;
      *&v11 = a1[5];
      *(&v11 + 1) = a1[4];
      v22 = v11;
      v12 = v8;
      v13 = v4;
      v14 = v7;
      v15 = v5;
      v16 = v6;
      v17 = v3;
      v18 = a1[6];
      v19 = a1[7];
      *&v20 = v18;
      v3 = v17;
      v6 = v16;
      v5 = v15;
      v7 = v14;
      v4 = v13;
      v8 = v12;
      *(&v20 + 1) = v19;
      v25 = v22;
      v26 = v20;
      v27 = a1[8];
      v28 = v9;
      v29 = a1[9];
      v30 = a1[10];
      v31 = v6;
      v32 = v7;
      v33 = v12;
      [v3 addRowWithConfiguration:v23];

      ++v10;
    }

    while (v5 != v10);
  }
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Segments"];
  [v2 setDefaultRowHeight:30.0];
  [v2 setDefaultRowFontSize:7.0];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v33 = 0u;
  memset(v34, 0, 120);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 identifierForSegmentAtIndex:*(a1 + 128)];
  if (v4)
  {
    [v4 infoForSegmentWithIdentifier:v5];
  }

  else
  {
    v33 = 0u;
    memset(v34, 0, 120);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_10;
  v25[3] = &unk_1E7732970;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v28 = *(a1 + 128);
  v25[4] = v6;
  v26 = *(a1 + 32);
  v27 = *(a1 + 56);
  [v3 addCellForColumnWithIdentifier:v7 rendering:v25];
  v8 = *(a1 + 64);
  v9 = *(a1 + 48);
  v24[4] = *(&v34[4] + 8);
  v24[5] = *(&v34[5] + 8);
  v24[6] = *(&v34[6] + 8);
  v24[0] = *(v34 + 8);
  v24[1] = *(&v34[1] + 8);
  v24[2] = *(&v34[2] + 8);
  v24[3] = *(&v34[3] + 8);
  v10 = [v9 _descriptionForDurationInfo:v24];
  [v3 addCellForColumnWithIdentifier:v8 text:v10];

  v11 = *(a1 + 72);
  v12 = [*(a1 + 48) _movementDescriptionForSegmentAtIndex:*(a1 + 128) inTimeline:*(a1 + 32)];
  [v3 addCellForColumnWithIdentifier:v11 text:v12];

  if (v32 > 0xAuLL)
  {
    v13 = @"??";
  }

  else
  {
    v13 = off_1E7740168[v32];
  }

  v14 = v13;
  if ([*(a1 + 80) containsIndex:*(a1 + 128)])
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"⚠️(%@)", v14];

    v14 = v15;
  }

  [v3 addCellForColumnWithIdentifier:*(a1 + 88) text:v14];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_12;
  v19[3] = &unk_1E7732970;
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 128);
  v20 = v17;
  v23 = v18;
  v21 = *(a1 + 112);
  v22 = *(a1 + 120);
  [v3 addCellForColumnWithIdentifier:v16 rendering:v19];
}

uint64_t __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_10(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_11;
  v11[3] = &__block_descriptor_40_e52_v16__0___PXVisualDiagnosticsDrawTextConfiguration__8l;
  v11[4] = *(a1 + 56);
  [a2 drawTextInRect:v11 configuration:a3];
  return [*(a1 + 32) _drawSegmentAtIndex:*(a1 + 56) timeline:*(a1 + 40) inRect:0 options:*(a1 + 48) context:{a3 + 25.0, a4, a6, a6}];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_12(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  if ([*(a1 + 32) containsIndex:*(a1 + 56)])
  {
    v12 = [v11 CGContext];
    v13 = [MEMORY[0x1E69DC888] yellowColor];
LABEL_5:
    v14 = v13;
    CGContextSetFillColorWithColor(v12, [v13 CGColor]);

    v15 = [v11 CGContext];
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGContextFillRect(v15, v21);
    goto LABEL_6;
  }

  if ([*(a1 + 40) containsIndex:*(a1 + 56)])
  {
    v12 = [v11 CGContext];
    v13 = [MEMORY[0x1E69DC888] colorWithRed:0.6 green:0.96 blue:0.92 alpha:1.0];
    goto LABEL_5;
  }

LABEL_6:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_13;
  v18[3] = &unk_1E7732998;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v19 = v16;
  v20 = v17;
  [v11 drawTextInRect:v18 configuration:{a3, a4, a5, a6}];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v5 = [v2 numberWithInteger:v4];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v7 setText:v6];

  [v7 setFontSize:7.0];
  [v7 setRelativePosition:{0.0, 0.5}];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v4 = [[v3 alloc] initWithFormat:@"#%li", *(a1 + 32)];
  [v5 setText:v4];

  [v5 setFontSize:7.0];
  [v5 setRelativePosition:{0.0, 0.5}];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Module"];
  [v2 setWidth:120.0];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Transition"];
  [v2 setWidth:120.0];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Movement"];
  [v2 setWidth:120.0];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Duration"];
  [v2 setWidth:120.0];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addSegmentsDetailsTable___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Segment"];
  [v2 setWidth:70.0];
}

- (void)_addCinematicDiagnostics:(id)a3
{
  v4 = a3;
  [(PXStoryTimelineVisualDiagnosticsProvider *)self timeline];
  [objc_claimAutoreleasedReturnValue() size];
  PXSizeGetAspectRatio();
}

__n128 __69__PXStoryTimelineVisualDiagnosticsProvider__addCinematicDiagnostics___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginPage];
  [*(a1 + 32) currentPageBounds];
  *(*(*(a1 + 40) + 8) + 32) = CGRectInset(v3, *(a1 + 56), *(a1 + 64));
  result = *(*(*(a1 + 40) + 8) + 32);
  *(*(*(a1 + 48) + 8) + 32) = result;
  return result;
}

__n128 __69__PXStoryTimelineVisualDiagnosticsProvider__addCinematicDiagnostics___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) endPage];
  v2 = *(*(a1 + 40) + 8);
  result = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 16);
  *(v2 + 32) = *MEMORY[0x1E695F050];
  *(v2 + 48) = v4;
  return result;
}

uint64_t __69__PXStoryTimelineVisualDiagnosticsProvider__addCinematicDiagnostics___block_invoke_3(void *a1)
{
  if (!CGRectIsNull(*(*(a1[6] + 8) + 32)))
  {
    (*(a1[4] + 16))();
  }

  v2 = *(a1[5] + 16);

  return v2();
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addCinematicDiagnostics___block_invoke_4(uint64_t a1, double a2, double a3)
{
  v5 = a2 + *(*(*(a1 + 40) + 8) + 32);
  if (v5 > CGRectGetMaxX(*(*(*(a1 + 48) + 8) + 32)))
  {
    *(*(*(a1 + 40) + 8) + 32) = CGRectGetMinX(*(*(*(a1 + 48) + 8) + 32));
    *(*(*(a1 + 40) + 8) + 40) = *(a1 + 56) + *(*(*(a1 + 40) + 8) + 40);
    v6 = a3 + *(*(*(a1 + 40) + 8) + 40);
    if (v6 > CGRectGetMaxY(*(*(*(a1 + 48) + 8) + 32)))
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  PXRectWithOriginAndSize();
}

double __69__PXStoryTimelineVisualDiagnosticsProvider__addCinematicDiagnostics___block_invoke_5(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 32) + a2;
  *(v2 + 32) = result;
  return result;
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addCinematicDiagnostics___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v19 = v12;
    v20 = v11;
    v21 = v10;
    v22 = v9;
    v23 = v8;
    v24 = v7;
    v25 = v5;
    v26 = v6;
    v13 = a2;
    v14 = (a5 + 160);
    v15 = a4 + 16;
    do
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(v14 - 19);
      memcpy(__dst, v14, sizeof(__dst));
      if (v17 == 1)
      {
        PXRectNormalize();
      }

      v14 += 96;
      objc_autoreleasePoolPop(v16);
      v15 += 32;
      --v13;
    }

    while (v13);
  }
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addCinematicDiagnostics___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v4 = [[v3 alloc] initWithFormat:@"#%li", *(a1 + 32)];
  [v5 setText:v4];

  [v5 setFontSize:4.0];
  [v5 setRelativePosition:{0.0, 1.0}];
}

void __69__PXStoryTimelineVisualDiagnosticsProvider__addCinematicDiagnostics___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  if (v3 > 0xA)
  {
    v5 = @"??";
  }

  else
  {
    v5 = off_1E7740168[v3];
  }

  v8 = v5;
  if ([*(a1 + 32) containsIndex:*(a1 + 40)])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"⚠️(%@)", v8];

    v7 = v6;
  }

  else
  {
    v7 = v8;
  }

  v9 = v7;
  [v4 setText:v7];
  [v4 setFontSize:7.0];
  [v4 setRelativePosition:{0.5, 0.5}];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addSegmentDiagnostics___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:7.0];
  [v3 setRelativePosition:{0.0, 0.0}];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addSegmentDiagnostics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:7.0];
  [v3 setRelativePosition:{0.5, 0.0}];
}

void __67__PXStoryTimelineVisualDiagnosticsProvider__addSegmentDiagnostics___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:7.0];
  [v3 setRelativePosition:{0.5, 0.5}];
}

- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(PXStoryTimelineVisualDiagnosticsProvider *)self _addCoverPage:v6];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self _addSegmentDiagnostics:v6];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self _addCinematicDiagnostics:v6];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self _addSegmentsDetailsTable:v6];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self _addSegmentsAutoEditDebugInfoTables:v6 debugInfoKeys:&unk_1F19100C0];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self _addCropDiagnostics:v6];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self _addDetailedSaliencyDiagnostics:v6];
  [(PXStoryTimelineVisualDiagnosticsProvider *)self _addMiscellaneousDiagnostics:v6];

  v7[2](v7, 1, 0);
}

- (PXStoryTimelineVisualDiagnosticsProvider)initWithModel:(id)a3 screenScale:(double)a4
{
  v7 = a3;
  v27.receiver = self;
  v27.super_class = PXStoryTimelineVisualDiagnosticsProvider;
  v8 = [(PXStoryTimelineVisualDiagnosticsProvider *)&v27 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_model, a3);
    v10 = 1.0;
    if (a4 >= 1.0)
    {
      v10 = a4;
    }

    v9->_screenScale = v10;
    v11 = [(PXStoryModel *)v9->_model timeline];
    timeline = v9->_timeline;
    v9->_timeline = v11;

    v13 = [(PXStoryModel *)v9->_model configuration];
    configuration = v9->_configuration;
    v9->_configuration = v13;

    v15 = [(PXStoryModel *)v9->_model timelineManager];
    v16 = [v15 resourcesDataSourceManager];
    v17 = [v16 recipeManager];
    v18 = [v17 diagnosticsMomentsProvider];
    momentsProvider = v9->_momentsProvider;
    v9->_momentsProvider = v18;

    v20 = [(PXStoryModel *)v9->_model timelineManager];
    v21 = [v20 resourcesDataSourceManager];
    v22 = [v21 dataSource];
    resourcesDataSource = v9->_resourcesDataSource;
    v9->_resourcesDataSource = v22;

    v24 = [[PXStoryVisualDiagnosticsProviderHelper alloc] initWithConfiguration:v9->_configuration];
    helper = v9->_helper;
    v9->_helper = v24;
  }

  return v9;
}

- (PXStoryTimelineVisualDiagnosticsProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTimelineVisualDiagnosticsProvider.m" lineNumber:82 description:{@"%s is not available as initializer", "-[PXStoryTimelineVisualDiagnosticsProvider init]"}];

  abort();
}

@end