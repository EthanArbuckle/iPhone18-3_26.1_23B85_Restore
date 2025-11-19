@interface TSDCaptionReferenceWrapper
+ (BOOL)allowUnarchivingObjectClass:(Class)a3;
@end

@implementation TSDCaptionReferenceWrapper

+ (BOOL)allowUnarchivingObjectClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return 1;
  }

  v5 = objc_opt_class();

  return objc_msgSend_isSubclassOfClass_(a3, v4, v5);
}

@end