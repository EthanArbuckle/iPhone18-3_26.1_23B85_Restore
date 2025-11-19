@interface SFCollectionStyle
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCollectionStyle)initWithCoder:(id)a3;
- (SFCollectionStyle)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCollectionStyle

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFCollectionStyle *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFCollectionStyle *)self initiallyVisibleCardSectionCount];
    v7 = [(SFCollectionStyle *)v5 initiallyVisibleCardSectionCount];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setInitiallyVisibleCardSectionCount:{-[SFCollectionStyle initiallyVisibleCardSectionCount](self, "initiallyVisibleCardSectionCount")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCollectionStyle alloc] initWithFacade:self];
  v3 = [(_SFPBCollectionStyle *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCollectionStyle alloc] initWithFacade:self];
  v3 = [(_SFPBCollectionStyle *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCollectionStyle alloc] initWithFacade:self];
  v5 = [(_SFPBCollectionStyle *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCollectionStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCollectionStyle alloc] initWithData:v5];
  v7 = [(SFCollectionStyle *)self initWithProtobuf:v6];

  return v7;
}

- (SFCollectionStyle)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFCollectionStyle;
  v5 = [(SFCollectionStyle *)&v14 init];
  if (v5)
  {
    if ([v4 initiallyVisibleCardSectionCount])
    {
      -[SFCollectionStyle setInitiallyVisibleCardSectionCount:](v5, "setInitiallyVisibleCardSectionCount:", [v4 initiallyVisibleCardSectionCount]);
    }

    v6 = [v4 collectionStyleRow];

    if (v6)
    {
      v7 = [SFCollectionStyleRow alloc];
      v8 = [v4 collectionStyleRow];
    }

    else
    {
      v10 = [v4 collectionStyleGrid];

      if (v10)
      {
        v7 = [SFCollectionStyleGrid alloc];
        v8 = [v4 collectionStyleGrid];
      }

      else
      {
        v11 = [v4 collectionStyleScrolling];

        if (!v11)
        {
          v9 = v5;
          goto LABEL_13;
        }

        v7 = [SFCollectionStyleHorizontallyScrolling alloc];
        v8 = [v4 collectionStyleScrolling];
      }
    }

    v12 = v8;
    v9 = [(SFCollectionStyleRow *)v7 initWithProtobuf:v8];

    if ([v4 initiallyVisibleCardSectionCount])
    {
      -[SFCollectionStyle setInitiallyVisibleCardSectionCount:](v9, "setInitiallyVisibleCardSectionCount:", [v4 initiallyVisibleCardSectionCount]);
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

@end