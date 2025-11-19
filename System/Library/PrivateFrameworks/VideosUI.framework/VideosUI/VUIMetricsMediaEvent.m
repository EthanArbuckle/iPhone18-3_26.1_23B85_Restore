@interface VUIMetricsMediaEvent
+ (id)_convertToMs:(id)a3;
+ (id)_metricsDataFromPlayable:(id)a3 actionType:(id)a4 canonicalIdOverride:(id)a5 position:(id)a6 durationOverride:(id)a7 contentType:(id)a8;
+ (id)_metricsDataFromTVPMediaItem:(id)a3 contentPosition:(id)a4 isBackground:(BOOL)a5 isAmbient:(BOOL)a6 actionType:(id)a7;
+ (id)clickMetricsForSkipInfo:(id)a3 onMediaItem:(id)a4;
+ (id)clickMetricsForUpNextWithPromoInfo:(id)a3 onMediaItem:(id)a4;
+ (id)clickMetricsFromTVPMediaItem:(id)a3 targetType:(id)a4;
+ (void)recordBGVideoPlayOfTVPMediaItem:(id)a3 contentPosition:(id)a4 isAmbient:(BOOL)a5 actionType:(id)a6;
+ (void)recordClipPlay:(id)a3 canonicalId:(id)a4 position:(id)a5 duration:(double)a6;
+ (void)recordClipStop:(id)a3 canonicalId:(id)a4 position:(id)a5 duration:(double)a6;
+ (void)recordPlay:(id)a3 isLaunchingExtras:(BOOL)a4;
+ (void)recordPlayOfTVPMediaItem:(id)a3;
+ (void)recordPunchout:(id)a3 isUrlForPlay:(BOOL)a4;
+ (void)recordStop:(id)a3;
+ (void)recordStopOfTVPMediaItem:(id)a3;
@end

@implementation VUIMetricsMediaEvent

+ (void)recordPlay:(id)a3 isLaunchingExtras:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 metadata];
  v8 = [v7 isAdultContent];

  if (v8)
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "ignore media event for adult content", v12, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v10 = @"extras";
    }

    else
    {
      v10 = @"play";
    }

    v9 = [a1 _metricsDataFromPlayable:v6 actionType:v10 canonicalIdOverride:0 position:0 durationOverride:0 contentType:0];
    v11 = +[VUIMetricsController sharedInstance];
    [v11 recordMedia:v9];
  }
}

+ (void)recordStop:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];
  v6 = [v5 isAdultContent];

  if (v6)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "ignore media event for adult content", v9, 2u);
    }
  }

  else
  {
    v7 = [a1 _metricsDataFromPlayable:v4 actionType:@"stop" canonicalIdOverride:0 position:0 durationOverride:0 contentType:0];
    v8 = +[VUIMetricsController sharedInstance];
    [v8 recordMedia:v7];
  }
}

+ (void)recordClipPlay:(id)a3 canonicalId:(id)a4 position:(id)a5 duration:(double)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 metadata];
  v14 = [v13 isAdultContent];

  v15 = VUIDefaultLogObject();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "ignore media event for adult content", &v19, 2u);
    }
  }

  else
  {
    if (v16)
    {
      v19 = 138412546;
      v20 = v11;
      v21 = 2048;
      v22 = a6;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "record clip play %@ - %1.2f", &v19, 0x16u);
    }

    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    v15 = [a1 _metricsDataFromPlayable:v10 actionType:@"play" canonicalIdOverride:v11 position:v12 durationOverride:v17 contentType:@"KeyPlay"];

    v18 = +[VUIMetricsController sharedInstance];
    [v18 recordMedia:v15];
  }
}

+ (void)recordClipStop:(id)a3 canonicalId:(id)a4 position:(id)a5 duration:(double)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 metadata];
  v14 = [v13 isAdultContent];

  v15 = VUIDefaultLogObject();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "ignore media event for adult content", &v19, 2u);
    }
  }

  else
  {
    if (v16)
    {
      v19 = 138412546;
      v20 = v11;
      v21 = 2048;
      v22 = a6;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "record clip stop %@ - %1.2f", &v19, 0x16u);
    }

    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    v15 = [a1 _metricsDataFromPlayable:v10 actionType:@"stop" canonicalIdOverride:v11 position:v12 durationOverride:v17 contentType:@"KeyPlay"];

    v18 = +[VUIMetricsController sharedInstance];
    [v18 recordMedia:v15];
  }
}

