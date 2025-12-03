@interface PFParallaxImageLayer
- (BOOL)saveToURL:(id)l error:(id *)error;
- (CGSize)pixelSize;
- (PFParallaxImageLayer)initWithImage:(__CVBuffer *)image frame:(CGRect)frame zPosition:(double)position identifier:(id)identifier;
- (id)layerByUpdatingFrame:(CGRect)frame;
- (void)dealloc;
@end

@implementation PFParallaxImageLayer

- (BOOL)saveToURL:(id)l error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifier = [(PFParallaxLayer *)self identifier];
  v8 = [identifier containsString:@"foreground"];

  v9 = PFFigEncodeCVPixelBufferToURL([(PFParallaxImageLayer *)self image], lCopy, v8);
  if (error && v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error writing image to disk, code: %d", v9, *MEMORY[0x1E696A278]];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v10 errorWithDomain:@"com.apple.PhotosFormats" code:3 userInfo:v12];
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

- (id)layerByUpdatingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [PFParallaxImageLayer alloc];
  image = [(PFParallaxImageLayer *)self image];
  [(PFParallaxLayer *)self zPosition];
  v11 = v10;
  identifier = [(PFParallaxLayer *)self identifier];
  v13 = [(PFParallaxImageLayer *)v8 initWithImage:image frame:identifier zPosition:x identifier:y, width, height, v11];

  return v13;
}

- (PFParallaxImageLayer)initWithImage:(__CVBuffer *)image frame:(CGRect)frame zPosition:(double)position identifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = PFParallaxImageLayer;
  position = [(PFParallaxLayer *)&v9 initWithFrame:identifier zPosition:frame.origin.x identifier:frame.origin.y, frame.size.width, frame.size.height, position];
  position->_image = CVPixelBufferRetain(image);
  return position;
}

@end