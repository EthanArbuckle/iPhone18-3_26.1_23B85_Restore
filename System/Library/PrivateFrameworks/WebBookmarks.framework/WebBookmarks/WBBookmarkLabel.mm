@interface WBBookmarkLabel
- (BOOL)isEqual:(id)a3;
- (NSString)privacyPreservingDescription;
- (WBBookmarkLabel)initWithCoder:(id)a3;
- (WBBookmarkLabel)initWithTitle:(id)a3 address:(id)a4 pinned:(BOOL)a5;
- (WBBookmarkLabel)labelWithAddress:(id)a3;
- (WBBookmarkLabel)labelWithTitle:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBBookmarkLabel

- (WBBookmarkLabel)initWithTitle:(id)a3 address:(id)a4 pinned:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = WBBookmarkLabel;
  v10 = [(WBBookmarkLabel *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [v9 copy];
    address = v10->_address;
    v10->_address = v13;

    v10->_pinned = a5;
    v15 = v10;
  }

  return v10;
}

- (WBBookmarkLabel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Address"];
  v7 = [v4 decodeBoolForKey:@"Pinned"];

  v8 = [(WBBookmarkLabel *)self initWithTitle:v5 address:v6 pinned:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"Title"];
  [v5 encodeObject:self->_address forKey:@"Address"];
  [v5 encodeBool:self->_pinned forKey:@"Pinned"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBBookmarkLabel *)v5 title];
      v7 = [(WBBookmarkLabel *)self title];
      if (WBSIsEqual())
      {
        v8 = [(WBBookmarkLabel *)v5 address];
        v9 = [(WBBookmarkLabel *)self address];
        if (WBSIsEqual())
        {
          v10 = [(WBBookmarkLabel *)v5 isPinned];
          v11 = v10 ^ [(WBBookmarkLabel *)self isPinned]^ 1;
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

- (WBBookmarkLabel)labelWithTitle:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTitle:v4 address:self->_address pinned:self->_pinned];

  return v5;
}

- (WBBookmarkLabel)labelWithAddress:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTitle:self->_title address:v4 pinned:self->_pinned];

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