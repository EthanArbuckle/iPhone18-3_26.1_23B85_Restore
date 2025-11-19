@interface PSCVDataStream
+ (id)cvDataStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6;
+ (id)cvDataStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6;
+ (id)cvDataStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSCVDataStream)init;
- (PSCVDataStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSCVDataStream

- (PSCVDataStream)init
{
  v5.receiver = self;
  v5.super_class = PSCVDataStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:8];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PSCVDataStream;
  [(PSResourceStream *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_width forKey:@"width"];
  [v4 encodeInteger:self->_height forKey:@"height"];
  [v4 encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
}

- (PSCVDataStream)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSCVDataStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:8];
    v6->_width = [v4 decodeIntegerForKey:@"width"];
    v6->_height = [v4 decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [v4 decodeInt32ForKey:@"pixelFormat"];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v14.receiver = self;
    v14.super_class = PSCVDataStream;
    if ([(PSResourceStream *)&v14 isEqual:v6]&& (width = self->_width, width == [(PSCVDataStream *)v6 width]) && (height = self->_height, height == [(PSCVDataStream *)v6 height]) && (pixelFormat = self->_pixelFormat, pixelFormat == [(PSCVDataStream *)v6 pixelFormat]) && (allocator = self->_allocator, allocator == [(PSCVDataStream *)v6 allocator]))
    {
      deallocator = self->_deallocator;
      v11 = deallocator == [(PSCVDataStream *)v6 deallocator];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)cvDataStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7
{
  v11 = a3;
  v12 = objc_alloc_init(PSCVDataStream);
  [(PSResourceStream *)v12 setKey:v11];
  [(PSResourceStream *)v12 setProvider:9];
  v12->_width = a5;
  v12->_height = a6;
  v12->_pixelFormat = a7;
  [(PSResourceStream *)v12 setOptions:a4->storage_mode, a4->creation_mode];

  return v12;
}

+ (id)cvDataStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6
{
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v10 = [PSCVDataStream cvDataStreamWithResourceKey:v9 options:a4 allocator:a5 deallocator:a6];

  return v10;
}

+ (id)cvDataStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 allocator:(void *)a5 deallocator:(void *)a6
{
  v9 = a3;
  v10 = objc_alloc_init(PSCVDataStream);
  [(PSResourceStream *)v10 setKey:v9];
  [(PSResourceStream *)v10 setProvider:9];
  v10->_allocator = a5;
  v10->_deallocator = a6;
  [(PSResourceStream *)v10 setOptions:a4->storage_mode, a4->creation_mode];

  return v10;
}

- (BOOL)validate:(id *)a3
{
  if ([(PSResourceStream *)self resourceClass]!= 8)
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
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"CVDataBuffer properties required for descriptor mode (options.creation_mode)"];
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