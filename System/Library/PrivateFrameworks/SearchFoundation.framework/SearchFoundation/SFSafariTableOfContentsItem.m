@interface SFSafariTableOfContentsItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSafariTableOfContentsItem)initWithCoder:(id)a3;
- (SFSafariTableOfContentsItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSafariTableOfContentsItem

- (SFSafariTableOfContentsItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFSafariTableOfContentsItem;
  v5 = [(SFSafariTableOfContentsItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [v4 text];
      [(SFSafariTableOfContentsItem *)v5 setText:v7];
    }

    v8 = [v4 elementPath];

    if (v8)
    {
      v9 = [v4 elementPath];
      [(SFSafariTableOfContentsItem *)v5 setElementPath:v9];
    }

    v10 = [v4 trailingText];

    if (v10)
    {
      v11 = [v4 trailingText];
      [(SFSafariTableOfContentsItem *)v5 setTrailingText:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFSafariTableOfContentsItem *)self text];
  v4 = [v3 hash];
  v5 = [(SFSafariTableOfContentsItem *)self elementPath];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFSafariTableOfContentsItem *)self trailingText];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFSafariTableOfContentsItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFSafariTableOfContentsItem *)self text];
      v8 = [(SFSafariTableOfContentsItem *)v6 text];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFSafariTableOfContentsItem *)self text];
      if (v9)
      {
        v3 = [(SFSafariTableOfContentsItem *)self text];
        v10 = [(SFSafariTableOfContentsItem *)v6 text];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(SFSafariTableOfContentsItem *)self elementPath];
      v13 = [(SFSafariTableOfContentsItem *)v6 elementPath];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(SFSafariTableOfContentsItem *)self elementPath];
      if (v15)
      {
        v25 = v12;
        v16 = [(SFSafariTableOfContentsItem *)self elementPath];
        v27 = [(SFSafariTableOfContentsItem *)v6 elementPath];
        v28 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v12 = v25;
          goto LABEL_25;
        }

        v29 = v15;
        v30 = v3;
        v12 = v25;
      }

      else
      {
        v29 = 0;
        v30 = v3;
      }

      v17 = [(SFSafariTableOfContentsItem *)self trailingText];
      v18 = [(SFSafariTableOfContentsItem *)v6 trailingText];
      if ((v17 != 0) == (v18 == 0))
      {

        v11 = 0;
        v15 = v29;
        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v17;
        v26 = v18;
        v19 = [(SFSafariTableOfContentsItem *)self trailingText];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(SFSafariTableOfContentsItem *)self trailingText];
          v20 = [(SFSafariTableOfContentsItem *)v6 trailingText];
          v11 = [v22 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      v10 = v31;
      if (!v9)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFSafariTableOfContentsItem *)self text];
  v6 = [v5 copy];
  [v4 setText:v6];

  v7 = [(SFSafariTableOfContentsItem *)self elementPath];
  v8 = [v7 copy];
  [v4 setElementPath:v8];

  v9 = [(SFSafariTableOfContentsItem *)self trailingText];
  v10 = [v9 copy];
  [v4 setTrailingText:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSafariTableOfContentsItem alloc] initWithFacade:self];
  v3 = [(_SFPBSafariTableOfContentsItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSafariTableOfContentsItem alloc] initWithFacade:self];
  v3 = [(_SFPBSafariTableOfContentsItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBSafariTableOfContentsItem alloc] initWithFacade:self];
  v5 = [(_SFPBSafariTableOfContentsItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFSafariTableOfContentsItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSafariTableOfContentsItem alloc] initWithData:v5];
  v7 = [(SFSafariTableOfContentsItem *)self initWithProtobuf:v6];

  return v7;
}

@end