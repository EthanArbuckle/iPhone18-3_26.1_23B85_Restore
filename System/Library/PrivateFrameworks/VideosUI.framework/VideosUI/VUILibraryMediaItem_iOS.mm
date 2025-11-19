@interface VUILibraryMediaItem_iOS
+ (void)initialize;
- (BOOL)hasTrait:(id)a3;
- (BOOL)isEqualToMediaItem:(id)a3;
- (TVImageLoader)imageLoader;
- (VUILibraryMediaItem_iOS)initWithMPMediaItem:(id)a3;
- (id)_localPlaybackFilePathURL;
- (id)mediaItemMetadataForProperty:(id)a3;
- (id)mediaItemURL;
- (void)_schedulePlaybackPositionInfoPersistence;
- (void)prepareForLoadingWithCompletion:(id)a3;
- (void)updateBookmarkWithSuggestedTime:(double)a3 forElapsedTime:(double)a4 duration:(double)a5 playbackOfMediaItemIsEnding:(BOOL)a6;
- (void)updatePlayCountForElapsedTime:(double)a3 duration:(double)a4;
@end

@implementation VUILibraryMediaItem_iOS

+ (void)initialize
{
  if (initialize_onceToken_9 != -1)
  {
    +[VUILibraryMediaItem_iOS initialize];
  }
}

- (VUILibraryMediaItem_iOS)initWithMPMediaItem:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = VUILibraryMediaItem_iOS;
  v6 = [(TVPBaseMediaItem *)&v13 init];
  if (v6)
  {
    if (v5)
    {
      v6->_persistentID = [v5 persistentID];
      objc_storeStrong(&v6->_mpMediaItem, a3);
      v7 = [v5 mediaLibrary];
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 ml3Library];
      }

      else
      {
        v8 = 0;
      }

      v10 = [objc_alloc(MEMORY[0x1E69B3538]) initWithPersistentID:v6->_persistentID inLibrary:v8];
      ml3Track = v6->_ml3Track;
      v6->_ml3Track = v10;
    }

    else
    {
      v9 = sLogObject_17;
      if (os_log_type_enabled(sLogObject_17, OS_LOG_TYPE_ERROR))
      {
        [VUILibraryMediaItem_iOS initWithMPMediaItem:v9];
      }
    }
  }

  return v6;
}

- (TVImageLoader)imageLoader
{
  v2 = +[VUIMediaLibraryManager defaultManager];
  v3 = [v2 deviceMediaLibrary];

  return v3;
}

- (BOOL)isEqualToMediaItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (self == v4)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_14;
  }

  v6 = [(VUILibraryMediaItem_iOS *)v5 persistentID];
  if ([(VUILibraryMediaItem_iOS *)self persistentID]&& v6 && [(VUILibraryMediaItem_iOS *)self persistentID]== v6)
  {
    goto LABEL_7;
  }

  v8 = *MEMORY[0x1E69D5DA8];
  v9 = [(VUILibraryMediaItem_iOS *)self mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  v10 = [(VUILibraryMediaItem_iOS *)v5 mediaItemMetadataForProperty:v8];
  if ([v9 length] && objc_msgSend(v10, "length"))
  {
    v7 = [v9 isEqualToString:v10];
  }

  else
  {
    v7 = 0;
  }

LABEL_14:
  return v7;
}

- (id)mediaItemURL
{
  v3 = [(VUILibraryMediaItem_iOS *)self mediaItemURLInternal];

  if (!v3)
  {
    v4 = [(VUILibraryMediaItem_iOS *)self _localPlaybackFilePathURL];
    [(VUILibraryMediaItem_iOS *)self setMediaItemURLInternal:v4];
  }

  return [(VUILibraryMediaItem_iOS *)self mediaItemURLInternal];
}

