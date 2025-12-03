@interface PXTCCPhotoGridView
+ (id)photoGridViewForAlertPromptWithWidth:(double)width;
+ (id)photoGridViewForSettings;
- (CGSize)_layoutItemsAndCalculateTotalSizeForTargetWidth:(double)width;
- (PXTCCPhotoGridView)initWithColumns:(int64_t)columns proposedRows:(int64_t)rows width:(double)width;
- (void)_setUpViewsWithImages:(id)images maximumItemCount:(int64_t)count;
- (void)layoutSubviews;
@end

@implementation PXTCCPhotoGridView

- (CGSize)_layoutItemsAndCalculateTotalSizeForTargetWidth:(double)width
{
  totalColumns = [(PXTCCPhotoGridView *)self totalColumns];
  totalRows = [(PXTCCPhotoGridView *)self totalRows];
  v7 = (width - (totalColumns - 1) * 2.0) / totalColumns;
  if (totalRows * totalColumns >= 1)
  {
    v8 = 0;
    do
    {
      v9 = [(NSMutableArray *)self->_imageViews objectAtIndexedSubscript:v8];
      [v9 setFrame:{(v7 + 2.0) * (v8 + -totalColumns * (v8 / totalColumns)), (v7 + 2.0) * (v8 / totalColumns), v7, v7}];

      ++v8;
    }

    while (totalRows * totalColumns != v8);
  }

  v10 = (totalRows - 1) + (totalRows - 1) + totalRows * v7;
  widthCopy = width;
  result.height = v10;
  result.width = widthCopy;
  return result;
}

- (void)_setUpViewsWithImages:(id)images maximumItemCount:(int64_t)count
{
  imagesCopy = images;
  array = [MEMORY[0x1E695DF70] array];
  imageViews = self->_imageViews;
  self->_imageViews = array;

  if (count >= 1)
  {
    v8 = 0;
    do
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      [v9 setContentMode:2];
      [v9 setClipsToBounds:1];
      v10 = [imagesCopy objectAtIndexedSubscript:v8];
      [v9 setImage:v10];

      [(PXTCCPhotoGridView *)self addSubview:v9];
      [(NSMutableArray *)self->_imageViews addObject:v9];

      ++v8;
    }

    while (count != v8);
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXTCCPhotoGridView;
  [(PXTCCPhotoGridView *)&v4 layoutSubviews];
  [(PXTCCPhotoGridView *)self frame];
  [(PXTCCPhotoGridView *)self _layoutItemsAndCalculateTotalSizeForTargetWidth:v3];
}

- (PXTCCPhotoGridView)initWithColumns:(int64_t)columns proposedRows:(int64_t)rows width:(double)width
{
  v41 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = PXTCCPhotoGridView;
  v7 = [(PXTCCPhotoGridView *)&v34 init];
  if (!v7)
  {
    goto LABEL_11;
  }

  px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v9 = [MEMORY[0x1E69C15B8] fetchCuratedAssetsForTCCWithLimit:rows * columns seed:0 library:px_systemPhotoLibrary];

  v10 = _SynchronousThumbnailImagesForAssets(v9);
  v11 = [v10 count];
  if (v11 < columns)
  {
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[PXTCCPhotoGridView initWithColumns:proposedRows:width:]";
      v13 = "%s: Not enough images to return a settings photo grid";
      v14 = v12;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 12;
LABEL_8:
      _os_log_impl(&dword_1A3C1C000, v14, v15, v13, buf, v16);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v7->_totalColumns = columns;
  v7->_totalRows = v11 / columns;
  v17 = v11 / columns * columns;
  if ([v10 count] >= v17)
  {
    Helper_x8__OBJC_CLASS___APApplication = gotLoadHelper_x8__OBJC_CLASS___APApplication(v18);
    v23 = [*(v22 + 208) applicationWithBundleIdentifier:{*MEMORY[0x1E69BFF18], Helper_x8__OBJC_CLASS___APApplication}];
    Helper_x8__OBJC_CLASS___APGuard = gotLoadHelper_x8__OBJC_CLASS___APGuard(v24);
    sharedGuard = [*(v26 + 216) sharedGuard];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __57__PXTCCPhotoGridView_initWithColumns_proposedRows_width___block_invoke;
    v30[3] = &unk_1E77411F0;
    v31 = v7;
    v32 = v10;
    v33 = v17;
    v28 = v10;
    [sharedGuard initiateAuthenticationWithShieldingForSubject:v23 completion:v30];

LABEL_11:
    v20 = v7;
    goto LABEL_12;
  }

  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v19 = [v10 count];
    *buf = 136315650;
    v36 = "[PXTCCPhotoGridView initWithColumns:proposedRows:width:]";
    v37 = 2048;
    v38 = v19;
    v39 = 2048;
    v40 = v17;
    v13 = "%s: Not enough images provided (%ld) to hit target count (%ld)";
    v14 = v12;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 32;
    goto LABEL_8;
  }

LABEL_9:

  v20 = 0;
LABEL_12:

  return v20;
}

void __57__PXTCCPhotoGridView_initWithColumns_proposedRows_width___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PXTCCPhotoGridView_initWithColumns_proposedRows_width___block_invoke_2;
    block[3] = &unk_1E7749FF8;
    v10 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11 = v6;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v8 = v10;
  }

  else
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "APGuard failed to initialize with error: %@", buf, 0xCu);
    }
  }
}

+ (id)photoGridViewForSettings
{
  v2 = [[self alloc] initWithColumns:4 proposedRows:2 width:0.0];
  [v2 _layoutItemsAndCalculateTotalSizeForTargetWidth:300.0];
  v4 = v3;
  v6 = v5;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [v2 heightAnchor];
  widthAnchor = [v2 widthAnchor];
  v9 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v6 / v4];
  [v9 setActive:1];

  return v2;
}

+ (id)photoGridViewForAlertPromptWithWidth:(double)width
{
  v4 = [[self alloc] initWithColumns:4 proposedRows:2 width:width];
  [v4 _layoutItemsAndCalculateTotalSizeForTargetWidth:width];
  [v4 setBounds:{0.0, 0.0, v5, v6}];

  return v4;
}

@end