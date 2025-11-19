@interface PSCVPixelStream
+ (id)cvPixelStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6;
+ (id)cvPixelStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 properties:(id)a5;
+ (id)cvPixelStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6;
+ (id)cvPixelStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 properties:(id)a5;
+ (id)cvPixelStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSCVPixelStream)init;
- (PSCVPixelStream)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PSCVPixelStream;
  [(PSResourceStream *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_width forKey:@"width"];
  [v4 encodeInteger:self->_height forKey:@"height"];
  [v4 encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
  [v4 encodeObject:self->_format forKey:@"format"];
  [v4 encodeObject:self->_ioSurfaceProperties forKey:@"properties"];
}

- (PSCVPixelStream)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PSCVPixelStream;
  v5 = [(PSResourceStream *)&v14 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:7];
    v6->_width = [v4 decodeIntegerForKey:@"width"];
    v6->_height = [v4 decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [v4 decodeInt32ForKey:@"pixelFormat"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    format = v6->_format;
    v6->_format = v7;

    v9 = objc_opt_class();
    v10 = [v4 decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"properties"];
    ioSurfaceProperties = v6->_ioSurfaceProperties;
    v6->_ioSurfaceProperties = v10;

    v12 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  v8 = v7;
  if (v7 == self)
  {
    v15 = 1;
  }

  else
  {
    if (v7)
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
          v4 = [(PSCVPixelStream *)v9 format];
          if (!v4)
          {
            v24 = 0;
            v23 = 0;
            goto LABEL_20;
          }

          v14 = self->_format;
        }

        v3 = [(PSCVPixelStream *)v9 format];
        if (![(PSCameraStreamFormat *)v14 isEqual:v3])
        {
          v15 = 0;
          goto LABEL_32;
        }

        v24 = v4;
        v23 = 1;
LABEL_20:
        v17 = 240;
        ioSurfaceProperties = self->_ioSurfaceProperties;
        v19 = ioSurfaceProperties;
        if (!ioSurfaceProperties)
        {
          v5 = [(PSCVPixelStream *)v9 ioSurfaceProperties];
          if (!v5)
          {
            v20 = 0;
            goto LABEL_27;
          }

          v19 = self->_ioSurfaceProperties;
        }

        v17 = [(PSCVPixelStream *)v9 ioSurfaceProperties];
        if (![(NSDictionary *)v19 isEqual:v17])
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
            v4 = v24;
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

+ (id)cvPixelStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7
{
  v11 = a3;
  v12 = objc_alloc_init(PSCVPixelStream);
  [(PSResourceStream *)v12 setKey:v11];
  [(PSResourceStream *)v12 setProvider:9];
  v12->_width = a5;
  v12->_height = a6;
  v12->_pixelFormat = a7;
  [(PSResourceStream *)v12 setOptions:a4->storage_mode, a4->creation_mode];

  return v12;
}

+ (id)cvPixelStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 properties:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v9 = [PSCVPixelStream cvPixelStreamWithResourceKey:v8 options:a4 properties:v7];

  return v9;
}

+ (id)cvPixelStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 properties:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(PSCVPixelStream);
  [(PSResourceStream *)v9 setKey:v7];
  [(PSResourceStream *)v9 setProvider:9];
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

+ (id)cvPixelStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6
{
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v10 = [PSCVPixelStream cvPixelStreamWithResourceKey:v9 options:a4 allocator:a5 deallocator:a6];

  return v10;
}

+ (id)cvPixelStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6
{
  v9 = a3;
  v10 = objc_alloc_init(PSCVPixelStream);
  [(PSResourceStream *)v10 setKey:v9];
  [(PSResourceStream *)v10 setProvider:9];
  v10->_deallocator = a6;
  v10->_allocator = a5;
  [(PSResourceStream *)v10 setOptions:a4->storage_mode, a4->creation_mode];

  return v10;
}

- (BOOL)validate:(id *)a3
{
  if ([(PSResourceStream *)self resourceClass]!= 7)
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