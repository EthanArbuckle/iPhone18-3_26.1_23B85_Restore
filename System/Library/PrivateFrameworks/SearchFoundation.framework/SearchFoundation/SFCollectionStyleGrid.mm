@interface SFCollectionStyleGrid
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCollectionStyleGrid)initWithCoder:(id)coder;
- (SFCollectionStyleGrid)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCollectionStyleGrid

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = SFCollectionStyleGrid;
  v3 = [(SFCollectionStyle *)&v6 hash];
  numberOfColumns = [(SFCollectionStyleGrid *)self numberOfColumns];
  return numberOfColumns ^ [(SFCollectionStyleGrid *)self gridStyle]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(SFCollectionStyleGrid *)equalCopy isMemberOfClass:objc_opt_class()]&& (v10.receiver = self, v10.super_class = SFCollectionStyleGrid, [(SFCollectionStyle *)&v10 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    numberOfColumns = [(SFCollectionStyleGrid *)self numberOfColumns];
    if (numberOfColumns == [(SFCollectionStyleGrid *)v5 numberOfColumns])
    {
      gridStyle = [(SFCollectionStyleGrid *)self gridStyle];
      v8 = gridStyle == [(SFCollectionStyleGrid *)v5 gridStyle];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFCollectionStyleGrid;
  v4 = [(SFCollectionStyle *)&v6 copyWithZone:zone];
  [v4 setNumberOfColumns:{-[SFCollectionStyleGrid numberOfColumns](self, "numberOfColumns")}];
  [v4 setGridStyle:{-[SFCollectionStyleGrid gridStyle](self, "gridStyle")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCollectionStyleGrid alloc] initWithFacade:self];
  jsonData = [(_SFPBCollectionStyleGrid *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCollectionStyleGrid alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCollectionStyleGrid *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCollectionStyleGrid alloc] initWithFacade:self];
  data = [(_SFPBCollectionStyleGrid *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCollectionStyleGrid)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCollectionStyleGrid alloc] initWithData:v5];
  v7 = [(SFCollectionStyleGrid *)self initWithProtobuf:v6];

  return v7;
}

- (SFCollectionStyleGrid)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFCollectionStyleGrid;
  v5 = [(SFCollectionStyleGrid *)&v8 init];
  if (v5)
  {
    if ([protobufCopy numberOfColumns])
    {
      -[SFCollectionStyleGrid setNumberOfColumns:](v5, "setNumberOfColumns:", [protobufCopy numberOfColumns]);
    }

    if ([protobufCopy gridStyle])
    {
      -[SFCollectionStyleGrid setGridStyle:](v5, "setGridStyle:", [protobufCopy gridStyle]);
    }

    v6 = v5;
  }

  return v5;
}

@end