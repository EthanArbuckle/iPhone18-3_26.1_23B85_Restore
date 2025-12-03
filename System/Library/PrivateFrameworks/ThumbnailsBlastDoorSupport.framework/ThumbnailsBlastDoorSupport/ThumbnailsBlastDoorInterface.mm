@interface ThumbnailsBlastDoorInterface
- (ThumbnailsBlastDoorInterface)init;
- (id)generateImageThumbnailForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error;
- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler;
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

- (id)generateImageThumbnailForFileURL:(id)l maxPixelDimension:(float)dimension scale:(float)scale error:(id *)error
{
  lCopy = l;
  interface = [(ThumbnailsBlastDoorInterface *)self interface];
  *&v12 = dimension;
  *&v13 = scale;
  v14 = [interface generateImageThumbnailForFileURL:lCopy maxPixelDimension:error scale:v12 error:v13];

  return v14;
}

- (void)generateMovieThumbnailForAttachmentWithFileURL:(id)l maxPixelDimension:(float)dimension minThumbnailPxSize:(CGSize)size scale:(float)scale resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  lCopy = l;
  interface = [(ThumbnailsBlastDoorInterface *)self interface];
  *&v15 = dimension;
  *&v16 = scale;
  [interface generateMovieThumbnailForAttachmentWithFileURL:lCopy maxPixelDimension:handlerCopy minThumbnailPxSize:v15 scale:width resultHandler:{height, v16}];
}

@end