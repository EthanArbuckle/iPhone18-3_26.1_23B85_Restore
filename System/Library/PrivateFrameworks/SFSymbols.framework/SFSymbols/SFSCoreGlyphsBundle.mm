@interface SFSCoreGlyphsBundle
+ (NSBundle)private;
+ (NSBundle)public;
@end

@implementation SFSCoreGlyphsBundle

void __29__SFSCoreGlyphsBundle_public__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v0 pathForResource:@"CoreGlyphs" ofType:@"bundle"];

  v1 = v3;
  if (v3)
  {
    v1 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v3];
  }

  v2 = public_publicBundle;
  public_publicBundle = v1;
}

+ (NSBundle)public
{
  if (public_once != -1)
  {
    +[SFSCoreGlyphsBundle public];
  }

  v3 = public_publicBundle;

  return v3;
}

+ (NSBundle)private
{
  if (private_once != -1)
  {
    +[SFSCoreGlyphsBundle private];
  }

  v3 = private_privateBundle;

  return v3;
}

void __30__SFSCoreGlyphsBundle_private__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v0 pathForResource:@"CoreGlyphsPrivate" ofType:@"bundle"];

  v1 = v3;
  if (v3)
  {
    v1 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithPath:v3];
  }

  v2 = private_privateBundle;
  private_privateBundle = v1;
}

@end