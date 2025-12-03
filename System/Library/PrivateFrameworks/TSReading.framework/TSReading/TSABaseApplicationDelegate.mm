@interface TSABaseApplicationDelegate
+ (id)sharedDelegate;
+ (void)presentAlertController:(id)controller animated:(BOOL)animated;
- (BOOL)URLIsValidForImportedHyperlink:(id)hyperlink;
- (BOOL)isReadableDocumentType:(id)type;
- (BOOL)openURL:(id)l sourceDocumentRoot:(id)root;
- (Class)documentRootClass;
- (NSArray)applicationTemplateVariants;
- (NSArray)importableDocumentTypes;
- (NSArray)readableDocumentTypes;
- (NSString)nativeDocumentExtension;
- (NSString)nativeDocumentType;
- (NSString)nativeSFFDocumentType;
- (NSString)tangierEditingFormatDocumentType;
- (NSString)templateDocumentExtension;
- (NSString)templateDocumentType;
- (NSString)templateSFFDocumentType;
- (TSABaseApplicationDelegate)init;
- (id)applicationTemplateVariantsForLocale:(__CFLocale *)locale;
- (id)existingNestedDocumentPathForPath:(id)path;
- (void)dealloc;
- (void)persistenceError:(id)error;
@end

@implementation TSABaseApplicationDelegate

+ (id)sharedDelegate
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSABaseApplicationDelegate;
  return objc_msgSendSuper2(&v3, sel_sharedDelegate);
}

- (TSABaseApplicationDelegate)init
{
  v5.receiver = self;
  v5.super_class = TSABaseApplicationDelegate;
  v2 = [(TSKApplicationDelegate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TSABaseApplicationDelegate *)v2 registerDefaults];
  }

  return v3;
}

- (void)dealloc
{
  [(TSABaseApplicationDelegate *)self setDownloadDelegate:0];
  v3.receiver = self;
  v3.super_class = TSABaseApplicationDelegate;
  [(TSKApplicationDelegate *)&v3 dealloc];
}

- (Class)documentRootClass
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate documentRootClass]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 61, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate documentRootClass]"), 0}]);
}

- (void)persistenceError:(id)error
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate persistenceError:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 69, @"Got persistence error: %@", error}];
}

- (NSString)nativeDocumentType
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate nativeDocumentType]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 76, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate nativeDocumentType]"), 0}]);
}

- (NSString)nativeDocumentExtension
{
  nativeDocumentType = [(TSABaseApplicationDelegate *)self nativeDocumentType];

  return [(NSString *)nativeDocumentType tsu_UTIFilenameExtension];
}

- (NSString)templateDocumentType
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate templateDocumentType]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 86, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate templateDocumentType]"), 0}]);
}

- (NSString)templateSFFDocumentType
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate templateSFFDocumentType]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 91, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate templateSFFDocumentType]"), 0}]);
}

- (NSString)templateDocumentExtension
{
  templateDocumentType = [(TSABaseApplicationDelegate *)self templateDocumentType];

  return [(NSString *)templateDocumentType tsu_UTIFilenameExtension];
}

- (NSString)tangierEditingFormatDocumentType
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate tangierEditingFormatDocumentType]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 101, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate tangierEditingFormatDocumentType]"), 0}]);
}

- (NSString)nativeSFFDocumentType
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate nativeSFFDocumentType]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 106, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate nativeSFFDocumentType]"), 0}]);
}

- (NSArray)readableDocumentTypes
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[1] = [(TSABaseApplicationDelegate *)self templateDocumentType];
  v4[2] = [(TSABaseApplicationDelegate *)self templateSFFDocumentType];
  v4[3] = [(TSABaseApplicationDelegate *)self tangierEditingFormatDocumentType];
  v4[4] = [(TSABaseApplicationDelegate *)self nativeSFFDocumentType];
  return [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:v4 count:{5), "arrayByAddingObjectsFromArray:", -[TSABaseApplicationDelegate importableDocumentTypes](self, "importableDocumentTypes")}];
}

- (NSArray)importableDocumentTypes
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate importableDocumentTypes]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 123, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate importableDocumentTypes]"), 0}]);
}

- (BOOL)isReadableDocumentType:(id)type
{
  v15 = *MEMORY[0x277D85DE8];
  readableDocumentTypes = [(TSABaseApplicationDelegate *)self readableDocumentTypes];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSArray *)readableDocumentTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(readableDocumentTypes);
        }

        if ([type tsu_conformsToUTI:*(*(&v10 + 1) + 8 * v8)])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSArray *)readableDocumentTypes countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (NSArray)applicationTemplateVariants
{
  v3 = CFLocaleCopyCurrent();
  v4 = [(TSABaseApplicationDelegate *)self applicationTemplateVariantsForLocale:v3];
  CFRelease(v3);
  return v4;
}

- (id)applicationTemplateVariantsForLocale:(__CFLocale *)locale
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate applicationTemplateVariantsForLocale:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 152, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate applicationTemplateVariantsForLocale:]"), 0}]);
}

- (BOOL)openURL:(id)l sourceDocumentRoot:(id)root
{
  lCopy = l;
  scheme = [objc_msgSend(l "scheme")];
  if (!scheme)
  {
    lCopy = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"http://%@", objc_msgSend(lCopy, "absoluteString"))}];
    scheme = [lCopy scheme];
    if (!scheme)
    {
      return 0;
    }
  }

  if ([objc_msgSend(+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")])
  {
    return 0;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];

  return [mEMORY[0x277D75128] openURL:lCopy];
}

+ (void)presentAlertController:(id)controller animated:(BOOL)animated
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSABaseApplicationDelegate presentAlertController:animated:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 240, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "+[TSABaseApplicationDelegate presentAlertController:animated:]"), 0}]);
}

- (BOOL)URLIsValidForImportedHyperlink:(id)hyperlink
{
  scheme = [hyperlink scheme];
  if (scheme)
  {
    LOBYTE(scheme) = [-[TSABaseApplicationDelegate invalidURLSchemes](self "invalidURLSchemes")] == 0;
  }

  return scheme;
}

- (id)existingNestedDocumentPathForPath:(id)path
{
  if (![path tsu_pathConformsToUTI:{-[TSABaseApplicationDelegate tangierEditingFormatDocumentType](self, "tangierEditingFormatDocumentType")}])
  {
    return 0;
  }

  v5 = [path stringByAppendingPathComponent:{-[TSKCompatibilityDelegate nestedDocumentFilename](-[TSKApplicationDelegate compatibilityDelegate](self, "compatibilityDelegate"), "nestedDocumentFilename")}];
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    return 0;
  }

  return v5;
}

@end