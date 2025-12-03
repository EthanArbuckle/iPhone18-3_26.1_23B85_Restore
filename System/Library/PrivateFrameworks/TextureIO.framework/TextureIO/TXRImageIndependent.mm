@interface TXRImageIndependent
- (TXRImageIndependent)initWithCGImage:(CGImage *)image bufferAllocator:(id)allocator options:(id)options error:(id *)error;
- (TXRImageIndependent)initWithCGImage:(CGImage *)image pixelFormat:(unint64_t)format bufferAllocator:(id)allocator options:(id)options error:(id *)error;
- (TXRImageIndependent)initWithDimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(id)info bufferAllocator:;
- (TXRImageIndependent)initWithDimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(unint64_t)info bytesPerRow:(unint64_t)row bytesPerImage:(id)image buffer:(unint64_t)buffer offset:;
- (TXRImageIndependent)initWithImage:(id)image dimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:;
@end

@implementation TXRImageIndependent

- (TXRImageIndependent)initWithImage:(id)image dimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:
{
  v15 = v5;
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = TXRImageIndependent;
  v10 = [(TXRImageIndependent *)&v16 init];
  v11 = v10;
  if (v10)
  {
    *v10->_dimensions = v15;
    v10->_pixelFormat = dimensions;
    v10->_alphaInfo = format;
    v10->super._bytesPerRow = [imageCopy bytesPerRow];
    v11->super._bytesPerImage = [imageCopy bytesPerImage];
    buffer = [imageCopy buffer];
    buffer = v11->super._buffer;
    v11->super._buffer = buffer;

    v11->super._offset = [imageCopy offset];
  }

  return v11;
}

- (TXRImageIndependent)initWithDimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(unint64_t)info bytesPerRow:(unint64_t)row bytesPerImage:(id)image buffer:(unint64_t)buffer offset:
{
  v20 = v8;
  imageCopy = image;
  v21.receiver = self;
  v21.super_class = TXRImageIndependent;
  v17 = [(TXRImageIndependent *)&v21 init];
  v18 = v17;
  if (v17)
  {
    *v17->_dimensions = v20;
    *&v17->_dimensions[8] = DWORD2(v20);
    v17->_pixelFormat = dimensions;
    v17->_alphaInfo = format;
    v17->super._bytesPerRow = info;
    v17->super._bytesPerImage = row;
    objc_storeStrong(&v17->super._buffer, image);
    v18->super._offset = buffer;
  }

  return v18;
}

- (TXRImageIndependent)initWithCGImage:(CGImage *)image bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  allocatorCopy = allocator;
  optionsCopy = options;
  if (!allocatorCopy)
  {
    allocatorCopy = objc_alloc_init(TXRDefaultBufferAllocator);
  }

  v12 = [TXRParserImageIO decodeCGImage:image desiredPixelFormat:0 bufferAllocator:allocatorCopy options:optionsCopy error:error];

  return v12;
}

- (TXRImageIndependent)initWithCGImage:(CGImage *)image pixelFormat:(unint64_t)format bufferAllocator:(id)allocator options:(id)options error:(id *)error
{
  allocatorCopy = allocator;
  optionsCopy = options;
  if (!allocatorCopy)
  {
    allocatorCopy = objc_alloc_init(TXRDefaultBufferAllocator);
  }

  v14 = [TXRParserImageIO decodeCGImage:image desiredPixelFormat:format bufferAllocator:allocatorCopy options:optionsCopy error:error];

  if (v14 && v14->_pixelFormat != format)
  {
    v15 = [TXRDataConverter newImageFromSourceImage:v14 newPixelFormat:format bufferAllocator:allocatorCopy multiplyAlpha:0 gammaDegamma:0 error:error];
    [(TXRImageIndependent *)v14 dimensions];
    v14 = [(TXRImageIndependent *)v14 initWithImage:v15 dimensions:format pixelFormat:[(TXRImageIndependent *)v14 alphaInfo] alphaInfo:v16];
  }

  return v14;
}

- (TXRImageIndependent)initWithDimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(id)info bufferAllocator:
{
  v16 = v5;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = TXRImageIndependent;
  v10 = [(TXRImageIndependent *)&v17 init];
  v11 = v10;
  if (v10)
  {
    *v10->_dimensions = v16;
    v10->_pixelFormat = dimensions;
    v10->_alphaInfo = format;
    v10->super._bytesPerRow = [TXRPixelFormatInfo packedMemoryLayoutForFormat:dimensions dimensions:?];
    v11->super._bytesPerImage = v12;
    v13 = [infoCopy newBufferWithLength:v12 * DWORD2(v16)];
    buffer = v11->super._buffer;
    v11->super._buffer = v13;

    v11->super._offset = 0;
  }

  return v11;
}

@end