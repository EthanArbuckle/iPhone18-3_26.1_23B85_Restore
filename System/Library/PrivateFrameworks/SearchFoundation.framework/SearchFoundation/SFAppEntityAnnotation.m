@interface SFAppEntityAnnotation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAppEntityAnnotation)initWithCoder:(id)a3;
- (SFAppEntityAnnotation)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAppEntityAnnotation

- (SFAppEntityAnnotation)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFAppEntityAnnotation;
  v5 = [(SFAppEntityAnnotation *)&v12 init];
  if (v5)
  {
    v6 = [v4 typeIdentifer];

    if (v6)
    {
      v7 = [v4 typeIdentifer];
      [(SFAppEntityAnnotation *)v5 setTypeIdentifer:v7];
    }

    v8 = [v4 entityIdentifer];

    if (v8)
    {
      v9 = [v4 entityIdentifer];
      [(SFAppEntityAnnotation *)v5 setEntityIdentifer:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFAppEntityAnnotation *)self typeIdentifer];
  v4 = [v3 hash];
  v5 = [(SFAppEntityAnnotation *)self entityIdentifer];
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
    if ([(SFAppEntityAnnotation *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFAppEntityAnnotation *)self typeIdentifer];
      v8 = [(SFAppEntityAnnotation *)v6 typeIdentifer];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(SFAppEntityAnnotation *)self typeIdentifer];
      if (v9)
      {
        v3 = [(SFAppEntityAnnotation *)self typeIdentifer];
        v10 = [(SFAppEntityAnnotation *)v6 typeIdentifer];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(SFAppEntityAnnotation *)self entityIdentifer];
      v13 = [(SFAppEntityAnnotation *)v6 entityIdentifer];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(SFAppEntityAnnotation *)self entityIdentifer];
        if (v15)
        {
          v16 = v15;
          v19 = [(SFAppEntityAnnotation *)self entityIdentifer];
          [(SFAppEntityAnnotation *)v6 entityIdentifer];
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
  v5 = [(SFAppEntityAnnotation *)self typeIdentifer];
  v6 = [v5 copy];
  [v4 setTypeIdentifer:v6];

  v7 = [(SFAppEntityAnnotation *)self entityIdentifer];
  v8 = [v7 copy];
  [v4 setEntityIdentifer:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAppEntityAnnotation alloc] initWithFacade:self];
  v3 = [(_SFPBAppEntityAnnotation *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAppEntityAnnotation alloc] initWithFacade:self];
  v3 = [(_SFPBAppEntityAnnotation *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBAppEntityAnnotation alloc] initWithFacade:self];
  v5 = [(_SFPBAppEntityAnnotation *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFAppEntityAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAppEntityAnnotation alloc] initWithData:v5];
  v7 = [(SFAppEntityAnnotation *)self initWithProtobuf:v6];

  return v7;
}

@end