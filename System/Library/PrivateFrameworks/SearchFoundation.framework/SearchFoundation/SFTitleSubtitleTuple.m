@interface SFTitleSubtitleTuple
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTitleSubtitleTuple)initWithCoder:(id)a3;
- (SFTitleSubtitleTuple)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTitleSubtitleTuple

- (unint64_t)hash
{
  v3 = [(SFTitleSubtitleTuple *)self title];
  v4 = [v3 hash];
  v5 = [(SFTitleSubtitleTuple *)self subtitle];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    if ([(SFTitleSubtitleTuple *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFTitleSubtitleTuple *)self title];
      v8 = [(SFTitleSubtitleTuple *)v6 title];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(SFTitleSubtitleTuple *)self title];
      if (v9)
      {
        v3 = [(SFTitleSubtitleTuple *)self title];
        v10 = [(SFTitleSubtitleTuple *)v6 title];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(SFTitleSubtitleTuple *)self subtitle];
      v13 = [(SFTitleSubtitleTuple *)v6 subtitle];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(SFTitleSubtitleTuple *)self subtitle];
        if (v15)
        {
          v16 = v15;
          v19 = [(SFTitleSubtitleTuple *)self subtitle];
          [(SFTitleSubtitleTuple *)v6 subtitle];
          v17 = v20 = v3;
          v11 = [v19 isEqual:v17];

          v3 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      v10 = v21;
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFTitleSubtitleTuple *)self title];
  v6 = [v5 copy];
  [v4 setTitle:v6];

  v7 = [(SFTitleSubtitleTuple *)self subtitle];
  v8 = [v7 copy];
  [v4 setSubtitle:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTitleSubtitleTuple alloc] initWithFacade:self];
  v3 = [(_SFPBTitleSubtitleTuple *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTitleSubtitleTuple alloc] initWithFacade:self];
  v3 = [(_SFPBTitleSubtitleTuple *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBTitleSubtitleTuple alloc] initWithFacade:self];
  v5 = [(_SFPBTitleSubtitleTuple *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFTitleSubtitleTuple)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTitleSubtitleTuple alloc] initWithData:v5];
  v7 = [(SFTitleSubtitleTuple *)self initWithProtobuf:v6];

  return v7;
}

- (SFTitleSubtitleTuple)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFTitleSubtitleTuple;
  v5 = [(SFTitleSubtitleTuple *)&v12 init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(SFTitleSubtitleTuple *)v5 setTitle:v7];
    }

    v8 = [v4 subtitle];

    if (v8)
    {
      v9 = [v4 subtitle];
      [(SFTitleSubtitleTuple *)v5 setSubtitle:v9];
    }

    v10 = v5;
  }

  return v5;
}

@end