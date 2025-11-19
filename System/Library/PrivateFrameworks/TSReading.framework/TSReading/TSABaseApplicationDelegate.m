@interface TSABaseApplicationDelegate
+ (id)sharedDelegate;
+ (void)presentAlertController:(id)a3 animated:(BOOL)a4;
- (BOOL)URLIsValidForImportedHyperlink:(id)a3;
- (BOOL)isReadableDocumentType:(id)a3;
- (BOOL)openURL:(id)a3 sourceDocumentRoot:(id)a4;
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
- (id)applicationTemplateVariantsForLocale:(__CFLocale *)a3;
- (id)existingNestedDocumentPathForPath:(id)a3;
- (void)dealloc;
- (void)persistenceError:(id)a3;
@end

@implementation TSABaseApplicationDelegate

+ (id)sharedDelegate
{
  v3.receiver = a1;
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
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate documentRootClass]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 61, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate documentRootClass]"), 0}]);
}

- (void)persistenceError:(id)a3
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate persistenceError:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 69, @"Got persistence error: %@", a3}];
}

- (NSString)nativeDocumentType
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate nativeDocumentType]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 76, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate nativeDocumentType]"), 0}]);
}

- (NSString)nativeDocumentExtension
{
  v2 = [(TSABaseApplicationDelegate *)self nativeDocumentType];

  return [(NSString *)v2 tsu_UTIFilenameExtension];
}

- (NSString)templateDocumentType
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate templateDocumentType]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 86, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate templateDocumentType]"), 0}]);
}

- (NSString)templateSFFDocumentType
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate templateSFFDocumentType]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 91, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate templateSFFDocumentType]"), 0}]);
}

- (NSString)templateDocumentExtension
{
  v2 = [(TSABaseApplicationDelegate *)self templateDocumentType];

  return [(NSString *)v2 tsu_UTIFilenameExtension];
}

- (NSString)tangierEditingFormatDocumentType
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate tangierEditingFormatDocumentType]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 101, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate tangierEditingFormatDocumentType]"), 0}]);
}

- (NSString)nativeSFFDocumentType
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate nativeSFFDocumentType]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 106, @"Abstract method"}];
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
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate importableDocumentTypes]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 123, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate importableDocumentTypes]"), 0}]);
}

- (BOOL)isReadableDocumentType:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(TSABaseApplicationDelegate *)self readableDocumentTypes];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([a3 tsu_conformsToUTI:*(*(&v10 + 1) + 8 * v8)])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)applicationTemplateVariantsForLocale:(__CFLocale *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSABaseApplicationDelegate applicationTemplateVariantsForLocale:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 152, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSABaseApplicationDelegate applicationTemplateVariantsForLocale:]"), 0}]);
}

- (BOOL)openURL:(id)a3 sourceDocumentRoot:(id)a4
{
  v4 = a3;
  v5 = [objc_msgSend(a3 "scheme")];
  if (!v5)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"http://%@", objc_msgSend(v4, "absoluteString"))}];
    v5 = [v4 scheme];
    if (!v5)
    {
      return 0;
    }
  }

  if ([objc_msgSend(+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")])
  {
    return 0;
  }

  v7 = [MEMORY[0x277D75128] sharedApplication];

  return [v7 openURL:v4];
}

+ (void)presentAlertController:(id)a3 animated:(BOOL)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSABaseApplicationDelegate presentAlertController:animated:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSABaseApplicationDelegate.mm"), 240, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "+[TSABaseApplicationDelegate presentAlertController:animated:]"), 0}]);
}

- (BOOL)URLIsValidForImportedHyperlink:(id)a3
{
  v4 = [a3 scheme];
  if (v4)
  {
    LOBYTE(v4) = [-[TSABaseApplicationDelegate invalidURLSchemes](self "invalidURLSchemes")] == 0;
  }

  return v4;
}

- (id)existingNestedDocumentPathForPath:(id)a3
{
  if (![a3 tsu_pathConformsToUTI:{-[TSABaseApplicationDelegate tangierEditingFormatDocumentType](self, "tangierEditingFormatDocumentType")}])
  {
    return 0;
  }

  v5 = [a3 stringByAppendingPathComponent:{-[TSKCompatibilityDelegate nestedDocumentFilename](-[TSKApplicationDelegate compatibilityDelegate](self, "compatibilityDelegate"), "nestedDocumentFilename")}];
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    return 0;
  }

  return v5;
}

@end