@interface PSDataStream
+ (id)dataStreamWithKey:(char *)key options:(ps_resource_options *)options length:(unint64_t)length;
+ (id)dataStreamWithResourceKey:(id)key options:(ps_resource_options *)options length:(unint64_t)length;
+ (id)dataStreamWithResourceKey:(id)key type:(unint64_t)type options:(ps_resource_options *)options length:(unint64_t)length;
+ (id)dataStreamWithResourceKey:(id)key type:(unint64_t)type options:(ps_resource_options *)options length:(unint64_t)length descriptor:(__CFData *)descriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSDataStream)init;
- (PSDataStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(unint64_t)type;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PSDataStream;
  [(PSResourceStream *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_length forKey:@"length"];
}

- (PSDataStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PSDataStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:1];
    v6->_length = [coderCopy decodeInt64ForKey:@"length"];
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
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

+ (id)dataStreamWithKey:(char *)key options:(ps_resource_options *)options length:(unint64_t)length
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v8 = [PSDataStream dataStreamWithResourceKey:v7 options:options length:length];

  return v8;
}

+ (id)dataStreamWithResourceKey:(id)key options:(ps_resource_options *)options length:(unint64_t)length
{
  keyCopy = key;
  v8 = objc_alloc_init(PSDataStream);
  [(PSResourceStream *)v8 setKey:keyCopy];
  v8->_length = length;
  [(PSResourceStream *)v8 setOptions:options->storage_mode, options->creation_mode];

  return v8;
}

+ (id)dataStreamWithResourceKey:(id)key type:(unint64_t)type options:(ps_resource_options *)options length:(unint64_t)length
{
  keyCopy = key;
  v10 = objc_alloc_init(PSDataStream);
  [(PSResourceStream *)v10 setKey:keyCopy];
  [(PSDataStream *)v10 setType:type];
  v10->_length = length;
  [(PSResourceStream *)v10 setOptions:options->storage_mode, options->creation_mode];

  return v10;
}

+ (id)dataStreamWithResourceKey:(id)key type:(unint64_t)type options:(ps_resource_options *)options length:(unint64_t)length descriptor:(__CFData *)descriptor
{
  v8 = [PSDataStream dataStreamWithResourceKey:key type:type options:options length:length];
  [v8 setSampleDescriptor:descriptor];

  return v8;
}

- (void)setType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PSDataStream;
  [(PSResourceStream *)&v5 setType:?];
  if (type == 6)
  {
    [(PSResourceStream *)self setResourceClass:12];
  }
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]!= 1 && [(PSResourceStream *)self resourceClass]!= 12)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!validate)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!validate)
    {
      goto LABEL_24;
    }

LABEL_23:
    *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v9];
    goto LABEL_24;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!self->_length)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data length invalid"];
    if (!validate)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  [(PSResourceStream *)self options];
  if (v7 != 1)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Only description mode (options.creation_mode) supported for data stream"];
    if (!validate)
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
  if (validate)
  {
    goto LABEL_23;
  }

LABEL_24:

  return 0;
}

@end