@interface RTTUIResponseCell
- (RTTUIResponseCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation RTTUIResponseCell

- (RTTUIResponseCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = RTTUIResponseCell;
  v4 = [(RTTUIResponseCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(RTTUIResponseCell *)v4 textLabel];
    [textLabel setNumberOfLines:0];
  }

  return v5;
}

@end