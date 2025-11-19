@interface TTRNLTextStructuredEventLocation
- (TTRNLTextStructuredEventLocation)initWithRange:(_NSRange)a3 locationType:(int64_t)a4 proximity:(int64_t)a5;
- (_NSRange)range;
- (id)description;
@end

@implementation TTRNLTextStructuredEventLocation

- (TTRNLTextStructuredEventLocation)initWithRange:(_NSRange)a3 locationType:(int64_t)a4 proximity:(int64_t)a5
{
  length = a3.length;
  location = a3.location;
  v10.receiver = self;
  v10.super_class = TTRNLTextStructuredEventLocation;
  result = [(TTRNLTextStructuredEventLocation *)&v10 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_locationType = a4;
    result->_proximity = a5;
  }

  return result;
}

- (id)description
{
  v3 = [(TTRNLTextStructuredEventLocation *)self locationType];
  v4 = @"unknown";
  if (v3 <= 2)
  {
    v4 = off_2788BC4A8[v3];
  }

  v5 = [(TTRNLTextStructuredEventLocation *)self proximity];
  v6 = @"leave";
  if (v5 != 1)
  {
    v6 = @"unknown";
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"enter";
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15.location = [(TTRNLTextStructuredEventLocation *)self range];
  v11 = NSStringFromRange(v15);
  v12 = [v8 stringWithFormat:@"<%@ range=%@, locationType=%@, proximity=%@>", v10, v11, v4, v7];

  return v12;
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