@interface PIMsgImageBuffer
- (PIMsgImageBuffer)initWithBytes:(void *)bytes width:(unint64_t)width height:(unint64_t)height bytesPerRow:(int64_t)row bytesPerComponent:(unint64_t)component format:(int)format colorspace:(CGColorSpace *)colorspace;
- (PIMsgImageBuffer)initWithData:(id)data width:(unint64_t)width height:(unint64_t)height bytesPerRow:(int64_t)row bytesPerComponent:(unint64_t)component format:(int)format colorspace:(CGColorSpace *)space;
- (void)dealloc;
@end

@implementation PIMsgImageBuffer

- (void)dealloc
{
  bufferColorspace = self->bufferColorspace;
  if (bufferColorspace)
  {
    CGColorSpaceRelease(bufferColorspace);
  }

  v4.receiver = self;
  v4.super_class = PIMsgImageBuffer;
  [(PIMsgImageBuffer *)&v4 dealloc];
}

- (PIMsgImageBuffer)initWithData:(id)data width:(unint64_t)width height:(unint64_t)height bytesPerRow:(int64_t)row bytesPerComponent:(unint64_t)component format:(int)format colorspace:(CGColorSpace *)space
{
  dataCopy = data;
  v16 = [(PIMsgImageBuffer *)self init];
  v17 = v16;
  if (v16)
  {
    [(PIMsgImageBuffer *)v16 setData:dataCopy];
    v17->elementByteSize = component;
    v17->rowElements = row / component;
    v17->width = width;
    v17->height = height;
    v17->format = format;
    if (space)
    {
      v17->bufferColorspace = CGColorSpaceRetain(space);
    }
  }

  return v17;
}

- (PIMsgImageBuffer)initWithBytes:(void *)bytes width:(unint64_t)width height:(unint64_t)height bytesPerRow:(int64_t)row bytesPerComponent:(unint64_t)component format:(int)format colorspace:(CGColorSpace *)colorspace
{
  v9 = *&format;
  v15 = [MEMORY[0x1E695DF88] dataWithBytesNoCopy:bytes length:row * height freeWhenDone:0];
  v16 = [(PIMsgImageBuffer *)self initWithData:v15 width:width height:height bytesPerRow:row bytesPerComponent:component format:v9 colorspace:colorspace];

  return v16;
}

@end