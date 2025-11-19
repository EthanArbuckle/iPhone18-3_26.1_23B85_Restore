@interface SYDocumentWorkflowsContentType
+ (BOOL)isImageContentType:(id)a3;
+ (BOOL)isMSWordContentType:(id)a3;
+ (BOOL)isPagesContentType:(id)a3;
@end

@implementation SYDocumentWorkflowsContentType

+ (BOOL)isPagesContentType:(id)a3
{
  v3 = a3;
  v4 = ![v3 caseInsensitiveCompare:@"com.apple.iwork.pages.pages"] || !objc_msgSend(v3, "caseInsensitiveCompare:", @"com.apple.iwork.pages.sffpages") || !objc_msgSend(v3, "caseInsensitiveCompare:", @"com.apple.iwork.pages.template") || objc_msgSend(v3, "caseInsensitiveCompare:", @"com.apple.iwork.pages.sfftemplate") == 0;

  return v4;
}

+ (BOOL)isMSWordContentType:(id)a3
{
  v3 = a3;
  if ([v3 caseInsensitiveCompare:@"com.microsoft.word.doc"])
  {
    v4 = [v3 caseInsensitiveCompare:@"com.microsoft.word.docx"] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)isImageContentType:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 conformsToType:*MEMORY[0x277CE1DB0]];
  }

  else
  {
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Unknown content type: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

@end