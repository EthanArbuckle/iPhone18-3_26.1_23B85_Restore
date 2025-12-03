@interface STSizeVector
+ (id)fixed:(int64_t)fixed docsAndData:(int64_t)data purgeable:(int64_t)purgeable;
+ (id)fixed:(int64_t)fixed dynamic:(int64_t)dynamic purgeable:(int64_t)purgeable;
+ (id)zero;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSizeVector:(id)vector;
- (STSizeVector)initWithCoder:(id)coder;
- (STSizeVector)initWithFixed:(int64_t)fixed docsAndData:(int64_t)data purgeable:(int64_t)purgeable;
- (id)plus:(id)plus;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSizeVector

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STSizeVector *)self isEqualToSizeVector:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSizeVector:(id)vector
{
  vectorCopy = vector;
  v5 = vectorCopy;
  if (vectorCopy && (docsAndData = self->_docsAndData, docsAndData == [vectorCopy docsAndData]) && (fixed = self->_fixed, fixed == objc_msgSend(v5, "fixed")))
  {
    purgeable = self->_purgeable;
    v9 = purgeable == [v5 purgeable];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)zero
{
  if (zero_onceToken != -1)
  {
    +[STSizeVector zero];
  }

  v3 = zero;

  return v3;
}

uint64_t __20__STSizeVector_zero__block_invoke()
{
  zero = [STSizeVector fixed:0];

  return MEMORY[0x2821F96F8]();
}

- (id)plus:(id)plus
{
  plusCopy = plus;
  v5 = [STSizeVector alloc];
  fixed = self->_fixed;
  fixed = [plusCopy fixed];
  docsAndData = self->_docsAndData;
  docsAndData = [plusCopy docsAndData];
  purgeable = self->_purgeable;
  purgeable = [plusCopy purgeable];

  purgeable2 = [(STSizeVector *)v5 initWithFixed:fixed + fixed docsAndData:docsAndData + docsAndData purgeable:purgeable + purgeable];

  return purgeable2;
}

- (STSizeVector)initWithFixed:(int64_t)fixed docsAndData:(int64_t)data purgeable:(int64_t)purgeable
{
  v9.receiver = self;
  v9.super_class = STSizeVector;
  result = [(STSizeVector *)&v9 init];
  if (result)
  {
    result->_fixed = fixed;
    result->_docsAndData = data;
    result->_purgeable = purgeable;
  }

  return result;
}

+ (id)fixed:(int64_t)fixed docsAndData:(int64_t)data purgeable:(int64_t)purgeable
{
  v5 = [[self alloc] initWithFixed:fixed docsAndData:data purgeable:purgeable];

  return v5;
}

+ (id)fixed:(int64_t)fixed dynamic:(int64_t)dynamic purgeable:(int64_t)purgeable
{
  v5 = [[self alloc] initWithFixed:fixed docsAndData:dynamic - purgeable purgeable:purgeable];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fixed = self->_fixed;
  coderCopy = coder;
  [coderCopy encodeInt64:fixed forKey:@"fixed"];
  [coderCopy encodeInt64:self->_docsAndData forKey:@"docsAndData"];
  [coderCopy encodeInt64:self->_purgeable forKey:@"purgeable"];
}

- (STSizeVector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STSizeVector;
  v5 = [(STSizeVector *)&v7 init];
  if (v5)
  {
    v5->_fixed = [coderCopy decodeInt64ForKey:@"fixed"];
    v5->_docsAndData = [coderCopy decodeInt64ForKey:@"docsAndData"];
    v5->_purgeable = [coderCopy decodeInt64ForKey:@"purgeable"];
  }

  return v5;
}

@end