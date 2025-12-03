@interface PRAutocorrectionContext
+ (id)autocorrectionContextOfType:(unint64_t)type;
@end

@implementation PRAutocorrectionContext

+ (id)autocorrectionContextOfType:(unint64_t)type
{
  if (type - 2 > 2)
  {
    return 0;
  }

  v4 = objc_alloc_init(*off_1E840F2D8[type - 2]);

  return v4;
}

@end