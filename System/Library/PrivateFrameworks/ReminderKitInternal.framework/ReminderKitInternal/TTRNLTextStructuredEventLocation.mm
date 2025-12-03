@interface TTRNLTextStructuredEventLocation
- (TTRNLTextStructuredEventLocation)initWithRange:(_NSRange)range locationType:(int64_t)type proximity:(int64_t)proximity;
- (_NSRange)range;
- (id)description;
@end

@implementation TTRNLTextStructuredEventLocation

- (TTRNLTextStructuredEventLocation)initWithRange:(_NSRange)range locationType:(int64_t)type proximity:(int64_t)proximity
{
  length = range.length;
  location = range.location;
  v10.receiver = self;
  v10.super_class = TTRNLTextStructuredEventLocation;
  result = [(TTRNLTextStructuredEventLocation *)&v10 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_locationType = type;
    result->_proximity = proximity;
  }

  return result;
}

- (id)description
{
  locationType = [(TTRNLTextStructuredEventLocation *)self locationType];
  v4 = @"unknown";
  if (locationType <= 2)
  {
    v4 = off_2788BC4A8[locationType];
  }

  proximity = [(TTRNLTextStructuredEventLocation *)self proximity];
  v6 = @"leave";
  if (proximity != 1)
  {
    v6 = @"unknown";
  }

  if (proximity)
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