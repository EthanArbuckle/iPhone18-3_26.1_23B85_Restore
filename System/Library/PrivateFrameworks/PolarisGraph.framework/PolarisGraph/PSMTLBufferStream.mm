@interface PSMTLBufferStream
+ (id)mtlBufferStreamWithKey:(char *)key options:(ps_resource_options *)options length:(unint64_t)length mtlOptions:(unint64_t)mtlOptions;
+ (id)mtlBufferStreamWithResourceKey:(id)key options:(ps_resource_options *)options length:(unint64_t)length mtlOptions:(unint64_t)mtlOptions;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSMTLBufferStream)init;
- (PSMTLBufferStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSMTLBufferStream

- (PSMTLBufferStream)init
{
  v5.receiver = self;
  v5.super_class = PSMTLBufferStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:5];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PSMTLBufferStream;
  [(PSResourceStream *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_length forKey:@"length"];
  [coderCopy encodeInteger:self->_mtlResourceOptions forKey:@"mtlResourceOptions"];
}

- (PSMTLBufferStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PSMTLBufferStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:5];
    v6->_length = [coderCopy decodeInt64ForKey:@"length"];
    v6->_mtlResourceOptions = [coderCopy decodeIntegerForKey:@"mtlResourceOptions"];
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
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = PSMTLBufferStream;
    if ([(PSResourceStream *)&v11 isEqual:v6]&& (length = self->_length, length == [(PSMTLBufferStream *)v6 length]))
    {
      mtlResourceOptions = self->_mtlResourceOptions;
      v9 = mtlResourceOptions == [(PSMTLBufferStream *)v6 mtlResourceOptions];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)mtlBufferStreamWithKey:(char *)key options:(ps_resource_options *)options length:(unint64_t)length mtlOptions:(unint64_t)mtlOptions
{
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", key];
  v10 = [PSMTLBufferStream mtlBufferStreamWithResourceKey:v9 options:options length:length mtlOptions:mtlOptions];

  return v10;
}

+ (id)mtlBufferStreamWithResourceKey:(id)key options:(ps_resource_options *)options length:(unint64_t)length mtlOptions:(unint64_t)mtlOptions
{
  keyCopy = key;
  v10 = objc_alloc_init(PSMTLBufferStream);
  [(PSResourceStream *)v10 setKey:keyCopy];
  v10->_length = length;
  v10->_mtlResourceOptions = mtlOptions;
  [(PSResourceStream *)v10 setOptions:options->storage_mode, options->creation_mode];

  return v10;
}

- (BOOL)validate:(id *)validate
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource must have a valid/supported class"];
  if (validate)
  {
    *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v4];
  }

  return 0;
}

@end