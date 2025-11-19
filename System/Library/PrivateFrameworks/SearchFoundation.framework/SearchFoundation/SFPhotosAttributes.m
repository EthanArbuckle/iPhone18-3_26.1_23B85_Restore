@interface SFPhotosAttributes
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosAttributes)initWithCoder:(id)a3;
- (SFPhotosAttributes)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPhotosAttributes

- (SFPhotosAttributes)initWithProtobuf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFPhotosAttributes;
  v5 = [(SFPhotosAttributes *)&v8 init];
  if (v5)
  {
    if ([v4 positionIndex])
    {
      -[SFPhotosAttributes setPositionIndex:](v5, "setPositionIndex:", [v4 positionIndex]);
    }

    if ([v4 isEmbeddingMatched])
    {
      -[SFPhotosAttributes setIsEmbeddingMatched:](v5, "setIsEmbeddingMatched:", [v4 isEmbeddingMatched]);
    }

    if ([v4 isMetadataMatched])
    {
      -[SFPhotosAttributes setIsMetadataMatched:](v5, "setIsMetadataMatched:", [v4 isMetadataMatched]);
    }

    if ([v4 isVideo])
    {
      -[SFPhotosAttributes setIsVideo:](v5, "setIsVideo:", [v4 isVideo]);
    }

    if ([v4 isFavorite])
    {
      -[SFPhotosAttributes setIsFavorite:](v5, "setIsFavorite:", [v4 isFavorite]);
    }

    if ([v4 photosSuggestionType])
    {
      -[SFPhotosAttributes setPhotosSuggestionType:](v5, "setPhotosSuggestionType:", [v4 photosSuggestionType]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFPhotosAttributes *)self positionIndex];
  v4 = v3 ^ [(SFPhotosAttributes *)self isEmbeddingMatched];
  v5 = [(SFPhotosAttributes *)self isMetadataMatched];
  v6 = v4 ^ v5 ^ [(SFPhotosAttributes *)self isVideo];
  v7 = [(SFPhotosAttributes *)self isFavorite];
  return v6 ^ v7 ^ [(SFPhotosAttributes *)self photosSuggestionType];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFPhotosAttributes *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFPhotosAttributes *)self positionIndex];
    if (v6 == [(SFPhotosAttributes *)v5 positionIndex]&& (v7 = [(SFPhotosAttributes *)self isEmbeddingMatched], v7 == [(SFPhotosAttributes *)v5 isEmbeddingMatched]) && (v8 = [(SFPhotosAttributes *)self isMetadataMatched], v8 == [(SFPhotosAttributes *)v5 isMetadataMatched]) && (v9 = [(SFPhotosAttributes *)self isVideo], v9 == [(SFPhotosAttributes *)v5 isVideo]) && (v10 = [(SFPhotosAttributes *)self isFavorite], v10 == [(SFPhotosAttributes *)v5 isFavorite]))
    {
      v13 = [(SFPhotosAttributes *)self photosSuggestionType];
      v11 = v13 == [(SFPhotosAttributes *)v5 photosSuggestionType];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setPositionIndex:{-[SFPhotosAttributes positionIndex](self, "positionIndex")}];
  [v4 setIsEmbeddingMatched:{-[SFPhotosAttributes isEmbeddingMatched](self, "isEmbeddingMatched")}];
  [v4 setIsMetadataMatched:{-[SFPhotosAttributes isMetadataMatched](self, "isMetadataMatched")}];
  [v4 setIsVideo:{-[SFPhotosAttributes isVideo](self, "isVideo")}];
  [v4 setIsFavorite:{-[SFPhotosAttributes isFavorite](self, "isFavorite")}];
  [v4 setPhotosSuggestionType:{-[SFPhotosAttributes photosSuggestionType](self, "photosSuggestionType")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosAttributes alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosAttributes *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosAttributes alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosAttributes *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPhotosAttributes alloc] initWithFacade:self];
  v5 = [(_SFPBPhotosAttributes *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPhotosAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPhotosAttributes alloc] initWithData:v5];
  v7 = [(SFPhotosAttributes *)self initWithProtobuf:v6];

  return v7;
}

@end