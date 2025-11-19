@interface QLBasePreviewParts
+ (BOOL)canConvertDocumentType:(id)a3;
+ (BOOL)isBundleURL:(id)a3;
+ (void)dataCallbackForUTI:(id)a3 andSize:(unint64_t)a4;
+ (void)urlCallbackForUTI:(id)a3;
- (void)computePreview;
@end

@implementation QLBasePreviewParts

+ (BOOL)canConvertDocumentType:(id)a3
{
  v3 = a3;
  v4 = [QLPreviewConverter isOfficeDocumentType:v3]|| [QLPreviewConverter isIWorkDocumentType:v3]|| [QLPreviewConverter isLPDFDocumentType:v3]|| [QLPreviewConverter isCSVDocumentType:v3]|| [QLPreviewConverter isRTFDocumentType:v3];

  return v4;
}

+ (BOOL)isBundleURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v3 path];
    [v4 fileExistsAtPath:v5 isDirectory:&v8];

    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (void)urlCallbackForUTI:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [QLPreviewConverter isOfficeDocumentType:v3];
  v5 = OIGenerateProgressivePreviewForURL;
  if (v4)
  {
    goto LABEL_6;
  }

  v6 = [QLPreviewConverter isIWorkDocumentType:v3];
  v5 = IWGenerateProgressivePreviewForURL;
  if (v6 || (v7 = [QLPreviewConverter isCSVDocumentType:v3], v5 = OIGenerateProgressivePreviewForURL, v7) || (v8 = [QLPreviewConverter isRTFDocumentType:v3], v5 = RTFGeneratePreviewForURL, v8) || (v9 = [QLPreviewConverter isLPDFDocumentType:v3], v5 = LPDFGeneratePreviewForURL, v9))
  {
LABEL_6:
    v10 = v5;
  }

  else
  {
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "Cannot find url converter callback for uti %@ #Conversion", &v15, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)dataCallbackForUTI:(id)a3 andSize:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [QLPreviewConverter isOfficeDocumentType:v4];
  v6 = OIGenerateProgressivePreviewForData;
  if (v5 || (v7 = [QLPreviewConverter isIWorkDocumentType:v4], v6 = IWGenerateAtomicPreviewForData, v7) || (v8 = [QLPreviewConverter isCSVDocumentType:v4], v6 = OIGenerateProgressivePreviewForData, v8) || (v9 = [QLPreviewConverter isRTFDocumentType:v4], v6 = RTFGeneratePreviewForData, v9))
  {
    v10 = v6;
  }

  else
  {
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "Cannot find data converter callback for uti %@ #Conversion", &v15, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)computePreview
{
  v3 = [(QLPreviewParts *)self previewURL];
  if (v3)
  {
    v21 = v3;
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom] == 0;

    v6 = MEMORY[0x277CBEB38];
    v7 = [v21 absoluteString];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v9 = [(QLPreviewConverterParts *)self fileName];
    v10 = [v6 dictionaryWithObjectsAndKeys:{v7, @"URLBase", v8, @"IsOnPhone", v9, @"FileName", 0}];

    v11 = [(QLPreviewConverterParts *)self password];

    if (v11)
    {
      v12 = [(QLPreviewConverterParts *)self password];
      [v10 setObject:v12 forKey:@"Password"];
    }

    data = self->super._data;
    if (data)
    {
      v14 = [QLBasePreviewParts dataCallbackForUTI:self->super._uti andSize:[(NSData *)data length]];
      if (v14)
      {
        v15 = v14;
        v16 = self->super._data;
        uti = self->super._uti;
LABEL_7:
        (v15)(0, self, v16, uti, v10);
      }
    }

    else
    {
      url = self->super._url;
      if (url)
      {
        if (![(NSURL *)url isFileURL])
        {
          v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:self->super._url];
          v20 = [QLBasePreviewParts dataCallbackForUTI:self->super._uti andSize:[(NSData *)self->super._data length]];
          if (v20)
          {
            v20(0, self, v19, self->super._uti, v10);
          }

          goto LABEL_19;
        }

        v15 = [QLBasePreviewParts isBundleURL:self->super._url]&& PGPackageHasEmbeddedPreview(self->super._url) ? PGGeneratePreviewForURL : [QLBasePreviewParts urlCallbackForUTI:self->super._uti];
        if (v15)
        {
          v16 = self->super._url;
          uti = self->super._uti;
          goto LABEL_7;
        }
      }
    }

LABEL_19:

    v3 = v21;
  }
}

@end