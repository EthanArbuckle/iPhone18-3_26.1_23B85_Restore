@interface SBLineFragment
+ (id)fragmentWithIndex:(unint64_t)a3 length:(unint64_t)a4 lineWidth:(double)a5;
- (_NSRange)range;
- (id)description;
@end

@implementation SBLineFragment

+ (id)fragmentWithIndex:(unint64_t)a3 length:(unint64_t)a4 lineWidth:(double)a5
{
  v8 = objc_alloc_init(SBLineFragment);
  [(SBLineFragment *)v8 setIndex:a3];
  [(SBLineFragment *)v8 setRange:a3, a4];
  [(SBLineFragment *)v8 setLineWidth:a5];

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