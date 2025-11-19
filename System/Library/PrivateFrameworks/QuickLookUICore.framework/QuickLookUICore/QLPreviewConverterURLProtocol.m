@interface QLPreviewConverterURLProtocol
+ (id)_errorForNoPreview;
+ (void)initialize;
+ (void)registerPreview:(id)a3;
+ (void)unregisterURLs:(id)a3 andPreview:(id)a4;
@end

@implementation QLPreviewConverterURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

    [MEMORY[0x277CCAD10] registerClass:a1];
  }
}

+ (void)registerPreview:(id)a3
{
  v4 = a3;
  v5 = [v4 previewURL];
  [a1 registerPreview:v4 forPreviewURL:v5];
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

+ (void)unregisterURLs:(id)a3 andPreview:(id)a4
{
  v6 = a3;
  v7 = [a4 previewURL];
  [a1 unregisterURLs:v6 andPreviewURL:v7];
}

@end