@interface SFPhotosAggregatedInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosAggregatedInfo)initWithCoder:(id)coder;
- (SFPhotosAggregatedInfo)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPhotosAggregatedInfo

- (unint64_t)hash
{
  totalNumberOfAssets = [(SFPhotosAggregatedInfo *)self totalNumberOfAssets];
  v4 = [(SFPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets]^ totalNumberOfAssets;
  return v4 ^ [(SFPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if ([(SFPhotosAggregatedInfo *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    totalNumberOfAssets = [(SFPhotosAggregatedInfo *)self totalNumberOfAssets];
    if (totalNumberOfAssets == [(SFPhotosAggregatedInfo *)v5 totalNumberOfAssets]&& (v7 = [(SFPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets], v7 == [(SFPhotosAggregatedInfo *)v5 totalNumberOfEmbeddingMatchedAssets]))
    {
      totalNumberOfMetadataMatchedAssets = [(SFPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets];
      v9 = totalNumberOfMetadataMatchedAssets == [(SFPhotosAggregatedInfo *)v5 totalNumberOfMetadataMatchedAssets];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setTotalNumberOfAssets:{-[SFPhotosAggregatedInfo totalNumberOfAssets](self, "totalNumberOfAssets")}];
  [v4 setTotalNumberOfEmbeddingMatchedAssets:{-[SFPhotosAggregatedInfo totalNumberOfEmbeddingMatchedAssets](self, "totalNumberOfEmbeddingMatchedAssets")}];
  [v4 setTotalNumberOfMetadataMatchedAssets:{-[SFPhotosAggregatedInfo totalNumberOfMetadataMatchedAssets](self, "totalNumberOfMetadataMatchedAssets")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosAggregatedInfo alloc] initWithFacade:self];
  jsonData = [(_SFPBPhotosAggregatedInfo *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosAggregatedInfo alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPhotosAggregatedInfo *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPhotosAggregatedInfo alloc] initWithFacade:self];
  data = [(_SFPBPhotosAggregatedInfo *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPhotosAggregatedInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPhotosAggregatedInfo alloc] initWithData:v5];
  v7 = [(SFPhotosAggregatedInfo *)self initWithProtobuf:v6];

  return v7;
}

- (SFPhotosAggregatedInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFPhotosAggregatedInfo;
  v5 = [(SFPhotosAggregatedInfo *)&v8 init];
  if (v5)
  {
    if ([protobufCopy totalNumberOfAssets])
    {
      -[SFPhotosAggregatedInfo setTotalNumberOfAssets:](v5, "setTotalNumberOfAssets:", [protobufCopy totalNumberOfAssets]);
    }

    if ([protobufCopy totalNumberOfEmbeddingMatchedAssets])
    {
      -[SFPhotosAggregatedInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [protobufCopy totalNumberOfEmbeddingMatchedAssets]);
    }

    if ([protobufCopy totalNumberOfMetadataMatchedAssets])
    {
      -[SFPhotosAggregatedInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [protobufCopy totalNumberOfMetadataMatchedAssets]);
    }

    v6 = v5;
  }

  return v5;
}

@end