@interface SIMovStreamInfo
- (CGSize)resolution;
- (id)description;
- (id)initInfoWithTrackName:(id)a3 frameRate:(double)a4 pixelBufferFormat:(unsigned int)a5 resolution:(CGSize)a6;
@end

@implementation SIMovStreamInfo

- (id)initInfoWithTrackName:(id)a3 frameRate:(double)a4 pixelBufferFormat:(unsigned int)a5 resolution:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  v17.receiver = self;
  v17.super_class = SIMovStreamInfo;
  v13 = [(SIMovStreamInfo *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, a3);
    v14->_frameRate = a4;
    v14->_format = a5;
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
  v5 = [(SIMovStreamInfo *)self name];
  v6 = [(SIMovStreamInfo *)self frameRate];
  v7 = SIPixelFormatToStr([(SIMovStreamInfo *)self format]);
  [(SIMovStreamInfo *)self resolution];
  v9 = v8;
  [(SIMovStreamInfo *)self resolution];
  v11 = [v3 stringWithFormat:@"%@\nName: %@ \n Frame rate: %d \n Format: %@ \n Resolution: (%f, %f) \n", v4, v5, v6, v7, v9, v10];

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