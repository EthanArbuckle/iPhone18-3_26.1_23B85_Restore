@interface PXAssetEntityEditResourceLoader
- (_TtC12PhotosUICore31PXAssetEntityEditResourceLoader)init;
- (void)resourceLoader:(id)loader request:(id)request didCompleteWithResult:(id)result;
- (void)resourceLoader:(id)loader request:(id)request mediaLoadDidFailWithError:(id)error;
@end

@implementation PXAssetEntityEditResourceLoader

- (void)resourceLoader:(id)loader request:(id)request mediaLoadDidFailWithError:(id)error
{
  loaderCopy = loader;
  requestCopy = request;
  errorCopy = error;
  selfCopy = self;
  sub_1A4A52148(errorCopy);
}

- (void)resourceLoader:(id)loader request:(id)request didCompleteWithResult:(id)result
{
  loaderCopy = loader;
  requestCopy = request;
  resultCopy = result;
  selfCopy = self;
  sub_1A4A52430(resultCopy);
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