@interface NSURL
@end

@implementation NSURL

void __51__NSURL_UIDocumentPicker__ui_cloudDocsContainerURL__block_invoke()
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v0 = qword_1ED49DA08;
  v20 = qword_1ED49DA08;
  if (!qword_1ED49DA08)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getBRContainerClass_block_invoke;
    v15 = &unk_1E70F2F20;
    v16 = &v17;
    __getBRContainerClass_block_invoke(&v12);
    v0 = v18[3];
  }

  v1 = v0;
  _Block_object_dispose(&v17, 8);
  v2 = [v0 allContainersByContainerID];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v3 = qword_1ED49DA10;
  v20 = qword_1ED49DA10;
  if (!qword_1ED49DA10)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getBRUbiquitousDefaultContainerIDSymbolLoc_block_invoke;
    v15 = &unk_1E70F2F20;
    v16 = &v17;
    v4 = CloudDocsLibrary();
    v5 = dlsym(v4, "BRUbiquitousDefaultContainerID");
    *(v16[1] + 24) = v5;
    qword_1ED49DA10 = *(v16[1] + 24);
    v3 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (v3)
  {
    v6 = [v2 objectForKey:*v3];

    v7 = [v6 documentsURL];
    v8 = [v7 copy];
    v9 = _MergedGlobals_1063;
    _MergedGlobals_1063 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBRUbiquitousDefaultContainerID(void)"];
    [v10 handleFailureInFunction:v11 file:@"NSURL+UIDocumentPicker.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void __48__NSURL_UIDocumentPicker__ui_scheduleForCleanup__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696ABF8]);
  v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v4 = [*(a1 + 32) path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__63;
    v18 = __Block_byref_object_dispose__63;
    v19 = 0;
    v6 = *(a1 + 32);
    obj = 0;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __48__NSURL_UIDocumentPicker__ui_scheduleForCleanup__block_invoke_25;
    v10 = &unk_1E71054D0;
    v11 = v3;
    v12 = &v14;
    [v2 coordinateWritingItemAtURL:v6 options:1 error:&obj byAccessor:&v7];
    objc_storeStrong(&v19, obj);
    if (v15[5])
    {
      NSLog(&cfstr_FailedToCleanU.isa, v15[5], v7, v8, v9, v10);
    }

    _Block_object_dispose(&v14, 8);
  }
}

void __48__NSURL_UIDocumentPicker__ui_scheduleForCleanup__block_invoke_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  [v2 removeItemAtURL:a2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

@end