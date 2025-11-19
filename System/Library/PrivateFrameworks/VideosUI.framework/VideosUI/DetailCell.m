@interface DetailCell
- (DetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation DetailCell

- (DetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = DetailCell;
  return [(DetailCell *)&v5 initWithStyle:1 reuseIdentifier:a4];
}

@end