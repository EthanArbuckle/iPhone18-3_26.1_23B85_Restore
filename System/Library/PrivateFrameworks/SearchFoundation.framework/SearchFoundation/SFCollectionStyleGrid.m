@interface SFCollectionStyleGrid
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCollectionStyleGrid)initWithCoder:(id)a3;
- (SFCollectionStyleGrid)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCollectionStyleGrid

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = SFCollectionStyleGrid;
  v3 = [(SFCollectionStyle *)&v6 hash];
  v4 = [(SFCollectionStyleGrid *)self numberOfColumns];
  return v4 ^ [(SFCollectionStyleGrid *)self gridStyle]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(SFCollectionStyleGrid *)v4 isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFCollectionStyleGrid, [(SFCollectionStyle *)&v10 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFCollectionStyleGrid *)self numberOfColumns];
    if (v6 == [(SFCollectionStyleGrid *)v5 numberOfColumns])
    {
      v7 = [(SFCollectionStyleGrid *)self gridStyle];
      v8 = v7 == [(SFCollectionStyleGrid *)v5 gridStyle];
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
  v6.super_class = SFCollectionStyleGrid;
  v4 = [(SFCollectionStyle *)&v6 copyWithZone:a3];
  [v4 setNumberOfColumns:{-[SFCollectionStyleGrid numberOfColumns](self, "numberOfColumns")}];
  [v4 setGridStyle:{-[SFCollectionStyleGrid gridStyle](self, "gridStyle")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCollectionStyleGrid alloc] initWithFacade:self];
  v3 = [(_SFPBCollectionStyleGrid *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCollectionStyleGrid alloc] initWithFacade:self];
  v3 = [(_SFPBCollectionStyleGrid *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCollectionStyleGrid alloc] initWithFacade:self];
  v5 = [(_SFPBCollectionStyleGrid *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCollectionStyleGrid)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCollectionStyleGrid alloc] initWithData:v5];
  v7 = [(SFCollectionStyleGrid *)self initWithProtobuf:v6];

  return v7;
}

- (SFCollectionStyleGrid)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFCollectionStyleGrid;
  v5 = [(SFCollectionStyleGrid *)&v8 init];
  if (v5)
  {
    if ([v4 numberOfColumns])
    {
      -[SFCollectionStyleGrid setNumberOfColumns:](v5, "setNumberOfColumns:", [v4 numberOfColumns]);
    }

    if ([v4 gridStyle])
    {
      -[SFCollectionStyleGrid setGridStyle:](v5, "setGridStyle:", [v4 gridStyle]);
    }

    v6 = v5;
  }

  return v5;
}

@end