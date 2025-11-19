@interface ThumbnailsBlastDoorInterface
- (ThumbnailsBlastDoorInterface)init;
- (id)generateImageThumbnailForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7;
@end

@implementation ThumbnailsBlastDoorInterface

- (ThumbnailsBlastDoorInterface)init
{
  v8 = *MEMORY[0x29EDCA608];
  v7.receiver = self;
  v7.super_class = ThumbnailsBlastDoorInterface;
  v2 = [(ThumbnailsBlastDoorInterface *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(ThumbnailsBlastDoorInterfaceInternal);
    interface = v2->_interface;
    v2->_interface = v3;
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

- (id)generateImageThumbnailForFileURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(ThumbnailsBlastDoorInterface *)self interface];
  *&v12 = a4;
  *&v13 = a5;
  v14 = [v11 generateImageThumbnailForFileURL:v10 maxPixelDimension:a6 scale:v12 error:v13];

  return v14;
}

- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)a3 maxPixelDimension:(float)a4 minThumbnailPxSize:(CGSize)a5 scale:(float)a6 resultHandler:(id)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a7;
  v14 = a3;
  v17 = [(ThumbnailsBlastDoorInterface *)self interface];
  *&v15 = a4;
  *&v16 = a6;
  [v17 generateMovieThumbnailForAttachmentWithFileURL:v14 maxPixelDimension:v13 minThumbnailPxSize:v15 scale:width resultHandler:{height, v16}];
}

@end