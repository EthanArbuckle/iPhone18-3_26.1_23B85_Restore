@interface RTTUIResponseCell
- (RTTUIResponseCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation RTTUIResponseCell

- (RTTUIResponseCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = RTTUIResponseCell;
  v4 = [(RTTUIResponseCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(RTTUIResponseCell *)v4 textLabel];
    [v6 setNumberOfLines:0];
  }

  return v5;
}

@end