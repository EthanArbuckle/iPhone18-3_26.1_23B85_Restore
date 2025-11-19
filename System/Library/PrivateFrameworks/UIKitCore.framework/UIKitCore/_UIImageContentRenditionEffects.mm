@interface _UIImageContentRenditionEffects
+ (id)effectsWithTintColor:(void *)a3 visualEffects:(int)a4 drawMode:(char)a5 bold:;
@end

@implementation _UIImageContentRenditionEffects

+ (id)effectsWithTintColor:(void *)a3 visualEffects:(int)a4 drawMode:(char)a5 bold:
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  v10 = objc_opt_new();
  v11 = *(v10 + 16);
  *(v10 + 16) = v8;
  v12 = v8;

  v13 = *(v10 + 24);
  *(v10 + 24) = v9;

  *(v10 + 12) = a4;
  *(v10 + 8) = a5;

  return v10;
}

@end