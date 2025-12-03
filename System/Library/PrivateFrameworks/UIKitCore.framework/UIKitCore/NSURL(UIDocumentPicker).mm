@interface NSURL(UIDocumentPicker)
+ (id)ui_URLFromExportBookmark:()UIDocumentPicker;
+ (id)ui_cloudDocsContainerURL;
+ (id)ui_incomingDirectory:()UIDocumentPicker;
- (BOOL)ui_hasSandboxExtendedForClass:()UIDocumentPicker;
- (_UIDocumentActivityDownloadOperation)ui_downloadOperationForActivity:()UIDocumentPicker;
- (_UIDocumentActivityDownloadOperation)ui_downloadOperationForActivity:()UIDocumentPicker inScene:;
- (id)ui_URLByResolvingSymlinksAndCopyingSecurityScope;
- (id)ui_bookmarkForExportWithError:()UIDocumentPicker;
- (id)ui_issueSandboxExtensionOfClass:()UIDocumentPicker error:;
- (id)ui_resolveOnDiskBookmarkAndPromise;
- (uint64_t)ui_isContentManaged;
- (uint64_t)ui_isUnfulfilledPromiseURL;
- (void)ui_canOpenInPlace;
- (void)ui_isFileProviderURL;
- (void)ui_scheduleForCleanup;
- (void)ui_setIsContentManaged:()UIDocumentPicker;
- (void)ui_setIsFileProviderURL:()UIDocumentPicker;
@end

@implementation NSURL(UIDocumentPicker)

- (id)ui_issueSandboxExtensionOfClass:()UIDocumentPicker error:
{
  v20[1] = *MEMORY[0x1E69E9840];
  path = [self path];
  [path fileSystemRepresentation];
  v8 = sandbox_extension_issue_file();

  if (v8)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:strlen(v8) + 1];
  }

  else
  {
    if (a4)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A798];
      v12 = *__error();
      v19 = *MEMORY[0x1E695E620];
      v13 = MEMORY[0x1E696AEC0];
      path2 = [self path];
      v15 = __error();
      v16 = [v13 stringWithFormat:@"couldn't issue sandbox extension %s for '%@': %s", a3, path2, strerror(*v15)];
      v20[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a4 = [v10 errorWithDomain:v11 code:v12 userInfo:v17];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)ui_hasSandboxExtendedForClass:()UIDocumentPicker
{
  path = [self path];
  [path fileSystemRepresentation];
  v2 = sandbox_check() == 0;

  return v2;
}

