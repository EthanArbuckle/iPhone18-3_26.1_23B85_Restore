@interface PKShareRowItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToareRowItem:(id)a3;
- (NSCopying)identifier;
- (unint64_t)hash;
@end

@implementation PKShareRowItem

- (NSCopying)identifier
{
  v3 = [(PKPassShare *)self->_share identifier];
  title = v3;
  if (!v3)
  {
    title = self->_title;
  }

  v5 = title;

  return title;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKShareRowItem *)self identifier];
  [v3 addObject:v4];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKShareRowItem *)self isEqualToareRowItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToareRowItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKShareRowItem *)self identifier];
    v6 = [v4 identifier];
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