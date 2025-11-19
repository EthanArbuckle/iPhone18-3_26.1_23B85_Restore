@interface REImage
+ (REImage)imageWithCGImage:(CGImage *)a3 scale:(double)a4;
+ (REImage)imageWithContentsOfFileAtPath:(id)a3 scale:(double)a4;
+ (REImage)imageWithData:(id)a3 scale:(double)a4;
+ (id)imageNamed:(id)a3 inBundle:(id)a4;
- (REImage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REImage

+ (id)imageNamed:(id)a3 inBundle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RENamedImage alloc] initWithName:v6 inBundle:v5];

  return v7;
}

+ (REImage)imageWithContentsOfFileAtPath:(id)a3 scale:(double)a4
{
  v5 = a3;
  v6 = [[REFileImage alloc] initWithPath:v5 scale:a4];

  return v6;
}

+ (REImage)imageWithData:(id)a3 scale:(double)a4
{
  v5 = a3;
  v6 = [[REDataImage alloc] initWithData:v5 scale:a4];

  return v6;
}

+ (REImage)imageWithCGImage:(CGImage *)a3 scale:(double)a4
{
  v4 = [[RECGImageImage alloc] initWithImage:a3 scale:a4];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return self;
}

- (REImage)initWithCoder:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v5.receiver = self;
  v5.super_class = REImage;
  return [(REImage *)&v5 init];
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end