@interface SBLineFragment
+ (id)fragmentWithIndex:(unint64_t)index length:(unint64_t)length lineWidth:(double)width;
- (_NSRange)range;
- (id)description;
@end

@implementation SBLineFragment

+ (id)fragmentWithIndex:(unint64_t)index length:(unint64_t)length lineWidth:(double)width
{
  v8 = objc_alloc_init(SBLineFragment);
  [(SBLineFragment *)v8 setIndex:index];
  [(SBLineFragment *)v8 setRange:index, length];
  [(SBLineFragment *)v8 setLineWidth:width];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v10.location = [(SBLineFragment *)self range];
  v5 = NSStringFromRange(v10);
  [(SBLineFragment *)self lineWidth];
  v7 = [v3 stringWithFormat:@"<%@ %p range: %@; lineWidth: %.1f>", v4, self, v5, v6];;

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