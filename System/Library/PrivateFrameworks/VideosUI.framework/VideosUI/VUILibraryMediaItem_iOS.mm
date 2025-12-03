@interface VUILibraryMediaItem_iOS
+ (void)initialize;
- (BOOL)hasTrait:(id)trait;
- (BOOL)isEqualToMediaItem:(id)item;
- (TVImageLoader)imageLoader;
- (VUILibraryMediaItem_iOS)initWithMPMediaItem:(id)item;
- (id)_localPlaybackFilePathURL;
- (id)mediaItemMetadataForProperty:(id)property;
- (id)mediaItemURL;
- (void)_schedulePlaybackPositionInfoPersistence;
- (void)prepareForLoadingWithCompletion:(id)completion;
- (void)updateBookmarkWithSuggestedTime:(double)time forElapsedTime:(double)elapsedTime duration:(double)duration playbackOfMediaItemIsEnding:(BOOL)ending;
- (void)updatePlayCountForElapsedTime:(double)time duration:(double)duration;
@end

@implementation VUILibraryMediaItem_iOS

+ (void)initialize
{
  if (initialize_onceToken_9 != -1)
  {
    +[VUILibraryMediaItem_iOS initialize];
  }
}

- (VUILibraryMediaItem_iOS)initWithMPMediaItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = VUILibraryMediaItem_iOS;
  v6 = [(TVPBaseMediaItem *)&v13 init];
  if (v6)
  {
    if (itemCopy)
    {
      v6->_persistentID = [itemCopy persistentID];
      objc_storeStrong(&v6->_mpMediaItem, item);
      mediaLibrary = [itemCopy mediaLibrary];
      if (objc_opt_respondsToSelector())
      {
        ml3Library = [mediaLibrary ml3Library];
      }

      else
      {
        ml3Library = 0;
      }

      v10 = [objc_alloc(MEMORY[0x1E69B3538]) initWithPersistentID:v6->_persistentID inLibrary:ml3Library];
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
  deviceMediaLibrary = [v2 deviceMediaLibrary];

  return deviceMediaLibrary;
}

- (BOOL)isEqualToMediaItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_8;
  }

  if (self == itemCopy)
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

  persistentID = [(VUILibraryMediaItem_iOS *)v5 persistentID];
  if ([(VUILibraryMediaItem_iOS *)self persistentID]&& persistentID && [(VUILibraryMediaItem_iOS *)self persistentID]== persistentID)
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
  mediaItemURLInternal = [(VUILibraryMediaItem_iOS *)self mediaItemURLInternal];

  if (!mediaItemURLInternal)
  {
    _localPlaybackFilePathURL = [(VUILibraryMediaItem_iOS *)self _localPlaybackFilePathURL];
    [(VUILibraryMediaItem_iOS *)self setMediaItemURLInternal:_localPlaybackFilePathURL];
  }

  return [(VUILibraryMediaItem_iOS *)self mediaItemURLInternal];
}

- (BOOL)hasTrait:(id)trait
{
  traitCopy = trait;
  if (![traitCopy isEqualToString:*MEMORY[0x1E69D5E88]])
  {
    if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E90]] & 1) != 0 || (objc_msgSend(traitCopy, "isEqualToString:", *MEMORY[0x1E69D5E78]))
    {
      bOOLValue = 1;
      goto LABEL_7;
    }

    if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E48]])
    {
      ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v9 = ml3Track;
      v10 = MEMORY[0x1E69B3078];
    }

    else
    {
      if (![traitCopy isEqualToString:*MEMORY[0x1E69D5E38]])
      {
        if ([traitCopy isEqualToString:*MEMORY[0x1E69D5E58]])
        {
          _localPlaybackFilePathURL = [(VUILibraryMediaItem_iOS *)self _localPlaybackFilePathURL];
          bOOLValue = _localPlaybackFilePathURL != 0;

          goto LABEL_7;
        }

        v13.receiver = self;
        v13.super_class = VUILibraryMediaItem_iOS;
        _supportsBookmarks = [(TVPBaseMediaItem *)&v13 hasTrait:traitCopy];
        goto LABEL_3;
      }

      ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v9 = ml3Track;
      v10 = MEMORY[0x1E69B3008];
    }

    v11 = [ml3Track valueForProperty:*v10];
    bOOLValue = [v11 BOOLValue];

    goto LABEL_7;
  }

  _supportsBookmarks = [(VUILibraryMediaItem_iOS *)self _supportsBookmarks];
