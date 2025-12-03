@interface CKRecord(BRCSharingAdditions)
- (id)brc_sharedRootDisplayName;
- (id)brc_sharedRootExtension;
- (uint64_t)isFolderShare;
- (void)brc_updateWithLogicalName:()BRCSharingAdditions isFolder:;
@end

@implementation CKRecord(BRCSharingAdditions)

- (uint64_t)isFolderShare
{
  v1 = [self objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
  v2 = [v1 isEqual:*MEMORY[0x277CFAD00]];

  return v2;
}

- (id)brc_sharedRootExtension
{
  v13 = *MEMORY[0x277D85DE8];
  br_pathExtension = [self objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
  if ([br_pathExtension isEqualToString:*MEMORY[0x277CFAD00]])
  {
    v3 = 0;
  }

  else
  {
    if (!br_pathExtension)
    {
      v4 = [self objectForKeyedSubscript:*MEMORY[0x277CBC098]];
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

      br_pathExtension = [v4 br_pathExtension];
    }

    br_pathExtension = br_pathExtension;
    v3 = br_pathExtension;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)brc_sharedRootDisplayName
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [self objectForKeyedSubscript:*MEMORY[0x277CBC098]];
  v3 = [self objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];

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
    brc_stringByDeletingPathExtension = [v2 brc_stringByDeletingPathExtension];

    v2 = brc_stringByDeletingPathExtension;
    if (brc_stringByDeletingPathExtension)
    {
      goto LABEL_3;
    }
  }

  v2 = [self URL];
  fragment = [v2 fragment];
  v4 = [fragment brc_mangledNameFromURLFragment:1];

LABEL_6:
  if (!v4)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = _BRLocalizedStringWithFormat();

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      share = [self share];
      recordID = [share recordID];
      v17 = 138412802;
      v18 = recordID;
      v19 = 2112;
      v20 = v4;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] can't find document name for share %@ and can't extract it from URL; using '%@' as default%@", &v17, 0x20u);
    }
  }

  brc_sharedRootExtension = [self brc_sharedRootExtension];
  if (brc_sharedRootExtension)
  {
    v13 = [v4 stringByAppendingPathExtension:brc_sharedRootExtension];
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

    [self setObject:v8 forKeyedSubscript:*MEMORY[0x277CBC098]];
    v9 = *MEMORY[0x277CFAD00];
    v10 = *MEMORY[0x277CBC0A0];

    [self setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    v11 = [v6 br_displayFilenameWithExtensionHidden:1];
    [self setObject:v11 forKeyedSubscript:*MEMORY[0x277CBC098]];

    br_pathExtension = [v7 br_pathExtension];

    [self setObject:br_pathExtension forKeyedSubscript:*MEMORY[0x277CBC0A0]];
  }
}

@end