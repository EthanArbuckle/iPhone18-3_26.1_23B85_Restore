@interface SFCollectionStyleRow
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCollectionStyleRow)initWithCoder:(id)a3;
- (SFCollectionStyleRow)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCollectionStyleRow

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFCollectionStyleRow;
  v3 = [(SFCollectionStyle *)&v7 hash];
  v4 = [(SFCollectionStyleRow *)self drawPlattersIfNecessary];
  v5 = v4 ^ [(SFCollectionStyleRow *)self isInsetGrouped];
  return v3 ^ v5 ^ [(SFCollectionStyleRow *)self rowStyle];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFCollectionStyleRow *)v4 isMemberOfClass:objc_opt_class()]&& (v11.receiver = self, v11.super_class = SFCollectionStyleRow, [(SFCollectionStyle *)&v11 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFCollectionStyleRow *)self drawPlattersIfNecessary];
    if (v6 == [(SFCollectionStyleRow *)v5 drawPlattersIfNecessary]&& (v7 = [(SFCollectionStyleRow *)self isInsetGrouped], v7 == [(SFCollectionStyleRow *)v5 isInsetGrouped]))
    {
      v9 = [(SFCollectionStyleRow *)self rowStyle];
      v8 = v9 == [(SFCollectionStyleRow *)v5 rowStyle];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SFCollectionStyleRow;
  v4 = [(SFCollectionStyle *)&v6 copyWithZone:a3];
  [v4 setDrawPlattersIfNecessary:{-[SFCollectionStyleRow drawPlattersIfNecessary](self, "drawPlattersIfNecessary")}];
  [v4 setIsInsetGrouped:{-[SFCollectionStyleRow isInsetGrouped](self, "isInsetGrouped")}];
  [v4 setRowStyle:{-[SFCollectionStyleRow rowStyle](self, "rowStyle")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCollectionStyleRow alloc] initWithFacade:self];
  v3 = [(_SFPBCollectionStyleRow *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCollectionStyleRow alloc] initWithFacade:self];
  v3 = [(_SFPBCollectionStyleRow *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCollectionStyleRow alloc] initWithFacade:self];
  v5 = [(_SFPBCollectionStyleRow *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCollectionStyleRow)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCollectionStyleRow alloc] initWithData:v5];
  v7 = [(SFCollectionStyleRow *)self initWithProtobuf:v6];

  return v7;
}

- (SFCollectionStyleRow)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFCollectionStyleRow;
  v5 = [(SFCollectionStyleRow *)&v8 init];
  if (v5)
  {
    if ([v4 drawPlattersIfNecessary])
    {
      -[SFCollectionStyleRow setDrawPlattersIfNecessary:](v5, "setDrawPlattersIfNecessary:", [v4 drawPlattersIfNecessary]);
    }

    if ([v4 isInsetGrouped])
    {
      -[SFCollectionStyleRow setIsInsetGrouped:](v5, "setIsInsetGrouped:", [v4 isInsetGrouped]);
    }

    if ([v4 rowStyle])
    {
      -[SFCollectionStyleRow setRowStyle:](v5, "setRowStyle:", [v4 rowStyle]);
    }

    v6 = v5;
  }

  return v5;
}

@end