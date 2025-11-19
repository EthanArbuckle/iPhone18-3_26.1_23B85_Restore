@interface TSUUIImage
+ (id)imageNamed:(id)a3 inBundle:(id)a4;
- (CGSize)size;
- (TSUUIImage)initWithContentsOfFile:(id)a3;
- (TSUUIImage)initWithData:(id)a3;
- (TSUUIImage)initWithUIImage:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TSUUIImage

+ (id)imageNamed:(id)a3 inBundle:(id)a4
{
  v6 = [a1 alloc];
  v7 = [v6 initWithUIImage:{objc_msgSend(MEMORY[0x277D755B8], "imageNamed:inBundle:compatibleWithTraitCollection:", a3, a4, objc_msgSend(objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), "traitCollection"))}];

  return v7;
}

- (TSUUIImage)initWithUIImage:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSUUIImage;
  v4 = [(TSUImage *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->mUIImage = v5;
    if (!v5)
    {

      return 0;
    }
  }

  return v4;
}

- (TSUUIImage)initWithData:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:a3];

  return [(TSUUIImage *)self initWithUIImage:v4];
}

- (TSUUIImage)initWithContentsOfFile:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:a3];

  return [(TSUUIImage *)self initWithUIImage:v4];
}

- (id)copyWithZone:(_NSZone *)a3
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