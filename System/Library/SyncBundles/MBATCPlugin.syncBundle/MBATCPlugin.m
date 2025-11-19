@interface MBATCPlugin
- (id)outstandingAssetTransfers;
- (void)assetTransfer:(id)a3 succeeded:(BOOL)a4 withError:(id)a5;
- (void)assetTransferEndedWithSuccess:(BOOL)a3;
@end

@implementation MBATCPlugin

- (id)outstandingAssetTransfers
{
  v2 = objc_opt_new();
  v20 = 0;
  v3 = [v2 restoreFilesForDomain:@"AppDomainGroup-group.com.apple.FileProvider.LocalStorage" relativePath:0 pendingOnly:1 range:0 error:{6500, &v20}];
  v4 = v20;

  if (v3)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v15 = v3;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 path];
          v13 = [ATAsset downloadAssetWithIdentifier:v12 dataclass:@"File" prettyName:v12];
          [v13 setPath:v12];
          [v13 setIsRestore:1];
          [v13 setPriority:{objc_msgSend(v11, "priority")}];
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
      v3 = v15;
    }
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "=atc-plugin= Failed to retrieve LocalStorage files to restore %@", buf, 0xCu);
      _MBLog();
    }

    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)assetTransferEndedWithSuccess:(BOOL)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "=atc-plugin= Finished LocalStorage assets restoring", buf, 2u);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "=atc-plugin= Did not finish LocalStorage assets transferring", v6, 2u);
    goto LABEL_6;
  }
}

- (void)assetTransfer:(id)a3 succeeded:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = MBGetDefaultLog();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "=atc-plugin= Successfully restored LocalStorage asset %@", buf, 0xCu);
LABEL_26:
      _MBLog();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "=atc-plugin= Failed to restore LocalStorage asset %@: %@", buf, 0x16u);
      _MBLog();
    }

    v11 = [v8 domain];
    if (![v11 isEqualToString:@"ATError"] || objc_msgSend(v8, "code") == &dword_4 + 3 || objc_msgSend(v8, "code") == &dword_8 || objc_msgSend(v8, "code") == &dword_C + 2 || objc_msgSend(v8, "code") == &dword_10 || objc_msgSend(v8, "code") == &dword_8 + 1 || objc_msgSend(v8, "code") == &dword_10 + 2 || objc_msgSend(v8, "code") == &dword_4 || objc_msgSend(v8, "code") == &dword_10 + 3 || objc_msgSend(v8, "code") == &dword_14 || objc_msgSend(v8, "code") == &dword_18 + 1 || objc_msgSend(v8, "code") == &dword_18 + 3 || objc_msgSend(v8, "code") == &dword_18 || objc_msgSend(v8, "code") == &dword_1C + 3 || objc_msgSend(v8, "code") == &stru_20 || objc_msgSend(v8, "code") == &stru_20.cmd + 1 || objc_msgSend(v8, "code") == &stru_20.cmd + 2)
    {
    }

    else
    {
      v12 = [v8 code];

      if (v12 != &stru_20.cmd + 3)
      {
        v10 = MBGetDefaultLog();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 138412290;
        v14 = v7;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "=atc-plugin= Unrecoverable error. Will not attempt to restore LocalStorage asset %@", buf, 0xCu);
        goto LABEL_26;
      }
    }

    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "=atc-plugin= Potentially recoverable error. Will attempt to restore LocalStorage asset %@", buf, 0xCu);
      goto LABEL_26;
    }
  }

LABEL_27:
}

@end