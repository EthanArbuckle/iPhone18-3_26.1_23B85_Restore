@interface _UICloudSharingActivity
- (BOOL)_isURLEligibleForSharing:(id)a3 isInitial:(BOOL *)a4 isFolder:(BOOL *)a5;
- (BOOL)canPerformWithActivityItems:(id)a3;
- (BOOL)eligibleTypeForActivity:(id)a3;
- (id)_activityFooterText;
- (id)_systemImageName;
- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4;
- (void)_setupForInitialSharing;
- (void)_setupForSharingInfo;
- (void)_showSharingControllerForURL:(id)a3 completion:(id)a4;
@end

@implementation _UICloudSharingActivity

- (id)_systemImageName
{
  if ([(_UICloudSharingActivity *)self initialSharing])
  {
    return @"person.crop.circle.badge.plus";
  }

  else
  {
    return @"person.crop.circle.badge.checkmark";
  }
}

- (id)_activityFooterText
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(_UICloudSharingActivity *)self activityItemIsInSharedFolder])
  {
    v2 = _ShareSheetBundle();
    v3 = [v2 localizedStringForKey:@"MANAGE_SHARED_FOLDER_FOOTER" value:@"This document is in a shared folder." table:@"Localizable"];

    v4 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10[0] = *MEMORY[0x1E69DB648];
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v11[0] = v5;
    v10[1] = *MEMORY[0x1E69DB650];
    v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v11[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v8 = [v4 initWithString:v3 attributes:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setupForInitialSharing
{
  v3 = [(_UICloudSharingActivity *)self activityItemIsFolder];
  v4 = @"Share File in iCloud";
  if (v3)
  {
    v4 = @"Share Folder in iCloud";
  }

  v5 = v4;
  v7 = _ShareSheetBundle();
  v6 = [v7 localizedStringForKey:v5 value:v5 table:@"Localizable"];

  [(_UICloudSharingActivity *)self setActivityTitle:v6];
}

- (void)_setupForSharingInfo
{
  v3 = [(_UICloudSharingActivity *)self activityItemIsFolder];
  v4 = @"Manage Shared File";
  if (v3)
  {
    v4 = @"Manage Shared Folder";
  }

  v5 = v4;
  v7 = _ShareSheetBundle();
  v6 = [v7 localizedStringForKey:v5 value:v5 table:@"Localizable"];

  [(_UICloudSharingActivity *)self setActivityTitle:v6];
}

- (BOOL)eligibleTypeForActivity:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v16[0] = *MEMORY[0x1E6963730];
  v4 = 1;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (UTTypeConformsTo(v3, *(*(&v11 + 1) + 8 * i)))
        {
          v4 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v4 = 1;
  }

LABEL_11:

  return v4;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isFileURL])
        {
          v11 = v10;
          v15 = 0;
          v12 = [(_UICloudSharingActivity *)self _isURLEligibleForSharing:v11 isInitial:&v15 + 1 isFolder:&v15];
          if (v7 & 1 | !v12)
          {
            v13 = v12;

            if (v13)
            {
              goto LABEL_20;
            }
          }

          else
          {
            [(_UICloudSharingActivity *)self setActivityItemIsFolder:v15];
            if (HIBYTE(v15) == 1)
            {
              [(_UICloudSharingActivity *)self setInitialSharing:1];
              [(_UICloudSharingActivity *)self _setupForInitialSharing];
            }

            else
            {
              [MEMORY[0x1E69CDE78] isSharedFileURL:v11 isLocalStorageFileURL:0 isiCloudDriveFileURL:0 isInSharedFolder:&self->_activityItemIsInSharedFolder];
              if ([(_UICloudSharingActivity *)self activityItemIsInSharedFolder])
              {
                [(_UICloudSharingActivity *)self setActivityItemIsFolder:1];
              }

              [(_UICloudSharingActivity *)self _setupForSharingInfo];
            }

            v7 = 1;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
LABEL_20:
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_isURLEligibleForSharing:(id)a3 isInitial:(BOOL *)a4 isFolder:(BOOL *)a5
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71___UICloudSharingActivity__isURLEligibleForSharing_isInitial_isFolder___block_invoke;
  v12[3] = &unk_1E71F9CA8;
  v15 = &v18;
  v10 = v8;
  v13 = v10;
  v14 = self;
  v16 = a4;
  v17 = a5;
  [v9 synchronouslyGetFileProviderServicesForItemAtURL:v10 completionHandler:v12];

  LOBYTE(a5) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return a5;
}

- (void)_prepareWithActivityItems:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64___UICloudSharingActivity__prepareWithActivityItems_completion___block_invoke;
  v8[3] = &unk_1E71F9718;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(UIActivity *)self _loadItemProvidersFromActivityItems:a3 wantsSendCopyRepresentation:0 completion:v8];
}

- (void)_showSharingControllerForURL:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E69DC970];
  v7 = a4;
  v8 = a3;
  v15 = 0;
  v9 = [[v6 alloc] initWithFileURL:v8 error:&v15];

  v10 = v15;
  if (v9)
  {
    [v9 _setPrivateDelegate:self];
    [(_UICloudSharingActivity *)self setActivityViewController:v9];
  }

  else
  {
    v11 = _ShareSheetBundle();
    v12 = [v11 localizedStringForKey:@"Unable to Share Item" value:@"Unable to Share Item" table:@"Localizable"];

    if (v10)
    {
      v13 = [v10 localizedDescription];
    }

    else
    {
      v13 = 0;
    }

    v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v13 preferredStyle:1];
    [(_UICloudSharingActivity *)self setActivityViewController:v14];
  }

  v7[2](v7);
}

@end