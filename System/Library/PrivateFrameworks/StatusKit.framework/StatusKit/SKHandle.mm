@interface SKHandle
- (BOOL)isEqual:(id)a3;
- (BOOL)isExactlyEqualToHandle:(id)a3;
- (SKHandle)initWithCoder:(id)a3;
- (SKHandle)initWithString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKHandle

- (SKHandle)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKHandle;
  v5 = [(SKHandle *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    handleString = v5->_handleString;
    v5->_handleString = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKHandle *)self handleString];
  v6 = [v3 stringWithFormat:@"<%@: %p handleString = %@>", v4, self, v5];;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKHandle *)self isExactlyEqualToHandle:v4];

  return v5;
}

- (BOOL)isExactlyEqualToHandle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(SKHandle *)v4 handleString];
    if (v6 || self->_handleString)
    {
      v7 = [(SKHandle *)v5 handleString];
      v8 = [v7 isEqualToString:self->_handleString];
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SKHandle *)self handleString];
  v3 = [v2 hash];

  return v3;
}

- (SKHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handleString"];

  v6 = [(SKHandle *)self initWithString:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SKHandle allocWithZone:a3];
  v5 = [(SKHandle *)self handleString];
  v6 = [(SKHandle *)v4 initWithString:v5];

  return v6;
}

@end