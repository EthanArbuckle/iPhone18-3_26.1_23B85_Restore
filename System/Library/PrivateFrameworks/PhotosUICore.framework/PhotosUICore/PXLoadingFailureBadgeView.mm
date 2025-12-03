@interface PXLoadingFailureBadgeView
+ (CGSize)sizeForSizeClass:(int64_t)class;
+ (id)_imageForSizeClass:(int64_t)class;
+ (int64_t)_sizeClassForSize:(CGSize)size;
- (PXLoadingFailureBadgeView)initWithCoder:(id)coder;
- (PXLoadingFailureBadgeView)initWithFrame:(CGRect)frame error:(id)error;
- (UIImageView)imageView;
- (void)_handlePrimaryAction;
- (void)_handleTap:(id)tap;
- (void)_installGestureRecognizers;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setSizeClass:(int64_t)class;
@end

@implementation PXLoadingFailureBadgeView

- (void)_handlePrimaryAction
{
  v11[1] = *MEMORY[0x1E69E9840];
  error = [(PXLoadingFailureBadgeView *)self error];
  v3 = error;
  if (error)
  {
    v4 = error;
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

- (void)_handleTap:(id)tap
{
  if ([tap state] == 3)
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

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_image, image);
    imageView = [(PXLoadingFailureBadgeView *)self imageView];
    [imageView setImage:v7];

    imageCopy = v7;
  }
}

- (void)setSizeClass:(int64_t)class
{
  if (self->_sizeClass != class)
  {
    self->_sizeClass = class;
    v5 = [objc_opt_class() _imageForSizeClass:class];
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
  imageView = [(PXLoadingFailureBadgeView *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

- (PXLoadingFailureBadgeView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLoadingFailureBadgeView.m" lineNumber:60 description:{@"%s is not available as initializer", "-[PXLoadingFailureBadgeView initWithCoder:]"}];

  abort();
}

- (PXLoadingFailureBadgeView)initWithFrame:(CGRect)frame error:(id)error
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = PXLoadingFailureBadgeView;
  height = [(PXLoadingFailureBadgeView *)&v14 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [errorCopy copy];
    error = height->_error;
    height->_error = v11;
  }

  return height;
}

+ (id)_imageForSizeClass:(int64_t)class
{
  v6 = *MEMORY[0x1E69E9840];
  switch(class)
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

+ (int64_t)_sizeClassForSize:(CGSize)size
{
  width = size.width;
  [self sizeForSizeClass:{2, size.width, size.height}];
  if (width < v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (CGSize)sizeForSizeClass:(int64_t)class
{
  v5 = *MEMORY[0x1E69E9840];
  if (class == 1)
  {
    v3 = 22.0;
    v4 = 22.0;
  }

  else
  {
    if (class != 2)
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