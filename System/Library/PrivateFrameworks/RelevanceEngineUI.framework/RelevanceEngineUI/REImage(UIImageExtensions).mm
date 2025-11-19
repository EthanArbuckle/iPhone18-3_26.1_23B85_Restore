@interface REImage(UIImageExtensions)
+ (REImageImage)imageWithImage:()UIImageExtensions;
- (id)image;
@end

@implementation REImage(UIImageExtensions)

+ (REImageImage)imageWithImage:()UIImageExtensions
{
  v3 = a3;
  v4 = [[REImageImage alloc] initWithImage:v3];

  return v4;
}

- (id)image
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v0 = objc_alloc_init(MEMORY[0x277D755B8]);

  return v0;
}

@end