@interface VKCStickerFromPKDrawing
- (CGImage)recreateImage:(CGImage *)a3;
- (VKCStickerFromPKDrawing)initWithFrameVar:(CGRect)a3 currentView:(id)a4 inputtedImage:(CGImage *)a5;
- (VKCStickerFromPKDrawingDelegate)delegate;
- (void)_generateStickerRepresentations:(CGImage *)a3 type:(unint64_t)a4 completion:(id)a5;
- (void)dealloc;
- (void)generateAndAddStickerRepresentations:(unint64_t)a3;
- (void)presentStickerPickerViewController:(CGRect)a3;
- (void)setInputImage:(CGImage *)a3;
- (void)stickerPickerViewControllerDidLoad;
@end

@implementation VKCStickerFromPKDrawing

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  CGImageRelease(self->_inputImage);
  v4.receiver = self;
  v4.super_class = VKCStickerFromPKDrawing;
  [(VKCStickerFromPKDrawing *)&v4 dealloc];
}

- (VKCStickerFromPKDrawing)initWithFrameVar:(CGRect)a3 currentView:(id)a4 inputtedImage:(CGImage *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v17.receiver = self;
  v17.super_class = VKCStickerFromPKDrawing;
  v12 = [(VKCStickerFromPKDrawing *)&v17 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(VKCStickerFromPKDrawing *)v12 setInputImage:a5];
    [(VKCStickerFromPKDrawing *)v13 setCurrentView:v11];
    v14 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    feedbackGenerator = v13->_feedbackGenerator;
    v13->_feedbackGenerator = v14;
  }

  return v13;
}

- (void)presentStickerPickerViewController:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(VKCStickerPickerViewController);
  [(VKCStickerFromPKDrawing *)self setStickerPickerViewController:v8];

  v9 = [(VKCStickerFromPKDrawing *)self stickerPickerViewController];
  [v9 setDelegate:self];

  v10 = [(VKCStickerFromPKDrawing *)self currentView];
  v11 = [(VKCStickerFromPKDrawing *)self stickerPickerViewController];
  v12 = [v11 popoverPresentationController];
  [v12 setSourceView:v10];

  v13 = [(VKCStickerFromPKDrawing *)self stickerPickerViewController];
  [v13 setModalTransitionStyle:0];

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v14 = CGRectGetMidX(v31) + -20.0;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v15 = CGRectGetMidY(v32) + -20.0;
  v16 = [(VKCStickerFromPKDrawing *)self stickerPickerViewController];
  [v16 setSourceView:self];

  v18 = VKMRectWithOriginAndSize(v17, v14, v15, 40.0, 40.0);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(VKCStickerFromPKDrawing *)self stickerPickerViewController];
  [v25 setSourceRect:{v18, v20, v22, v24}];

  v26 = [(VKCStickerFromPKDrawing *)self currentView];
  v27 = [v26 window];
  v28 = [v27 rootViewController];
  v29 = [(VKCStickerFromPKDrawing *)self stickerPickerViewController];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __62__VKCStickerFromPKDrawing_presentStickerPickerViewController___block_invoke;
  v30[3] = &unk_1E7BE4208;
  v30[4] = self;
  [v28 presentViewController:v29 animated:0 completion:v30];
}

void __62__VKCStickerFromPKDrawing_presentStickerPickerViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stickerPickerViewController];
  [v1 becomeFirstResponder];
}

- (CGImage)recreateImage:(CGImage *)a3
{
  Image = a3;
  if (a3)
  {
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(Image);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (DeviceRGB)
    {
      v7 = DeviceRGB;
      v8 = Width;
      v9 = Height;
      BitmapInfo = CGImageGetBitmapInfo(Image);
      BitsPerComponent = CGImageGetBitsPerComponent(Image);
      BytesPerRow = CGImageGetBytesPerRow(Image);
      v13 = CGBitmapContextCreate(0, v8, v9, BitsPerComponent, BytesPerRow, v7, BitmapInfo);
      if (v13)
      {
        v14 = v13;
        v16.origin.x = 0.0;
        v16.origin.y = 0.0;
        v16.size.width = v8;
        v16.size.height = v9;
        CGContextClearRect(v13, v16);
        v17.origin.x = 0.0;
        v17.origin.y = 0.0;
        v17.size.width = v8;
        v17.size.height = v9;
        CGContextDrawImage(v14, v17, Image);
        Image = CGBitmapContextCreateImage(v14);
        CGContextRelease(v14);
      }

      CGColorSpaceRelease(v7);
    }
  }

  return Image;
}

