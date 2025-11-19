@interface QLPreviewConverter
+ (BOOL)isCSVDocumentType:(id)a3;
+ (BOOL)isIWorkDocumentType:(id)a3;
+ (BOOL)isLPDFDocumentType:(id)a3;
+ (BOOL)isOfficeDocumentType:(id)a3;
+ (BOOL)isRTFDocumentType:(id)a3;
+ (BOOL)isSafeRequest:(id)a3;
+ (BOOL)isSafeURL:(id)a3;
+ (BOOL)isSpreadSheetDocumentType:(id)a3;
+ (id)_csvMIMETypes;
+ (id)_csvUTIs;
+ (id)_iWorkMIMETypes;
+ (id)_iWorkUTIs;
+ (id)_lpdfUTIs;
+ (id)_officeMIMETypes;
+ (id)_officeUTIs;
+ (id)_rtfMIMETypes;
+ (id)_rtfUTIs;
+ (id)_spreadSheetMIMETypes;
+ (id)_spreadSheetUTIs;
+ (id)convertibleMIMETypes;
+ (id)convertibleTypes;
+ (id)convertibleUTIs;
- (NSString)previewFileName;
- (NSString)previewUTI;
- (QLPreviewConverter)initWithConnection:(id)a3 delegate:(id)a4 response:(id)a5 options:(id)a6;
- (QLPreviewConverter)initWithData:(id)a3 name:(id)a4 uti:(id)a5 options:(id)a6;
- (QLPreviewConverter)initWithURL:(id)a3 uti:(id)a4 options:(id)a5;
- (id)safeRequestForRequest:(id)a3;
- (void)_closeIOCahnnel;
- (void)_createDispatchIOChannel;
- (void)_writeDataArrayIntoStream:(id)a3;
- (void)appendData:(id)a3;
- (void)appendDataArray:(id)a3;
- (void)dealloc;
- (void)finishConverting;
- (void)finishedAppendingData;
@end

@implementation QLPreviewConverter

+ (id)convertibleMIMETypes
{
  v3 = objc_opt_new();
  v4 = [a1 _officeMIMETypes];
  v5 = [v4 allObjects];
  [v3 addObjectsFromArray:v5];

  v6 = [a1 _iWorkMIMETypes];
  v7 = [v6 allObjects];
  [v3 addObjectsFromArray:v7];

  v8 = [a1 _rtfMIMETypes];
  v9 = [v8 allObjects];
  [v3 addObjectsFromArray:v9];

  v10 = [a1 _csvMIMETypes];
  v11 = [v10 allObjects];
  [v3 addObjectsFromArray:v11];

  v12 = [a1 _spreadSheetMIMETypes];
  v13 = [v12 allObjects];
  [v3 addObjectsFromArray:v13];

  v14 = [v3 copy];

  return v14;
}

+ (id)_officeMIMETypes
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_officeMIMETypes_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"application/vnd.ms-powerpoint", @"application/vnd.openxmlformats-officedocument.presentationml.presentation", @"application/vnd.openxmlformats-officedocument.presentationml.template", @"application/vnd.openxmlformats-officedocument.presentationml.slideshow", @"application/vnd.ms-powerpoint.presentation.macroenabled.12", @"application/vnd.ms-powerpoint.slideshow.macroenabled.12", @"application/vnd.ms-powerpoint.template.macroenabled.12", @"application/vnd.ms-excel", @"application/vnd.openxmlformats-officedocument.spreadsheetml.template", @"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", @"application/vnd.ms-excel.template.macroenabled.12", @"application/vnd.ms-excel.sheet.macroenabled.12", @"application/msword", @"application/vnd.openxmlformats-officedocument.wordprocessingml.document", @"application/vnd.openxmlformats-officedocument.wordprocessingml.template", @"application/vnd.ms-word.document.macroenabled.12", 0}];
    v4 = _officeMIMETypes_result;
    _officeMIMETypes_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _officeMIMETypes_result;

  return v5;
}