+ (id)_metricsDataFromPlayable:(id)a3 actionType:(id)a4 canonicalIdOverride:(id)a5 position:(id)a6 durationOverride:(id)a7 contentType:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a4;
  v20 = objc_opt_new();
  [v20 setObject:v19 forKey:@"actionType"];

  if ([v14 isRental])
  {
    [v20 setObject:@"rental" forKey:@"entitlementReason"];
  }

  if (v15)
  {
    [v20 setObject:v15 forKey:@"id"];
    goto LABEL_12;
  }

  v21 = [v14 canonicalID];

  if (v21)
  {
    v22 = [v14 canonicalID];
  }

  else
  {
    v23 = [v14 liveStreamServiceID];

    if (v23)
    {
      v22 = [v14 liveStreamServiceID];
    }

    else
    {
      v24 = [v14 referenceID];

      if (!v24)
      {
        goto LABEL_12;
      }

      v22 = [v14 referenceID];
    }
  }

  v25 = v22;
  [v20 setObject:v22 forKey:@"id"];

LABEL_12:
  v26 = [v14 externalID];

  if (v26)
  {
    v27 = [v14 externalID];
    [v20 setObject:v27 forKey:@"externalId"];
  }

  v28 = [v14 referenceID];

  if (v28)
  {
    v29 = [v14 referenceID];
    [v20 setObject:v29 forKey:@"referenceId"];
  }

  v30 = [v14 mediaType];

  if (v30)
  {
    if (v18)
    {
      v31 = v18;
    }

    else
    {
      v32 = [v14 utsEntityType];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = [v14 mediaType];
      }

      v31 = v34;
    }

    [v20 setObject:v31 forKey:@"contentType"];
    v35 = [v20 objectForKey:@"id"];
    if (v35)
    {
    }

    else
    {
      v36 = [v14 mediaType];
      v37 = [v36 isEqualToString:@"Trailer"];

      if (v37)
      {
        [v20 setObject:@"trailer" forKey:@"id"];
      }
    }
  }

  v38 = [v14 channelID];

  if (v38)
  {
    v39 = [v14 channelID];
    [v20 setObject:v39 forKey:@"brandId"];
  }

  v40 = [v14 tvAppDeeplinkURL];

  if (v40)
  {
    v41 = [v14 tvAppDeeplinkURL];
    v42 = [v41 absoluteString];

    [v20 setObject:v42 forKey:@"url"];
  }

  v43 = [v14 liveStreamServiceID];
  if (v43)
  {
    [v20 setObject:v43 forKey:@"serviceId"];
  }

  if (v16)
  {
    v44 = [a1 _convertToMs:v16];

    [v20 setObject:v44 forKey:@"position"];
  }

  if (v17)
  {
    v45 = v17;
  }

  else
  {
    v46 = [v14 metadata];
    v45 = [v46 duration];

    if (!v45)
    {
      goto LABEL_40;
    }
  }

  v47 = [a1 _convertToMs:v45];

  [v20 setObject:v47 forKey:@"duration"];
LABEL_40:
  v48 = [v20 copy];

  return v48;
}

+ (void)recordPunchout:(id)a3 isUrlForPlay:(BOOL)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isAdultContent])
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "ignore media event for adult content", v27, 2u);
    }
  }

  else
  {
    v5 = objc_opt_new();
    [v5 setObject:@"punchout" forKey:@"actionType"];
    v28 = @"isEntitledToPlay";
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isEntitledToPlay")}];
    v29[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    [v5 setObject:v7 forKey:@"actionDetails"];
    v8 = [v4 canonicalID];

    if (v8)
    {
      v9 = [v4 canonicalID];
      [v5 setObject:v9 forKey:@"id"];
    }

    v10 = [v4 externalID];

    if (v10)
    {
      v11 = [v4 externalID];
      [v5 setObject:v11 forKey:@"externalId"];
    }

    v12 = [v4 referenceID];

    if (v12)
    {
      v13 = [v4 referenceID];
      [v5 setObject:v13 forKey:@"referenceId"];
    }

    v14 = [v4 mediaType];

    if (v14)
    {
      v15 = [v4 mediaType];
      [v5 setObject:v15 forKey:@"contentType"];
    }

    v16 = [v4 channelDetails];
    v17 = [v16 channelID];

    if (v17)
    {
      v18 = [v4 channelDetails];
      v19 = [v18 channelID];
      [v5 setObject:v19 forKey:@"brandId"];

      v20 = [v5 objectForKey:@"id"];

      if (!v20)
      {
        v21 = [v4 channelDetails];
        v22 = [v21 channelID];
        [v5 setObject:v22 forKey:@"id"];
      }
    }

    v23 = [v4 punchoutURL];

    if (v23)
    {
      v24 = [v4 punchoutURL];
      v25 = [v24 absoluteString];

      [v5 setObject:v25 forKey:@"url"];
    }

    v26 = +[VUIMetricsController sharedInstance];
    [v26 recordMedia:v5];
  }
}

