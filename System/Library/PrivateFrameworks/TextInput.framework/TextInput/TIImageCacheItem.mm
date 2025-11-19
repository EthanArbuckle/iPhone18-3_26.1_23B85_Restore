@interface TIImageCacheItem
+ (id)cacheItemWithSize:(CGSize)a3 format:(unsigned __int8)a4 formatColor:(CGColor *)a5 scale:(double)a6 data:(id)a7 dataReleaseHandler:(id)a8;
- (CGSize)size;
- (TIImageCacheItem)initWithCoder:(id)a3;
- (void)_callDataReleaseHandler;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIImageCacheItem

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:&self->_size objCType:"{CGSize=dd}"];
  [v6 encodeObject:v4 forKey:@"size"];
  [v6 encodeDouble:@"scale" forKey:self->_scale];
  [v6 encodeInteger:self->_format forKey:@"format"];
  if (self->_formatColor)
  {
    [v6 encodeBool:1 forKey:@"hasFormatColor"];
    Components = CGColorGetComponents(self->_formatColor);
    [v6 encodeDouble:@"formatColor_0" forKey:*Components];
    [v6 encodeDouble:@"formatColor_1" forKey:Components[1]];
    [v6 encodeDouble:@"formatColor_2" forKey:Components[2]];
    [v6 encodeDouble:@"formatColor_3" forKey:Components[3]];
  }

  [v6 encodeObject:self->_data forKey:@"data"];
}

- (TIImageCacheItem)initWithCoder:(id)a3
{
  components[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = TIImageCacheItem;
  v5 = [(TIImageCacheItem *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    v7 = v6;
    if (v6 && !strcmp([v6 objCType], "{CGSize=dd}"))
    {
      [v7 getValue:&v5->_size];
    }

    else
    {
      v5->_size = *MEMORY[0x1E695F060];
    }

    [v4 decodeDoubleForKey:@"scale"];
    v5->_scale = v8;
    v5->_format = [v4 decodeIntegerForKey:@"format"];
    if ([v4 decodeBoolForKey:@"hasFormatColor"])
    {
      [v4 decodeDoubleForKey:@"formatColor_0"];
      components[0] = v9;
      [v4 decodeDoubleForKey:@"formatColor_1"];
      components[1] = v10;
      [v4 decodeDoubleForKey:@"formatColor_2"];
      components[2] = v11;
      [v4 decodeDoubleForKey:@"formatColor_3"];
      components[3] = v12;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v5->_formatColor = CGColorCreate(DeviceRGB, components);
      CGColorSpaceRelease(DeviceRGB);
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v14;
  }

  return v5;
}

- (void)_callDataReleaseHandler
{
  dataReleaseHandler = self->_dataReleaseHandler;
  if (dataReleaseHandler)
  {
    dataReleaseHandler[2](dataReleaseHandler, a2);
    v4 = self->_dataReleaseHandler;
    self->_dataReleaseHandler = 0;
  }
}

- (void)dealloc
{
  [(TIImageCacheItem *)self _callDataReleaseHandler];
  CGColorRelease(self->_formatColor);
  v3.receiver = self;
  v3.super_class = TIImageCacheItem;
  [(TIImageCacheItem *)&v3 dealloc];
}

+ (id)cacheItemWithSize:(CGSize)a3 format:(unsigned __int8)a4 formatColor:(CGColor *)a5 scale:(double)a6 data:(id)a7 dataReleaseHandler:(id)a8
{
  height = a3.height;
  width = a3.width;
  v15 = a7;
  v16 = a8;
  v17 = objc_alloc_init(a1);
  v17[6] = width;
  v17[7] = height;
  *(v17 + 8) = a4;
  v18 = CGColorRetain(a5);
  v17[2] = a6;
  v19 = *(v17 + 4);
  *(v17 + 3) = v18;
  *(v17 + 4) = v15;
  v20 = v15;

  v21 = [v16 copy];
  v22 = *(v17 + 5);
  *(v17 + 5) = v21;

  return v17;
}

@end