@interface QLCacheHole
+ (id)holeWithLocation:(unint64_t)location length:(unint64_t)length;
- (BOOL)isEqual:(id)equal;
- (QLCacheHole)initWithLocation:(unint64_t)location length:(unint64_t)length;
- (_NSRange)range;
- (void)setRange:(_NSRange)range;
@end

@implementation QLCacheHole

+ (id)holeWithLocation:(unint64_t)location length:(unint64_t)length
{
  v4 = [[QLCacheHole alloc] initWithLocation:location length:length];

  return v4;
}

- (QLCacheHole)initWithLocation:(unint64_t)location length:(unint64_t)length
{
  v7.receiver = self;
  v7.super_class = QLCacheHole;
  result = [(QLCacheHole *)&v7 init];
  result->_location = location;
  result->_length = length;
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

- (void)setRange:(_NSRange)range
{
  length = range.length;
  [(QLCacheHole *)self setLocation:range.location];

  [(QLCacheHole *)self setLength:length];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(QLCacheHole *)self location], v5 == [(QLCacheHole *)equalCopy location]))
    {
      v6 = [(QLCacheHole *)self length];
      v7 = v6 == [(QLCacheHole *)equalCopy length];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end