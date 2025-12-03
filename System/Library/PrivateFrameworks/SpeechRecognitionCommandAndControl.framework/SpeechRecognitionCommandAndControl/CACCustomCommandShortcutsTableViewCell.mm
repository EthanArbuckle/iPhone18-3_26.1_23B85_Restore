@interface CACCustomCommandShortcutsTableViewCell
- (CACCustomCommandShortcutsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation CACCustomCommandShortcutsTableViewCell

- (CACCustomCommandShortcutsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = CACCustomCommandShortcutsTableViewCell;
  return [(CACCustomCommandShortcutsTableViewCell *)&v5 initWithStyle:3 reuseIdentifier:identifier];
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = CACCustomCommandShortcutsTableViewCell;
  [(CACCustomCommandShortcutsTableViewCell *)&v2 awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CACCustomCommandShortcutsTableViewCell;
  [(CACCustomCommandShortcutsTableViewCell *)&v4 setSelected:selected animated:animated];
}

@end