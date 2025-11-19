@interface PSJasperStream
+ (id)jasperStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSJasperStream)init;
- (PSJasperStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSJasperStream

- (PSJasperStream)init
{
  v5.receiver = self;
  v5.super_class = PSJasperStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:9];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PSJasperStream;
  [(PSResourceStream *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_width forKey:@"width"];
  [v4 encodeInteger:self->_height forKey:@"height"];
  [v4 encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
}

- (PSJasperStream)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSJasperStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:9];
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
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = PSJasperStream;
    if ([(PSResourceStream *)&v12 isEqual:v6]&& (width = self->_width, width == [(PSJasperStream *)v6 width]) && (height = self->_height, height == [(PSJasperStream *)v6 height]))
    {
      pixelFormat = self->_pixelFormat;
      v10 = pixelFormat == [(PSJasperStream *)v6 pixelFormat];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)jasperStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7
{
  v11 = a3;
  v12 = objc_alloc_init(PSJasperStream);
  [(PSResourceStream *)v12 setKey:v11];
  [(PSResourceStream *)v12 setProvider:9];
  v12->_width = a5;
  v12->_height = a6;
  v12->_pixelFormat = a7;
  [(PSResourceStream *)v12 setOptions:a4->storage_mode, a4->creation_mode];

  return v12;
}

- (BOOL)validate:(id *)a3
{
  if ([(PSResourceStream *)self resourceClass]!= 9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!a3)
    {
      goto LABEL_22;
    }

LABEL_21:
    *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v9];
    goto LABEL_22;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (v7 == 1 && (!self->_width || !self->_height))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CVDataBuffer properties required for descriptor mode (options.creation_mode)"];
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (v8 != 2)
  {
    return 1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Jasper Stream should never have a creation mode with allocator since it is unsupported"];
  if (a3)
  {
    goto LABEL_21;
  }

LABEL_22:

  return 0;
}

@end