@interface PFParallaxDataLayer
- (BOOL)saveToURL:(id)l error:(id *)error;
- (CGSize)pixelSize;
- (PFParallaxDataLayer)initWithData:(id)data frame:(CGRect)frame zPosition:(double)position identifier:(id)identifier;
- (id)fileExtension;
- (id)layerByUpdatingFrame:(CGRect)frame;
@end

@implementation PFParallaxDataLayer

- (id)fileExtension
{
  v2 = objc_opt_class();

  return [v2 fileExtension];
}

- (BOOL)saveToURL:(id)l error:(id *)error
{
  lCopy = l;
  data = [(PFParallaxDataLayer *)self data];
  v7 = [data writeToURL:lCopy atomically:1];

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

- (id)layerByUpdatingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [PFParallaxDataLayer alloc];
  data = [(PFParallaxDataLayer *)self data];
  [(PFParallaxLayer *)self zPosition];
  v11 = v10;
  identifier = [(PFParallaxLayer *)self identifier];
  v13 = [(PFParallaxDataLayer *)v8 initWithData:data frame:identifier zPosition:x identifier:y, width, height, v11];

  return v13;
}

- (PFParallaxDataLayer)initWithData:(id)data frame:(CGRect)frame zPosition:(double)position identifier:(id)identifier
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  dataCopy = data;
  identifierCopy = identifier;
  if (dataCopy)
  {
    v15 = identifierCopy;
    v21.receiver = self;
    v21.super_class = PFParallaxDataLayer;
    position = [(PFParallaxLayer *)&v21 initWithFrame:identifierCopy zPosition:x identifier:y, width, height, position];
    v17 = [dataCopy copy];
    data = position->_data;
    position->_data = v17;

    return position;
  }

  else
  {
    v20 = _PFAssertFailHandler();
    return PFParallaxLayerIDIsForeground(v20);
  }
}

@end