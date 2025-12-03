@interface TSAApplicationDelegate
+ (id)sharedDelegate;
- (TSAApplicationDelegate)init;
- (id)noDocumentsImagePath;
- (id)previewImageNameForDocumentType:(id)type;
- (id)previewImageNameForEncryptedNativeDocument;
- (id)previewImageNameForNativeDocument;
- (id)stringForImportingDocument;
- (void)applicationDidReceiveMemoryWarning:(id)warning;
- (void)dealloc;
@end

@implementation TSAApplicationDelegate

+ (id)sharedDelegate
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSAApplicationDelegate;
  return objc_msgSendSuper2(&v3, sel_sharedDelegate);
}

- (TSAApplicationDelegate)init
{
  v5.receiver = self;
  v5.super_class = TSAApplicationDelegate;
  v2 = [(TSABaseApplicationDelegate *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [TSWPURLDataDetector setInvalidURLSchemes:[(TSABaseApplicationDelegate *)v2 invalidURLSchemes]];
    [TSWPDataDetectors registerDataDetectorClass:objc_opt_class()];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSAApplicationDelegate;
  [(TSABaseApplicationDelegate *)&v3 dealloc];
}

- (id)previewImageNameForDocumentType:(id)type
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSAApplicationDelegate previewImageNameForDocumentType:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSAApplicationDelegate.m"), 113, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSAApplicationDelegate previewImageNameForDocumentType:]"), 0}]);
}

- (id)previewImageNameForNativeDocument
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSAApplicationDelegate previewImageNameForNativeDocument]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSAApplicationDelegate.m"), 118, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSAApplicationDelegate previewImageNameForNativeDocument]"), 0}]);
}

- (id)previewImageNameForEncryptedNativeDocument
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSAApplicationDelegate previewImageNameForEncryptedNativeDocument]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSAApplicationDelegate.m"), 123, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSAApplicationDelegate previewImageNameForEncryptedNativeDocument]"), 0}]);
}

- (id)noDocumentsImagePath
{
  v2 = TSABundle();

  return [v2 pathForResource:@"TSAApplicationNoDocumentsImage" ofType:@"png"];
}

- (void)applicationDidReceiveMemoryWarning:(id)warning
{
  mEMORY[0x277D6C2E0] = [MEMORY[0x277D6C2E0] sharedManager];

  [mEMORY[0x277D6C2E0] didReceiveMemoryWarning];
}

- (id)stringForImportingDocument
{
  v2 = TSABundle();

  return [v2 localizedStringForKey:@"Importing\\U2026" value:&stru_287D36338 table:@"TSApplication"];
}

@end