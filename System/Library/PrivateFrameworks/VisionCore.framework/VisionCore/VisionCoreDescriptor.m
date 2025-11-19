@interface VisionCoreDescriptor
- (id)description;
@end

@implementation VisionCoreDescriptor

- (id)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 initWithFormat:@"%@", v4];

  return v5;
}

@end