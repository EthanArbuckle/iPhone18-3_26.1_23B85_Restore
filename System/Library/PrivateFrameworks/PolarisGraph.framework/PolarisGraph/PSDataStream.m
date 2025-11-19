@interface PSDataStream
+ (id)dataStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 length:(unint64_t)a5;
+ (id)dataStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 length:(unint64_t)a5;
+ (id)dataStreamWithResourceKey:(id)a3 type:(unint64_t)a4 options:(ps_resource_options *)a5 length:(unint64_t)a6;
+ (id)dataStreamWithResourceKey:(id)a3 type:(unint64_t)a4 options:(ps_resource_options *)a5 length:(unint64_t)a6 descriptor:(__CFData *)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSDataStream)init;
- (PSDataStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(unint64_t)a3;
@end

@implementation PSDataStream

- (PSDataStream)init
{
  v5.receiver = self;
  v5.super_class = PSDataStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:1];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PSDataStream;
  [(PSResourceStream *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_length forKey:@"length"];
}

- (PSDataStream)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSDataStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:1];
    v6->_length = [v4 decodeInt64ForKey:@"length"];
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
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v10.receiver = self;
    v10.super_class = PSDataStream;
    if ([(PSResourceStream *)&v10 isEqual:v6])
    {
      length = self->_length;
      v8 = length == [(PSDataStream *)v6 length];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)dataStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 length:(unint64_t)a5
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v8 = [PSDataStream dataStreamWithResourceKey:v7 options:a4 length:a5];

  return v8;
}

+ (id)dataStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 length:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_alloc_init(PSDataStream);
  [(PSResourceStream *)v8 setKey:v7];
  v8->_length = a5;
  [(PSResourceStream *)v8 setOptions:a4->storage_mode, a4->creation_mode];

  return v8;
}

+ (id)dataStreamWithResourceKey:(id)a3 type:(unint64_t)a4 options:(ps_resource_options *)a5 length:(unint64_t)a6
{
  v9 = a3;
  v10 = objc_alloc_init(PSDataStream);
  [(PSResourceStream *)v10 setKey:v9];
  [(PSDataStream *)v10 setType:a4];
  v10->_length = a6;
  [(PSResourceStream *)v10 setOptions:a5->storage_mode, a5->creation_mode];

  return v10;
}

+ (id)dataStreamWithResourceKey:(id)a3 type:(unint64_t)a4 options:(ps_resource_options *)a5 length:(unint64_t)a6 descriptor:(__CFData *)a7
{
  v8 = [PSDataStream dataStreamWithResourceKey:a3 type:a4 options:a5 length:a6];
  [v8 setSampleDescriptor:a7];

  return v8;
}

- (void)setType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PSDataStream;
  [(PSResourceStream *)&v5 setType:?];
  if (a3 == 6)
  {
    [(PSResourceStream *)self setResourceClass:12];
  }
}

- (BOOL)validate:(id *)a3
{
  if ([(PSResourceStream *)self resourceClass]!= 1 && [(PSResourceStream *)self resourceClass]!= 12)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!a3)
    {
      goto LABEL_24;
    }

LABEL_23:
    *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v9];
    goto LABEL_24;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!self->_length)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data length invalid"];
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [(PSResourceStream *)self options];
  if (v7 != 1)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only description mode (options.creation_mode) supported for data stream"];
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ([(PSResourceStream *)self options])
  {
    return 1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Storage mode (options.storage_mode) invalid"];
  if (a3)
  {
    goto LABEL_23;
  }

LABEL_24:

  return 0;
}

@end