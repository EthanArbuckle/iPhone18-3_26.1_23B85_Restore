@interface PFParallaxVideoLayer
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (CGSize)pixelSize;
- (PFParallaxVideoLayer)initWithVideoData:(id)a3 frame:(CGRect)a4 zPosition:(double)a5 identifier:(id)a6;
- (id)layerByUpdatingFrame:(CGRect)a3;
@end

@implementation PFParallaxVideoLayer

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PFParallaxVideoLayer *)self videoData];
  LOBYTE(a4) = [v7 writeToURL:v6 options:1 error:a4];

  return a4;
}

- (CGSize)pixelSize
{
  v2 = [PFMediaUtilities tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:self->_video];
  v3 = [v2 firstObject];
  [v3 naturalSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)layerByUpdatingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [PFParallaxVideoLayer alloc];
  v9 = [(PFParallaxVideoLayer *)self videoData];
  [(PFParallaxLayer *)self zPosition];
  v11 = v10;
  v12 = [(PFParallaxLayer *)self identifier];
  v13 = [(PFParallaxVideoLayer *)v8 initWithVideoData:v9 frame:v12 zPosition:x identifier:y, width, height, v11];

  return v13;
}

- (PFParallaxVideoLayer)initWithVideoData:(id)a3 frame:(CGRect)a4 zPosition:(double)a5 identifier:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v20.receiver = self;
  v20.super_class = PFParallaxVideoLayer;
  v14 = [(PFParallaxLayer *)&v20 initWithFrame:a6 zPosition:x identifier:y, width, height, a5];
  videoData = v14->_videoData;
  v14->_videoData = v13;
  v16 = v13;

  v17 = [MEMORY[0x1E6987E28] assetWithData:v16 contentType:*MEMORY[0x1E69874C0] options:MEMORY[0x1E695E0F8]];
  video = v14->_video;
  v14->_video = v17;

  return v14;
}

@end