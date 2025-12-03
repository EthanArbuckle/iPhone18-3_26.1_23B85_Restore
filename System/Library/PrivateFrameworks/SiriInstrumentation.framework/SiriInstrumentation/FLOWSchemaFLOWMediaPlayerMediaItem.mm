@interface FLOWSchemaFLOWMediaPlayerMediaItem
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWMediaPlayerMediaItem)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWMediaPlayerMediaItem)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAlternative:(BOOL)alternative;
- (void)setHasIsNlsContainerResult:(BOOL)result;
- (void)setHasIsNlsResult:(BOOL)result;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWMediaPlayerMediaItem

- (FLOWSchemaFLOWMediaPlayerMediaItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = FLOWSchemaFLOWMediaPlayerMediaItem;
  v5 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWMediaPlayerMediaItem *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"artist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWMediaPlayerMediaItem *)v5 setArtist:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerMediaItem setMediaType:](v5, "setMediaType:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"entityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(FLOWSchemaFLOWMediaPlayerMediaItem *)v5 setEntityId:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isAlternative"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerMediaItem setIsAlternative:](v5, "setIsAlternative:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isNlsResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerMediaItem setIsNlsResult:](v5, "setIsNlsResult:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"isNlsContainerResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerMediaItem setIsNlsContainerResult:](v5, "setIsNlsContainerResult:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWMediaPlayerMediaItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self dictionaryRepresentation];
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
  if (self->_artist)
  {
    artist = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];
    v5 = [artist copy];
    [dictionary setObject:v5 forKeyedSubscript:@"artist"];
  }

  if (self->_entityId)
  {
    entityId = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];
    v7 = [entityId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"entityId"];
  }

  v8 = *(&self->_isNlsContainerResult + 1);
  if ((v8 & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerMediaItem isAlternative](self, "isAlternative")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isAlternative"];

    v8 = *(&self->_isNlsContainerResult + 1);
    if ((v8 & 8) == 0)
    {
LABEL_7:
      if ((v8 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((*(&self->_isNlsContainerResult + 1) & 8) == 0)
  {
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerMediaItem isNlsContainerResult](self, "isNlsContainerResult")}];
  [dictionary setObject:v10 forKeyedSubscript:@"isNlsContainerResult"];

  v8 = *(&self->_isNlsContainerResult + 1);
  if ((v8 & 4) == 0)
  {
LABEL_8:
    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerMediaItem isNlsResult](self, "isNlsResult")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isNlsResult"];

  if (!*(&self->_isNlsContainerResult + 1))
  {
    goto LABEL_17;
  }

LABEL_13:
  v12 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self mediaType]- 1;
  if (v12 > 0x1B)
  {
    v13 = @"FLOWMEDIATYPE_UNKNOWN";
  }

  else
  {
    v13 = off_1E78D5DC8[v12];
  }

  [dictionary setObject:v13 forKeyedSubscript:@"mediaType"];
LABEL_17:
  if (self->_title)
  {
    title = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];
    v15 = [title copy];
    [dictionary setObject:v15 forKeyedSubscript:@"title"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_artist hash];
  if (*(&self->_isNlsContainerResult + 1))
  {
    v5 = 2654435761 * self->_mediaType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_entityId hash];
  if ((*(&self->_isNlsContainerResult + 1) & 2) == 0)
  {
    v7 = 0;
    if ((*(&self->_isNlsContainerResult + 1) & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    if ((*(&self->_isNlsContainerResult + 1) & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v7 = 2654435761 * self->_isAlternative;
  if ((*(&self->_isNlsContainerResult + 1) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v8 = 2654435761 * self->_isNlsResult;
  if ((*(&self->_isNlsContainerResult + 1) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = 2654435761 * self->_isNlsContainerResult;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  title = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_19;
  }

  title3 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  title = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];
  title2 = [equalCopy artist];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_19;
  }

  artist = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];
  if (artist)
  {
    v13 = artist;
    artist2 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];
    artist3 = [equalCopy artist];
    v16 = [artist2 isEqual:artist3];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if (*(&self->_isNlsContainerResult + 1) != (equalCopy[43] & 1))
  {
    goto LABEL_20;
  }

  if (*(&self->_isNlsContainerResult + 1))
  {
    mediaType = self->_mediaType;
    if (mediaType != [equalCopy mediaType])
    {
      goto LABEL_20;
    }
  }

  title = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];
  title2 = [equalCopy entityId];
  if ((title != 0) == (title2 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  entityId = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];
  if (entityId)
  {
    v19 = entityId;
    entityId2 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];
    entityId3 = [equalCopy entityId];
    v22 = [entityId2 isEqual:entityId3];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v25 = *(&self->_isNlsContainerResult + 1);
  v26 = (v25 >> 1) & 1;
  v27 = equalCopy[43];
  if (v26 == ((v27 >> 1) & 1))
  {
    if (v26)
    {
      isAlternative = self->_isAlternative;
      if (isAlternative != [equalCopy isAlternative])
      {
        goto LABEL_20;
      }

      v25 = *(&self->_isNlsContainerResult + 1);
      v27 = equalCopy[43];
    }

    v29 = (v25 >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (v29)
      {
        isNlsResult = self->_isNlsResult;
        if (isNlsResult != [equalCopy isNlsResult])
        {
          goto LABEL_20;
        }

        v25 = *(&self->_isNlsContainerResult + 1);
        v27 = equalCopy[43];
      }

      v31 = (v25 >> 3) & 1;
      if (v31 == ((v27 >> 3) & 1))
      {
        if (!v31 || (isNlsContainerResult = self->_isNlsContainerResult, isNlsContainerResult == [equalCopy isNlsContainerResult]))
        {
          v23 = 1;
          goto LABEL_21;
        }
      }
    }
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  title = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];

  if (title)
  {
    PBDataWriterWriteStringField();
  }

  artist = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];

  if (artist)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isNlsContainerResult + 1))
  {
    PBDataWriterWriteInt32Field();
  }

  entityId = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];

  if (entityId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = *(&self->_isNlsContainerResult + 1);
  v8 = toCopy;
  if ((v7 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v8 = toCopy;
    v7 = *(&self->_isNlsContainerResult + 1);
    if ((v7 & 4) == 0)
    {
LABEL_11:
      if ((v7 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(&self->_isNlsContainerResult + 1) & 4) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteBOOLField();
  v8 = toCopy;
  if ((*(&self->_isNlsContainerResult + 1) & 8) != 0)
  {
LABEL_12:
    PBDataWriterWriteBOOLField();
    v8 = toCopy;
  }

LABEL_13:
}

- (void)setHasIsNlsContainerResult:(BOOL)result
{
  if (result)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xF7 | v3;
}

- (void)setHasIsNlsResult:(BOOL)result
{
  if (result)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xFB | v3;
}

- (void)setHasIsAlternative:(BOOL)alternative
{
  if (alternative)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = FLOWSchemaFLOWMediaPlayerMediaItem;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end