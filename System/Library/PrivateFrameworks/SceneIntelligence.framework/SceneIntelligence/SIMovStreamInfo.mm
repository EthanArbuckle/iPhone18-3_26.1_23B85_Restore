@interface SIMovStreamInfo
- (CGSize)resolution;
- (id)description;
- (id)initInfoWithTrackName:(id)name frameRate:(double)rate pixelBufferFormat:(unsigned int)format resolution:(CGSize)resolution;
@end

@implementation SIMovStreamInfo

- (id)initInfoWithTrackName:(id)name frameRate:(double)rate pixelBufferFormat:(unsigned int)format resolution:(CGSize)resolution
{
  height = resolution.height;
  width = resolution.width;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SIMovStreamInfo;
  v13 = [(SIMovStreamInfo *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    v14->_frameRate = rate;
    v14->_format = format;
    v14->_resolution.width = width;
    v14->_resolution.height = height;
    v15 = v14;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = SIMovStreamInfo;
  v4 = [(SIMovStreamInfo *)&v13 description];
  name = [(SIMovStreamInfo *)self name];
  frameRate = [(SIMovStreamInfo *)self frameRate];
  v7 = SIPixelFormatToStr([(SIMovStreamInfo *)self format]);
  [(SIMovStreamInfo *)self resolution];
  v9 = v8;
  [(SIMovStreamInfo *)self resolution];
  v11 = [v3 stringWithFormat:@"%@\nName: %@ \n Frame rate: %d \n Format: %@ \n Resolution: (%f, %f) \n", v4, name, frameRate, v7, v9, v10];

  return v11;
}

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end