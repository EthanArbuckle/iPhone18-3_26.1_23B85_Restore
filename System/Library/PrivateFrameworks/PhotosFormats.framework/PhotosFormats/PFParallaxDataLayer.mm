@interface PFParallaxDataLayer
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (CGSize)pixelSize;
- (PFParallaxDataLayer)initWithData:(id)a3 frame:(CGRect)a4 zPosition:(double)a5 identifier:(id)a6;
- (id)fileExtension;
- (id)layerByUpdatingFrame:(CGRect)a3;
@end

@implementation PFParallaxDataLayer

- (id)fileExtension
{
  v2 = objc_opt_class();

  return [v2 fileExtension];
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PFParallaxDataLayer *)self data];
  v7 = [v6 writeToURL:v5 atomically:1];

  return v7;
}

- (CGSize)pixelSize
{
  [(PFParallaxLayer *)self frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)layerByUpdatingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [PFParallaxDataLayer alloc];
  v9 = [(PFParallaxDataLayer *)self data];
  [(PFParallaxLayer *)self zPosition];
  v11 = v10;
  v12 = [(PFParallaxLayer *)self identifier];
  v13 = [(PFParallaxDataLayer *)v8 initWithData:v9 frame:v12 zPosition:x identifier:y, width, height, v11];

  return v13;
}

- (PFParallaxDataLayer)initWithData:(id)a3 frame:(CGRect)a4 zPosition:(double)a5 identifier:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a6;
  if (v13)
  {
    v15 = v14;
    v21.receiver = self;
    v21.super_class = PFParallaxDataLayer;
    v16 = [(PFParallaxLayer *)&v21 initWithFrame:v14 zPosition:x identifier:y, width, height, a5];
    v17 = [v13 copy];
    data = v16->_data;
    v16->_data = v17;

    return v16;
  }

  else
  {
    v20 = _PFAssertFailHandler();
    return PFParallaxLayerIDIsForeground(v20);
  }
}

@end