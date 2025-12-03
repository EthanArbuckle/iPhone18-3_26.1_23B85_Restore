@interface _UIImageContentRenditionEffects
+ (id)effectsWithTintColor:(void *)color visualEffects:(int)effects drawMode:(char)mode bold:;
@end

@implementation _UIImageContentRenditionEffects

+ (id)effectsWithTintColor:(void *)color visualEffects:(int)effects drawMode:(char)mode bold:
{
  v8 = a2;
  colorCopy = color;
  objc_opt_self();
  v10 = objc_opt_new();
  v11 = *(v10 + 16);
  *(v10 + 16) = v8;
  v12 = v8;

  v13 = *(v10 + 24);
  *(v10 + 24) = colorCopy;

  *(v10 + 12) = effects;
  *(v10 + 8) = mode;

  return v10;
}

@end