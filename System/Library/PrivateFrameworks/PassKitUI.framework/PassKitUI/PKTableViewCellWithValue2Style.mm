@interface PKTableViewCellWithValue2Style
- (PKTableViewCellWithValue2Style)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PKTableViewCellWithValue2Style

- (PKTableViewCellWithValue2Style)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PKTableViewCellWithValue2Style;
  v4 = [(PKTableViewCellWithValue2Style *)&v8 initWithStyle:2 reuseIdentifier:identifier];
  textLabel = [(PKTableViewCellWithValue2Style *)v4 textLabel];
  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  detailTextLabel = [(PKTableViewCellWithValue2Style *)v4 detailTextLabel];
  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v4;
}

@end