@interface _UILayoutSupportConstraint
+ (id)classFallbacksForKeyedArchiver;
@end

@implementation _UILayoutSupportConstraint

+ (id)classFallbacksForKeyedArchiver
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v4[0] = NSStringFromClass(v2);
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
}

@end