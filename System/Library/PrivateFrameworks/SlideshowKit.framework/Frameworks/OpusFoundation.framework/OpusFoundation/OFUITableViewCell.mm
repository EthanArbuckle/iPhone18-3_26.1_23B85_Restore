@interface OFUITableViewCell
- (OFUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dealloc;
- (void)prepareForReuse;
@end

@implementation OFUITableViewCell

- (OFUITableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = OFUITableViewCell;
  return [(OFUITableViewCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OFUITableViewCell;
  [(OFUITableViewCell *)&v2 dealloc];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = OFUITableViewCell;
  [(OFUITableViewCell *)&v2 prepareForReuse];
}

@end