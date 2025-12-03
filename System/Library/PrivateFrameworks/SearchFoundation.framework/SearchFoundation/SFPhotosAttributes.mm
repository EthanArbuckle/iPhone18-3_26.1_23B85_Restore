@interface SFPhotosAttributes
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosAttributes)initWithCoder:(id)coder;
- (SFPhotosAttributes)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPhotosAttributes

- (SFPhotosAttributes)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v8.receiver = self;
  v8.super_class = SFPhotosAttributes;
  v5 = [(SFPhotosAttributes *)&v8 init];
  if (v5)
  {
    if ([protobufCopy positionIndex])
    {
      -[SFPhotosAttributes setPositionIndex:](v5, "setPositionIndex:", [protobufCopy positionIndex]);
    }

    if ([protobufCopy isEmbeddingMatched])
    {
      -[SFPhotosAttributes setIsEmbeddingMatched:](v5, "setIsEmbeddingMatched:", [protobufCopy isEmbeddingMatched]);
    }

    if ([protobufCopy isMetadataMatched])
    {
      -[SFPhotosAttributes setIsMetadataMatched:](v5, "setIsMetadataMatched:", [protobufCopy isMetadataMatched]);
    }

    if ([protobufCopy isVideo])
    {
      -[SFPhotosAttributes setIsVideo:](v5, "setIsVideo:", [protobufCopy isVideo]);
    }

    if ([protobufCopy isFavorite])
    {
      -[SFPhotosAttributes setIsFavorite:](v5, "setIsFavorite:", [protobufCopy isFavorite]);
    }

    if ([protobufCopy photosSuggestionType])
    {
      -[SFPhotosAttributes setPhotosSuggestionType:](v5, "setPhotosSuggestionType:", [protobufCopy photosSuggestionType]);
    }

    v6 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  positionIndex = [(SFPhotosAttributes *)self positionIndex];
  v4 = positionIndex ^ [(SFPhotosAttributes *)self isEmbeddingMatched];
  isMetadataMatched = [(SFPhotosAttributes *)self isMetadataMatched];
  v6 = v4 ^ isMetadataMatched ^ [(SFPhotosAttributes *)self isVideo];
  isFavorite = [(SFPhotosAttributes *)self isFavorite];
  return v6 ^ isFavorite ^ [(SFPhotosAttributes *)self photosSuggestionType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFPhotosAttributes *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    positionIndex = [(SFPhotosAttributes *)self positionIndex];
    if (positionIndex == [(SFPhotosAttributes *)v5 positionIndex]&& (v7 = [(SFPhotosAttributes *)self isEmbeddingMatched], v7 == [(SFPhotosAttributes *)v5 isEmbeddingMatched]) && (v8 = [(SFPhotosAttributes *)self isMetadataMatched], v8 == [(SFPhotosAttributes *)v5 isMetadataMatched]) && (v9 = [(SFPhotosAttributes *)self isVideo], v9 == [(SFPhotosAttributes *)v5 isVideo]) && (v10 = [(SFPhotosAttributes *)self isFavorite], v10 == [(SFPhotosAttributes *)v5 isFavorite]))
    {
      photosSuggestionType = [(SFPhotosAttributes *)self photosSuggestionType];
      v11 = photosSuggestionType == [(SFPhotosAttributes *)v5 photosSuggestionType];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  jsonData = [(_SFPBPhotosAttributes *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosAttributes alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPhotosAttributes *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPhotosAttributes alloc] initWithFacade:self];
  data = [(_SFPBPhotosAttributes *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPhotosAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPhotosAttributes alloc] initWithData:v5];
  v7 = [(SFPhotosAttributes *)self initWithProtobuf:v6];

  return v7;
}

@end