+ (id)_iWorkMIMETypes
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_iWorkMIMETypes_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"application/vnd.iwork.numbers.archive", @"application/vnd.iwork.pages.archive", @"application/x-iwork-keynote-sffkey", @"application/x-iwork-numbers-sffnumbers", @"application/x-iwork-pages-sffpages", @"application/vnd.iwork.numbers.archive", @"application/vnd.iwork.pages.archive", @"application/vnd.iwork.keynote.archive", 0}];
    v4 = _iWorkMIMETypes_result;
    _iWorkMIMETypes_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _iWorkMIMETypes_result;

  return v5;
}

+ (id)_rtfMIMETypes
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_rtfMIMETypes_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"application/rtf", @"application/rtfd", 0}];
    v4 = _rtfMIMETypes_result;
    _rtfMIMETypes_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _rtfMIMETypes_result;

  return v5;
}

+ (id)_csvMIMETypes
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_csvMIMETypes_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"text/comma-separated-values", @"text/csv", 0}];
    v4 = _csvMIMETypes_result;
    _csvMIMETypes_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _csvMIMETypes_result;

  return v5;
}

+ (id)_spreadSheetMIMETypes
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_spreadSheetMIMETypes_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"application/vnd.ms-excel", @"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", @"application/vnd.ms-excel.sheet.macroenabled.12", @"application/vnd.openxmlformats-officedocument.spreadsheetml.template", @"application/vnd.ms-excel.template.macroenabled.12", @"application/vnd.iwork.numbers.archive", @"application/x-iwork-numbers-sffnumbers", 0}];
    v4 = _spreadSheetMIMETypes_result;
    _spreadSheetMIMETypes_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _spreadSheetMIMETypes_result;

  return v5;
}

+ (id)convertibleUTIs
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__QLPreviewConverter_convertibleUTIs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (convertibleUTIs_once != -1)
  {
    dispatch_once(&convertibleUTIs_once, block);
  }

  v2 = [convertibleUTIs_allUTIs copy];

  return v2;
}

void __37__QLPreviewConverter_convertibleUTIs__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = convertibleUTIs_allUTIs;
  convertibleUTIs_allUTIs = v2;

  v4 = convertibleUTIs_allUTIs;
  v5 = [*(a1 + 32) _officeUTIs];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  v7 = convertibleUTIs_allUTIs;
  v8 = [*(a1 + 32) _iWorkUTIs];
  v9 = [v8 allObjects];
  [v7 addObjectsFromArray:v9];

  v10 = convertibleUTIs_allUTIs;
  v11 = [*(a1 + 32) _rtfUTIs];
  v12 = [v11 allObjects];
  [v10 addObjectsFromArray:v12];

  v13 = convertibleUTIs_allUTIs;
  v14 = [*(a1 + 32) _lpdfUTIs];
  v15 = [v14 allObjects];
  [v13 addObjectsFromArray:v15];

  v16 = convertibleUTIs_allUTIs;
  v17 = [*(a1 + 32) _csvUTIs];
  v18 = [v17 allObjects];
  [v16 addObjectsFromArray:v18];

  v19 = convertibleUTIs_allUTIs;
  v21 = [*(a1 + 32) _spreadSheetUTIs];
  v20 = [v21 allObjects];
  [v19 addObjectsFromArray:v20];
}

+ (id)convertibleTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__QLPreviewConverter_convertibleTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (convertibleTypes_once != -1)
  {
    dispatch_once(&convertibleTypes_once, block);
  }

  v2 = [convertibleTypes_allTypes copy];

  return v2;
}

