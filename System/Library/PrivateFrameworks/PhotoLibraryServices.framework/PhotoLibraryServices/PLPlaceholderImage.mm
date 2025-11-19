@interface PLPlaceholderImage
+ (id)sharedManager;
- (CGImage)newPlaceholderImageWithSize:(CGSize)a3;
- (PLPlaceholderImage)init;
@end

@implementation PLPlaceholderImage

- (CGImage)newPlaceholderImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = DCIM_resolvedPlaceholderImageColor();
  v7 = MEMORY[0x1E696AEC0];
  v14.width = width;
  v14.height = height;
  v8 = NSStringFromSize(v14);
  v9 = [v7 stringWithFormat:@"%@~%lu", v8, objc_msgSend(v6, "hash")];

  v10 = [(NSCache *)self->_dumbCache objectForKey:v9];
  if (!v10)
  {
    v11 = DCIM_imageWithColor();
    if (!v11)
    {
      v12 = 0;
      goto LABEL_5;
    }

    v10 = v11;
    [(NSCache *)self->_dumbCache setObject:v11 forKey:v9];
  }

  v12 = DCIM_CGImageRefFromPLImage();
  CGImageRetain(v12);

LABEL_5:
  return v12;
}

- (PLPlaceholderImage)init
{
  v6.receiver = self;
  v6.super_class = PLPlaceholderImage;
  v2 = [(PLPlaceholderImage *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    dumbCache = v2->_dumbCache;
    v2->_dumbCache = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_85141 != -1)
  {
    dispatch_once(&sharedManager_onceToken_85141, &__block_literal_global_85142);
  }

  v3 = sharedManager_placeholderMaker;

  return v3;
}

void __35__PLPlaceholderImage_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(PLPlaceholderImage);
  v1 = sharedManager_placeholderMaker;
  sharedManager_placeholderMaker = v0;
}

@end