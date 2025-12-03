@interface PKShareRowItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToareRowItem:(id)item;
- (NSCopying)identifier;
- (unint64_t)hash;
@end

@implementation PKShareRowItem

- (NSCopying)identifier
{
  identifier = [(PKPassShare *)self->_share identifier];
  title = identifier;
  if (!identifier)
  {
    title = self->_title;
  }

  v5 = title;

  return title;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  identifier = [(PKShareRowItem *)self identifier];
  [v3 addObject:identifier];

  if (self->_title)
  {
    [v3 addObject:?];
  }

  if (self->_subtitle)
  {
    [v3 addObject:?];
  }

  if (self->_icon)
  {
    [v3 addObject:?];
  }

  v5 = PKCombinedHash();

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKShareRowItem *)self isEqualToareRowItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToareRowItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    identifier = [(PKShareRowItem *)self identifier];
    identifier2 = [itemCopy identifier];
    if (PKEqualObjects() && PKEqualObjects() && PKEqualObjects())
    {
      v7 = PKEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end