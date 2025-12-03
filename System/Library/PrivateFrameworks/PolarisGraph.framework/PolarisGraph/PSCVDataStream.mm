@interface PSCVDataStream
+ (id)cvDataStreamWithKey:(char *)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator;
+ (id)cvDataStreamWithResourceKey:(id)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator;
+ (id)cvDataStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSCVDataStream)init;
- (PSCVDataStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PSCVDataStream;
  [(PSResourceStream *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeInteger:self->_height forKey:@"height"];
  [coderCopy encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
}

- (PSCVDataStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PSCVDataStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:8];
    v6->_width = [coderCopy decodeIntegerForKey:@"width"];
    v6->_height = [coderCopy decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [coderCopy decodeInt32ForKey:@"pixelFormat"];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

+ (id)cvDataStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  keyCopy = key;
  v12 = objc_alloc_init(PSCVDataStream);
  [(PSResourceStream *)v12 setKey:keyCopy];
  [(PSResourceStream *)v12 setProvider:9];
  v12->_width = width;
  v12->_height = height;
  v12->_pixelFormat = format;
  [(PSResourceStream *)v12 setOptions:options->storage_mode, options->creation_mode];

  return v12;
}

+ (id)cvDataStreamWithKey:(char *)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator
{
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v10 = [PSCVDataStream cvDataStreamWithResourceKey:v9 options:options allocator:allocator deallocator:deallocator];

  return v10;
}

+ (id)cvDataStreamWithResourceKey:(id)key options:(ps_resource_options *)options allocator:(void *)allocator deallocator:(void *)deallocator
{
  keyCopy = key;
  v10 = objc_alloc_init(PSCVDataStream);
  [(PSResourceStream *)v10 setKey:keyCopy];
  [(PSResourceStream *)v10 setProvider:9];
  v10->_allocator = allocator;
  v10->_deallocator = deallocator;
  [(PSResourceStream *)v10 setOptions:options->storage_mode, options->creation_mode];

  return v10;
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]!= 8)
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
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"CVDataBuffer properties required for descriptor mode (options.creation_mode)"];
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