LABEL_3:
  bOOLValue = _supportsBookmarks;
LABEL_7:

  return bOOLValue;
}

- (id)mediaItemMetadataForProperty:(id)property
{
  propertyCopy = property;
  v5 = *MEMORY[0x1E69D5DC0];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5DC0]])
  {
    ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (ml3Track)
    {
      ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v8 = ml3Track2;
      v9 = MEMORY[0x1E69B3380];
LABEL_4:
      v10 = [ml3Track2 valueForProperty:*v9];
LABEL_48:
      v35 = v10;
LABEL_49:

      goto LABEL_50;
    }

    selfCopy = self;
    v72 = VUILibraryMediaItem_iOS;
    v15 = &selfCopy;
    goto LABEL_24;
  }

  v5 = *MEMORY[0x1E69D5C78];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5C78]])
  {
    ml3Track3 = [(VUILibraryMediaItem_iOS *)self ml3Track];

    if (!ml3Track3)
    {
      v68.receiver = self;
      v68.super_class = VUILibraryMediaItem_iOS;
      v15 = &v68;
      goto LABEL_24;
    }

    ml3Track4 = [(VUILibraryMediaItem_iOS *)self ml3Track];
    v13 = [ml3Track4 valueForProperty:*MEMORY[0x1E69B3138]];
    unsignedIntValue = [v13 unsignedIntValue];

    if ((unsignedIntValue & 0x200) != 0)
    {
      v26 = MEMORY[0x1E69D5ED0];
    }

    else if ((unsignedIntValue & 0x2000) != 0)
    {
      v26 = MEMORY[0x1E69D5EB0];
    }

    else
    {
      if ((unsignedIntValue & 0x800) == 0)
      {
        selfCopy2 = self;
        v70 = VUILibraryMediaItem_iOS;
        v15 = &selfCopy2;
LABEL_24:
        objc_msgSendSuper2(v15, sel_mediaItemMetadataForProperty_, v5, v59.receiver, v59.super_class, selfCopy5, v61, selfCopy4, v63, selfCopy6, v65, selfCopy3, v67, v68.receiver, v68.super_class, selfCopy2, v70, selfCopy, v72);
        v25 = LABEL_25:;
LABEL_39:
        v35 = v25;
        goto LABEL_50;
      }

      ml3Track5 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v42 = [ml3Track5 valueForProperty:*MEMORY[0x1E69B30E8]];
      bOOLValue = [v42 BOOLValue];

      if (bOOLValue)
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

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5D60]])
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

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5AB0]])
  {
    mpMediaItem = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    if (mpMediaItem)
    {
      v20 = mpMediaItem;
      imageLoader = [(VUILibraryMediaItem_iOS *)self imageLoader];

      if (imageLoader)
      {
        mpMediaItem2 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
        v23 = mpMediaItem2;
        v24 = 0;
LABEL_35:
        v31 = [mpMediaItem2 vui_imageLoadParamsWithImageType:v24];

        v32 = MEMORY[0x1E69D5958];
LABEL_36:
        v33 = [v32 alloc];
        imageLoader2 = [(VUILibraryMediaItem_iOS *)self imageLoader];
        v35 = [v33 initWithObject:v31 imageLoader:imageLoader2 groupType:0];

        goto LABEL_50;
      }
    }

    goto LABEL_79;
  }

  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5AA8]])
  {
    mpMediaItem3 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    if (mpMediaItem3)
    {
      v29 = mpMediaItem3;
      imageLoader3 = [(VUILibraryMediaItem_iOS *)self imageLoader];

      if (imageLoader3)
      {
        mpMediaItem2 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
        v23 = mpMediaItem2;
        v24 = 1;
        goto LABEL_35;
      }
    }

    goto LABEL_79;
  }

  if (([propertyCopy isEqualToString:@"VUIMediaItemMetadataArtworkEpisodePreviewVUIImageProxy"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"VUIMediaItemMetadataPostPlayVUIImageProxy"))
  {
    mpMediaItem4 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    if (mpMediaItem4)
    {
      v37 = mpMediaItem4;
      imageLoader4 = [(VUILibraryMediaItem_iOS *)self imageLoader];

      if (imageLoader4)
      {
        mpMediaItem5 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
        v31 = [mpMediaItem5 vui_imageLoadParamsWithImageType:1];

        v32 = MEMORY[0x1E69DF730];
        goto LABEL_36;
      }
    }

    goto LABEL_79;
  }

  v5 = *MEMORY[0x1E69D5B80];
  if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B80]])
  {
    mpMediaItem6 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

    if (!mpMediaItem6)
    {
      selfCopy3 = self;
      v67 = VUILibraryMediaItem_iOS;
      v15 = &selfCopy3;
      goto LABEL_24;
    }

    mpMediaItem7 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    v46 = mpMediaItem7;
    v47 = MEMORY[0x1E696F998];
  }

  else
  {
    v5 = *MEMORY[0x1E69D5D30];
    if (![propertyCopy isEqualToString:*MEMORY[0x1E69D5D30]])
    {
      v5 = *MEMORY[0x1E69D5B20];
      if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B20]])
      {
        mpMediaItem8 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

        if (mpMediaItem8)
        {
          mpMediaItem9 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
          v8 = [mpMediaItem9 valueForProperty:*MEMORY[0x1E696F970]];

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

        selfCopy4 = self;
        v63 = VUILibraryMediaItem_iOS;
        v15 = &selfCopy4;
        goto LABEL_24;
      }

      v5 = *MEMORY[0x1E69D5B08];
      if ([propertyCopy isEqualToString:*MEMORY[0x1E69D5B08]])
      {
        ml3Track6 = [(VUILibraryMediaItem_iOS *)self ml3Track];

        if (!ml3Track6)
        {
          selfCopy5 = self;
          v61 = VUILibraryMediaItem_iOS;
          v15 = &selfCopy5;
          goto LABEL_24;
        }

        ml3Track7 = [(VUILibraryMediaItem_iOS *)self ml3Track];
        v56 = [ml3Track7 valueForProperty:*MEMORY[0x1E69B3138]];
        unsignedIntValue2 = [v56 unsignedIntValue];

        if ((unsignedIntValue2 & 0x200) != 0)
        {
          v26 = MEMORY[0x1E69D5B18];
          goto LABEL_38;
        }

        if ((unsignedIntValue2 & 0x800) != 0)
        {
          v26 = MEMORY[0x1E69D5B10];
          goto LABEL_38;
        }
      }

      else
      {
        if (![propertyCopy isEqualToString:@"VUIMediaItemMetadataKeyVideoQuality"])
        {
          [(VUIBaseMediaItem *)&v59 mediaItemMetadataForProperty:propertyCopy, self, VUILibraryMediaItem_iOS, selfCopy5, v61, selfCopy4, v63, selfCopy6, v65, selfCopy3, v67, v68.receiver, v68.super_class, selfCopy2, v70, selfCopy, v72];
          goto LABEL_25;
        }

        mpMediaItem10 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

        if (mpMediaItem10)
        {
          ml3Track2 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
          v8 = ml3Track2;
          v9 = MEMORY[0x1E696FB90];
          goto LABEL_4;
        }
      }

LABEL_79:
      v35 = 0;
      goto LABEL_50;
    }

    mpMediaItem11 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];

    if (!mpMediaItem11)
    {
      selfCopy6 = self;
      v65 = VUILibraryMediaItem_iOS;
      v15 = &selfCopy6;
      goto LABEL_24;
    }

    mpMediaItem7 = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
    v46 = mpMediaItem7;
    v47 = MEMORY[0x1E696FB10];
  }

  v35 = [mpMediaItem7 valueForProperty:*v47];

  if (v35)
  {
    v49 = v35;
  }

