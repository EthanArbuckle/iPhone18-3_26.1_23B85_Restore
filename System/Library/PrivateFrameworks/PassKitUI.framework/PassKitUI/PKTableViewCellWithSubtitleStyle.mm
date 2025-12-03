@interface PKTableViewCellWithSubtitleStyle
- (PKTableViewCellWithSubtitleStyle)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PKTableViewCellWithSubtitleStyle

- (PKTableViewCellWithSubtitleStyle)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = PKTableViewCellWithSubtitleStyle;
  v4 = [(PKTableViewCellWithSubtitleStyle *)&v8 initWithStyle:3 reuseIdentifier:identifier];
  textLabel = [(PKTableViewCellWithSubtitleStyle *)v4 textLabel];
  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];

  detailTextLabel = [(PKTableViewCellWithSubtitleStyle *)v4 detailTextLabel];
  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v4;
}

@end