@interface SearchAssetUUIDsValidator
- (_TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator)init;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
@end

@implementation SearchAssetUUIDsValidator

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A43F54FC(v4);

  if (v6)
  {
    v7 = sub_1A524C3D4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  if (a4)
  {
    v6 = sub_1A524C3E4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_1A43F5CA4(v6);
}

- (_TtC12PhotosUICoreP33_2FBF52365A1D24C5F1D36119D5560C9725SearchAssetUUIDsValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end