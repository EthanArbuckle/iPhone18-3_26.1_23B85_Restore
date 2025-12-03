@interface TSDCaptionReferenceWrapper
+ (BOOL)allowUnarchivingObjectClass:(Class)class;
@end

@implementation TSDCaptionReferenceWrapper

+ (BOOL)allowUnarchivingObjectClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 1;
  }

  v5 = objc_opt_class();

  return objc_msgSend_isSubclassOfClass_(class, v4, v5);
}

@end