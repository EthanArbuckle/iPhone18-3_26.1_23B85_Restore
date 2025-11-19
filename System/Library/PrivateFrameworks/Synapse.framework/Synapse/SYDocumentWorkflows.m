@interface SYDocumentWorkflows
+ (BOOL)isSupportedContentType:(id)a3;
+ (id)localizedStringRemove;
+ (id)localizedStringReply:(id)a3;
+ (id)localizedStringShowInAppWithBundleIdentifier:(id)a3 error:(id *)a4;
+ (id)localizedStringShowInMail;
@end

@implementation SYDocumentWorkflows

+ (BOOL)isSupportedContentType:(id)a3
{
  if (!a3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentWorkflows isSupportedContentType:v4];
    }
  }

  return a3 != 0;
}

+ (id)localizedStringReply:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = _SYBundle();
    v6 = [v5 localizedStringForKey:@"Reply to %@" value:@"Reply to %@" table:@"Localizable"];
    v7 = [v3 preferredFormattedName];
    v8 = [v4 stringWithFormat:v6, v7];
  }

  else
  {
    v5 = _SYBundle();
    v8 = [v5 localizedStringForKey:@"Reply" value:@"Reply" table:@"Localizable"];
  }

  return v8;
}

+ (id)localizedStringShowInMail
{
  v2 = _SYBundle();
  v3 = [v2 localizedStringForKey:@"Show in Mail" value:@"Show in Mail" table:@"Localizable"];

  return v3;
}

+ (id)localizedStringShowInAppWithBundleIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v16 = 0;
  v6 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v5 allowPlaceholder:1 error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = [v6 localizedName];
    v9 = MEMORY[0x277CCACA8];
    v10 = _SYBundle();
    v11 = [v10 localizedStringForKey:@"Show in %@" value:@"Show in %@" table:@"Localizable"];
    v12 = [v9 stringWithFormat:v11, v8];
  }

  else
  {
    v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SYDocumentWorkflows *)v5 localizedStringShowInAppWithBundleIdentifier:v7 error:v13];
    }

    if (a4)
    {
      v14 = v7;
      v12 = 0;
      *a4 = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)localizedStringRemove
{
  v2 = _SYBundle();
  v3 = [v2 localizedStringForKey:@"Remove" value:@"Remove" table:@"Localizable"];

  return v3;
}

+ (void)localizedStringShowInAppWithBundleIdentifier:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Unable to find record for bundle identifier: %@, error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end