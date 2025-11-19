@interface VUWGalleryContext
- (VUWGalleryContext)init;
- (VUWGalleryContext)initWithMoment:(id)a3 asset:(id)a4 source:(int64_t)a5;
@end

@implementation VUWGalleryContext

- (VUWGalleryContext)initWithMoment:(id)a3 asset:(id)a4 source:(int64_t)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  if (a3)
  {
    sub_1D225054C();
    v14 = sub_1D225055C();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_1D225055C();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (a4)
  {
    sub_1D225054C();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1D225055C();
  (*(*(v17 - 8) + 56))(v11, v16, 1, v17);
  return VUWGalleryContext.init(moment:asset:source:)(v13, v11, a5);
}

- (VUWGalleryContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end