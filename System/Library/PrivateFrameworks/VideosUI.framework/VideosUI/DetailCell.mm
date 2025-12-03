@interface DetailCell
- (DetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DetailCell

- (DetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = DetailCell;
  return [(DetailCell *)&v5 initWithStyle:1 reuseIdentifier:identifier];
}

@end