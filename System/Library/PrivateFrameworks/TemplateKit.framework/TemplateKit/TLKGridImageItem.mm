@interface TLKGridImageItem
- (CGRect)frame;
- (NSString)description;
- (_NSRange)columnRange;
@end

@implementation TLKGridImageItem

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TLKGridImageItem;
  v4 = [(TLKGridImageItem *)&v8 description];
  [(TLKGridImageItem *)self frame];
  v5 = NSStringFromCGRect(v10);
  v6 = [v3 stringWithFormat:@"%@ frame - %@", v4, v5];

  return v6;
}

- (CGRect)frame
{
  x = self->frame.origin.x;
  y = self->frame.origin.y;
  width = self->frame.size.width;
  height = self->frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_NSRange)columnRange
{
  p_columnRange = &self->columnRange;
  location = self->columnRange.location;
  length = p_columnRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end