@interface ConcretePhotoLibraryObservation
- (_TtC12PhotosUICoreP33_91D29F4F2DBCF944653069752757388131ConcretePhotoLibraryObservation)init;
- (id)prepareForPhotoLibraryChange:(id)change;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info;
@end

@implementation ConcretePhotoLibraryObservation

- (id)prepareForPhotoLibraryChange:(id)change
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_91D29F4F2DBCF944653069752757388131ConcretePhotoLibraryObservation_prepareBlock);
  if (v3 && (v5 = change, v6 = self, v7 = v3(v5), v5, v6, v7))
  {
    v8 = sub_1A524C3D4();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue withPreparedInfo:(id)info
{
  if (info)
  {
    v6 = sub_1A524C3E4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1A524CC54();
  MEMORY[0x1EEE9AC00](v7);
  v10[2] = self;
  v10[3] = queue;
  v10[4] = v6;
  queueCopy = queue;
  selfCopy = self;
  sub_1A3C67884(sub_1A3FDA0C8, v10);
}

- (_TtC12PhotosUICoreP33_91D29F4F2DBCF944653069752757388131ConcretePhotoLibraryObservation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end