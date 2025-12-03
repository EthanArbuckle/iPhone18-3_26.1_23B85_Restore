@interface ICSDefaultIconLoader
+ (id)graphicIconWithType:(int64_t)type size:(CGSize)size;
+ (id)tableIconWithType:(int64_t)type;
- (ICSDefaultIconLoader)init;
@end

@implementation ICSDefaultIconLoader

+ (id)tableIconWithType:(int64_t)type
{
  v3 = _s14iCloudSettings17DefaultIconLoaderC05tableD04typeSo7UIImageCSgAA16ICSIconUTTypeKeyO_tFZ_0(type);

  return v3;
}

+ (id)graphicIconWithType:(int64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = ICSIconUTTypeKey.utType.getter(type);
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