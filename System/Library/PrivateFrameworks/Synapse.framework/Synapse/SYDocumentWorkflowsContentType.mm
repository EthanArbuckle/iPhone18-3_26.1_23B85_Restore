@interface SYDocumentWorkflowsContentType
+ (BOOL)isImageContentType:(id)type;
+ (BOOL)isMSWordContentType:(id)type;
+ (BOOL)isPagesContentType:(id)type;
@end

@implementation SYDocumentWorkflowsContentType

+ (BOOL)isPagesContentType:(id)type
{
  typeCopy = type;
  v4 = ![typeCopy caseInsensitiveCompare:@"com.apple.iwork.pages.pages"] || !objc_msgSend(typeCopy, "caseInsensitiveCompare:", @"com.apple.iwork.pages.sffpages") || !objc_msgSend(typeCopy, "caseInsensitiveCompare:", @"com.apple.iwork.pages.template") || objc_msgSend(typeCopy, "caseInsensitiveCompare:", @"com.apple.iwork.pages.sfftemplate") == 0;

  return v4;
}

+ (BOOL)isMSWordContentType:(id)type
{
  typeCopy = type;
  if ([typeCopy caseInsensitiveCompare:@"com.microsoft.word.doc"])
  {
    v4 = [typeCopy caseInsensitiveCompare:@"com.microsoft.word.docx"] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)isImageContentType:(id)type
{
  v12 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:typeCopy];
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
      v11 = typeCopy;
      _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Unknown content type: %@", &v10, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

@end