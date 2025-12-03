@interface TSDMetalTextureInfo
+ (id)textureInfoWithCGImage:(CGImage *)image forDevice:(id)device;
+ (id)textureInfoWithName:(id)name width:(unsigned int)width height:(unsigned int)height containsMipmaps:(BOOL)mipmaps;
- (CGSize)size;
- (TSDMetalTextureInfo)initWithName:(id)name width:(unsigned int)width height:(unsigned int)height containsMipmaps:(BOOL)mipmaps;
- (id)description;
- (void)teardown;
@end

@implementation TSDMetalTextureInfo

+ (id)textureInfoWithName:(id)name width:(unsigned int)width height:(unsigned int)height containsMipmaps:(BOOL)mipmaps
{
  mipmapsCopy = mipmaps;
  v7 = *&height;
  v8 = *&width;
  nameCopy = name;
  v10 = [objc_alloc(objc_opt_class()) initWithName:nameCopy width:v8 height:v7 containsMipmaps:mipmapsCopy];

  return v10;
}

+ (id)textureInfoWithCGImage:(CGImage *)image forDevice:(id)device
{
  v5 = MEMORY[0x277CD71F0];
  deviceCopy = device;
  v7 = [[v5 alloc] initWithDevice:deviceCopy];

  v11 = 0;
  v8 = [v7 newTextureWithCGImage:image options:0 error:&v11];
  v9 = [objc_alloc(objc_opt_class()) initWithName:v8 width:objc_msgSend(v8 height:"width") containsMipmaps:{objc_msgSend(v8, "height"), 0}];

  return v9;
}

- (TSDMetalTextureInfo)initWithName:(id)name width:(unsigned int)width height:(unsigned int)height containsMipmaps:(BOOL)mipmaps
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = TSDMetalTextureInfo;
  v12 = [(TSDMetalTextureInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_containsMipmaps = mipmaps;
    objc_storeStrong(&v12->_name, name);
    v13->_height = height;
    v13->_width = width;
  }

  return v13;
}

- (CGSize)size
{
  LODWORD(v3) = self->_height;
  LODWORD(v2) = self->_width;
  v4 = v2;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)teardown
{
  name = self->_name;
  self->_name = 0;

  self->_height = 0;
  self->_width = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TSDMetalTextureInfo;
  v4 = [(TSDMetalTextureInfo *)&v9 description];
  v5 = v4;
  if (self->_containsMipmaps)
  {
    v6 = @", mipmapped";
  }

  else
  {
    v6 = &stru_287D36338;
  }

  v7 = [v3 stringWithFormat:@"%@: {name:%d, size:(%d, %d)%@}", v4, self->_name, self->_width, self->_height, v6];

  return v7;
}

@end