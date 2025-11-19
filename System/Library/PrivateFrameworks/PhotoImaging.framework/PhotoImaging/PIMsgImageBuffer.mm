@interface PIMsgImageBuffer
- (PIMsgImageBuffer)initWithBytes:(void *)a3 width:(unint64_t)a4 height:(unint64_t)a5 bytesPerRow:(int64_t)a6 bytesPerComponent:(unint64_t)a7 format:(int)a8 colorspace:(CGColorSpace *)a9;
- (PIMsgImageBuffer)initWithData:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 bytesPerRow:(int64_t)a6 bytesPerComponent:(unint64_t)a7 format:(int)a8 colorspace:(CGColorSpace *)space;
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

- (PIMsgImageBuffer)initWithData:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 bytesPerRow:(int64_t)a6 bytesPerComponent:(unint64_t)a7 format:(int)a8 colorspace:(CGColorSpace *)space
{
  v15 = a3;
  v16 = [(PIMsgImageBuffer *)self init];
  v17 = v16;
  if (v16)
  {
    [(PIMsgImageBuffer *)v16 setData:v15];
    v17->elementByteSize = a7;
    v17->rowElements = a6 / a7;
    v17->width = a4;
    v17->height = a5;
    v17->format = a8;
    if (space)
    {
      v17->bufferColorspace = CGColorSpaceRetain(space);
    }
  }

  return v17;
}

- (PIMsgImageBuffer)initWithBytes:(void *)a3 width:(unint64_t)a4 height:(unint64_t)a5 bytesPerRow:(int64_t)a6 bytesPerComponent:(unint64_t)a7 format:(int)a8 colorspace:(CGColorSpace *)a9
{
  v9 = *&a8;
  v15 = [MEMORY[0x1E695DF88] dataWithBytesNoCopy:a3 length:a6 * a5 freeWhenDone:0];
  v16 = [(PIMsgImageBuffer *)self initWithData:v15 width:a4 height:a5 bytesPerRow:a6 bytesPerComponent:a7 format:v9 colorspace:a9];

  return v16;
}

@end