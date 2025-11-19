@interface PKTableViewCellWithSubtitleStyle
- (PKTableViewCellWithSubtitleStyle)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PKTableViewCellWithSubtitleStyle

- (PKTableViewCellWithSubtitleStyle)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKTableViewCellWithSubtitleStyle;
  v4 = [(PKTableViewCellWithSubtitleStyle *)&v8 initWithStyle:3 reuseIdentifier:a4];
  v5 = [(PKTableViewCellWithSubtitleStyle *)v4 textLabel];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  v6 = [(PKTableViewCellWithSubtitleStyle *)v4 detailTextLabel];
  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v4;
}

@end