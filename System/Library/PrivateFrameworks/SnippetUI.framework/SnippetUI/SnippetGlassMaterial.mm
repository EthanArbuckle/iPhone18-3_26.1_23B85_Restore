@interface SnippetGlassMaterial
+ (id)snippetGlassButtonConfigurationWithTint:(id)a3;
@end

@implementation SnippetGlassMaterial

+ (id)snippetGlassButtonConfigurationWithTint:(id)a3
{
  v4 = sub_26A852048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  static SnippetGlassMaterial.buttonConfiguration(using:)(a3);

  v9 = sub_26A852028();
  (*(v5 + 8))(v7, v4);

  return v9;
}

@end