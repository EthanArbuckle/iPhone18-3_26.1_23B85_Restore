@interface TIImageCacheItem
+ (id)cacheItemWithSize:(CGSize)size format:(unsigned __int8)format formatColor:(CGColor *)color scale:(double)scale data:(id)data dataReleaseHandler:(id)handler;
- (CGSize)size;
- (TIImageCacheItem)initWithCoder:(id)coder;
- (void)_callDataReleaseHandler;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:&self->_size objCType:"{CGSize=dd}"];
  [coderCopy encodeObject:v4 forKey:@"size"];
  [coderCopy encodeDouble:@"scale" forKey:self->_scale];
  [coderCopy encodeInteger:self->_format forKey:@"format"];
  if (self->_formatColor)
  {
    [coderCopy encodeBool:1 forKey:@"hasFormatColor"];
    Components = CGColorGetComponents(self->_formatColor);
    [coderCopy encodeDouble:@"formatColor_0" forKey:*Components];
    [coderCopy encodeDouble:@"formatColor_1" forKey:Components[1]];
    [coderCopy encodeDouble:@"formatColor_2" forKey:Components[2]];
    [coderCopy encodeDouble:@"formatColor_3" forKey:Components[3]];
  }

  [coderCopy encodeObject:self->_data forKey:@"data"];
}

- (TIImageCacheItem)initWithCoder:(id)coder
{
  components[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = TIImageCacheItem;
  v5 = [(TIImageCacheItem *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    v7 = v6;
    if (v6 && !strcmp([v6 objCType], "{CGSize=dd}"))
    {
      [v7 getValue:&v5->_size];
    }

    else
    {
      v5->_size = *MEMORY[0x1E695F060];
    }

    [coderCopy decodeDoubleForKey:@"scale"];
    v5->_scale = v8;
    v5->_format = [coderCopy decodeIntegerForKey:@"format"];
    if ([coderCopy decodeBoolForKey:@"hasFormatColor"])
    {
      [coderCopy decodeDoubleForKey:@"formatColor_0"];
      components[0] = v9;
      [coderCopy decodeDoubleForKey:@"formatColor_1"];
      components[1] = v10;
      [coderCopy decodeDoubleForKey:@"formatColor_2"];
      components[2] = v11;
      [coderCopy decodeDoubleForKey:@"formatColor_3"];
      components[3] = v12;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v5->_formatColor = CGColorCreate(DeviceRGB, components);
      CGColorSpaceRelease(DeviceRGB);
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
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

+ (id)cacheItemWithSize:(CGSize)size format:(unsigned __int8)format formatColor:(CGColor *)color scale:(double)scale data:(id)data dataReleaseHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  handlerCopy = handler;
  v17 = objc_alloc_init(self);
  v17[6] = width;
  v17[7] = height;
  *(v17 + 8) = format;
  v18 = CGColorRetain(color);
  v17[2] = scale;
  v19 = *(v17 + 4);
  *(v17 + 3) = v18;
  *(v17 + 4) = dataCopy;
  v20 = dataCopy;

  v21 = [handlerCopy copy];
  v22 = *(v17 + 5);
  *(v17 + 5) = v21;

  return v17;
}

@end