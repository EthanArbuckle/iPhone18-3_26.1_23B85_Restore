@interface _UISceneOcclusionExtension
+ (id)hostComponents;
+ (id)settingsExtensions;
@end

@implementation _UISceneOcclusionExtension

+ (id)hostComponents
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)settingsExtensions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = [MEMORY[0x1E699FC88] extensionForProtocol:&unk_1F016DEF0];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end