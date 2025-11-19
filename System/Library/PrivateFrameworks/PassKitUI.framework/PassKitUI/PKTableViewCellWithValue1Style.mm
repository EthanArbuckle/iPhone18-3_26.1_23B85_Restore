@interface PKTableViewCellWithValue1Style
- (PKTableViewCellWithValue1Style)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PKTableViewCellWithValue1Style

- (PKTableViewCellWithValue1Style)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKTableViewCellWithValue1Style;
  v4 = [(PKTableViewCellWithValue1Style *)&v8 initWithStyle:1 reuseIdentifier:a4];
  v5 = [(PKTableViewCellWithValue1Style *)v4 textLabel];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  v6 = [(PKTableViewCellWithValue1Style *)v4 detailTextLabel];
  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v4;
}

@end