- (BOOL)hasTrait:(id)a3
{
  v4 = a3;
  if (![v4 isEqualToString:*MEMORY[0x1E69D5E88]])
  {
    if ([v4 isEqualToString:*MEMORY[0x1E69D5E90]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E69D5E78]))
    {
      v6 = 1;
      goto LABEL_7;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69D5E48]])
    {
      v8 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v9 = v8;
      v10 = MEMORY[0x1E69B3078];
    }

    else
    {
      if (![v4 isEqualToString:*MEMORY[0x1E69D5E38]])
      {
        if ([v4 isEqualToString:*MEMORY[0x1E69D5E58]])
        {
          v12 = [(VUILibraryMediaItem_iOS *)self _localPlaybackFilePathURL];
          v6 = v12 != 0;

          goto LABEL_7;
        }

        v13.receiver = self;
        v13.super_class = VUILibraryMediaItem_iOS;
        v5 = [(TVPBaseMediaItem *)&v13 hasTrait:v4];
        goto LABEL_3;
      }

      v8 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v9 = v8;
      v10 = MEMORY[0x1E69B3008];
    }

    v11 = [v8 valueForProperty:*v10];
    v6 = [v11 BOOLValue];

    goto LABEL_7;
  }

  v5 = [(VUILibraryMediaItem_iOS *)self _supportsBookmarks];
LABEL_3:
  v6 = v5;
LABEL_7:

  return v6;
}

