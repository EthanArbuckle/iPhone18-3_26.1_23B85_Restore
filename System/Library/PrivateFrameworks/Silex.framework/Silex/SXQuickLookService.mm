@interface SXQuickLookService
- (SXQuickLookService)init;
- (void)fetchThumbnailForFile:(id)file size:(CGSize)size onCompletion:(id)completion onError:(id)error;
@end

@implementation SXQuickLookService

- (SXQuickLookService)init
{
  v6.receiver = self;
  v6.super_class = SXQuickLookService;
  v2 = [(SXQuickLookService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E697A0E8]);
    generator = v2->_generator;
    v2->_generator = v3;
  }

  return v2;
}

- (void)fetchThumbnailForFile:(id)file size:(CGSize)size onCompletion:(id)completion onError:(id)error
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  errorCopy = error;
  v13 = MEMORY[0x1E697A0E0];
  fileCopy = file;
  v15 = [v13 alloc];
  fileURL = [fileCopy fileURL];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v19 = [v15 initWithFileAtURL:fileURL size:-1 scale:width representationTypes:{height, v18}];

  generator = [(SXQuickLookService *)self generator];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__SXQuickLookService_fetchThumbnailForFile_size_onCompletion_onError___block_invoke;
  v23[3] = &unk_1E8501C00;
  v24 = completionCopy;
  v25 = errorCopy;
  v21 = errorCopy;
  v22 = completionCopy;
  [generator generateBestRepresentationForRequest:v19 completionHandler:v23];
}

void __70__SXQuickLookService_fetchThumbnailForFile_size_onCompletion_onError___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v5 = [a2 UIImage];
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

@end