@interface _UISceneRelationshipManagementExtension
+ (id)hostComponents;
@end

@implementation _UISceneRelationshipManagementExtension

+ (id)hostComponents
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end