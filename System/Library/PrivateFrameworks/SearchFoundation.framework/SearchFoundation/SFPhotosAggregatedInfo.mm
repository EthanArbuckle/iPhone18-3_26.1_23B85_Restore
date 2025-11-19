@interface SFPhotosAggregatedInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosAggregatedInfo)initWithCoder:(id)a3;
- (SFPhotosAggregatedInfo)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPhotosAggregatedInfo

- (unint64_t)hash
{
  v3 = [(SFPhotosAggregatedInfo *)self totalNumberOfAssets];
  v4 = [(SFPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets]^ v3;
  return v4 ^ [(SFPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else if ([(SFPhotosAggregatedInfo *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFPhotosAggregatedInfo *)self totalNumberOfAssets];
    if (v6 == [(SFPhotosAggregatedInfo *)v5 totalNumberOfAssets]&& (v7 = [(SFPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets], v7 == [(SFPhotosAggregatedInfo *)v5 totalNumberOfEmbeddingMatchedAssets]))
    {
      v8 = [(SFPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets];
      v9 = v8 == [(SFPhotosAggregatedInfo *)v5 totalNumberOfMetadataMatchedAssets];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setTotalNumberOfAssets:{-[SFPhotosAggregatedInfo totalNumberOfAssets](self, "totalNumberOfAssets")}];
  [v4 setTotalNumberOfEmbeddingMatchedAssets:{-[SFPhotosAggregatedInfo totalNumberOfEmbeddingMatchedAssets](self, "totalNumberOfEmbeddingMatchedAssets")}];
  [v4 setTotalNumberOfMetadataMatchedAssets:{-[SFPhotosAggregatedInfo totalNumberOfMetadataMatchedAssets](self, "totalNumberOfMetadataMatchedAssets")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosAggregatedInfo alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosAggregatedInfo *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosAggregatedInfo alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosAggregatedInfo *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPhotosAggregatedInfo alloc] initWithFacade:self];
  v5 = [(_SFPBPhotosAggregatedInfo *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPhotosAggregatedInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPhotosAggregatedInfo alloc] initWithData:v5];
  v7 = [(SFPhotosAggregatedInfo *)self initWithProtobuf:v6];

  return v7;
}

- (SFPhotosAggregatedInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFPhotosAggregatedInfo;
  v5 = [(SFPhotosAggregatedInfo *)&v8 init];
  if (v5)
  {
    if ([v4 totalNumberOfAssets])
    {
      -[SFPhotosAggregatedInfo setTotalNumberOfAssets:](v5, "setTotalNumberOfAssets:", [v4 totalNumberOfAssets]);
    }

    if ([v4 totalNumberOfEmbeddingMatchedAssets])
    {
      -[SFPhotosAggregatedInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v4 totalNumberOfEmbeddingMatchedAssets]);
    }

    if ([v4 totalNumberOfMetadataMatchedAssets])
    {
      -[SFPhotosAggregatedInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v4 totalNumberOfMetadataMatchedAssets]);
    }

    v6 = v5;
  }

  return v5;
}

@end