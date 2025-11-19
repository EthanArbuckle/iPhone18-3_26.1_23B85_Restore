@interface _SFPBPhotosAttributes
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPhotosAttributes)initWithDictionary:(id)a3;
- (_SFPBPhotosAttributes)initWithFacade:(id)a3;
- (_SFPBPhotosAttributes)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPhotosAttributes

- (_SFPBPhotosAttributes)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPhotosAttributes *)self init];
  if (v5)
  {
    if ([v4 hasPositionIndex])
    {
      -[_SFPBPhotosAttributes setPositionIndex:](v5, "setPositionIndex:", [v4 positionIndex]);
    }

    if ([v4 hasIsEmbeddingMatched])
    {
      -[_SFPBPhotosAttributes setIsEmbeddingMatched:](v5, "setIsEmbeddingMatched:", [v4 isEmbeddingMatched]);
    }

    if ([v4 hasIsMetadataMatched])
    {
      -[_SFPBPhotosAttributes setIsMetadataMatched:](v5, "setIsMetadataMatched:", [v4 isMetadataMatched]);
    }

    if ([v4 hasIsVideo])
    {
      -[_SFPBPhotosAttributes setIsVideo:](v5, "setIsVideo:", [v4 isVideo]);
    }

    if ([v4 hasIsFavorite])
    {
      -[_SFPBPhotosAttributes setIsFavorite:](v5, "setIsFavorite:", [v4 isFavorite]);
    }

    if ([v4 hasPhotosSuggestionType])
    {
      -[_SFPBPhotosAttributes setPhotosSuggestionType:](v5, "setPhotosSuggestionType:", [v4 photosSuggestionType]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBPhotosAttributes)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBPhotosAttributes;
  v5 = [(_SFPBPhotosAttributes *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"positionIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setPositionIndex:](v5, "setPositionIndex:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isEmbeddingMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setIsEmbeddingMatched:](v5, "setIsEmbeddingMatched:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isMetadataMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setIsMetadataMatched:](v5, "setIsMetadataMatched:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isVideo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setIsVideo:](v5, "setIsVideo:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isFavorite"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setIsFavorite:](v5, "setIsFavorite:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"photosSuggestionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAttributes setPhotosSuggestionType:](v5, "setPhotosSuggestionType:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBPhotosAttributes)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPhotosAttributes *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPhotosAttributes *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_isEmbeddingMatched)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosAttributes isEmbeddingMatched](self, "isEmbeddingMatched")}];
    [v3 setObject:v4 forKeyedSubscript:@"isEmbeddingMatched"];
  }

  if (self->_isFavorite)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosAttributes isFavorite](self, "isFavorite")}];
    [v3 setObject:v5 forKeyedSubscript:@"isFavorite"];
  }

  if (self->_isMetadataMatched)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosAttributes isMetadataMatched](self, "isMetadataMatched")}];
    [v3 setObject:v6 forKeyedSubscript:@"isMetadataMatched"];
  }

  if (self->_isVideo)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPhotosAttributes isVideo](self, "isVideo")}];
    [v3 setObject:v7 forKeyedSubscript:@"isVideo"];
  }

  if (self->_photosSuggestionType)
  {
    v8 = [(_SFPBPhotosAttributes *)self photosSuggestionType];
    if (v8 >= 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7ACE470[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"photosSuggestionType"];
  }

  if (self->_positionIndex)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBPhotosAttributes positionIndex](self, "positionIndex")}];
    [v3 setObject:v10 forKeyedSubscript:@"positionIndex"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (positionIndex = self->_positionIndex, positionIndex == objc_msgSend(v4, "positionIndex")) && (isEmbeddingMatched = self->_isEmbeddingMatched, isEmbeddingMatched == objc_msgSend(v4, "isEmbeddingMatched")) && (isMetadataMatched = self->_isMetadataMatched, isMetadataMatched == objc_msgSend(v4, "isMetadataMatched")) && (isVideo = self->_isVideo, isVideo == objc_msgSend(v4, "isVideo")) && (isFavorite = self->_isFavorite, isFavorite == objc_msgSend(v4, "isFavorite")))
  {
    photosSuggestionType = self->_photosSuggestionType;
    v11 = photosSuggestionType == [v4 photosSuggestionType];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

  v4 = [(_SFPBPhotosAttributes *)self photosSuggestionType];
  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v5 = v6;
  }
}

@end