@interface QLBasePreviewParts
+ (BOOL)canConvertDocumentType:(id)type;
+ (BOOL)isBundleURL:(id)l;
+ (void)dataCallbackForUTI:(id)i andSize:(unint64_t)size;
+ (void)urlCallbackForUTI:(id)i;
- (void)computePreview;
@end

@implementation QLBasePreviewParts

+ (BOOL)canConvertDocumentType:(id)type
{
  typeCopy = type;
  v4 = [QLPreviewConverter isOfficeDocumentType:typeCopy]|| [QLPreviewConverter isIWorkDocumentType:typeCopy]|| [QLPreviewConverter isLPDFDocumentType:typeCopy]|| [QLPreviewConverter isCSVDocumentType:typeCopy]|| [QLPreviewConverter isRTFDocumentType:typeCopy];

  return v4;
}

+ (BOOL)isBundleURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v8 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    [defaultManager fileExistsAtPath:path isDirectory:&v8];

    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (void)urlCallbackForUTI:(id)i
{
  v17 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v4 = [QLPreviewConverter isOfficeDocumentType:iCopy];
  v5 = OIGenerateProgressivePreviewForURL;
  if (v4)
  {
    goto LABEL_6;
  }

  v6 = [QLPreviewConverter isIWorkDocumentType:iCopy];
  v5 = IWGenerateProgressivePreviewForURL;
  if (v6 || (v7 = [QLPreviewConverter isCSVDocumentType:iCopy], v5 = OIGenerateProgressivePreviewForURL, v7) || (v8 = [QLPreviewConverter isRTFDocumentType:iCopy], v5 = RTFGeneratePreviewForURL, v8) || (v9 = [QLPreviewConverter isLPDFDocumentType:iCopy], v5 = LPDFGeneratePreviewForURL, v9))
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
      v16 = iCopy;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "Cannot find url converter callback for uti %@ #Conversion", &v15, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)dataCallbackForUTI:(id)i andSize:(unint64_t)size
{
  v17 = *MEMORY[0x277D85DE8];
  iCopy = i;
  v5 = [QLPreviewConverter isOfficeDocumentType:iCopy];
  v6 = OIGenerateProgressivePreviewForData;
  if (v5 || (v7 = [QLPreviewConverter isIWorkDocumentType:iCopy], v6 = IWGenerateAtomicPreviewForData, v7) || (v8 = [QLPreviewConverter isCSVDocumentType:iCopy], v6 = OIGenerateProgressivePreviewForData, v8) || (v9 = [QLPreviewConverter isRTFDocumentType:iCopy], v6 = RTFGeneratePreviewForData, v9))
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
      v16 = iCopy;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "Cannot find data converter callback for uti %@ #Conversion", &v15, 0xCu);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)computePreview
{
  previewURL = [(QLPreviewParts *)self previewURL];
  if (previewURL)
  {
    v21 = previewURL;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v5 = [currentDevice userInterfaceIdiom] == 0;

    v6 = MEMORY[0x277CBEB38];
    absoluteString = [v21 absoluteString];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    fileName = [(QLPreviewConverterParts *)self fileName];
    v10 = [v6 dictionaryWithObjectsAndKeys:{absoluteString, @"URLBase", v8, @"IsOnPhone", fileName, @"FileName", 0}];

    password = [(QLPreviewConverterParts *)self password];

    if (password)
    {
      password2 = [(QLPreviewConverterParts *)self password];
      [v10 setObject:password2 forKey:@"Password"];
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

    previewURL = v21;
  }
}

@end