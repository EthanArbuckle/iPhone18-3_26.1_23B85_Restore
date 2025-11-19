@interface PXAssetEntityEditResourceLoader
- (_TtC12PhotosUICore31PXAssetEntityEditResourceLoader)init;
- (void)resourceLoader:(id)a3 request:(id)a4 didCompleteWithResult:(id)a5;
- (void)resourceLoader:(id)a3 request:(id)a4 mediaLoadDidFailWithError:(id)a5;
@end

@implementation PXAssetEntityEditResourceLoader

- (void)resourceLoader:(id)a3 request:(id)a4 mediaLoadDidFailWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_1A4A52148(v11);
}

- (void)resourceLoader:(id)a3 request:(id)a4 didCompleteWithResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1A4A52430(v10);
}

- (_TtC12PhotosUICore31PXAssetEntityEditResourceLoader)init
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_results) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_resourceLoader) = v4;
  v5 = OBJC_IVAR____TtC12PhotosUICore31PXAssetEntityEditResourceLoader_continuation;
  sub_1A4A520AC();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(PXAssetEntityEditResourceLoader *)&v8 init];
}

@end