void __38__QLPreviewConverter_convertibleTypes__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB58]);
  v3 = [*(a1 + 32) convertibleUTIs];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = convertibleTypes_allTypes;
  convertibleTypes_allTypes = v4;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(a1 + 32) convertibleUTIs];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CE1CB8] typeWithIdentifier:*(*(&v13 + 1) + 8 * v10)];
        if (v11)
        {
          [convertibleTypes_allTypes addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_officeUTIs
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_officeUTIs_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.microsoft.powerpoint.ppt", @"com.microsoft.powerpoint.pot", @"com.microsoft.powerpoint.pps", @"org.openxmlformats.presentationml.presentation", @"org.openxmlformats.presentationml.presentation.macroenabled", @"org.openxmlformats.presentationml.template", @"org.openxmlformats.presentationml.template.macroenabled", @"org.openxmlformats.presentationml.slideshow", @"org.openxmlformats.presentationml.slideshow.macroenabled", @"com.microsoft.excel.xls", @"com.microsoft.excel.xlt", @"com.microsoft.excel.xla", @"org.openxmlformats.spreadsheetml.sheet", @"org.openxmlformats.spreadsheetml.sheet.macroenabled", @"org.openxmlformats.spreadsheetml.template", @"org.openxmlformats.spreadsheetml.template.macroenabled", @"com.microsoft.word.doc", @"com.microsoft.word.dot", @"org.openxmlformats.wordprocessingml.document", @"org.openxmlformats.wordprocessingml.document.macroenabled", @"org.openxmlformats.wordprocessingml.template", @"org.openxmlformats.wordprocessingml.template.macroenabled", 0}];
    v4 = _officeUTIs_result;
    _officeUTIs_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _officeUTIs_result;

  return v5;
}

+ (id)_iWorkUTIs
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_iWorkUTIs_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.iwork.keynote.key", @"com.apple.iwork.numbers.numbers", @"com.apple.iwork.pages.pages", @"com.apple.iwork.keynote.sffkey", @"com.apple.iwork.numbers.sffnumbers", @"com.apple.iwork.pages.sffpages", @"com.apple.iwork.numbers.template", @"com.apple.iwork.numbers.sfftemplate", @"com.apple.iwork.pages.template", @"com.apple.iwork.pages.sfftemplate", @"com.apple.iwork.keynote.kth", @"com.apple.iwork.keynote.sffkth", 0}];
    v4 = _iWorkUTIs_result;
    _iWorkUTIs_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _iWorkUTIs_result;

  return v5;
}

+ (id)_rtfUTIs
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_rtfUTIs_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"public.rtf", @"com.apple.rtfd", 0}];
    v4 = _rtfUTIs_result;
    _rtfUTIs_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _rtfUTIs_result;

  return v5;
}

+ (id)_lpdfUTIs
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_lpdfUTIs_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.localized-pdf-bundle", 0}];
    v4 = _lpdfUTIs_result;
    _lpdfUTIs_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _lpdfUTIs_result;

  return v5;
}

+ (id)_csvUTIs
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_csvUTIs_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"public.comma-separated-values-text", 0}];
    v4 = _csvUTIs_result;
    _csvUTIs_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _csvUTIs_result;

  return v5;
}

+ (id)_spreadSheetUTIs
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_spreadSheetUTIs_result)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.microsoft.excel.xls", @"com.microsoft.excel.xlt", @"com.microsoft.excel.xla", @"org.openxmlformats.spreadsheetml.sheet", @"org.openxmlformats.spreadsheetml.sheet.macroenabled", @"org.openxmlformats.spreadsheetml.template", @"org.openxmlformats.spreadsheetml.template.macroenabled", @"com.apple.iwork.numbers.template", @"com.apple.iwork.numbers.sfftemplate", @"com.apple.iwork.numbers.numbers", @"com.apple.iwork.numbers.sffnumbers", 0}];
    v4 = _spreadSheetUTIs_result;
    _spreadSheetUTIs_result = v3;
  }

  objc_sync_exit(v2);

  v5 = _spreadSheetUTIs_result;

  return v5;
}

