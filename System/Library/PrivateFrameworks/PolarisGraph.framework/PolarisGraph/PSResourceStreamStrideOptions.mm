@interface PSResourceStreamStrideOptions
- (PSResourceStreamStrideOptions)initWithCoder:(id)coder;
- (PSResourceStreamStrideOptions)initWithOffset:(unsigned int)offset;
@end

@implementation PSResourceStreamStrideOptions

- (PSResourceStreamStrideOptions)initWithOffset:(unsigned int)offset
{
  v8.receiver = self;
  v8.super_class = PSResourceStreamStrideOptions;
  v4 = [(PSResourceStreamStrideOptions *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_offset = offset;
    v6 = v4;
  }

  return v5;
}

- (PSResourceStreamStrideOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PSResourceStreamStrideOptions;
  v5 = [(PSResourceStreamStrideOptions *)&v7 init];
  if (v5)
  {
    v5 = -[PSResourceStreamStrideOptions initWithOffset:](v5, "initWithOffset:", [coderCopy decodeInt32ForKey:@"offset"]);
  }

  return v5;
}

@end