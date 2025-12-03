@interface _SFPBPhotosAttributes
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPhotosAttributes)initWithDictionary:(id)dictionary;
- (_SFPBPhotosAttributes)initWithFacade:(id)facade;
- (_SFPBPhotosAttributes)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPhotosAttributes

- (_SFPBPhotosAttributes)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPhotosAttributes *)self init];
  if (v5)
  {
    if ([facadeCopy hasPositionIndex])
    {
      -[_SFPBPhotosAttributes setPositionIndex:](v5, "setPositionIndex:", [facadeCopy positionIndex]);
    }

    if ([facadeCopy hasIsEmbeddingMatched])
    {
      -[_SFPBPhotosAttributes setIsEmbeddingMatched:](v5, "setIsEmbeddingMatched:", [facadeCopy isEmbeddingMatched]);
    }

    if ([facadeCopy hasIsMetadataMatched])
    {
      -[_SFPBPhotosAttributes setIsMetadataMatched:](v5, "setIsMetadataMatched:", [facadeCopy isMetadataMatched]);
    }

    if ([facadeCopy hasIsVideo])
    {
      -[_SFPBPhotosAttributes setIsVideo:](v5, "setIsVideo:", [facadeCopy isVideo]);
    }

    if ([facadeCopy hasIsFavorite])
    {
      -[_SFPBPhotosAttributes setIsFavorite:](v5, "setIsFavorite:", [facadeCopy isFavorite]);
    }

    if ([facadeCopy hasPhotosSuggestionType])
    {
      -[_SFPBPhotosAttributes setPhotosSuggestionType:](v5, "setPhotosSuggestionType:", [facadeCopy photosSuggestionType]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBPhotosAttributes)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBPhotosAttributes;
  v5 = [(_SFPBPhotosAttributes *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"positionIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setPositionIndex:](v5, "setPositionIndex:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isEmbeddingMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setIsEmbeddingMatched:](v5, "setIsEmbeddingMatched:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isMetadataMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setIsMetadataMatched:](v5, "setIsMetadataMatched:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isVideo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setIsVideo:](v5, "setIsVideo:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isFavorite"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setIsFavorite:](v5, "setIsFavorite:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"photosSuggestionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setPhotosSuggestionType:](v5, "setPhotosSuggestionType:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBPhotosAttributes)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPhotosAttributes *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPhotosAttributes *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_isEmbeddingMatched)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosAttributes isEmbeddingMatched](self, "isEmbeddingMatched")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isEmbeddingMatched"];
  }

  if (self->_isFavorite)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosAttributes isFavorite](self, "isFavorite")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isFavorite"];
  }

  if (self->_isMetadataMatched)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosAttributes isMetadataMatched](self, "isMetadataMatched")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isMetadataMatched"];
  }

  if (self->_isVideo)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosAttributes isVideo](self, "isVideo")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isVideo"];
  }

  if (self->_photosSuggestionType)
  {
    photosSuggestionType = [(_SFPBPhotosAttributes *)self photosSuggestionType];
    if (photosSuggestionType >= 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", photosSuggestionType];
    }

    else
    {
      v9 = off_1E7ACE470[photosSuggestionType];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"photosSuggestionType"];
  }

  if (self->_positionIndex)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBPhotosAttributes positionIndex](self, "positionIndex")}];
    [dictionary setObject:v10 forKeyedSubscript:@"positionIndex"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if (self->_isEmbeddingMatched)
  {
    v2 = 2654435761;
  }

  else
  {
    v2 = 0;
  }

  if (self->_isMetadataMatched)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  if (self->_isVideo)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  if (self->_isFavorite)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  return v2 ^ v3 ^ v4 ^ v5 ^ (2654435761u * self->_positionIndex) ^ (2654435761 * self->_photosSuggestionType);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (positionIndex = self->_positionIndex, positionIndex == objc_msgSend(equalCopy, "positionIndex")) && (isEmbeddingMatched = self->_isEmbeddingMatched, isEmbeddingMatched == objc_msgSend(equalCopy, "isEmbeddingMatched")) && (isMetadataMatched = self->_isMetadataMatched, isMetadataMatched == objc_msgSend(equalCopy, "isMetadataMatched")) && (isVideo = self->_isVideo, isVideo == objc_msgSend(equalCopy, "isVideo")) && (isFavorite = self->_isFavorite, isFavorite == objc_msgSend(equalCopy, "isFavorite")))
  {
    photosSuggestionType = self->_photosSuggestionType;
    v11 = photosSuggestionType == [equalCopy photosSuggestionType];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBPhotosAttributes *)self positionIndex])
  {
    PBDataWriterWriteUint64Field();
  }

  if ([(_SFPBPhotosAttributes *)self isEmbeddingMatched])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBPhotosAttributes *)self isMetadataMatched])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBPhotosAttributes *)self isVideo])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBPhotosAttributes *)self isFavorite])
  {
    PBDataWriterWriteBOOLField();
  }

  photosSuggestionType = [(_SFPBPhotosAttributes *)self photosSuggestionType];
  v5 = toCopy;
  if (photosSuggestionType)
  {
    PBDataWriterWriteInt32Field();
    v5 = toCopy;
  }
}

@end