- (id)mediaItemMetadataForProperty:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E69D5DC0];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5DC0]])
  {
    v6 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (v6)
    {
      v7 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v8 = v7;
      v9 = MEMORY[0x1E69B3380];
LABEL_4:
      v10 = [v7 valueForProperty:*v9];
LABEL_48:
      v35 = v10;
LABEL_49:

      goto LABEL_50;
    }

    v71 = self;
    v72 = VUILibraryMediaItem_iOS;
    v15 = &v71;
    goto LABEL_24;
  }

  v5 = *MEMORY[0x1E69D5C78];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5C78]])
  {
    v11 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (!v11)
    {
      v68.receiver = self;
      v68.super_class = VUILibraryMediaItem_iOS;
      v15 = &v68;
      goto LABEL_24;
    }

    v12 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v13 = [v12 valueForProperty:*MEMORY[0x1E69B3138]];
    v14 = [v13 unsignedIntValue];

    if ((v14 & 0x200) != 0)
    {
      v26 = MEMORY[0x1E69D5ED0];
    }

    else if ((v14 & 0x2000) != 0)
    {
      v26 = MEMORY[0x1E69D5EB0];
    }

    else
    {
      if ((v14 & 0x800) == 0)
      {
        v69 = self;
        v70 = VUILibraryMediaItem_iOS;
        v15 = &v69;
LABEL_24:
        objc_msgSendSuper2(v15, sel_mediaItemMetadataForProperty_, v5, v59.receiver, v59.super_class, v60, v61, v62, v63, v64, v65, v66, v67, v68.receiver, v68.super_class, v69, v70, v71, v72);
        v25 = LABEL_25:;
LABEL_39:
        v35 = v25;
        goto LABEL_50;
      }

      v41 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v42 = [v41 valueForProperty:*MEMORY[0x1E69B30E8]];
      v43 = [v42 BOOLValue];

      if (v43)
      {
        v26 = MEMORY[0x1E69D5EC8];
      }

      else
      {
        v26 = MEMORY[0x1E69D5EB8];
      }
    }

LABEL_38:
    v25 = *v26;
    goto LABEL_39;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5D60]])
  {
    v16 = [(VUILibraryMediaItem_iOS *)self mediaItemMetadataForProperty:v5];
    v8 = v16;
    if (v16 == *MEMORY[0x1E69D5EB8] || v16 == *MEMORY[0x1E69D5EC8])
    {
      v18 = MEMORY[0x1E698DA90];
    }

    else
    {
      if (v16 != *MEMORY[0x1E69D5ED0])
      {
        if (v16 == *MEMORY[0x1E69D5EB0])
        {
          v27 = *MEMORY[0x1E698DA88];
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_47;
      }

      v18 = MEMORY[0x1E698DAA8];
    }

    v27 = *v18;
LABEL_47:
    v10 = v27;
    goto LABEL_48;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5AB0]])
  {
    v19 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    if (v19)
    {
      v20 = v19;
      v21 = [(VUILibraryMediaItem_iOS *)self imageLoader];

      if (v21)
      {
        v22 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
        v23 = v22;
        v24 = 0;
LABEL_35:
        v31 = [v22 vui_imageLoadParamsWithImageType:v24];

        v32 = MEMORY[0x1E69D5958];
LABEL_36:
        v33 = [v32 alloc];
        v34 = [(VUILibraryMediaItem_iOS *)self imageLoader];
        v35 = [v33 initWithObject:v31 imageLoader:v34 groupType:0];

        goto LABEL_50;
      }
    }

    goto LABEL_79;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E69D5AA8]])
  {
    v28 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    if (v28)
    {
      v29 = v28;
      v30 = [(VUILibraryMediaItem_iOS *)self imageLoader];

      if (v30)
      {
        v22 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
        v23 = v22;
        v24 = 1;
        goto LABEL_35;
      }
    }

    goto LABEL_79;
  }

  if (([v4 isEqualToString:@"VUIMediaItemMetadataArtworkEpisodePreviewVUIImageProxy"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"VUIMediaItemMetadataPostPlayVUIImageProxy"))
  {
    v36 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    if (v36)
    {
      v37 = v36;
      v38 = [(VUILibraryMediaItem_iOS *)self imageLoader];

      if (v38)
      {
        v39 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
        v31 = [v39 vui_imageLoadParamsWithImageType:1];

        v32 = MEMORY[0x1E69DF730];
        goto LABEL_36;
      }
    }

    goto LABEL_79;
  }

  v5 = *MEMORY[0x1E69D5B80];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5B80]])
  {
    v44 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

    if (!v44)
    {
      v66 = self;
      v67 = VUILibraryMediaItem_iOS;
      v15 = &v66;
      goto LABEL_24;
    }

    v45 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    v46 = v45;
    v47 = MEMORY[0x1E696F998];
  }

  else
  {
    v5 = *MEMORY[0x1E69D5D30];
    if (![v4 isEqualToString:*MEMORY[0x1E69D5D30]])
    {
      v5 = *MEMORY[0x1E69D5B20];
      if ([v4 isEqualToString:*MEMORY[0x1E69D5B20]])
      {
        v50 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

        if (v50)
        {
          v51 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
          v8 = [v51 valueForProperty:*MEMORY[0x1E696F970]];

          v52 = [v8 vui_stringForKey:@"ratingLevel"];
          v53 = v52;
          if (v52)
          {
            v35 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v52, "integerValue")}];
          }

          else
          {
            v35 = 0;
          }

          goto LABEL_49;
        }

        v62 = self;
        v63 = VUILibraryMediaItem_iOS;
        v15 = &v62;
        goto LABEL_24;
      }

      v5 = *MEMORY[0x1E69D5B08];
      if ([v4 isEqualToString:*MEMORY[0x1E69D5B08]])
      {
        v54 = [(VUILibraryMediaItem_iOS *)self ml3Track];

        if (!v54)
        {
          v60 = self;
          v61 = VUILibraryMediaItem_iOS;
          v15 = &v60;
          goto LABEL_24;
        }

        v55 = [(VUILibraryMediaItem_iOS *)self ml3Track];
        v56 = [v55 valueForProperty:*MEMORY[0x1E69B3138]];
        v57 = [v56 unsignedIntValue];

        if ((v57 & 0x200) != 0)
        {
          v26 = MEMORY[0x1E69D5B18];
          goto LABEL_38;
        }

        if ((v57 & 0x800) != 0)
        {
          v26 = MEMORY[0x1E69D5B10];
          goto LABEL_38;
        }
      }

      else
      {
        if (![v4 isEqualToString:@"VUIMediaItemMetadataKeyVideoQuality"])
        {
          [(VUIBaseMediaItem *)&v59 mediaItemMetadataForProperty:v4, self, VUILibraryMediaItem_iOS, v60, v61, v62, v63, v64, v65, v66, v67, v68.receiver, v68.super_class, v69, v70, v71, v72];
          goto LABEL_25;
        }

        v58 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

        if (v58)
        {
          v7 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
          v8 = v7;
          v9 = MEMORY[0x1E696FB90];
          goto LABEL_4;
        }
      }

LABEL_79:
      v35 = 0;
      goto LABEL_50;
    }

    v48 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

    if (!v48)
    {
      v64 = self;
      v65 = VUILibraryMediaItem_iOS;
      v15 = &v64;
      goto LABEL_24;
    }

    v45 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    v46 = v45;
    v47 = MEMORY[0x1E696FB10];
  }

  v35 = [v45 valueForProperty:*v47];

  if (v35)
  {
    v49 = v35;
  }

