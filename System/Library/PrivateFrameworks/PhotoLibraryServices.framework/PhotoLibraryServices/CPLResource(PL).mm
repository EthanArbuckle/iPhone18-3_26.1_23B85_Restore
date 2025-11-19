@interface CPLResource(PL)
+ (id)imageDerivativeTypes;
+ (id)videoDerivativeTypes;
- (uint64_t)deleteAfterUpload;
- (void)setDeleteAfterUpload:()PL;
@end

@implementation CPLResource(PL)

- (uint64_t)deleteAfterUpload
{
  v1 = objc_getAssociatedObject(a1, @"deleteAfterUpload");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setDeleteAfterUpload:()PL
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, @"deleteAfterUpload", v2, 1);
}

+ (id)imageDerivativeTypes
{
  if (imageDerivativeTypes_s_onceToken != -1)
  {
    dispatch_once(&imageDerivativeTypes_s_onceToken, &__block_literal_global_9);
  }

  v1 = imageDerivativeTypes_s_types;

  return v1;
}

+ (id)videoDerivativeTypes
{
  if (videoDerivativeTypes_s_onceToken != -1)
  {
    dispatch_once(&videoDerivativeTypes_s_onceToken, &__block_literal_global_75614);
  }

  v1 = videoDerivativeTypes_s_types;

  return v1;
}

@end