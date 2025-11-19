@interface ICSDefaultIconLoader
+ (id)graphicIconWithType:(int64_t)a3 size:(CGSize)a4;
+ (id)tableIconWithType:(int64_t)a3;
- (ICSDefaultIconLoader)init;
@end

@implementation ICSDefaultIconLoader

+ (id)tableIconWithType:(int64_t)a3
{
  v3 = _s14iCloudSettings17DefaultIconLoaderC05tableD04typeSo7UIImageCSgAA16ICSIconUTTypeKeyO_tFZ_0(a3);

  return v3;
}

+ (id)graphicIconWithType:(int64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = ICSIconUTTypeKey.utType.getter(a3);
  v8 = _s14iCloudSettings17DefaultIconLoaderC07graphicD010identifier4sizeSo7UIImageCSgSS_So6CGSizeVtFZ_0(v6, v7, width, height);

  return v8;
}

- (ICSDefaultIconLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end