LABEL_50:

  return v35;
}

- (void)prepareForLoadingWithCompletion:(id)a3
{
  v17 = a3;
  v4 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v5 = [v4 valueForProperty:*MEMORY[0x1E69B2E20]];

  if (objc_opt_respondsToSelector())
  {
    [v5 doubleValue];
    v7 = v6 / 1000.0;
    if (v6 / 1000.0 > 0.0)
    {
      v8 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v9 = [v8 valueForProperty:*MEMORY[0x1E69B3288]];

      if (v9 && ([v9 doubleValue], v10 > 0.0))
      {
        v11 = MEMORY[0x1E695DF00];
        [v9 doubleValue];
        v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v12 = 0;
      }

      v13 = [VUIMediaStartTimeInfo alloc];
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      v15 = [(VUIMediaStartTimeInfo *)v13 initWithStartTime:v14 timestamp:v12 type:0 source:@"Media Library"];

      v16 = [(VUIBaseMediaItem *)self startTimeCollection];
      [v16 addStartTimeInfo:v15];
    }
  }

  if (v17)
  {
    v17[2](v17, 1, 0);
  }
}

- (void)updateBookmarkWithSuggestedTime:(double)a3 forElapsedTime:(double)a4 duration:(double)a5 playbackOfMediaItemIsEnding:(BOOL)a6
{
  v11 = [(VUILibraryMediaItem_iOS *)self playbackPositionInfo:a6];
  if (!v11)
  {
    v11 = objc_alloc_init(VUIPlaybackPositionInfo);
    [(VUILibraryMediaItem_iOS *)self _schedulePlaybackPositionInfoPersistence];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(VUIPlaybackPositionInfo *)v11 setBookmarkTime:v8];

  [(VUILibraryMediaItem_iOS *)self setPlaybackPositionInfo:v11];
  v9 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v9 setValue:v10 forProperty:*MEMORY[0x1E696F950] withCompletionBlock:0];
}

- (void)updatePlayCountForElapsedTime:(double)a3 duration:(double)a4
{
  v12 = [(VUILibraryMediaItem_iOS *)self playbackPositionInfo];
  if (!v12)
  {
    v12 = objc_alloc_init(VUIPlaybackPositionInfo);
    [(VUILibraryMediaItem_iOS *)self _schedulePlaybackPositionInfoPersistence];
  }

  v7 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v8 = [v7 valueForProperty:*MEMORY[0x1E69B3158]];
  v9 = [v8 unsignedIntegerValue];

  [MEMORY[0x1E69D5A48] playedThresholdTimeForDuration:a4];
  if (v10 < a3)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 + 1];
    [(VUIPlaybackPositionInfo *)v12 setPlayCount:v11];
  }

  if (a3 > 5.0)
  {
    [(VUIPlaybackPositionInfo *)v12 setHasBeenPlayed:MEMORY[0x1E695E118]];
  }

  [(VUILibraryMediaItem_iOS *)self setPlaybackPositionInfo:v12];
}

- (id)_localPlaybackFilePathURL
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v4 = [v3 valueForProperty:*MEMORY[0x1E69B2F48]];

  v5 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v6 = [v5 valueForProperty:*MEMORY[0x1E69B3098]];
  v7 = [v6 BOOLValue];

  v8 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v9 = [v8 valueForProperty:*MEMORY[0x1E69B3100]];
  v10 = [v9 BOOLValue];

  v11 = 0;
  if (v7 && (v10 & 1) == 0)
  {
    if ([v4 length] < 2)
    {
      v11 = 0;
    }

    else
    {
      v12 = CPSharedResourcesDirectory();
      v13 = v12;
      if (v12)
      {
        v14 = MEMORY[0x1E696AEC0];
        v18[0] = v12;
        v18[1] = @"Media";
        v18[2] = v4;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
        v16 = [v14 pathWithComponents:v15];

        if (v16)
        {
          v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16 isDirectory:0];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

- (void)_schedulePlaybackPositionInfoPersistence
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__VUILibraryMediaItem_iOS__schedulePlaybackPositionInfoPersistence__block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)initWithMPMediaItem:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1E323F000, v1, OS_LOG_TYPE_ERROR, "%@ created with nil MPMediaItem", &v4, 0xCu);
}

@end