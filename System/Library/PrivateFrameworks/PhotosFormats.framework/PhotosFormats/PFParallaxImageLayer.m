@interface PFParallaxImageLayer
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (CGSize)pixelSize;
- (PFParallaxImageLayer)initWithImage:(__CVBuffer *)a3 frame:(CGRect)a4 zPosition:(double)a5 identifier:(id)a6;
- (id)layerByUpdatingFrame:(CGRect)a3;
- (void)dealloc;
@end

@implementation PFParallaxImageLayer

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PFParallaxLayer *)self identifier];
  v8 = [v7 containsString:@"foreground"];

  v9 = PFFigEncodeCVPixelBufferToURL([(PFParallaxImageLayer *)self image], v6, v8);
  if (a4 && v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error writing image to disk, code: %d", v9, *MEMORY[0x1E696A278]];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v10 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v12];
  }

  return v9 == 0;
}

- (CGSize)pixelSize
{
  Width = CVPixelBufferGetWidth(self->_image);
  Height = CVPixelBufferGetHeight(self->_image);
  v5 = Width;
  v6 = Height;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_image);
  v3.receiver = self;
  v3.super_class = PFParallaxImageLayer;
  [(PFParallaxImageLayer *)&v3 dealloc];
}

- (id)layerByUpdatingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [PFParallaxImageLayer alloc];
  v9 = [(PFParallaxImageLayer *)self image];
  [(PFParallaxLayer *)self zPosition];
  v11 = v10;
  v12 = [(PFParallaxLayer *)self identifier];
  v13 = [(PFParallaxImageLayer *)v8 initWithImage:v9 frame:v12 zPosition:x identifier:y, width, height, v11];

  return v13;
}

- (PFParallaxImageLayer)initWithImage:(__CVBuffer *)a3 frame:(CGRect)a4 zPosition:(double)a5 identifier:(id)a6
{
  v9.receiver = self;
  v9.super_class = PFParallaxImageLayer;
  v7 = [(PFParallaxLayer *)&v9 initWithFrame:a6 zPosition:a4.origin.x identifier:a4.origin.y, a4.size.width, a4.size.height, a5];
  v7->_image = CVPixelBufferRetain(a3);
  return v7;
}

@end