@interface SAURLSize
+ (id)newWithSize:(unint64_t)a3;
- (SAURLSize)initWithCoder:(id)a3;
- (SAURLSize)initWithSize:(unint64_t)a3 mayBePartOfCloneChain:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SAURLSize

- (SAURLSize)initWithSize:(unint64_t)a3 mayBePartOfCloneChain:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = SAURLSize;
  result = [(SAURLSize *)&v7 init];
  if (result)
  {
    result->_size = a3;
    result->_mayBePartOfCloneChain = a4;
  }

  return result;
}

+ (id)newWithSize:(unint64_t)a3
{
  v4 = [a1 alloc];

  return [v4 initWithSize:a3 mayBePartOfCloneChain:0];
}

- (void)encodeWithCoder:(id)a3
{
  size = self->_size;
  v5 = a3;
  [v5 encodeInt64:size forKey:@"urlSize"];
  [v5 encodeBool:self->_mayBePartOfCloneChain forKey:@"cloneChain"];
}

- (SAURLSize)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SAURLSize;
  v5 = [(SAURLSize *)&v7 init];
  if (v5)
  {
    v5->_size = [v4 decodeInt64ForKey:@"urlSize"];
    v5->_mayBePartOfCloneChain = [v4 decodeBoolForKey:@"cloneChain"];
  }

  return v5;
}

@end