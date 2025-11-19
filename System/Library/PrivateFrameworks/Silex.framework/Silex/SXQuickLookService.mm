@interface SXQuickLookService
- (SXQuickLookService)init;
- (void)fetchThumbnailForFile:(id)a3 size:(CGSize)a4 onCompletion:(id)a5 onError:(id)a6;
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

- (void)fetchThumbnailForFile:(id)a3 size:(CGSize)a4 onCompletion:(id)a5 onError:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x1E697A0E0];
  v14 = a3;
  v15 = [v13 alloc];
  v16 = [v14 fileURL];

  v17 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v17 scale];
  v19 = [v15 initWithFileAtURL:v16 size:-1 scale:width representationTypes:{height, v18}];

  v20 = [(SXQuickLookService *)self generator];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__SXQuickLookService_fetchThumbnailForFile_size_onCompletion_onError___block_invoke;
  v23[3] = &unk_1E8501C00;
  v24 = v11;
  v25 = v12;
  v21 = v12;
  v22 = v11;
  [v20 generateBestRepresentationForRequest:v19 completionHandler:v23];
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