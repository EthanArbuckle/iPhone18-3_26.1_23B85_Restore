@interface TSUUIImage
+ (id)imageNamed:(id)named inBundle:(id)bundle;
- (CGSize)size;
- (TSUUIImage)initWithContentsOfFile:(id)file;
- (TSUUIImage)initWithData:(id)data;
- (TSUUIImage)initWithUIImage:(id)image;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation TSUUIImage

+ (id)imageNamed:(id)named inBundle:(id)bundle
{
  v6 = [self alloc];
  v7 = [v6 initWithUIImage:{objc_msgSend(MEMORY[0x277D755B8], "imageNamed:inBundle:compatibleWithTraitCollection:", named, bundle, objc_msgSend(objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), "traitCollection"))}];

  return v7;
}

- (TSUUIImage)initWithUIImage:(id)image
{
  v7.receiver = self;
  v7.super_class = TSUUIImage;
  v4 = [(TSUImage *)&v7 init];
  if (v4)
  {
    imageCopy = image;
    v4->mUIImage = imageCopy;
    if (!imageCopy)
    {

      return 0;
    }
  }

  return v4;
}

- (TSUUIImage)initWithData:(id)data
{
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:data];

  return [(TSUUIImage *)self initWithUIImage:v4];
}

- (TSUUIImage)initWithContentsOfFile:(id)file
{
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:file];

  return [(TSUUIImage *)self initWithUIImage:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mUIImage = self->mUIImage;

  return [v4 initWithUIImage:mUIImage];
}

- (void)dealloc
{
  self->mUIImage = 0;
  v3.receiver = self;
  v3.super_class = TSUUIImage;
  [(TSUImage *)&v3 dealloc];
}

- (CGSize)size
{
  [self->mUIImage size];
  result.height = v3;
  result.width = v2;
  return result;
}

@end