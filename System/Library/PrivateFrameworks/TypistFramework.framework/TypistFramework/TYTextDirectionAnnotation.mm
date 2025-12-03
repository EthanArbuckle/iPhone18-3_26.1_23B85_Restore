@interface TYTextDirectionAnnotation
+ (id)initWithRange:(_NSRange)range textDirection:(unint64_t)direction;
- (_NSRange)range;
- (id)description;
@end

@implementation TYTextDirectionAnnotation

+ (id)initWithRange:(_NSRange)range textDirection:(unint64_t)direction
{
  length = range.length;
  location = range.location;
  v7 = objc_alloc_init(TYTextDirectionAnnotation);
  [(TYTextDirectionAnnotation *)v7 setRange:location, length];
  [(TYTextDirectionAnnotation *)v7 setTextDirection:direction];

  return v7;
}

- (id)description
{
  textDirection = [(TYTextDirectionAnnotation *)self textDirection];
  if (textDirection - 1 > 3)
  {
    v4 = @"Unknown direction";
  }

  else
  {
    v4 = off_279DF4888[textDirection - 1];
  }

  v5 = MEMORY[0x277CCACA8];
  v10.location = [(TYTextDirectionAnnotation *)self range];
  v6 = NSStringFromRange(v10);
  v7 = [v5 stringWithFormat:@"%@: %@", v6, v4];

  return v7;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end