+ (void)recordBGVideoPlayOfTVPMediaItem:(id)a3 contentPosition:(id)a4 isAmbient:(BOOL)a5 actionType:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "ignore media event for adult content", v16, 2u);
    }
  }

  else
  {
    v14 = [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:v9 contentPosition:v10 isBackground:1 isAmbient:v7 actionType:v11];
    v15 = +[VUIMetricsController sharedInstance];
    [v15 recordMedia:v14];
  }
}

+ (void)recordPlayOfTVPMediaItem:(id)a3
{
  v3 = a3;
  v4 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "ignore media event for adult content", v8, 2u);
    }
  }

  else
  {
    v6 = [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:v3 contentPosition:0 isBackground:0 isAmbient:0 actionType:0];
    v7 = +[VUIMetricsController sharedInstance];
    [v7 recordMedia:v6];
  }
}

+ (void)recordStopOfTVPMediaItem:(id)a3
{
  v3 = a3;
  v4 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "ignore media event for adult content", v8, 2u);
    }
  }

  else
  {
    v6 = [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:v3 contentPosition:0 isBackground:0 isAmbient:0 actionType:@"stop"];
    v7 = +[VUIMetricsController sharedInstance];
    [v7 recordMedia:v6];
  }
}

+ (id)clickMetricsFromTVPMediaItem:(id)a3 targetType:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:v6 contentPosition:0 isBackground:0 isAmbient:0 actionType:0];

  [v7 addEntriesFromDictionary:v8];
  v9 = [v7 valueForKey:@"id"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v8 objectForKey:@"contentType"];
    v11 = @"trailer";
    v13 = [v12 isEqualToString:@"trailer"];

    if ((v13 & 1) == 0)
    {
      v14 = VUIDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_INFO, "VUIMetricsMediaEvent: No media ID found for non-trailer TVPMediaItem", v17, 2u);
      }

      v11 = &stru_1F5DB25C0;
    }
  }

  v18[0] = @"targetId";
  v18[1] = @"targetType";
  v19[0] = v11;
  v19[1] = v5;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v7 addEntriesFromDictionary:v15];

  [v7 removeObjectForKey:@"startType"];
  [v7 removeObjectForKey:@"url"];
  [v7 removeObjectForKey:@"id"];

  return v7;
}

+ (id)clickMetricsForSkipInfo:(id)a3 onMediaItem:(id)a4
{
  v22[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v8 = [v5 promoInfo];

  if (v8)
  {
    v9 = [v5 promoInfo];
    v10 = [v9 canonicalId];

    v7 = v10;
  }

  if (!v7)
  {
    v7 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  }

  v11 = [v5 localizedTitle];
  v12 = [VUIMetricsMediaEvent clickMetricsFromTVPMediaItem:v6];
  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = &stru_1F5DB25C0;
  }

  v21[0] = @"targetId";
  v21[1] = @"actionType";
  v22[0] = v13;
  v22[1] = @"skip";
  v22[2] = @"preRoll";
  v21[2] = @"actionContext";
  v21[3] = @"actionDetails";
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = &stru_1F5DB25C0;
  }

  v19 = @"name";
  v20 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v12];
  [v17 addEntriesFromDictionary:v16];

  return v17;
}

