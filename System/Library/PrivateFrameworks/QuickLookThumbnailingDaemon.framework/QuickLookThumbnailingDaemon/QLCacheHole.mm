@interface QLCacheHole
+ (id)holeWithLocation:(unint64_t)a3 length:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (QLCacheHole)initWithLocation:(unint64_t)a3 length:(unint64_t)a4;
- (_NSRange)range;
- (void)setRange:(_NSRange)a3;
@end

@implementation QLCacheHole

+ (id)holeWithLocation:(unint64_t)a3 length:(unint64_t)a4
{
  v4 = [[QLCacheHole alloc] initWithLocation:a3 length:a4];

  return v4;
}

- (QLCacheHole)initWithLocation:(unint64_t)a3 length:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = QLCacheHole;
  result = [(QLCacheHole *)&v7 init];
  result->_location = a3;
  result->_length = a4;
  return result;
}

- (_NSRange)range
{
  length = self->_length;
  location = self->_location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setRange:(_NSRange)a3
{
  length = a3.length;
  [(QLCacheHole *)self setLocation:a3.location];

  [(QLCacheHole *)self setLength:length];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(QLCacheHole *)self location], v5 == [(QLCacheHole *)v4 location]))
    {
      v6 = [(QLCacheHole *)self length];
      v7 = v6 == [(QLCacheHole *)v4 length];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end