- (void)ui_isFileProviderURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getFPIsFileProviderBookmarkSymbolLoc_ptr;
  v9 = getFPIsFileProviderBookmarkSymbolLoc_ptr;
  if (!getFPIsFileProviderBookmarkSymbolLoc_ptr)
  {
    v3 = FileProviderLibrary();
    v7[3] = dlsym(v3, "FPIsFileProviderBookmark");
    getFPIsFileProviderBookmarkSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(self, 0);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _FPIsFileProviderBookmark(CFURLRef, CFErrorRef *)"}];
    [currentHandler handleFailureInFunction:v5 file:@"NSURL+UIDocumentPicker.m" lineNumber:28 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)ui_setIsFileProviderURL:()UIDocumentPicker
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = getFPMarkAsFileProviderBookmarkSymbolLoc_ptr;
  v12 = getFPMarkAsFileProviderBookmarkSymbolLoc_ptr;
  if (!getFPMarkAsFileProviderBookmarkSymbolLoc_ptr)
  {
    v6 = FileProviderLibrary();
    v10[3] = dlsym(v6, "FPMarkAsFileProviderBookmark");
    getFPMarkAsFileProviderBookmarkSymbolLoc_ptr = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v5)
  {
    v5(self, a3);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _FPMarkAsFileProviderBookmark(CFURLRef, BOOL)"}];
    [currentHandler handleFailureInFunction:v8 file:@"NSURL+UIDocumentPicker.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)ui_canOpenInPlace
{
  if (([self ui_isFileProviderURL] & 1) == 0)
  {
    selfCopy = self;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v3 = getBRIsURLInMobileDocumentsSymbolLoc_ptr;
    v10 = getBRIsURLInMobileDocumentsSymbolLoc_ptr;
    if (!getBRIsURLInMobileDocumentsSymbolLoc_ptr)
    {
      v4 = CloudDocsLibrary();
      v8[3] = dlsym(v4, "BRIsURLInMobileDocuments");
      getBRIsURLInMobileDocumentsSymbolLoc_ptr = v8[3];
      v3 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (v3)
    {
      v3(selfCopy);
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _BRIsURLInMobileDocuments(NSURL *__strong)"];
      [currentHandler handleFailureInFunction:v6 file:@"NSURL+UIDocumentPicker.m" lineNumber:32 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

- (uint64_t)ui_isUnfulfilledPromiseURL
{
  result = [self isFileURL];
  if (result)
  {
    path = [self path];
    v4 = stat([path fileSystemRepresentation], &v10);

    if (v4 < 0)
    {
      result = 0;
      if (*__error() == 2)
      {
        v5 = _CFURLPromiseCopyPhysicalURL();
        if (v5)
        {
          v6 = v5;
          v7 = objc_alloc_init(MEMORY[0x1E696AC08]);
          path2 = [v6 path];
          v9 = [v7 fileExistsAtPath:path2];

          if (v9)
          {
            return 1;
          }
        }
      }
    }

    else
    {
      return (HIBYTE(v10.st_flags) >> 6) & 1;
    }
  }

  return result;
}

- (void)ui_setIsContentManaged:()UIDocumentPicker
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self setTemporaryResourceValue:v2 forKey:@"com.apple.UIKit.isContentManaged"];
}

- (uint64_t)ui_isContentManaged
{
  v2 = 0;
  [self getResourceValue:&v2 forKey:@"com.apple.UIKit.isContentManaged" error:0];
  return [v2 BOOLValue];
}

+ (id)ui_cloudDocsContainerURL
{
  if (qword_1ED49DA00 != -1)
  {
    dispatch_once(&qword_1ED49DA00, &__block_literal_global_172);
  }

  v1 = _MergedGlobals_1063;

  return v1;
}

- (id)ui_bookmarkForExportWithError:()UIDocumentPicker
{
  v3 = [_UIDocumentPickerNSURLWrapper wrapperForExportWithURL:self error:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v4 encodeObject:v3 forKey:*MEMORY[0x1E696A508]];
    encodedData = [v4 encodedData];
    v6 = [encodedData base64EncodedStringWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)ui_URLFromExportBookmark:()UIDocumentPicker
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
  v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
  v8 = [v7 url];

  return v8;
}

+ (id)ui_incomingDirectory:()UIDocumentPicker
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = _UIMainBundleIdentifier();
  v5 = MEMORY[0x1E695DFF8];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-Inbox", v4];
  v9 = [v7 URLByAppendingPathComponent:v8];

  if (a3)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v20 = 0;
    path = [v9 path];
    v12 = [v10 fileExistsAtPath:path isDirectory:&v20];
    v13 = v20;

    if (v12 && (v13 & 1) != 0)
    {
      v21 = *MEMORY[0x1E696A3A0];
      v22 = *MEMORY[0x1E696A388];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      path2 = [v9 path];
      v18 = 0;
      [v10 setAttributes:v14 ofItemAtPath:path2 error:&v18];
      v16 = v18;
    }

    else
    {
      [v10 removeItemAtURL:v9 error:0];
      v23 = *MEMORY[0x1E696A3A0];
      v24[0] = *MEMORY[0x1E696A388];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v19 = 0;
      [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v14 error:&v19];
      v16 = v19;
    }
  }

  return v9;
}

- (void)ui_scheduleForCleanup
{
  path = [self path];
  v5 = [MEMORY[0x1E695DFF8] ui_incomingDirectory:0];
  path2 = [v5 path];
  v7 = [path hasPrefix:path2];

  if ((v7 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSURL+UIDocumentPicker.m" lineNumber:214 description:{@"%@ called on URL (%@) not in incoming directory", v11, self}];
  }

  v8 = dispatch_time(0, 60000000000);
  v9 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__NSURL_UIDocumentPicker__ui_scheduleForCleanup__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v8, v9, block);
}

- (id)ui_resolveOnDiskBookmarkAndPromise
{
  selfCopy = self;
  if ([selfCopy br_isExternalDocumentReference])
  {
    v2 = [selfCopy br_URLByResolvingExternalDocumentReferenceWithError:0];

    selfCopy = v2;
  }

  if (_CFURLIsItemPromiseAtURL())
  {
    v3 = _CFURLCopyLogicalURLOfPromiseAtURL();

    selfCopy = v3;
  }

  return selfCopy;
}

- (_UIDocumentActivityDownloadOperation)ui_downloadOperationForActivity:()UIDocumentPicker
{
  v1 = [[_UIDocumentActivityDownloadOperation alloc] initWithURL:self scene:0];

  return v1;
}

- (_UIDocumentActivityDownloadOperation)ui_downloadOperationForActivity:()UIDocumentPicker inScene:
{
  v5 = a4;
  v6 = [[_UIDocumentActivityDownloadOperation alloc] initWithURL:self scene:v5];

  return v6;
}

- (id)ui_URLByResolvingSymlinksAndCopyingSecurityScope
{
  uRLByResolvingSymlinksInPath = [self URLByResolvingSymlinksInPath];
  v3 = uRLByResolvingSymlinksInPath;
  if (uRLByResolvingSymlinksInPath == self)
  {
    selfCopy = self;
    goto LABEL_10;
  }

  path = [uRLByResolvingSymlinksInPath path];
  path2 = [self path];
  if (![path2 hasPrefix:@"/private/var/"])
  {
    goto LABEL_5;
  }

  v6 = [path hasPrefix:@"/var/"];

  if (v6)
  {
    path2 = [v3 path];
    v7 = [path2 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"/var/", "length"), @"/private/var/"}];

    path = v7;
LABEL_5:
  }

  hasDirectoryPath = [self hasDirectoryPath];
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:hasDirectoryPath];

  v10 = MEMORY[0x18CFE8480](self);
  if (v10)
  {
    [_UIDocumentPickerNSURLWrapper assembleURL:v9 sandbox:v10 physicalURL:0 physicalSandbox:0];
  }

  v3 = v9;

  selfCopy = v3;
LABEL_10:

  return selfCopy;
}

@end