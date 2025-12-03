@interface PSCVPixelStream
+ (id)cvPixelStreamWithKey:(char *)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator;
+ (id)cvPixelStreamWithKey:(char *)key options:(ps_resource_options *)options properties:(id)properties;
+ (id)cvPixelStreamWithResourceKey:(id)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator;
+ (id)cvPixelStreamWithResourceKey:(id)key options:(ps_resource_options *)options properties:(id)properties;
+ (id)cvPixelStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSCVPixelStream)init;
- (PSCVPixelStream)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSCVPixelStream

- (PSCVPixelStream)init
{
  v5.receiver = self;
  v5.super_class = PSCVPixelStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:7];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PSCVPixelStream;
  [(PSResourceStream *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeInteger:self->_height forKey:@"height"];
  [coderCopy encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
  [coderCopy encodeObject:self->_format forKey:@"format"];
  [coderCopy encodeObject:self->_ioSurfaceProperties forKey:@"properties"];
}

- (PSCVPixelStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PSCVPixelStream;
  v5 = [(PSResourceStream *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:7];
    v6->_width = [coderCopy decodeIntegerForKey:@"width"];
    v6->_height = [coderCopy decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [coderCopy decodeInt32ForKey:@"pixelFormat"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    format = v6->_format;
    v6->_format = v7;

    v9 = objc_opt_class();
    v10 = [coderCopy decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"properties"];
    ioSurfaceProperties = v6->_ioSurfaceProperties;
    v6->_ioSurfaceProperties = v10;

    v12 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
        v25.receiver = self;
        v25.super_class = PSCVPixelStream;
        if (![(PSResourceStream *)&v25 isEqual:v9]|| (width = self->_width, width != [(PSCVPixelStream *)v9 width]) || (height = self->_height, height != [(PSCVPixelStream *)v9 height]) || (pixelFormat = self->_pixelFormat, pixelFormat != [(PSCVPixelStream *)v9 pixelFormat]))
        {
          v15 = 0;
LABEL_16:

          goto LABEL_17;
        }

        format = self->_format;
        v14 = format;
        if (!format)
        {
          format = [(PSCVPixelStream *)v9 format];
          if (!format)
          {
            v24 = 0;
            v23 = 0;
            goto LABEL_20;
          }

          v14 = self->_format;
        }

        format2 = [(PSCVPixelStream *)v9 format];
        if (![(PSCameraStreamFormat *)v14 isEqual:format2])
        {
          v15 = 0;
          goto LABEL_32;
        }

        v24 = format;
        v23 = 1;
LABEL_20:
        ioSurfaceProperties2 = 240;
        ioSurfaceProperties = self->_ioSurfaceProperties;
        v19 = ioSurfaceProperties;
        if (!ioSurfaceProperties)
        {
          ioSurfaceProperties = [(PSCVPixelStream *)v9 ioSurfaceProperties];
          if (!ioSurfaceProperties)
          {
            v20 = 0;
            goto LABEL_27;
          }

          v19 = self->_ioSurfaceProperties;
        }

        ioSurfaceProperties2 = [(PSCVPixelStream *)v9 ioSurfaceProperties];
        if (![(NSDictionary *)v19 isEqual:ioSurfaceProperties2])
        {
          v15 = 0;
          goto LABEL_29;
        }

        v20 = 1;
LABEL_27:
        allocator = self->_allocator;
        if (allocator == [(PSCVPixelStream *)v9 allocator])
        {
          deallocator = self->_deallocator;
          v15 = deallocator == [(PSCVPixelStream *)v9 deallocator];
          if ((v20 & 1) == 0)
          {
LABEL_30:
            format = v24;
            if (ioSurfaceProperties)
            {
              if (!v23)
              {
                goto LABEL_33;
              }
            }

            else
            {

              if ((v23 & 1) == 0)
              {
LABEL_33:
                if (!format)
                {
                }

                goto LABEL_16;
              }
            }

LABEL_32:

            goto LABEL_33;
          }
        }

        else
        {
          v15 = 0;
          if (!v20)
          {
            goto LABEL_30;
          }
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v15 = 0;
  }

LABEL_17:

  return v15;
}

+ (id)cvPixelStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  keyCopy = key;
  v12 = objc_alloc_init(PSCVPixelStream);
  [(PSResourceStream *)v12 setKey:keyCopy];
  [(PSResourceStream *)v12 setProvider:9];
  v12->_width = width;
  v12->_height = height;
  v12->_pixelFormat = format;
  [(PSResourceStream *)v12 setOptions:options->storage_mode, options->creation_mode];

  return v12;
}

+ (id)cvPixelStreamWithKey:(char *)key options:(ps_resource_options *)options properties:(id)properties
{
  propertiesCopy = properties;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v9 = [PSCVPixelStream cvPixelStreamWithResourceKey:v8 options:options properties:propertiesCopy];

  return v9;
}

+ (id)cvPixelStreamWithResourceKey:(id)key options:(ps_resource_options *)options properties:(id)properties
{
  keyCopy = key;
  propertiesCopy = properties;
  v9 = objc_alloc_init(PSCVPixelStream);
  [(PSResourceStream *)v9 setKey:keyCopy];
  [(PSResourceStream *)v9 setProvider:9];
  objc_storeStrong(&v9->_ioSurfaceProperties, properties);
  v10 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CD2928]];
  v9->_width = [v10 unsignedLongValue];

  v11 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CD28D0]];
  v9->_height = [v11 unsignedLongValue];

  v12 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CD28D8]];
  v9->_pixelFormat = [v12 unsignedIntValue];

  [(PSResourceStream *)v9 setOptions:options->storage_mode, options->creation_mode];

  return v9;
}

+ (id)cvPixelStreamWithKey:(char *)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator
{
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v10 = [PSCVPixelStream cvPixelStreamWithResourceKey:v9 options:options allocator:allocator deallocator:deallocator];

  return v10;
}

+ (id)cvPixelStreamWithResourceKey:(id)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator
{
  keyCopy = key;
  v10 = objc_alloc_init(PSCVPixelStream);
  [(PSResourceStream *)v10 setKey:keyCopy];
  [(PSResourceStream *)v10 setProvider:9];
  v10->_deallocator = deallocator;
  v10->_allocator = allocator;
  [(PSResourceStream *)v10 setOptions:options->storage_mode, options->creation_mode];

  return v10;
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]!= 7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!validate)
    {
      goto LABEL_24;
    }

LABEL_23:
    *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v10];
    goto LABEL_24;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!validate)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [(PSResourceStream *)self options];
  if (v7 == 1 && (!self->_width || !self->_height))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOSurface properties required for descriptor mode (options.creation_mode)"];
    if (!validate)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [(PSResourceStream *)self options];
  if (v8 != 2 || self->_allocator && self->_deallocator)
  {
    return 1;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Allocator and Deallocator required for allocator mode (options.creation_mode)"];
  if (validate)
  {
    goto LABEL_23;
  }

LABEL_24:

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PSCVPixelStream;
  v4 = [(PSResourceStream *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@\n\twidth: %lu\n\theight: %lu", v4, -[PSCVPixelStream width](self, "width"), -[PSCVPixelStream height](self, "height")];

  return v5;
}

@end