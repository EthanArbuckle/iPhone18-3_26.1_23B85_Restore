@interface PRAutocorrectionContext
+ (id)autocorrectionContextOfType:(unint64_t)a3;
@end

@implementation PRAutocorrectionContext

+ (id)autocorrectionContextOfType:(unint64_t)a3
{
  if (a3 - 2 > 2)
  {
    return 0;
  }

  v4 = objc_alloc_init(*off_1E840F2D8[a3 - 2]);

  return v4;
}

@end