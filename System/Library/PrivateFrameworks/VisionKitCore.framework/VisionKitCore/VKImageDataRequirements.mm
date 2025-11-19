@interface VKImageDataRequirements
+ (VKImageDataRequirements)stickerRequirements;
+ (VKImageDataRequirements)stickerThumbnailRequirements;
@end

@implementation VKImageDataRequirements

+ (VKImageDataRequirements)stickerRequirements
{
  v2 = objc_alloc_init(VKImageDataRequirements);
  v3 = [*MEMORY[0x1E6982E00] identifier];
  [(VKImageDataRequirements *)v2 setUti:v3];

  [(VKImageDataRequirements *)v2 setMaxLength:900];
  [(VKImageDataRequirements *)v2 setMinLength:300];
  [(VKImageDataRequirements *)v2 setMaxDataLength:500000];

  return v2;
}

+ (VKImageDataRequirements)stickerThumbnailRequirements
{
  v2 = objc_alloc_init(VKImageDataRequirements);
  v3 = [*MEMORY[0x1E6982F28] identifier];
  [(VKImageDataRequirements *)v2 setUti:v3];

  [(VKImageDataRequirements *)v2 setMaxLength:100];
  [(VKImageDataRequirements *)v2 setMinLength:50];
  [(VKImageDataRequirements *)v2 setMaxDataLength:500000];

  return v2;
}

@end