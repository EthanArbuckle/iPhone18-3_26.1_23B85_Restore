@interface DCDocument
+ (id)documentWithURL:(id)a3;
+ (id)documentWithURL:(id)a3 annotation:(id)a4;
- (DCDocument)initWithURL:(id)a3 annotation:(id)a4;
- (void)openInDefaultAppWithCompletionHandler:(id)a3;
- (void)openWithAppBundleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation DCDocument

- (void)openInDefaultAppWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__DCDocument_openInDefaultAppWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E837E1F8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __52__DCDocument_openInDefaultAppWithCompletionHandler___block_invoke(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__29403;
  v16 = __Block_byref_object_dispose__29404;
  v17 = 0;
  v2 = [*(a1 + 32) fileURL];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __52__DCDocument_openInDefaultAppWithCompletionHandler___block_invoke_2;
  v9 = &unk_1E83780E0;
  v11 = &v12;
  v10 = *(a1 + 40);
  v3 = WFCreateDocumentInteractionController(v2, &v6);
  v4 = v13[5];
  v13[5] = v3;

  v5 = [*(a1 + 32) annotation];
  [v13[5] setAnnotation:v5];

  [v13[5] openDocumentWithDefaultApplication];
  _Block_object_dispose(&v12, 8);
}

uint64_t __52__DCDocument_openInDefaultAppWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)openWithAppBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__DCDocument_openWithAppBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E837ECE0;
  v11 = v6;
  v12 = v7;
  block[4] = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__DCDocument_openWithAppBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__29403;
  v18 = __Block_byref_object_dispose__29404;
  v19 = 0;
  v2 = [*(a1 + 32) fileURL];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __60__DCDocument_openWithAppBundleIdentifier_completionHandler___block_invoke_8;
  v11 = &unk_1E83780E0;
  v13 = &v14;
  v12 = *(a1 + 48);
  v3 = WFCreateDocumentInteractionController(v2, &v8);
  v4 = v15[5];
  v15[5] = v3;

  v5 = [*(a1 + 32) annotation];
  [v15[5] setAnnotation:v5];

  v6 = v15[5];
  v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:*(a1 + 40)];
  [v6 _openDocumentWithApplication:v7];

  _Block_object_dispose(&v14, 8);
}

uint64_t __60__DCDocument_openWithAppBundleIdentifier_completionHandler___block_invoke_8(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (DCDocument)initWithURL:(id)a3 annotation:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"DCDocument.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"fileURL"}];
  }

  v15.receiver = self;
  v15.super_class = DCDocument;
  v9 = [(DCDocument *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    fileURL = v9->_fileURL;
    v9->_fileURL = v10;

    objc_storeStrong(&v9->_annotation, a4);
    v12 = v9;
  }

  return v9;
}

+ (id)documentWithURL:(id)a3 annotation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[DCDocument alloc] initWithURL:v6 annotation:v5];

  return v7;
}

+ (id)documentWithURL:(id)a3
{
  v3 = a3;
  v4 = [[DCDocument alloc] initWithURL:v3 annotation:0];

  return v4;
}

@end