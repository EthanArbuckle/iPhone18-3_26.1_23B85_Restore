@interface NSObject(PXAssertAdditions)
+ (id)px_descriptionForAssertionMessage;
- (id)px_descriptionForAssertionMessage;
@end

@implementation NSObject(PXAssertAdditions)

- (id)px_descriptionForAssertionMessage
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: %p>", v4, self];

  return v5;
}

+ (id)px_descriptionForAssertionMessage
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromClass(self);
  v3 = [v1 stringWithFormat:@"<%@>", v2];

  return v3;
}

@end