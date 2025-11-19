@interface ICSharedListeningItem
+ (ICSharedListeningItem)itemWithMediaIdentifier:(id)a3;
- (ICSharedListeningItem)initWithProtobuf:(id)a3 identity:(id)a4;
- (id)_playParamsForPlaybackItemProto:(id)a3;
@end

@implementation ICSharedListeningItem

- (id)_playParamsForPlaybackItemProto:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = v4[5]) != 0 && (v7 = v6[2], v6, v7))
  {
    v8 = v5[5];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 2);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 dataUsingEncoding:4];

    v22 = 0;
    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:&v22];
    v14 = v22;
    if (v14 || !v13)
    {
      v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLink");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v5[5];
        v18 = v17;
        if (v17)
        {
          v19 = *(v17 + 2);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        *buf = 134218498;
        v24 = self;
        v25 = 2114;
        v26 = v20;
        v27 = 2114;
        v28 = v14;
        _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "ILL %p: _playParamsForPlaybackItemProto: Error deserializing playParams: %{public}@ error: %{public}@", buf, 0x20u);
      }

      v15 = MEMORY[0x1E695E0F8];
    }

    else
    {
      v15 = v13;
    }
  }

  else
  {
    v15 = MEMORY[0x1E695E0F8];
  }

  return v15;
}

- (ICSharedListeningItem)initWithProtobuf:(id)a3 identity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = ICSharedListeningItem;
  v8 = [(ICSharedListeningItem *)&v24 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6[3];
      v10 = [v9 copy];
      identifier = v8->_identifier;
      v8->_identifier = v10;

      v12 = v6[4];
    }

    else
    {
      v22 = [0 copy];
      v23 = v8->_identifier;
      v8->_identifier = v22;

      v12 = 0;
    }

    v13 = v12;
    v14 = [v13 copy];
    mediaIdentifier = v8->_mediaIdentifier;
    v8->_mediaIdentifier = v14;

    v16 = v6 && (v6[7] & 2) != 0 && *(v6 + 12) == 2;
    v8->_isAutoPlayItem = v16;
    v17 = [v7 copy];
    contributorIdentity = v8->_contributorIdentity;
    v8->_contributorIdentity = v17;

    v19 = [(ICSharedListeningItem *)v8 _playParamsForPlaybackItemProto:v6];
    playParams = v8->_playParams;
    v8->_playParams = v19;
  }

  return v8;
}

+ (ICSharedListeningItem)itemWithMediaIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = MSVNanoIDCreateTaggedPointer();
  v6 = v4[2];
  v4[2] = v5;

  v7 = [v3 copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end