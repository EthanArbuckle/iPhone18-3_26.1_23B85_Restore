@interface QLPreviewConverterURLProtocol
+ (id)_errorForNoPreview;
+ (void)initialize;
+ (void)registerPreview:(id)preview;
+ (void)unregisterURLs:(id)ls andPreview:(id)preview;
@end

@implementation QLPreviewConverterURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261653000, v4, OS_LOG_TYPE_DEFAULT, " #Conversion", v5, 2u);
    }

    [MEMORY[0x277CCAD10] registerClass:self];
  }
}

+ (void)registerPreview:(id)preview
{
  previewCopy = preview;
  previewURL = [previewCopy previewURL];
  [self registerPreview:previewCopy forPreviewURL:previewURL];
}

+ (id)_errorForNoPreview
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = QLLocalizedStringFromTable(@"This file cannot be previewed", @"Errors");
  v4 = *MEMORY[0x277CCA450];
  v5 = QLLocalizedStringFromTable(@"It might be corrupted or of an unknown file format.", @"Errors");
  v6 = [v2 initWithObjectsAndKeys:{v3, v4, v5, *MEMORY[0x277CCA498], 0}];

  v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"QuickLookErrorDomain" code:912 userInfo:v6];

  return v7;
}

+ (void)unregisterURLs:(id)ls andPreview:(id)preview
{
  lsCopy = ls;
  previewURL = [preview previewURL];
  [self unregisterURLs:lsCopy andPreviewURL:previewURL];
}

@end