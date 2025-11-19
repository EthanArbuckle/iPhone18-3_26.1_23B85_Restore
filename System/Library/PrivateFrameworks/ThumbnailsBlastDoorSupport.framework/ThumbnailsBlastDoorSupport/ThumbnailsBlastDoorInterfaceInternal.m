@interface ThumbnailsBlastDoorInterfaceInternal
- (id)generateImageThumbnailForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7;
@end

@implementation ThumbnailsBlastDoorInterfaceInternal

- (id)generateImageThumbnailForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v9 = sub_29EC29BEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8]();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EC29BCC();
  v14 = self;
  v15 = sub_29EC289D0(v13, a4, a5);
  (*(v10 + 8))(v13, v9);

  return v15;
}

- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7
{
  v10 = sub_29EC29BEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8]();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a7);
  sub_29EC29BCC();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = self;
  sub_29EC291AC(a4, v14, sub_29EC29B44, v16);

  (*(v11 + 8))(v14, v10);
}

@end