- (void)_generateStickerRepresentations:(CGImage *)a3 type:(unint64_t)a4 completion:(id)a5
{
  v5 = a4;
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a3)
  {
    v9 = [(VKCStickerFromPKDrawing *)self recreateImage:a3];
    v10 = v9 != a3;
    v11 = [MEMORY[0x1E69DCAB8] vk_imageWithCGImage:v9];
    v12 = !v10;
    if (!v9)
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      CGImageRelease(v9);
    }
  }

  else
  {
    v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [VKCStickerFromPKDrawing _generateStickerRepresentations:v13 type:? completion:?];
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"VKCStickerFromPKDrawing: Recreating image failed.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v16 = [v14 initWithDomain:@"com.apple.VisionKit.Sticker" code:-14 userInfo:v15];

    (*(v8 + 2))(v8, 0, 0, v16);
    v11 = 0;
  }

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy_;
  v38[4] = __Block_byref_object_dispose_;
  v39 = [MEMORY[0x1E695DF70] array];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2810000000;
  v36[3] = &unk_1B44420A2;
  v37 = 0;
  v17 = dispatch_group_create();
  v18 = +[VKImageDataRequirements stickerRequirements];
  if (v5)
  {
    dispatch_group_enter(v17);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __75__VKCStickerFromPKDrawing__generateStickerRepresentations_type_completion___block_invoke;
    v31[3] = &unk_1E7BE42D0;
    v32 = v18;
    v34 = v36;
    v35 = v38;
    v33 = v17;
    [v11 vk_imageDataWithRequirements:v32 completion:v31];
  }

  if ((v5 & 4) != 0)
  {
    dispatch_group_enter(v17);
    v19 = +[VKImageDataRequirements stickerThumbnailRequirements];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __75__VKCStickerFromPKDrawing__generateStickerRepresentations_type_completion___block_invoke_2;
    v27[3] = &unk_1E7BE42F8;
    v29 = v36;
    v30 = v38;
    v28 = v17;
    [v11 vk_imageDataWithRequirements:v19 completion:v27];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__VKCStickerFromPKDrawing__generateStickerRepresentations_type_completion___block_invoke_3;
  block[3] = &unk_1E7BE4320;
  v23 = v11;
  v24 = self;
  v25 = v8;
  v26 = v38;
  v20 = v8;
  v21 = v11;
  dispatch_group_notify(v17, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

void __75__VKCStickerFromPKDrawing__generateStickerRepresentations_type_completion___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  if (a2)
  {
    v7 = MEMORY[0x1E69DD760];
    v8 = a2;
    v9 = objc_alloc_init(v7);
    [v9 setData:v8];

    [v9 setRole:*MEMORY[0x1E69DEA88]];
    v10 = [*(a1 + 32) uti];
    [v9 setType:v10];

    [v9 setSize:{a3, a4}];
    os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
    [*(*(*(a1 + 56) + 8) + 40) insertObject:v9 atIndex:0];
    os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  }

  v11 = *(a1 + 40);

  dispatch_group_leave(v11);
}

void __75__VKCStickerFromPKDrawing__generateStickerRepresentations_type_completion___block_invoke_2(void *a1, void *a2, double a3, double a4)
{
  if (a2)
  {
    v7 = MEMORY[0x1E69DD760];
    v8 = a2;
    v9 = objc_alloc_init(v7);
    [v9 setData:v8];

    [v9 setRole:*MEMORY[0x1E69DEA80]];
    v10 = +[VKImageDataRequirements stickerThumbnailRequirements];
    v11 = [v10 uti];
    [v9 setType:v11];

    [v9 setSize:{a3, a4}];
    os_unfair_lock_lock((*(a1[5] + 8) + 32));
    [*(*(a1[6] + 8) + 40) addObject:v9];
    os_unfair_lock_unlock((*(a1[5] + 8) + 32));
  }

  v12 = a1[4];

  dispatch_group_leave(v12);
}

void __75__VKCStickerFromPKDrawing__generateStickerRepresentations_type_completion___block_invoke_3(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*(a1 + 32)];
  v2 = [*(a1 + 40) currentView];
  [v2 bounds];
  [v3 setFrame:?];

  (*(*(a1 + 48) + 16))();
}

- (void)stickerPickerViewControllerDidLoad
{
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Sticker Picker Did Load from PencilKit stroke to sticker process", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__VKCStickerFromPKDrawing_stickerPickerViewControllerDidLoad__block_invoke;
  v4[3] = &unk_1E7BE4348;
  objc_copyWeak(v5, buf);
  v5[1] = 5;
  vk_dispatchMainAfterDelay(v4, 0.5);
  objc_destroyWeak(v5);
  objc_destroyWeak(buf);
}

void __61__VKCStickerFromPKDrawing_stickerPickerViewControllerDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained generateAndAddStickerRepresentations:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)generateAndAddStickerRepresentations:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(VKCStickerFromPKDrawing *)self inputImage];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__VKCStickerFromPKDrawing_generateAndAddStickerRepresentations___block_invoke;
  v6[3] = &unk_1E7BE4390;
  objc_copyWeak(&v7, &location);
  [(VKCStickerFromPKDrawing *)self _generateStickerRepresentations:v5 type:a3 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __64__VKCStickerFromPKDrawing_generateAndAddStickerRepresentations___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__VKCStickerFromPKDrawing_generateAndAddStickerRepresentations___block_invoke_cold_1(v9, v12);
    }

    goto LABEL_6;
  }

  if (WeakRetained)
  {
    v12 = [WeakRetained stickerPickerViewController];
    v13 = [v11 currentView];
    [v12 addStickerWithRepresentations:v7 previewView:v8 originatingView:v13 completion:&__block_literal_global_0];

LABEL_6:
  }
}

void __64__VKCStickerFromPKDrawing_generateAndAddStickerRepresentations___block_invoke_166(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.Stickers");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__VKCStickerFromPKDrawing_generateAndAddStickerRepresentations___block_invoke_166_cold_1(v3, v4);
    }
  }
}

- (void)setInputImage:(CGImage *)a3
{
  inputImage = self->_inputImage;
  if (inputImage != a3)
  {
    CGImageRelease(inputImage);
    self->_inputImage = a3;
    if (a3)
    {

      CGImageRetain(a3);
    }
  }
}

- (VKCStickerFromPKDrawingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __64__VKCStickerFromPKDrawing_generateAndAddStickerRepresentations___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "VKCStickerFromPKDrawing: Error createStickerRepresentations: %@", &v2, 0xCu);
}

void __64__VKCStickerFromPKDrawing_generateAndAddStickerRepresentations___block_invoke_166_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "VKCStickerFromPKDrawing: Error adding stickers with representation: %@", &v4, 0xCu);
}

@end