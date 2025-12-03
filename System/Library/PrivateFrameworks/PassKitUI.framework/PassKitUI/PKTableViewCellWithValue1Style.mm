@interface PKTableViewCellWithValue1Style
- (PKTableViewCellWithValue1Style)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PKTableViewCellWithValue1Style

- (PKTableViewCellWithValue1Style)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PKTableViewCellWithValue1Style;
  v4 = [(PKTableViewCellWithValue1Style *)&v8 initWithStyle:1 reuseIdentifier:identifier];
  textLabel = [(PKTableViewCellWithValue1Style *)v4 textLabel];
  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  detailTextLabel = [(PKTableViewCellWithValue1Style *)v4 detailTextLabel];
  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v4;
}

@end