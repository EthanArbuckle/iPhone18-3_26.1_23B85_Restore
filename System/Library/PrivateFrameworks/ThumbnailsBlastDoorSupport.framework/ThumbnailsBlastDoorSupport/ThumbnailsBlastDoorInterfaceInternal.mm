@interface ThumbnailsBlastDoorInterfaceInternal
- (id)generateImageThumbnailForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
@end

@implementation ThumbnailsBlastDoorInterfaceInternal

- (id)generateImageThumbnailForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  v9 = sub_29EC29BEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8]();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EC29BCC();
  selfCopy = self;
  v15 = sub_29EC289D0(v13, dimension, scale);
  (*(v10 + 8))(v13, v9);

  return v15;
}

- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  v10 = sub_29EC29BEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8]();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  sub_29EC29BCC();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  selfCopy = self;
  sub_29EC291AC(dimension, v14, sub_29EC29B44, v16);

  (*(v11 + 8))(v14, v10);
}

@end