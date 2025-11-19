@interface PSResourceStreamStrideOptions
- (PSResourceStreamStrideOptions)initWithCoder:(id)a3;
- (PSResourceStreamStrideOptions)initWithOffset:(unsigned int)a3;
@end

@implementation PSResourceStreamStrideOptions

- (PSResourceStreamStrideOptions)initWithOffset:(unsigned int)a3
{
  v8.receiver = self;
  v8.super_class = PSResourceStreamStrideOptions;
  v4 = [(PSResourceStreamStrideOptions *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_offset = a3;
    v6 = v4;
  }

  return v5;
}

- (PSResourceStreamStrideOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PSResourceStreamStrideOptions;
  v5 = [(PSResourceStreamStrideOptions *)&v7 init];
  if (v5)
  {
    v5 = -[PSResourceStreamStrideOptions initWithOffset:](v5, "initWithOffset:", [v4 decodeInt32ForKey:@"offset"]);
  }

  return v5;
}

@end