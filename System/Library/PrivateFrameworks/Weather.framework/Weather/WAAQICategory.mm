@interface WAAQICategory
- (WAAQICategory)initWithRange:(_NSRange)range color:(id)color;
- (_NSRange)range;
@end

@implementation WAAQICategory

- (WAAQICategory)initWithRange:(_NSRange)range color:(id)color
{
  length = range.length;
  location = range.location;
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = WAAQICategory;
  v9 = [(WAAQICategory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_range.location = location;
    v9->_range.length = length;
    objc_storeStrong(&v9->_color, color);
  }

  return v10;
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