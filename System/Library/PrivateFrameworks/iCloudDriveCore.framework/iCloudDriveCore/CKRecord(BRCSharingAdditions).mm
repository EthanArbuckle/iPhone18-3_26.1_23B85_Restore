@interface CKRecord(BRCSharingAdditions)
- (id)brc_sharedRootDisplayName;
- (id)brc_sharedRootExtension;
- (uint64_t)isFolderShare;
- (void)brc_updateWithLogicalName:()BRCSharingAdditions isFolder:;
@end

@implementation CKRecord(BRCSharingAdditions)

- (uint64_t)isFolderShare
{
  v1 = [a1 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
  v2 = [v1 isEqual:*MEMORY[0x277CFAD00]];

  return v2;
}

- (id)brc_sharedRootExtension
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
  if ([v2 isEqualToString:*MEMORY[0x277CFAD00]])
  {
    v3 = 0;
  }

  else
  {
    if (!v2)
    {
      v4 = [a1 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = v4;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] share has no CKShareTypeKey, using extension from CKShareTitleKey (%@)%@", &v9, 0x16u);
      }

      v2 = [v4 br_pathExtension];
    }

    v2 = v2;
    v3 = v2;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)brc_sharedRootDisplayName
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
  v3 = [a1 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];

  if (v3)
  {
    if (v2)
    {
LABEL_3:
      v4 = [v2 brc_mangledNameFromURLFragment:0];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [v2 brc_stringByDeletingPathExtension];

    v2 = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v2 = [a1 URL];
  v6 = [v2 fragment];
  v4 = [v6 brc_mangledNameFromURLFragment:1];

LABEL_6:
  if (!v4)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = _BRLocalizedStringWithFormat();

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1 share];
      v11 = [v10 recordID];
      v17 = 138412802;
      v18 = v11;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] can't find document name for share %@ and can't extract it from URL; using '%@' as default%@", &v17, 0x20u);
    }
  }

  v12 = [a1 brc_sharedRootExtension];
  if (v12)
  {
    v13 = [v4 stringByAppendingPathExtension:v12];
  }

  else
  {
    v13 = v4;
  }

  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)brc_updateWithLogicalName:()BRCSharingAdditions isFolder:
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 br_displayFilenameWithExtensionHidden:0];

    [a1 setObject:v8 forKeyedSubscript:*MEMORY[0x277CBC098]];
    v9 = *MEMORY[0x277CFAD00];
    v10 = *MEMORY[0x277CBC0A0];

    [a1 setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    v11 = [v6 br_displayFilenameWithExtensionHidden:1];
    [a1 setObject:v11 forKeyedSubscript:*MEMORY[0x277CBC098]];

    v12 = [v7 br_pathExtension];

    [a1 setObject:v12 forKeyedSubscript:*MEMORY[0x277CBC0A0]];
  }
}

@end