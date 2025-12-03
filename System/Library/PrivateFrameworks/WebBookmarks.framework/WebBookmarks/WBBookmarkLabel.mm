@interface WBBookmarkLabel
- (BOOL)isEqual:(id)equal;
- (NSString)privacyPreservingDescription;
- (WBBookmarkLabel)initWithCoder:(id)coder;
- (WBBookmarkLabel)initWithTitle:(id)title address:(id)address pinned:(BOOL)pinned;
- (WBBookmarkLabel)labelWithAddress:(id)address;
- (WBBookmarkLabel)labelWithTitle:(id)title;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBBookmarkLabel

- (WBBookmarkLabel)initWithTitle:(id)title address:(id)address pinned:(BOOL)pinned
{
  titleCopy = title;
  addressCopy = address;
  v17.receiver = self;
  v17.super_class = WBBookmarkLabel;
  v10 = [(WBBookmarkLabel *)&v17 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [addressCopy copy];
    address = v10->_address;
    v10->_address = v13;

    v10->_pinned = pinned;
    v15 = v10;
  }

  return v10;
}

- (WBBookmarkLabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
  v7 = [coderCopy decodeBoolForKey:@"Pinned"];

  v8 = [(WBBookmarkLabel *)self initWithTitle:v5 address:v6 pinned:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"Title"];
  [coderCopy encodeObject:self->_address forKey:@"Address"];
  [coderCopy encodeBool:self->_pinned forKey:@"Pinned"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(WBBookmarkLabel *)v5 title];
      title2 = [(WBBookmarkLabel *)self title];
      if (WBSIsEqual())
      {
        address = [(WBBookmarkLabel *)v5 address];
        address2 = [(WBBookmarkLabel *)self address];
        if (WBSIsEqual())
        {
          isPinned = [(WBBookmarkLabel *)v5 isPinned];
          v11 = isPinned ^ [(WBBookmarkLabel *)self isPinned]^ 1;
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (WBBookmarkLabel)labelWithTitle:(id)title
{
  titleCopy = title;
  v5 = [objc_alloc(objc_opt_class()) initWithTitle:titleCopy address:self->_address pinned:self->_pinned];

  return v5;
}

- (WBBookmarkLabel)labelWithAddress:(id)address
{
  addressCopy = address;
  v5 = [objc_alloc(objc_opt_class()) initWithTitle:self->_title address:addressCopy pinned:self->_pinned];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_pinned)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p; title: %@, address: %@, pinned: %@>", v4, self, self->_title, self->_address, v5];
}

- (NSString)privacyPreservingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSString *)self->_title hash];
  v6 = [(NSString *)self->_address hash];
  if (self->_pinned)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p; title hash: %zu, address hash: %zu, pinned: %@>", v4, self, v5, v6, v7];
}

@end