LABEL_50:

  return v35;
}

- (void)prepareForLoadingWithCompletion:(id)completion
{
  completionCopy = completion;
  ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v5 = [ml3Track valueForProperty:*MEMORY[0x1E69B2E20]];

  if (objc_opt_respondsToSelector())
  {
    [v5 doubleValue];
    v7 = v6 / 1000.0;
    if (v6 / 1000.0 > 0.0)
    {
      ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
      v9 = [ml3Track2 valueForProperty:*MEMORY[0x1E69B3288]];

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

      startTimeCollection = [(VUIBaseMediaItem *)self startTimeCollection];
      [startTimeCollection addStartTimeInfo:v15];
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)updateBookmarkWithSuggestedTime:(double)time forElapsedTime:(double)elapsedTime duration:(double)duration playbackOfMediaItemIsEnding:(BOOL)ending
{
  v11 = [(VUILibraryMediaItem_iOS *)self playbackPositionInfo:ending];
  if (!v11)
  {
    v11 = objc_alloc_init(VUIPlaybackPositionInfo);
    [(VUILibraryMediaItem_iOS *)self _schedulePlaybackPositionInfoPersistence];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [(VUIPlaybackPositionInfo *)v11 setBookmarkTime:v8];

  [(VUILibraryMediaItem_iOS *)self setPlaybackPositionInfo:v11];
  mpMediaItem = [(VUILibraryMediaItem_iOS *)self mpMediaItem];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [mpMediaItem setValue:v10 forProperty:*MEMORY[0x1E696F950] withCompletionBlock:0];
}

- (void)updatePlayCountForElapsedTime:(double)time duration:(double)duration
{
  playbackPositionInfo = [(VUILibraryMediaItem_iOS *)self playbackPositionInfo];
  if (!playbackPositionInfo)
  {
    playbackPositionInfo = objc_alloc_init(VUIPlaybackPositionInfo);
    [(VUILibraryMediaItem_iOS *)self _schedulePlaybackPositionInfoPersistence];
  }

  ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v8 = [ml3Track valueForProperty:*MEMORY[0x1E69B3158]];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  [MEMORY[0x1E69D5A48] playedThresholdTimeForDuration:duration];
  if (v10 < time)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [(VUIPlaybackPositionInfo *)playbackPositionInfo setPlayCount:v11];
  }

  if (time > 5.0)
  {
    [(VUIPlaybackPositionInfo *)playbackPositionInfo setHasBeenPlayed:MEMORY[0x1E695E118]];
  }

  [(VUILibraryMediaItem_iOS *)self setPlaybackPositionInfo:playbackPositionInfo];
}

- (id)_localPlaybackFilePathURL
{
  v18[3] = *MEMORY[0x1E69E9840];
  ml3Track = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v4 = [ml3Track valueForProperty:*MEMORY[0x1E69B2F48]];

  ml3Track2 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v6 = [ml3Track2 valueForProperty:*MEMORY[0x1E69B3098]];
  bOOLValue = [v6 BOOLValue];

  ml3Track3 = [(VUILibraryMediaItem_iOS *)self ml3Track];
  v9 = [ml3Track3 valueForProperty:*MEMORY[0x1E69B3100]];
  bOOLValue2 = [v9 BOOLValue];

  v11 = 0;
  if (bOOLValue && (bOOLValue2 & 1) == 0)
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