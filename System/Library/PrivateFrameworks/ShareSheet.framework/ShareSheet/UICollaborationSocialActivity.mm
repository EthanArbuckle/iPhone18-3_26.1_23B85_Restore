@interface UICollaborationSocialActivity
- (BOOL)canPerformWithCollaborationItem:(id)a3 activityItems:(id)a4;
- (BOOL)canPerformWithCollaborationType:(int64_t)a3 isPostShare:(BOOL)a4;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation UICollaborationSocialActivity

- (id)activityTitle
{
  v3 = [(UICollaborationSocialActivity *)self isPostShare];
  v4 = @"SFCollaborationActivityPreShareTitle";
  if (v3)
  {
    v4 = @"SFCollaborationActivityPostShareTitle";
  }

  v5 = v4;
  v6 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v7 = [v6 objectForInfoDictionaryKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if ([v8 length])
    {
      goto LABEL_7;
    }
  }

  v10.receiver = self;
  v10.super_class = UICollaborationSocialActivity;
  v8 = [(UIApplicationExtensionActivity *)&v10 activityTitle];
LABEL_7:

  return v8;
}

- (BOOL)canPerformWithCollaborationType:(int64_t)a3 isPostShare:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v7 = [(UISocialActivity *)self activityType];
  v8 = [v7 isEqualToString:@"com.apple.CloudSharingUI.CreateiCloudLinkExtension"];

  if (v8 && !_os_feature_enabled_impl())
  {
    return 0;
  }

  [(UICollaborationSocialActivity *)self setIsPostShare:v4];
  v9 = [(UIApplicationExtensionActivity *)self applicationExtension];
  v10 = [v9 attributes];
  v11 = [v10 objectForKeyedSubscript:@"NSExtensionActivationRule"];
  v12 = [v11 objectForKeyedSubscript:@"NSExtensionActivationSupportsCollaborationWithTypes"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            v20 = [v19 isEqualToString:@"CKShare"];
            if (a3 == 1 && (v20 & 1) != 0 || (v21 = [v19 isEqualToString:@"URL"], !a3) && (v21 & 1) != 0 || (v22 = objc_msgSend(v19, "isEqualToString:", @"SharedWithYou"), a3 == 2) && v22)
            {
              v24 = share_sheet_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v31 = self;
                v32 = 2048;
                v33 = a3;
                v34 = 2112;
                v35 = v13;
                _os_log_impl(&dword_18B359000, v24, OS_LOG_TYPE_DEFAULT, "%@: canPerform:YES collaborationType:%ld supportedCollaborationTypes:%@", buf, 0x20u);
              }

              v23 = 1;
              goto LABEL_27;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = share_sheet_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = self;
    v32 = 2048;
    v33 = a3;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "%@: canPerform:NO collaborationType:%ld supportedCollaborationTypes:%@", buf, 0x20u);
  }

  v23 = 0;
LABEL_27:

  return v23;
}

- (BOOL)canPerformWithCollaborationItem:(id)a3 activityItems:(id)a4
{
  v5 = a3;
  v6 = [v5 type];
  v7 = [v5 isPostShare];

  return [(UICollaborationSocialActivity *)self canPerformWithCollaborationType:v6 isPostShare:v7];
}

- (void)prepareWithActivityItems:(id)a3
{
  v53[1] = *MEMORY[0x1E69E9840];
  v4 = [(UICollaborationSocialActivity *)self collaborationItem];
  v5 = [v4 itemProvider];
  v53[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];

  v7 = [(UICollaborationSocialActivity *)self collaborationItem];
  v8 = [v7 type];

  if (!v8)
  {
    v9 = [(UICollaborationSocialActivity *)self collaborationItem];
    v10 = [v9 fileURL];

    if (v10)
    {
      v11 = [v9 fileURL];
      v52 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];

      v6 = v12;
    }
  }

  v13 = [(UIApplicationExtensionActivity *)self extensionItemDataRequest];
  if (!v13)
  {
    v14 = [(UISocialActivity *)self activityType];
    v13 = [UISUIActivityExtensionItemDataRequest requestForActivity:self activityType:v14];
  }

  v15 = [objc_opt_class() preparedActivityExtensionItemDataForActivityItemValues:v6 extensionItemDataRequest:v13];
  v16 = [v15 extensionItems];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [v15 extensionItems];
    v19 = [v18 firstObject];
    v20 = [v19 userInfo];
    v21 = [v20 mutableCopy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [MEMORY[0x1E695DF90] dictionary];
    }

    v24 = v23;

    v25 = [(UICollaborationSocialActivity *)self collaborationItem];
    v26 = [v25 shareOptions];

    if (v26)
    {
      v45 = 0;
      v27 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v45];
      v28 = v45;
      if (v27)
      {
        [v24 setObject:v27 forKeyedSubscript:@"SWCollaborationShareOptions"];
      }

      else
      {
        v29 = share_sheet_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [(UICollaborationSocialActivity *)v28 prepareWithActivityItems:v29];
        }
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = [(UICollaborationSocialActivity *)self collaborationItem];
    v31 = [v30 metadata];

    if (v31)
    {
      v32 = [(UICollaborationSocialActivity *)self collaborationItem];
      v33 = [v32 metadata];

      [v33 setUserSelectedShareOptions:v26];
      v44 = v28;
      v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v44];
      v35 = v44;

      if (v34)
      {
        [v24 setObject:v34 forKeyedSubscript:@"SWCollaborationMetadata"];
      }

      else
      {
        v36 = share_sheet_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [(UICollaborationSocialActivity *)v35 prepareWithActivityItems:v36];
        }
      }
    }

    else
    {
      v35 = v28;
    }

    v37 = [v15 extensionItems];
    v38 = [v37 objectAtIndexedSubscript:0];
    [v38 setUserInfo:v24];
  }

  v39 = share_sheet_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [(UICollaborationSocialActivity *)self collaborationItem];
    v41 = [v40 metadata];
    v42 = [(UICollaborationSocialActivity *)self collaborationItem];
    v43 = [v42 shareOptions];
    *buf = 138412802;
    v47 = v6;
    v48 = 2112;
    v49 = v41;
    v50 = 2112;
    v51 = v43;
    _os_log_impl(&dword_18B359000, v39, OS_LOG_TYPE_DEFAULT, "Preparing collaboration extension with resolved activity items:%@, metadata:%@, options:%@", buf, 0x20u);
  }

  [(UISocialActivity *)self prepareWithActivityExtensionItemData:v15];
}

- (void)prepareWithActivityItems:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Failed to archive SWCollaborationShareOptions: %@", &v2, 0xCu);
}

- (void)prepareWithActivityItems:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Failed to archive SWCollaborationMetadata: %@", &v2, 0xCu);
}

@end