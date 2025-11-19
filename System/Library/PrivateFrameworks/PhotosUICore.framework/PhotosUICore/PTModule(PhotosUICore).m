@interface PTModule(PhotosUICore)
+ (id)px_restoreDefaultsSection;
@end

@implementation PTModule(PhotosUICore)

+ (id)px_restoreDefaultsSection
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69C6638];
  v1 = MEMORY[0x1E69C65E8];
  v2 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v3 = [v1 rowWithTitle:@"Restore Defaults" action:v2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v0 sectionWithRows:v4];

  return v5;
}

@end