@interface SKHandle
- (BOOL)isEqual:(id)equal;
- (BOOL)isExactlyEqualToHandle:(id)handle;
- (SKHandle)initWithCoder:(id)coder;
- (SKHandle)initWithString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SKHandle

- (SKHandle)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = SKHandle;
  v5 = [(SKHandle *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    handleString = v5->_handleString;
    v5->_handleString = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  handleString = [(SKHandle *)self handleString];
  v6 = [v3 stringWithFormat:@"<%@: %p handleString = %@>", v4, self, handleString];;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKHandle *)self isExactlyEqualToHandle:equalCopy];

  return v5;
}

- (BOOL)isExactlyEqualToHandle:(id)handle
{
  handleCopy = handle;
  v5 = handleCopy;
  if (handleCopy == self)
  {
    v8 = 1;
  }

  else
  {
    handleString = [(SKHandle *)handleCopy handleString];
    if (handleString || self->_handleString)
    {
      handleString2 = [(SKHandle *)v5 handleString];
      v8 = [handleString2 isEqualToString:self->_handleString];
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
  handleString = [(SKHandle *)self handleString];
  v3 = [handleString hash];

  return v3;
}

- (SKHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handleString"];

  v6 = [(SKHandle *)self initWithString:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SKHandle allocWithZone:zone];
  handleString = [(SKHandle *)self handleString];
  v6 = [(SKHandle *)v4 initWithString:handleString];

  return v6;
}

@end