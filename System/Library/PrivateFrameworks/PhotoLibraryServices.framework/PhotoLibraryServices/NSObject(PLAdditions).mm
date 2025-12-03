@interface NSObject(PLAdditions)
- (id)pl_briefDescription;
@end

@implementation NSObject(PLAdditions)

- (id)pl_briefDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: %p>", v4, self];

  return v5;
}

@end