+ (BOOL)isOfficeDocumentType:(id)a3
{
  v4 = a3;
  v5 = [a1 _officeUTIs];
  v6 = [v4 lowercaseString];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (BOOL)isIWorkDocumentType:(id)a3
{
  v4 = a3;
  v5 = [a1 _iWorkUTIs];
  v6 = [v4 lowercaseString];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (BOOL)isCSVDocumentType:(id)a3
{
  v4 = a3;
  v5 = [a1 _csvUTIs];
  v6 = [v4 lowercaseString];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (BOOL)isLPDFDocumentType:(id)a3
{
  v4 = a3;
  v5 = [a1 _lpdfUTIs];
  v6 = [v4 lowercaseString];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (BOOL)isRTFDocumentType:(id)a3
{
  v4 = a3;
  v5 = [a1 _rtfUTIs];
  v6 = [v4 lowercaseString];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (BOOL)isSpreadSheetDocumentType:(id)a3
{
  v4 = a3;
  v5 = [a1 _spreadSheetUTIs];
  v6 = [v4 lowercaseString];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (QLPreviewConverter)initWithURL:(id)a3 uti:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = QLPreviewConverter;
  v11 = [(QLPreviewConverter *)&v18 init];
  if (v11)
  {
    v12 = objc_alloc_init(QLBasePreviewParts);
    previewParts = v11->_previewParts;
    v11->_previewParts = &v12->super;

    [(QLPreviewConverterParts *)v11->_previewParts setUrl:v8];
    v14 = [v8 path];
    v15 = [v14 lastPathComponent];
    [(QLPreviewConverterParts *)v11->_previewParts setFileName:v15];

    [(QLPreviewConverterParts *)v11->_previewParts setUti:v9];
    v16 = [v10 objectForKey:@"Password"];
    [(QLPreviewConverterParts *)v11->_previewParts setPassword:v16];

    [QLPreviewConverterParts registerPreview:v11->_previewParts];
  }

  return v11;
}

- (QLPreviewConverter)initWithData:(id)a3 name:(id)a4 uti:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = QLPreviewConverter;
  v14 = [(QLPreviewConverter *)&v19 init];
  if (v14)
  {
    v15 = objc_alloc_init(QLBasePreviewParts);
    previewParts = v14->_previewParts;
    v14->_previewParts = &v15->super;

    [(QLPreviewConverterParts *)v14->_previewParts setData:v10];
    [(QLPreviewConverterParts *)v14->_previewParts setFileName:v11];
    [(QLPreviewConverterParts *)v14->_previewParts setUti:v12];
    v17 = [v13 objectForKey:@"Password"];
    [(QLPreviewConverterParts *)v14->_previewParts setPassword:v17];

    [QLPreviewConverterParts registerPreview:v14->_previewParts];
  }

  return v14;
}

- (QLPreviewConverter)initWithConnection:(id)a3 delegate:(id)a4 response:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = QLPreviewConverter;
  v14 = [(QLPreviewConverter *)&v27 init];
  if (v14)
  {
    v15 = objc_alloc_init(QLBasePreviewParts);
    previewParts = v14->_previewParts;
    v14->_previewParts = &v15->super;

    [(QLPreviewConverterParts *)v14->_previewParts setConnection:v10];
    [(QLPreviewConverterParts *)v14->_previewParts setDelegate:v11];
    v17 = [v13 objectForKey:@"Password"];
    [(QLPreviewConverterParts *)v14->_previewParts setPassword:v17];

    v18 = [v12 expectedContentLength];
    v19 = [MEMORY[0x277CBEB28] dataWithCapacity:v18 & ~(v18 >> 63)];
    [(QLPreviewConverterParts *)v14->_previewParts setData:v19];

    v20 = [v12 suggestedFilename];
    v21 = [v12 MIMEType];
    v22 = _QLTypeCopyUTIForFileNameAndMimeType(v20, v21);

    v23 = [v12 suggestedFilename];
    [(QLPreviewConverterParts *)v14->_previewParts setFileName:v23];

    [(QLPreviewConverterParts *)v14->_previewParts setUti:v22];
    [QLPreviewConverterParts registerPreview:v14->_previewParts];
    v24 = [v13 copy];
    options = v14->_options;
    v14->_options = v24;
  }

  return v14;
}

- (void)dealloc
{
  if (self->_previewParts)
  {
    [QLPreviewConverterParts unregisterPreview:?];
  }

  if (self->_io_write)
  {
    self->_dataGatheringSucceeded = 0;
    [(QLPreviewConverter *)self _closeIOCahnnel];
  }

  v3.receiver = self;
  v3.super_class = QLPreviewConverter;
  [(QLPreviewConverter *)&v3 dealloc];
}

- (void)finishConverting
{
  if (self->_previewParts)
  {
    [QLPreviewConverterParts unregisterPreview:?];
    previewParts = self->_previewParts;
    self->_previewParts = 0;
  }
}

- (NSString)previewFileName
{
  v2 = [(QLPreviewConverterParts *)self->_previewParts fileName];
  v3 = [v2 copy];

  return v3;
}

- (NSString)previewUTI
{
  v2 = [(QLPreviewConverterParts *)self->_previewParts uti];
  v3 = [v2 copy];

  return v3;
}

- (id)safeRequestForRequest:(id)a3
{
  v3 = [(QLPreviewConverterParts *)self->_previewParts safeRequestForRequest:a3];
  if (!v3)
  {
    v4 = MEMORY[0x277CCAD20];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:@"about:"];
    v3 = [v4 requestWithURL:v5];
  }

  return v3;
}

+ (BOOL)isSafeURL:(id)a3
{
  v3 = [a3 scheme];
  if (v3)
  {
    v4 = [@"x-apple-ql-id" caseInsensitiveCompare:v3] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isSafeRequest:(id)a3
{
  v4 = [a3 URL];
  LOBYTE(a1) = [a1 isSafeURL:v4];

  return a1;
}

- (void)appendData:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(QLPreviewConverter *)self appendDataArray:v6, v8, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)appendDataArray:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_dataPhaseFinished)
  {
    if (self->_io_write)
    {
      [(QLPreviewConverter *)self _writeDataArrayIntoStream:v4];
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v32;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v8 += [*(*(&v31 + 1) + 8 * i) length];
          }

          v7 = [v5 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }

      v11 = [(QLPreviewConverterParts *)self->_previewParts data];
      v12 = [v11 length];
      v13 = v12 + v8;
      if ((v12 + v8) < 0x3200001)
      {
        v18 = v12;
        [v11 increaseLengthBy:v8];
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v19 = v5;
        v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v28;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v28 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v27 + 1) + 8 * j);
              v25 = [v24 length];
              [v11 replaceBytesInRange:v18 withBytes:{v25, objc_msgSend(v24, "bytes")}];
              v18 += v25;
            }

            v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v21);
        }
      }

      else
      {
        v14 = MEMORY[0x277D43EF8];
        v15 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v15 = *v14;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v38 = v13;
          _os_log_impl(&dword_261653000, v15, OS_LOG_TYPE_DEFAULT, "Receiving data size bigger than what we can keep in memory (%lu) #Conversion", buf, 0xCu);
        }

        [(QLPreviewConverter *)self _createDispatchIOChannel];
        v16 = [(QLPreviewConverterParts *)self->_previewParts data];
        v36 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
        [(QLPreviewConverter *)self _writeDataArrayIntoStream:v17];

        [(QLPreviewConverterParts *)self->_previewParts setData:0];
        [(QLPreviewConverter *)self _writeDataArrayIntoStream:v5];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_createDispatchIOChannel
{
  v26 = *MEMORY[0x277D85DE8];
  if (!self->_io_write && !self->_tmpFileURL)
  {
    v3 = [(QLPreviewConverterParts *)self->_previewParts uti];

    if (v3)
    {
      v4 = MEMORY[0x277CE1CB8];
      v5 = [(QLPreviewConverterParts *)self->_previewParts uti];
      v6 = [v4 typeWithIdentifier:v5];

      v3 = [v6 preferredFilenameExtension];
    }

    v7 = MEMORY[0x277CBEBC0];
    v8 = MEMORY[0x277CCACA8];
    v9 = NSTemporaryDirectory();
    v10 = objc_opt_new();
    v11 = [v10 UUIDString];
    v12 = [v8 stringWithFormat:@"%@%@.%@", v9, v11, v3];
    v13 = [v7 fileURLWithPath:v12];
    tmpFileURL = self->_tmpFileURL;
    self->_tmpFileURL = v13;

    self->_totalWrittenBytes = 0;
    self->_dataGatheringSucceeded = 1;
    v15 = [(NSURL *)self->_tmpFileURL path];
    v16 = [v15 UTF8String];
    cleanup_handler[0] = MEMORY[0x277D85DD0];
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = __46__QLPreviewConverter__createDispatchIOChannel__block_invoke;
    cleanup_handler[3] = &unk_279AE13A8;
    cleanup_handler[4] = self;
    v17 = dispatch_io_create_with_path(0, v16, 513, 0x180u, MEMORY[0x277D85CD0], cleanup_handler);
    io_write = self->_io_write;
    self->_io_write = v17;

    v19 = MEMORY[0x277D43EF8];
    v20 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_tmpFileURL;
      *buf = 138412290;
      v25 = v21;
      _os_log_impl(&dword_261653000, v20, OS_LOG_TYPE_DEFAULT, "Creating tmp file to write the preview converter data (%@) #Conversion", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __46__QLPreviewConverter__createDispatchIOChannel__block_invoke(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 || (v13 = *(a1 + 32), (*(v13 + 49) & 1) == 0))
  {
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = a2;
      _os_log_impl(&dword_261653000, v5, OS_LOG_TYPE_DEFAULT, "Cannot write data into disk. error:%d. #Conversion", buf, 8u);
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = *v4;
    if (!*v4)
    {
      QLSInitLogging();
      v7 = *v4;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 32);
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_261653000, v7, OS_LOG_TYPE_DEFAULT, "Deleting temporary file created for the conversion %@ due to an error while writing the incoming data into disk. #Conversion", buf, 0xCu);
    }

    v9 = *(*(a1 + 32) + 32);
    v16 = 0;
    v10 = [v6 removeItemAtURL:v9 error:&v16];
    v11 = v16;
    if ((v10 & 1) == 0)
    {
      v12 = *v4;
      if (!*v4)
      {
        QLSInitLogging();
        v12 = *v4;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_DEFAULT, "Problem deleting the temporary file for the preview converter (%@) #Conversion", buf, 0xCu);
      }
    }
  }

  else
  {
    [*(v13 + 8) setUrl:*(v13 + 32)];
    [*(*(a1 + 32) + 8) setShouldRemoveURLAfterGeneration:1];
  }

  result = [*(*(a1 + 32) + 8) startComputingPreview];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_closeIOCahnnel
{
  io_write = self->_io_write;
  if (io_write)
  {
    dispatch_io_close(io_write, 0);
    v4 = self->_io_write;
    self->_io_write = 0;
  }
}

