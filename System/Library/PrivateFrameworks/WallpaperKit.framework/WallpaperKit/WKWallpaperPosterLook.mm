@interface WKWallpaperPosterLook
- (_TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook)init;
- (_TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook)initWithDisplayName:(id)name;
- (_TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook)initWithIdentifier:(id)identifier displayName:(id)name;
@end

@implementation WKWallpaperPosterLook

- (_TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook)initWithIdentifier:(id)identifier displayName:(id)name
{
  ObjectType = swift_getObjectType();
  v6 = sub_1E4AAA8A0();
  v8 = v7;
  v9 = sub_1E4AAA8A0();
  v10 = (self + OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_identifier);
  *v10 = v6;
  v10[1] = v8;
  v11 = (self + OBJC_IVAR____TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook_displayName);
  *v11 = v9;
  v11[1] = v12;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(WKWallpaperPosterLook *)&v14 init];
}

- (_TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook)initWithDisplayName:(id)name
{
  v5 = sub_1E4AAA030();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  nameCopy = name;
  sub_1E4AAA020();
  sub_1E4AA9FF0();
  (*(v6 + 8))(v9, v5);
  v11 = sub_1E4AAA870();

  v12 = [(WKWallpaperPosterLook *)self initWithIdentifier:v11 displayName:nameCopy];

  return v12;
}

- (_TtC12WallpaperKitP33_EFDDAE94C6722FEA4441550D18B5A9BD21WKWallpaperPosterLook)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end