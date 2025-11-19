@interface UIApplicationAssertForExtensionType
@end

@implementation UIApplicationAssertForExtensionType

void ___UIApplicationAssertForExtensionType_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v4 = [v1 objectForKey:@"NSExtension"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v4 objectForKey:@"NSExtensionPointIdentifier"];
    v3 = qword_1EA992E90;
    qword_1EA992E90 = v2;
  }
}

@end