- (void)_writeDataArrayIntoStream:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    v7 = MEMORY[0x277D85CD0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        self->_totalWrittenBytes += [v9 length];
        v10 = [v9 bytes];
        v11 = [v9 length];
        destructor[0] = MEMORY[0x277D85DD0];
        destructor[1] = 3221225472;
        destructor[2] = __48__QLPreviewConverter__writeDataArrayIntoStream___block_invoke;
        destructor[3] = &unk_279AE1158;
        destructor[4] = v9;
        v12 = dispatch_data_create(v10, v11, v7, destructor);
        io_write = self->_io_write;
        totalWrittenBytes = self->_totalWrittenBytes;
        io_handler[0] = MEMORY[0x277D85DD0];
        io_handler[1] = 3221225472;
        io_handler[2] = __48__QLPreviewConverter__writeDataArrayIntoStream___block_invoke_2;
        io_handler[3] = &unk_279AE13D0;
        io_handler[4] = self;
        dispatch_io_write(io_write, totalWrittenBytes, v12, v7, io_handler);
      }

      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __48__QLPreviewConverter__writeDataArrayIntoStream___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = a4;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_DEFAULT, "Cannot write data into disk. error:%d. #Conversion", v10, 8u);
    }

    *(*(a1 + 32) + 49) = 0;
    [*(a1 + 32) finishedAppendingData];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)finishedAppendingData
{
  if (!self->_dataPhaseFinished)
  {
    self->_dataPhaseFinished = 1;
    if (self->_io_write)
    {
      [(QLPreviewConverter *)self _closeIOCahnnel];
    }

    else
    {
      [(QLPreviewConverterParts *)self->_previewParts startComputingPreview];
    }
  }
}

@end