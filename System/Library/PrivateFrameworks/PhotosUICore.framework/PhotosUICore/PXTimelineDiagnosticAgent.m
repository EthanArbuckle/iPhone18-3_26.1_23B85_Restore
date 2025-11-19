@interface PXTimelineDiagnosticAgent
+ (id)errorMessage:(id)a3 jsonFormat:(BOOL)a4;
+ (id)jsonStringFromObject:(id)a3;
+ (id)timelineDiagnosticForAlbum:(id)a3 widgetSize:(id)a4 jsonFormat:(BOOL)a5;
+ (id)timelineDiagnosticForWidgetSize:(id)a3 jsonFormat:(BOOL)a4;
@end

@implementation PXTimelineDiagnosticAgent

+ (id)jsonStringFromObject:(id)a3
{
  v9 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:3 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PXTimelineDiagnosticAgent] Error serializing json. Error: %@", v5];
    v6 = [a1 errorMessage:v7 jsonFormat:1];
  }

  return v6;
}

+ (id)errorMessage:(id)a3 jsonFormat:(BOOL)a4
{
  v4 = a4;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v11 = @"Error";
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [a1 jsonStringFromObject:v9];
  }

  return v8;
}

+ (id)timelineDiagnosticForAlbum:(id)a3 widgetSize:(id)a4 jsonFormat:(BOOL)a5
{
  v5 = a5;
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v11 = [v8 isEqualToString:@"favorites"];
  v12 = MEMORY[0x1E6978650];
  if (v11)
  {
    v13 = [v10 librarySpecificFetchOptions];
    v14 = [v12 fetchAssetCollectionsWithType:2 subtype:203 options:v13];
    v15 = [v14 firstObject];
  }

  else
  {
    v16 = [MEMORY[0x1E6978650] localIdentifierWithUUID:v8];
    v17 = MEMORY[0x1E6978650];
    v44[0] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    v19 = [v10 librarySpecificFetchOptions];
    [v17 fetchAssetCollectionsWithLocalIdentifiers:v18 options:v19];
    v21 = v20 = a1;
    v15 = [v21 firstObject];

    a1 = v20;
  }

  v22 = [v15 localIdentifier];
  if (v22)
  {
    v23 = *MEMORY[0x1E695F060];
    v24 = *(MEMORY[0x1E695F060] + 8);
    v25 = [PXWidgetTimeline timelineFromLibrary:v10 albumIdentifier:v22 widgetIdentifier:v22 widgetSize:*MEMORY[0x1E695F060], v24];
    if ([v25 count])
    {
      v36 = a1;
      v37 = v9;
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu Timeline Entries Generated widget size %@ {%.2f, %.2f}", objc_msgSend(v25, "count"), v9, v23, *&v24];
      v27 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@\n", v26];
      v28 = objc_alloc(MEMORY[0x1E695DF90]);
      v42 = @"Summary";
      v43 = v26;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v30 = [v28 initWithDictionary:v29];

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __78__PXTimelineDiagnosticAgent_timelineDiagnosticForAlbum_widgetSize_jsonFormat___block_invoke;
      v38[3] = &unk_1E7731F40;
      v41 = v5;
      v31 = v30;
      v39 = v31;
      v32 = v27;
      v40 = v32;
      [v25 enumerateObjectsUsingBlock:v38];
      if (v5)
      {
        v33 = [v36 jsonStringFromObject:v31];
      }

      else
      {
        v33 = v32;
      }

      v34 = v33;

      v9 = v37;
    }

    else
    {
      v34 = [a1 errorMessage:@"No timeline entries generated." jsonFormat:v5];
    }
  }

  else
  {
    v34 = [a1 errorMessage:@"No album found." jsonFormat:v5];
  }

  return v34;
}

void __78__PXTimelineDiagnosticAgent_timelineDiagnosticForAlbum_widgetSize_jsonFormat___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v8 = [v5 stringWithFormat:@"TimelineEntry[%lu]", a3];
  if (*(a1 + 48) == 1)
  {
    v7 = [v6 dictionaryRepresentation];

    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
    v6 = v7;
  }

  else
  {
    [*(a1 + 40) appendFormat:@"%@ %@\n", v8, v6];
  }
}

+ (id)timelineDiagnosticForWidgetSize:(id)a3 jsonFormat:(BOOL)a4
{
  v4 = a4;
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 length])
  {
    if ([v6 isEqualToString:@"small"])
    {
      v7 = 0;
    }

    else if ([v6 isEqualToString:@"medium"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"large"])
    {
      v7 = 2;
    }

    else
    {
      if (([v6 isEqualToString:@"extraLarge"] & 1) == 0)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported widget size: %@. Only support small, medium, large or extraLarge", v6];
        v22 = [a1 errorMessage:v12 jsonFormat:v4];
        goto LABEL_19;
      }

      v7 = 3;
    }

    [PXTimelineSize widgetSizeForSizeClass:v7];
    v8 = v10;
    v9 = v11;
  }

  else
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  v12 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v13 = [PXWidgetTimeline timelineFromLibrary:v12 forWidgetSize:v7 timelineSize:v8, v9];
  if ([v13 count])
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu Timeline Entries Generated widget size %@ {%.2f, %.2f}", objc_msgSend(v13, "count"), v6, *&v8, *&v9];
    v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@\n", v14];
    v16 = objc_alloc(MEMORY[0x1E695DF90]);
    v28 = @"Summary";
    v29[0] = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v18 = [v16 initWithDictionary:v17];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__PXTimelineDiagnosticAgent_timelineDiagnosticForWidgetSize_jsonFormat___block_invoke;
    v24[3] = &unk_1E7731F40;
    v27 = v4;
    v19 = v18;
    v25 = v19;
    v20 = v15;
    v26 = v20;
    [v13 enumerateObjectsUsingBlock:v24];
    if (v4)
    {
      v21 = [a1 jsonStringFromObject:v19];
    }

    else
    {
      v21 = v20;
    }

    v22 = v21;
  }

  else
  {
    v22 = [a1 errorMessage:@"No timeline entries generated." jsonFormat:v4];
  }

LABEL_19:

  return v22;
}

void __72__PXTimelineDiagnosticAgent_timelineDiagnosticForWidgetSize_jsonFormat___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v8 = [v5 stringWithFormat:@"TimelineEntry[%lu]", a3];
  if (*(a1 + 48) == 1)
  {
    v7 = [v6 dictionaryRepresentation];

    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
    v6 = v7;
  }

  else
  {
    [*(a1 + 40) appendFormat:@"%@ %@\n", v8, v6];
  }
}

@end