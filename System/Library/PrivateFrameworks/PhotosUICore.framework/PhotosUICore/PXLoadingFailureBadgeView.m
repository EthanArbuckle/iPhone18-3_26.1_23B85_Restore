@interface PXLoadingFailureBadgeView
+ (CGSize)sizeForSizeClass:(int64_t)a3;
+ (id)_imageForSizeClass:(int64_t)a3;
+ (int64_t)_sizeClassForSize:(CGSize)a3;
- (PXLoadingFailureBadgeView)initWithCoder:(id)a3;
- (PXLoadingFailureBadgeView)initWithFrame:(CGRect)a3 error:(id)a4;
- (UIImageView)imageView;
- (void)_handlePrimaryAction;
- (void)_handleTap:(id)a3;
- (void)_installGestureRecognizers;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setSizeClass:(int64_t)a3;
@end

@implementation PXLoadingFailureBadgeView

- (void)_handlePrimaryAction
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(PXLoadingFailureBadgeView *)self error];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *off_1E7721FC0;
    v10 = *MEMORY[0x1E696A578];
    v7 = PXLocalizedStringFromTable(@"PXDisplayAssetViewGenericErrorMessage", @"PhotosUICore");
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v4 = [v5 errorWithDomain:v6 code:-1 userInfo:v8];
  }

  v9 = [off_1E7721438 showForError:v4];
}

- (void)_handleTap:(id)a3
{
  if ([a3 state] == 3)
  {

    [(PXLoadingFailureBadgeView *)self _handlePrimaryAction];
  }
}

- (void)_installGestureRecognizers
{
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [(PXLoadingFailureBadgeView *)self addGestureRecognizer:v3];
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_imageView;
    self->_imageView = v4;

    [(PXLoadingFailureBadgeView *)self addSubview:self->_imageView];
    [(PXLoadingFailureBadgeView *)self _installGestureRecognizers];
    imageView = self->_imageView;
  }

  return imageView;
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_image, a3);
    v6 = [(PXLoadingFailureBadgeView *)self imageView];
    [v6 setImage:v7];

    v5 = v7;
  }
}

- (void)setSizeClass:(int64_t)a3
{
  if (self->_sizeClass != a3)
  {
    self->_sizeClass = a3;
    v5 = [objc_opt_class() _imageForSizeClass:a3];
    [(PXLoadingFailureBadgeView *)self setImage:v5];
  }
}

- (void)layoutSubviews
{
  [(PXLoadingFailureBadgeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  -[PXLoadingFailureBadgeView setSizeClass:](self, "setSizeClass:", [objc_opt_class() _sizeClassForSize:{v7, v9}]);
  v11 = [(PXLoadingFailureBadgeView *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (PXLoadingFailureBadgeView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXLoadingFailureBadgeView.m" lineNumber:60 description:{@"%s is not available as initializer", "-[PXLoadingFailureBadgeView initWithCoder:]"}];

  abort();
}

- (PXLoadingFailureBadgeView)initWithFrame:(CGRect)a3 error:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PXLoadingFailureBadgeView;
  v10 = [(PXLoadingFailureBadgeView *)&v14 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [v9 copy];
    error = v10->_error;
    v10->_error = v11;
  }

  return v10;
}

+ (id)_imageForSizeClass:(int64_t)a3
{
  v6 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 2:
      v3 = @"PXLoadingErrorRegular";
      break;
    case 1:
      v3 = @"PXLoadingErrorCompact";
      break;
    case 0:
      PXAssertGetLog();
    default:
      v3 = 0;
      break;
  }

  v4 = [MEMORY[0x1E69DCAB8] px_imageNamed:v3];

  return v4;
}

+ (int64_t)_sizeClassForSize:(CGSize)a3
{
  width = a3.width;
  [a1 sizeForSizeClass:{2, a3.width, a3.height}];
  if (width < v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (CGSize)sizeForSizeClass:(int64_t)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v3 = 22.0;
    v4 = 22.0;
  }

  else
  {
    if (a3 != 2)
    {
      PXAssertGetLog();
    }

    v3 = 33.0;
    v4 = 33.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

@end