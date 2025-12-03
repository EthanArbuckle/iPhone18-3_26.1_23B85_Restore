@interface KNClassicStylesheetRecordReferenceWrapper
+ (BOOL)allowUnarchivingObjectClass:(Class)class;
@end

@implementation KNClassicStylesheetRecordReferenceWrapper

+ (BOOL)allowUnarchivingObjectClass:(Class)class
{
  v4 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(class, v5, v4))
  {
    return 1;
  }

  v8 = objc_opt_class();

  return objc_msgSend_isSubclassOfClass_(class, v7, v8);
}

@end