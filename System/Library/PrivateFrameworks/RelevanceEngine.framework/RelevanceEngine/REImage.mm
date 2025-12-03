@interface REImage
+ (REImage)imageWithCGImage:(CGImage *)image scale:(double)scale;
+ (REImage)imageWithContentsOfFileAtPath:(id)path scale:(double)scale;
+ (REImage)imageWithData:(id)data scale:(double)scale;
+ (id)imageNamed:(id)named inBundle:(id)bundle;
- (REImage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REImage

+ (id)imageNamed:(id)named inBundle:(id)bundle
{
  bundleCopy = bundle;
  namedCopy = named;
  v7 = [[RENamedImage alloc] initWithName:namedCopy inBundle:bundleCopy];

  return v7;
}

+ (REImage)imageWithContentsOfFileAtPath:(id)path scale:(double)scale
{
  pathCopy = path;
  v6 = [[REFileImage alloc] initWithPath:pathCopy scale:scale];

  return v6;
}

+ (REImage)imageWithData:(id)data scale:(double)scale
{
  dataCopy = data;
  v6 = [[REDataImage alloc] initWithData:dataCopy scale:scale];

  return v6;
}

+ (REImage)imageWithCGImage:(CGImage *)image scale:(double)scale
{
  v4 = [[RECGImageImage alloc] initWithImage:image scale:scale];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return self;
}

- (REImage)initWithCoder:(id)coder
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v5.receiver = self;
  v5.super_class = REImage;
  return [(REImage *)&v5 init];
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end