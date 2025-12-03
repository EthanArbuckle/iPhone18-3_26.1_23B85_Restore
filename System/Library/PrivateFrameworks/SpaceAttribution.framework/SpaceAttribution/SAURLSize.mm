@interface SAURLSize
+ (id)newWithSize:(unint64_t)size;
- (SAURLSize)initWithCoder:(id)coder;
- (SAURLSize)initWithSize:(unint64_t)size mayBePartOfCloneChain:(BOOL)chain;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SAURLSize

- (SAURLSize)initWithSize:(unint64_t)size mayBePartOfCloneChain:(BOOL)chain
{
  v7.receiver = self;
  v7.super_class = SAURLSize;
  result = [(SAURLSize *)&v7 init];
  if (result)
  {
    result->_size = size;
    result->_mayBePartOfCloneChain = chain;
  }

  return result;
}

+ (id)newWithSize:(unint64_t)size
{
  v4 = [self alloc];

  return [v4 initWithSize:size mayBePartOfCloneChain:0];
}

- (void)encodeWithCoder:(id)coder
{
  size = self->_size;
  coderCopy = coder;
  [coderCopy encodeInt64:size forKey:@"urlSize"];
  [coderCopy encodeBool:self->_mayBePartOfCloneChain forKey:@"cloneChain"];
}

- (SAURLSize)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SAURLSize;
  v5 = [(SAURLSize *)&v7 init];
  if (v5)
  {
    v5->_size = [coderCopy decodeInt64ForKey:@"urlSize"];
    v5->_mayBePartOfCloneChain = [coderCopy decodeBoolForKey:@"cloneChain"];
  }

  return v5;
}

@end