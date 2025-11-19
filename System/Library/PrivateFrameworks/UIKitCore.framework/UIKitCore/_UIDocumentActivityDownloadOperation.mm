@interface _UIDocumentActivityDownloadOperation
- (_UIDocumentActivityDownloadOperation)initWithURL:(id)a3 scene:(id)a4;
- (void)main;
@end

@implementation _UIDocumentActivityDownloadOperation

- (_UIDocumentActivityDownloadOperation)initWithURL:(id)a3 scene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UIDocumentActivityDownloadOperation;
  v9 = [(_UIDocumentActivityDownloadOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeWeak(&v10->_weakScene, v8);
  }

  return v10;
}

- (void)main
{
  v3 = objc_alloc_init(MEMORY[0x1E696ABF8]);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __44___UIDocumentActivityDownloadOperation_main__block_invoke;
  v8 = &unk_1E70F35B8;
  v9 = self;
  v10 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], &v5);
  [v4 coordinateReadingItemAtURL:self->_url options:0 error:0 byAccessor:{&__block_literal_global_178, v5, v6, v7, v8, v9}];
}

@end