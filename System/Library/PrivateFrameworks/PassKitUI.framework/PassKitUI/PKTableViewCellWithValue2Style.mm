@interface PKTableViewCellWithValue2Style
- (PKTableViewCellWithValue2Style)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PKTableViewCellWithValue2Style

- (PKTableViewCellWithValue2Style)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKTableViewCellWithValue2Style;
  v4 = [(PKTableViewCellWithValue2Style *)&v8 initWithStyle:2 reuseIdentifier:a4];
  v5 = [(PKTableViewCellWithValue2Style *)v4 textLabel];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  v6 = [(PKTableViewCellWithValue2Style *)v4 detailTextLabel];
  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v4;
}

@end