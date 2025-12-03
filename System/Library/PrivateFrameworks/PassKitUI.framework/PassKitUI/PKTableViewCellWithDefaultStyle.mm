@interface PKTableViewCellWithDefaultStyle
- (PKTableViewCellWithDefaultStyle)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PKTableViewCellWithDefaultStyle

- (PKTableViewCellWithDefaultStyle)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PKTableViewCellWithDefaultStyle;
  v4 = [(PKTableViewCellWithDefaultStyle *)&v8 initWithStyle:0 reuseIdentifier:identifier];
  textLabel = [(PKTableViewCellWithDefaultStyle *)v4 textLabel];
  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  detailTextLabel = [(PKTableViewCellWithDefaultStyle *)v4 detailTextLabel];
  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v4;
}

@end