@interface PFParallaxVideoLayer
- (BOOL)saveToURL:(id)l error:(id *)error;
- (CGSize)pixelSize;
- (PFParallaxVideoLayer)initWithVideoData:(id)data frame:(CGRect)frame zPosition:(double)position identifier:(id)identifier;
- (id)layerByUpdatingFrame:(CGRect)frame;
@end

@implementation PFParallaxVideoLayer

- (BOOL)saveToURL:(id)l error:(id *)error
{
  lCopy = l;
  videoData = [(PFParallaxVideoLayer *)self videoData];
  LOBYTE(error) = [videoData writeToURL:lCopy options:1 error:error];

  return error;
}

- (CGSize)pixelSize
{
  v2 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:self->_video];
  firstObject = [v2 firstObject];
  [firstObject naturalSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)layerByUpdatingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [PFParallaxVideoLayer alloc];
  videoData = [(PFParallaxVideoLayer *)self videoData];
  [(PFParallaxLayer *)self zPosition];
  v11 = v10;
  identifier = [(PFParallaxLayer *)self identifier];
  v13 = [(PFParallaxVideoLayer *)v8 initWithVideoData:videoData frame:identifier zPosition:x identifier:y, width, height, v11];

  return v13;
}

- (PFParallaxVideoLayer)initWithVideoData:(id)data frame:(CGRect)frame zPosition:(double)position identifier:(id)identifier
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = PFParallaxVideoLayer;
  position = [(PFParallaxLayer *)&v20 initWithFrame:identifier zPosition:x identifier:y, width, height, position];
  videoData = position->_videoData;
  position->_videoData = dataCopy;
  v16 = dataCopy;

  v17 = [MEMORY[0x1E6987E28] assetWithData:v16 contentType:*MEMORY[0x1E69874C0] options:MEMORY[0x1E695E0F8]];
  video = position->_video;
  position->_video = v17;

  return position;
}

@end