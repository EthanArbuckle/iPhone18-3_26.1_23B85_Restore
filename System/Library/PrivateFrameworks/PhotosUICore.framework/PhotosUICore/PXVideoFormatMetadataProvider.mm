@interface PXVideoFormatMetadataProvider
- (_TtC12PhotosUICore29PXVideoFormatMetadataProvider)init;
- (_TtC12PhotosUICore29PXVideoFormatMetadataProvider)initWithImageManager:(id)manager;
- (void)cancelActiveRequest;
- (void)requestVideoMetadataFor:(id)for processingQueue:(id)queue callbackQueue:(id)callbackQueue completion:(id)completion;
@end

@implementation PXVideoFormatMetadataProvider

- (_TtC12PhotosUICore29PXVideoFormatMetadataProvider)initWithImageManager:(id)manager
{
  v4 = self + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID;
  *v4 = 0;
  v4[4] = 1;
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_imageManager) = manager;
  *v4 = 0;
  v4[4] = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXVideoFormatMetadataProvider();
  managerCopy = manager;
  return [(PXVideoFormatMetadataProvider *)&v7 init];
}

- (void)cancelActiveRequest
{
  if ((*(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID + 4) & 1) == 0)
  {
    [*(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_imageManager) cancelImageRequest_];
  }
}

- (void)requestVideoMetadataFor:(id)for processingQueue:(id)queue callbackQueue:(id)callbackQueue completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1A42A5648;
  *(v12 + 24) = v11;
  v13 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x88);
  swift_unknownObjectRetain();
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  selfCopy = self;

  v13(for, queueCopy, callbackQueueCopy, sub_1A4426BD8, v12);

  swift_unknownObjectRelease();
}

- (_TtC12PhotosUICore29PXVideoFormatMetadataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end