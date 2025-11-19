@interface KNClassicStylesheetRecordReferenceWrapper
+ (BOOL)allowUnarchivingObjectClass:(Class)a3;
@end

@implementation KNClassicStylesheetRecordReferenceWrapper

+ (BOOL)allowUnarchivingObjectClass:(Class)a3
{
  v4 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(a3, v5, v4))
  {
    return 1;
  }

  v8 = objc_opt_class();

  return objc_msgSend_isSubclassOfClass_(a3, v7, v8);
}

@end