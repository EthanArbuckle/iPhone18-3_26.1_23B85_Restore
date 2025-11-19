@interface TSDMetalTextureInfo
+ (id)textureInfoWithCGImage:(CGImage *)a3 forDevice:(id)a4;
+ (id)textureInfoWithName:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 containsMipmaps:(BOOL)a6;
- (CGSize)size;
- (TSDMetalTextureInfo)initWithName:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 containsMipmaps:(BOOL)a6;
- (id)description;
- (void)teardown;
@end

@implementation TSDMetalTextureInfo

+ (id)textureInfoWithName:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 containsMipmaps:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v8 = *&a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithName:v9 width:v8 height:v7 containsMipmaps:v6];

  return v10;
}

+ (id)textureInfoWithCGImage:(CGImage *)a3 forDevice:(id)a4
{
  v5 = MEMORY[0x277CD71F0];
  v6 = a4;
  v7 = [[v5 alloc] initWithDevice:v6];

  v11 = 0;
  v8 = [v7 newTextureWithCGImage:a3 options:0 error:&v11];
  v9 = [objc_alloc(objc_opt_class()) initWithName:v8 width:objc_msgSend(v8 height:"width") containsMipmaps:{objc_msgSend(v8, "height"), 0}];

  return v9;
}

- (TSDMetalTextureInfo)initWithName:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 containsMipmaps:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = TSDMetalTextureInfo;
  v12 = [(TSDMetalTextureInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_containsMipmaps = a6;
    objc_storeStrong(&v12->_name, a3);
    v13->_height = a5;
    v13->_width = a4;
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