+ (id)clickMetricsForUpNextWithPromoInfo:(id)a3 onMediaItem:(id)a4
{
  v21[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 canonicalId];
  if ([v5 isAddedToUpNext])
  {
    [v5 addedToUpNextLabelString];
  }

  else
  {
    [v5 addToUpNextLabelString];
  }
  v8 = ;
  v9 = [VUIMetricsMediaEvent clickMetricsFromTVPMediaItem:v6 targetType:@"upNextButton"];

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = &stru_1F5DB25C0;
  }

  v21[0] = v10;
  v20[0] = @"targetId";
  v20[1] = @"actionType";
  v11 = [v5 isAddedToUpNext];
  v12 = VUIMetricsActionTypeRemove;
  if (!v11)
  {
    v12 = VUIMetricsActionTypeAdd;
  }

  v21[1] = *v12;
  v21[2] = @"preRoll";
  v20[2] = @"actionContext";
  v20[3] = @"actionDetails";
  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = &stru_1F5DB25C0;
  }

  v18 = @"name";
  v19 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
  [v16 addEntriesFromDictionary:v15];

  return v16;
}

+ (id)_metricsDataFromTVPMediaItem:(id)a3 contentPosition:(id)a4 isBackground:(BOOL)a5 isAmbient:(BOOL)a6 actionType:(id)a7
{
  v48 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = objc_opt_new();
  v14 = [v10 mediaItemURL];

  if (v14)
  {
    v15 = [v10 mediaItemURL];
    v16 = [v15 absoluteString];

    [v13 setObject:v16 forKey:@"url"];
  }

  v50 = v12;
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = @"play";
  }

  [v13 setObject:v17 forKey:@"actionType"];
  v18 = [v10 mediaItemMetadataForProperty:?];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  }

  v21 = v20;

  v22 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  v23 = v22;
  v24 = v21;
  if (v21 || (v24 = v22) != 0)
  {
    [v13 setObject:v24 forKey:@"id"];
  }

  v25 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
  if (v25)
  {
    [v13 setObject:v25 forKey:@"externalId"];
  }

  v26 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
  if (v26)
  {
    [v13 setObject:v26 forKey:@"referenceId"];
  }

  v49 = v23;
  v27 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
  if (v27)
  {
    [v13 setObject:v27 forKey:@"brandId"];
  }

  v28 = [v10 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipDuration"];
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v30 = a1;
    v31 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B70]];
    if (!v31)
    {
      goto LABEL_23;
    }

    v29 = v31;
  }

  v30 = a1;
  v32 = [a1 _convertToMs:v29];

  [v13 setObject:v32 forKey:@"duration"];
LABEL_23:
  v33 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C48]];
  if (v33)
  {
    [v13 setObject:v33 forKey:@"serviceId"];
  }

  if (v11)
  {
    v34 = [v30 _convertToMs:v11];

    [v13 setObject:v34 forKey:@"position"];
  }

  v35 = v21;
  if (v48)
  {
    [v13 setObject:@"automatic" forKey:@"startType"];
    v36 = [v10 mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
    v37 = [v36 length];

    if (v37)
    {
      v38 = @"KeyPlay";
    }

    else
    {
      v38 = @"ambient";
    }

    if (!v37 && !a6)
    {
      v39 = [v10 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyUTSEntityType"];
      v40 = v39;
      v41 = @"trailer";
      if (v39)
      {
        v41 = v39;
      }

      v38 = v41;
    }

    v42 = v13;
    v43 = v38;
    goto LABEL_43;
  }

  v44 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v38 = v44;
  if (!v44)
  {
    goto LABEL_44;
  }

  if (([(__CFString *)v44 isEqualToString:*MEMORY[0x1E69D5EB8]]& 1) != 0)
  {
    goto LABEL_41;
  }

  if ([(__CFString *)v38 isEqualToString:*MEMORY[0x1E69D5EC8]])
  {
    [v13 setObject:@"rental" forKey:@"entitlementReason"];
LABEL_41:
    v43 = @"movie";
LABEL_42:
    v42 = v13;
LABEL_43:
    [v42 setObject:v43 forKey:@"contentType"];
    goto LABEL_44;
  }

  if (([(__CFString *)v38 isEqualToString:*MEMORY[0x1E69D5ED0]]& 1) != 0)
  {
    v43 = @"episode";
    goto LABEL_42;
  }

  v46 = VUIDefaultLogObject();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [VUIMetricsMediaEvent _metricsDataFromTVPMediaItem:v46 contentPosition:? isBackground:? isAmbient:? actionType:?];
  }

LABEL_44:

  return v13;
}

+ (id)_convertToMs:(id)a3
{
  v3 = 1000 * [a3 longValue];
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithLong:v3];
}

@end