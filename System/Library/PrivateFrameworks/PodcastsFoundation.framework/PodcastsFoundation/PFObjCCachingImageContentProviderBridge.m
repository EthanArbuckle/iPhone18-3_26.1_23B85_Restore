@interface PFObjCCachingImageContentProviderBridge
+ (id)extensionBridge;
- (PFObjCCachingImageContentProviderBridge)init;
- (void)artworkForPodcast:(MTPodcast *)a3 size:(CGSize)a4 completionHandler:(id)a5;
@end

@implementation PFObjCCachingImageContentProviderBridge

+ (id)extensionBridge
{
  v2 = type metadata accessor for CachingImageContentProvider();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD60B8 != -1)
  {
    v12 = v4;
    swift_once();
    v4 = v12;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EDCD60C0);
  sub_1D8E57C3C(v7, v6);
  v8 = type metadata accessor for ObjCCachingImageContentProviderBridge();
  v9 = objc_allocWithZone(v8);
  sub_1D8E57C3C(v6, v9 + OBJC_IVAR___PFObjCCachingImageContentProviderBridge_imageContentProvider);
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  sub_1D8E596E4(v6, type metadata accessor for CachingImageContentProvider);

  return v10;
}

- (void)artworkForPodcast:(MTPodcast *)a3 size:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  v15[3] = width;
  v15[4] = height;
  *(v15 + 5) = v14;
  *(v15 + 6) = self;
  v16 = sub_1D917886C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D918B970;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D918B978;
  v18[5] = v17;
  v19 = a3;
  v20 = self;
  sub_1D901312C(0, 0, v13, &unk_1D918B980, v18);
}

- (PFObjCCachingImageContentProviderBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end