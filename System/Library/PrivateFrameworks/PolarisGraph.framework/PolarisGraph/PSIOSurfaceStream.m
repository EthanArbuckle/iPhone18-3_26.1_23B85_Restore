@interface PSIOSurfaceStream
+ (id)ioSurfaceStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 properties:(id)a5;
+ (id)ioSurfaceStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6;
+ (id)ioSurfaceStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 properties:(id)a5;
+ (id)ioSurfaceStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSIOSurfaceStream)init;
- (PSIOSurfaceStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PSIOSurfaceStream;
  [(PSResourceStream *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_width forKey:@"width"];
  [v4 encodeInteger:self->_height forKey:@"height"];
  [v4 encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
  [v4 encodeObject:self->_ioSurfaceProperties forKey:@"properties"];
}

- (PSIOSurfaceStream)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PSIOSurfaceStream;
  v5 = [(PSResourceStream *)&v12 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:4];
    v6->_width = [v4 decodeIntegerForKey:@"width"];
    v6->_height = [v4 decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [v4 decodeInt32ForKey:@"pixelFormat"];
    v7 = objc_opt_class();
    v8 = [v4 decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"properties"];
    ioSurfaceProperties = v6->_ioSurfaceProperties;
    v6->_ioSurfaceProperties = v8;

    v10 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    if (v4)
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

        v10 = 168;
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

        v10 = [(PSIOSurfaceStream *)v6 ioSurfaceProperties];
        if (![(NSDictionary *)v12 isEqual:v10])
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

+ (id)ioSurfaceStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7
{
  v11 = a3;
  v12 = objc_alloc_init(PSIOSurfaceStream);
  [(PSResourceStream *)v12 setKey:v11];
  v12->_width = a5;
  v12->_height = a6;
  v12->_pixelFormat = a7;
  [(PSResourceStream *)v12 setOptions:a4->storage_mode, a4->creation_mode];

  return v12;
}

+ (id)ioSurfaceStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 properties:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v9 = [PSIOSurfaceStream ioSurfaceStreamWithResourceKey:v8 options:a4 properties:v7];

  return v9;
}

+ (id)ioSurfaceStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 properties:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(PSIOSurfaceStream);
  [(PSResourceStream *)v9 setKey:v7];
  objc_storeStrong(&v9->_ioSurfaceProperties, a5);
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD2928]];
  v9->_width = [v10 unsignedLongValue];

  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD28D0]];
  v9->_height = [v11 unsignedLongValue];

  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD28D8]];
  v9->_pixelFormat = [v12 unsignedIntValue];

  [(PSResourceStream *)v9 setOptions:a4->storage_mode, a4->creation_mode];

  return v9;
}

+ (id)ioSurfaceStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6
{
  v9 = a3;
  v10 = objc_alloc_init(PSIOSurfaceStream);
  [(PSResourceStream *)v10 setKey:v9];
  v10->_deallocator = a6;
  v10->_allocator = a5;
  [(PSResourceStream *)v10 setOptions:a4->storage_mode, a4->creation_mode];

  return v10;
}

- (BOOL)validate:(id *)a3
{
  if ([(PSResourceStream *)self resourceClass]!= 4)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!a3)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v10];
    goto LABEL_24;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [(PSResourceStream *)self options];
  if (v7 == 1 && (!self->_width || !self->_height))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"IOSurface properties required for descriptor mode (options.creation_mode)"];
    if (!a3)
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
  if (a3)
  {
    goto LABEL_23;
  }

LABEL_24:

  return 0;
}

@end