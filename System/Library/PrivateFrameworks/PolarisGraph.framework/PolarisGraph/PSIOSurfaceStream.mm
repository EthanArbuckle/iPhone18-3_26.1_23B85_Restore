@interface PSIOSurfaceStream
+ (id)ioSurfaceStreamWithKey:(char *)key options:(ps_resource_options *)options properties:(id)properties;
+ (id)ioSurfaceStreamWithResourceKey:(id)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator;
+ (id)ioSurfaceStreamWithResourceKey:(id)key options:(ps_resource_options *)options properties:(id)properties;
+ (id)ioSurfaceStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSIOSurfaceStream)init;
- (PSIOSurfaceStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSIOSurfaceStream

- (PSIOSurfaceStream)init
{
  v5.receiver = self;
  v5.super_class = PSIOSurfaceStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:4];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PSIOSurfaceStream;
  [(PSResourceStream *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeInteger:self->_height forKey:@"height"];
  [coderCopy encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
  [coderCopy encodeObject:self->_ioSurfaceProperties forKey:@"properties"];
}

- (PSIOSurfaceStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PSIOSurfaceStream;
  v5 = [(PSResourceStream *)&v12 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:4];
    v6->_width = [coderCopy decodeIntegerForKey:@"width"];
    v6->_height = [coderCopy decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [coderCopy decodeInt32ForKey:@"pixelFormat"];
    v7 = objc_opt_class();
    v8 = [coderCopy decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"properties"];
    ioSurfaceProperties = v6->_ioSurfaceProperties;
    v6->_ioSurfaceProperties = v8;

    v10 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v18.receiver = self;
        v18.super_class = PSIOSurfaceStream;
        if (![(PSResourceStream *)&v18 isEqual:v6]|| (width = self->_width, width != [(PSIOSurfaceStream *)v6 width]) || (height = self->_height, height != [(PSIOSurfaceStream *)v6 height]) || (pixelFormat = self->_pixelFormat, pixelFormat != [(PSIOSurfaceStream *)v6 pixelFormat]))
        {
          v14 = 0;
LABEL_16:

          goto LABEL_17;
        }

        ioSurfaceProperties = 168;
        ioSurfaceProperties = self->_ioSurfaceProperties;
        v12 = ioSurfaceProperties;
        if (!ioSurfaceProperties)
        {
          pixelFormat = [(PSIOSurfaceStream *)v6 ioSurfaceProperties];
          if (!pixelFormat)
          {
            v13 = 0;
            goto LABEL_20;
          }

          v12 = self->_ioSurfaceProperties;
        }

        ioSurfaceProperties = [(PSIOSurfaceStream *)v6 ioSurfaceProperties];
        if (![(NSDictionary *)v12 isEqual:ioSurfaceProperties])
        {
          v14 = 0;
          goto LABEL_22;
        }

        v13 = 1;
LABEL_20:
        allocator = self->_allocator;
        if (allocator == [(PSIOSurfaceStream *)v6 allocator])
        {
          deallocator = self->_deallocator;
          v14 = deallocator == [(PSIOSurfaceStream *)v6 deallocator];
          if ((v13 & 1) == 0)
          {
LABEL_23:
            if (!ioSurfaceProperties)
            {
            }

            goto LABEL_16;
          }
        }

        else
        {
          v14 = 0;
          if (!v13)
          {
            goto LABEL_23;
          }
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v14 = 0;
  }

LABEL_17:

  return v14;
}

+ (id)ioSurfaceStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  keyCopy = key;
  v12 = objc_alloc_init(PSIOSurfaceStream);
  [(PSResourceStream *)v12 setKey:keyCopy];
  v12->_width = width;
  v12->_height = height;
  v12->_pixelFormat = format;
  [(PSResourceStream *)v12 setOptions:options->storage_mode, options->creation_mode];

  return v12;
}

+ (id)ioSurfaceStreamWithKey:(char *)key options:(ps_resource_options *)options properties:(id)properties
{
  propertiesCopy = properties;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v9 = [PSIOSurfaceStream ioSurfaceStreamWithResourceKey:v8 options:options properties:propertiesCopy];

  return v9;
}

+ (id)ioSurfaceStreamWithResourceKey:(id)key options:(ps_resource_options *)options properties:(id)properties
{
  keyCopy = key;
  propertiesCopy = properties;
  v9 = objc_alloc_init(PSIOSurfaceStream);
  [(PSResourceStream *)v9 setKey:keyCopy];
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

+ (id)ioSurfaceStreamWithResourceKey:(id)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator
{
  keyCopy = key;
  v10 = objc_alloc_init(PSIOSurfaceStream);
  [(PSResourceStream *)v10 setKey:keyCopy];
  v10->_deallocator = deallocator;
  v10->_allocator = allocator;
  [(PSResourceStream *)v10 setOptions:options->storage_mode, options->creation_mode];

  return v10;
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]!= 4)
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

@end