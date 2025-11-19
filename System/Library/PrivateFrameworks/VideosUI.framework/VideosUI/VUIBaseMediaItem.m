@interface VUIBaseMediaItem
+ (void)initialize;
- (VUIMediaStartTimeCollection)startTimeCollection;
- (id)mediaItemMetadataForProperty:(id)a3;
@end

@implementation VUIBaseMediaItem

+ (void)initialize
{
  if (initialize_onceToken_8 != -1)
  {
    +[VUIBaseMediaItem initialize];
  }
}

void __30__VUIBaseMediaItem_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIBaseMediaItem");
  v1 = sLogObject_15;
  sLogObject_15 = v0;
}

- (VUIMediaStartTimeCollection)startTimeCollection
{
  startTimeCollection = self->_startTimeCollection;
  if (!startTimeCollection)
  {
    v4 = objc_alloc_init(VUIMediaStartTimeCollection);
    v5 = self->_startTimeCollection;
    self->_startTimeCollection = v4;

    startTimeCollection = self->_startTimeCollection;
  }

  return startTimeCollection;
}

- (id)mediaItemMetadataForProperty:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = VUIBaseMediaItem;
  v5 = [(TVPBaseMediaItem *)&v25 mediaItemMetadataForProperty:v4];
  v6 = *MEMORY[0x1E69D5D90];
  if ([v4 isEqualToString:*MEMORY[0x1E69D5D90]])
  {
    if (v5)
    {
      v7 = sLogObject_15;
      if (os_log_type_enabled(sLogObject_15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Returning manually set start time of %@", buf, 0xCu);
      }

      goto LABEL_25;
    }

    v13 = [(VUIBaseMediaItem *)self startTimeCollection];
    v14 = [v13 preferredStartTimeInfo];

    v15 = sLogObject_15;
    if (os_log_type_enabled(sLogObject_15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(VUIBaseMediaItem *)self startTimeCollection];
      v18 = [v17 allStartTimeInfos];
      *buf = 138412290;
      v27 = v18;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "All start time infos: %@", buf, 0xCu);
    }

    v19 = sLogObject_15;
    if (os_log_type_enabled(sLogObject_15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Preferred start time info: %@", buf, 0xCu);
    }

    if (v14)
    {
      v5 = [v14 startTime];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (![v4 isEqualToString:*MEMORY[0x1E69D5D98]])
    {
      if ([v4 isEqualToString:*MEMORY[0x1E69D5AC8]])
      {
        v10 = MEMORY[0x1E696AD98];
        v11 = _os_feature_enabled_impl();
        if (v11)
        {
          v6 = [MEMORY[0x1E695E000] standardUserDefaults];
          v12 = [v6 BOOLForKey:@"DisableInterstitials"] ^ 1;
        }

        else
        {
          v12 = 0;
        }

        v22 = [v10 numberWithInt:v12];

        if (v11)
        {
        }

        v5 = v22;
      }

      goto LABEL_25;
    }

    v24.receiver = self;
    v24.super_class = VUIBaseMediaItem;
    v8 = [(TVPBaseMediaItem *)&v24 mediaItemMetadataForProperty:v6];

    if (v8)
    {
      v9 = MEMORY[0x1E695E110];
      goto LABEL_26;
    }

    v20 = [(VUIBaseMediaItem *)self startTimeCollection];
    v14 = [v20 preferredStartTimeInfo];

    if (v14)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "type") == 1}];

      v5 = v21;
    }
  }

LABEL_25:
  v5 = v5;
  v9 = v5;
LABEL_26:

  return v9;
}

@end