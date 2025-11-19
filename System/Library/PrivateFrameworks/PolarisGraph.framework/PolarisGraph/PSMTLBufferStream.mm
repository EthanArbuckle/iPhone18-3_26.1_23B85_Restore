@interface PSMTLBufferStream
+ (id)mtlBufferStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 length:(unint64_t)a5 mtlOptions:(unint64_t)a6;
+ (id)mtlBufferStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 length:(unint64_t)a5 mtlOptions:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSMTLBufferStream)init;
- (PSMTLBufferStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PSMTLBufferStream;
  [(PSResourceStream *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_length forKey:@"length"];
  [v4 encodeInteger:self->_mtlResourceOptions forKey:@"mtlResourceOptions"];
}

- (PSMTLBufferStream)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSMTLBufferStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:5];
    v6->_length = [v4 decodeInt64ForKey:@"length"];
    v6->_mtlResourceOptions = [v4 decodeIntegerForKey:@"mtlResourceOptions"];
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
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

+ (id)mtlBufferStreamWithKey:(char *)a3 options:(ps_resource_options *)a4 length:(unint64_t)a5 mtlOptions:(unint64_t)a6
{
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", a3];
  v10 = [PSMTLBufferStream mtlBufferStreamWithResourceKey:v9 options:a4 length:a5 mtlOptions:a6];

  return v10;
}

+ (id)mtlBufferStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 length:(unint64_t)a5 mtlOptions:(unint64_t)a6
{
  v9 = a3;
  v10 = objc_alloc_init(PSMTLBufferStream);
  [(PSResourceStream *)v10 setKey:v9];
  v10->_length = a5;
  v10->_mtlResourceOptions = a6;
  [(PSResourceStream *)v10 setOptions:a4->storage_mode, a4->creation_mode];

  return v10;
}

- (BOOL)validate:(id *)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource must have a valid/supported class"];
  if (a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v4];
  }

  return 0;
}

@end