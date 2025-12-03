@interface UICollaborationSocialActivity
- (BOOL)canPerformWithCollaborationItem:(id)item activityItems:(id)items;
- (BOOL)canPerformWithCollaborationType:(int64_t)type isPostShare:(BOOL)share;
- (id)activityTitle;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation UICollaborationSocialActivity

- (id)activityTitle
{
  isPostShare = [(UICollaborationSocialActivity *)self isPostShare];
  v4 = @"SFCollaborationActivityPreShareTitle";
  if (isPostShare)
  {
    v4 = @"SFCollaborationActivityPostShareTitle";
  }

  v5 = v4;
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  v7 = [applicationExtension objectForInfoDictionaryKey:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activityTitle = v7;
    if ([activityTitle length])
    {
      goto LABEL_7;
    }
  }

  v10.receiver = self;
  v10.super_class = UICollaborationSocialActivity;
  activityTitle = [(UIApplicationExtensionActivity *)&v10 activityTitle];
LABEL_7:

  return activityTitle;
}

- (BOOL)canPerformWithCollaborationType:(int64_t)type isPostShare:(BOOL)share
{
  shareCopy = share;
  v37 = *MEMORY[0x1E69E9840];
  activityType = [(UISocialActivity *)self activityType];
  v8 = [activityType isEqualToString:@"com.apple.CloudSharingUI.CreateiCloudLinkExtension"];

  if (v8 && !_os_feature_enabled_impl())
  {
    return 0;
  }

  [(UICollaborationSocialActivity *)self setIsPostShare:shareCopy];
  applicationExtension = [(UIApplicationExtensionActivity *)self applicationExtension];
  attributes = [applicationExtension attributes];
  v11 = [attributes objectForKeyedSubscript:@"NSExtensionActivationRule"];
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
            if (type == 1 && (v20 & 1) != 0 || (v21 = [v19 isEqualToString:@"URL"], !type) && (v21 & 1) != 0 || (v22 = objc_msgSend(v19, "isEqualToString:", @"SharedWithYou"), type == 2) && v22)
            {
              v24 = share_sheet_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                selfCopy2 = self;
                v32 = 2048;
                typeCopy2 = type;
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
    selfCopy2 = self;
    v32 = 2048;
    typeCopy2 = type;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "%@: canPerform:NO collaborationType:%ld supportedCollaborationTypes:%@", buf, 0x20u);
  }

  v23 = 0;
LABEL_27:

  return v23;
}

- (BOOL)canPerformWithCollaborationItem:(id)item activityItems:(id)items
{
  itemCopy = item;
  type = [itemCopy type];
  isPostShare = [itemCopy isPostShare];

  return [(UICollaborationSocialActivity *)self canPerformWithCollaborationType:type isPostShare:isPostShare];
}

- (void)prepareWithActivityItems:(id)items
{
  v53[1] = *MEMORY[0x1E69E9840];
  collaborationItem = [(UICollaborationSocialActivity *)self collaborationItem];
  itemProvider = [collaborationItem itemProvider];
  v53[0] = itemProvider;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];

  collaborationItem2 = [(UICollaborationSocialActivity *)self collaborationItem];
  type = [collaborationItem2 type];

  if (!type)
  {
    collaborationItem3 = [(UICollaborationSocialActivity *)self collaborationItem];
    fileURL = [collaborationItem3 fileURL];

    if (fileURL)
    {
      fileURL2 = [collaborationItem3 fileURL];
      v52 = fileURL2;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];

      v6 = v12;
    }
  }

  extensionItemDataRequest = [(UIApplicationExtensionActivity *)self extensionItemDataRequest];
  if (!extensionItemDataRequest)
  {
    activityType = [(UISocialActivity *)self activityType];
    extensionItemDataRequest = [UISUIActivityExtensionItemDataRequest requestForActivity:self activityType:activityType];
  }

  v15 = [objc_opt_class() preparedActivityExtensionItemDataForActivityItemValues:v6 extensionItemDataRequest:extensionItemDataRequest];
  extensionItems = [v15 extensionItems];
  v17 = [extensionItems count];

  if (v17)
  {
    extensionItems2 = [v15 extensionItems];
    firstObject = [extensionItems2 firstObject];
    userInfo = [firstObject userInfo];
    v21 = [userInfo mutableCopy];
    v22 = v21;
    if (v21)
    {
      dictionary = v21;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v24 = dictionary;

    collaborationItem4 = [(UICollaborationSocialActivity *)self collaborationItem];
    shareOptions = [collaborationItem4 shareOptions];

    if (shareOptions)
    {
      v45 = 0;
      v27 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:shareOptions requiringSecureCoding:1 error:&v45];
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

    collaborationItem5 = [(UICollaborationSocialActivity *)self collaborationItem];
    metadata = [collaborationItem5 metadata];

    if (metadata)
    {
      collaborationItem6 = [(UICollaborationSocialActivity *)self collaborationItem];
      metadata2 = [collaborationItem6 metadata];

      [metadata2 setUserSelectedShareOptions:shareOptions];
      v44 = v28;
      v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:metadata2 requiringSecureCoding:1 error:&v44];
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

    extensionItems3 = [v15 extensionItems];
    v38 = [extensionItems3 objectAtIndexedSubscript:0];
    [v38 setUserInfo:v24];
  }

  v39 = share_sheet_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    collaborationItem7 = [(UICollaborationSocialActivity *)self collaborationItem];
    metadata3 = [collaborationItem7 metadata];
    collaborationItem8 = [(UICollaborationSocialActivity *)self collaborationItem];
    shareOptions2 = [collaborationItem8 shareOptions];
    *buf = 138412802;
    v47 = v6;
    v48 = 2112;
    v49 = metadata3;
    v50 = 2112;
    v51 = shareOptions2;
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