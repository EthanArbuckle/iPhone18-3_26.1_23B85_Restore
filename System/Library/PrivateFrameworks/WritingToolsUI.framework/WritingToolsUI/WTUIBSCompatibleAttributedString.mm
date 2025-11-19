@interface WTUIBSCompatibleAttributedString
+ (id)allowedClasses;
@end

@implementation WTUIBSCompatibleAttributedString

+ (id)allowedClasses
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___WTUIBSCompatibleAttributedString;
  v2 = objc_msgSendSuper2(&v10, sel_allowedClasses);
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  v8 = [v2 setByAddingObjectsFromSet:v7];

  return v8;
}

@end