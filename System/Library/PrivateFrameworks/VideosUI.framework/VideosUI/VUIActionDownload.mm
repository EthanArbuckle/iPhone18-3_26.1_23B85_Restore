@interface VUIActionDownload
- (NSString)actionType;
- (VUIActionDownload)initWithContextData:(id)a3 appContext:(id)a4;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionDownload

- (VUIActionDownload)initWithContextData:(id)a3 appContext:(id)a4
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = VUIActionDownload;
  v6 = [(VUIActionDownload *)&v14 init];
  if (v6)
  {
    v7 = [v5 vui_dictionaryForKey:@"videosPlayable"];
    v8 = [v5 vui_dictionaryForKey:@"contentMetadata"];
    v9 = [v5 copy];
    contextData = v6->_contextData;
    v6->_contextData = v9;

    v11 = [[VUIVideosPlayable alloc] initWithDictionary:v7 andMetadataDictionary:v8];
    videosPlayable = v6->_videosPlayable;
    v6->_videosPlayable = v11;
  }

  return v6;
}

- (NSString)actionType
{
  v2 = [(VUIActionDownload *)self contextData];
  v3 = [v2 vui_stringForKey:@"action"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"download";
  }

  v6 = v5;

  return &v5->isa;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(VUIActionDownload *)self videosPlayable];

  if (v6)
  {
    v7 = [(VUIActionDownload *)self videosPlayable];
    v8 = [[VUIUniversalAssetController alloc] initWithVideosPlayable:v7];
    v9 = [(VUIActionDownload *)self actionType];
    v10 = [v9 isEqualToString:@"remove"];

    if (v10)
    {
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 adamID];
        *buf = 138412290;
        v29 = v12;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIActionDownload - removing download with id %@", buf, 0xCu);
      }

      [(VUIUniversalAssetController *)v8 cancelAndRemoveDownload];
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = [(VUIActionDownload *)self actionType];
      v15 = [v14 isEqualToString:@"status"];

      if (v15)
      {
        v16 = VUIDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(VUIUniversalAssetController *)v8 state];
          v18 = VUIMediaEntityAssetControllerStatusLogString([v17 status]);
          *buf = 138412290;
          v29 = v18;
          _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIActionDownload - asset download status: %@", buf, 0xCu);
        }

        if (v5)
        {
          v5[2](v5, 0);
        }

        goto LABEL_21;
      }

      v19 = [(VUIUniversalAssetController *)v8 state];
      v20 = [v19 status];

      if (!v20)
      {
        v24 = +[VUIPlaybackSettings sharedSettings];
        v25 = [v24 preferredWifiDownloadQuality];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __66__VUIActionDownload_performWithTargetResponder_completionHandler___block_invoke;
        v26[3] = &unk_1E872E470;
        v27 = v5;
        [(VUIUniversalAssetController *)v8 startDownloadAllowingCellular:0 quality:v25 shouldMarkAsDeletedOnCancellationOrFailure:0 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:v26];

        goto LABEL_21;
      }

      v21 = VUIDefaultLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(VUIUniversalAssetController *)v8 state];
        v23 = VUIMediaEntityAssetControllerStatusLogString([v22 status]);
        *buf = 138412290;
        v29 = v23;
        _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUIActionDownload - asset is already in a downloading state %@", buf, 0xCu);
      }

      if (!v5)
      {
        goto LABEL_21;
      }
    }

    v5[2](v5, 1);
LABEL_21:

    goto LABEL_22;
  }

  v13 = VUIDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [VUIActionDownload performWithTargetResponder:v13 completionHandler:?];
  }

  if (v5)
  {
    v5[2](v5, 0);
  }

LABEL_22:
}

uint64_t __66__VUIActionDownload_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end