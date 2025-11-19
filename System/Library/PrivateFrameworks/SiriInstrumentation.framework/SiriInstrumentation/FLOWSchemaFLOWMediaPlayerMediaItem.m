@interface FLOWSchemaFLOWMediaPlayerMediaItem
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWMediaPlayerMediaItem)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWMediaPlayerMediaItem)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAlternative:(BOOL)a3;
- (void)setHasIsNlsContainerResult:(BOOL)a3;
- (void)setHasIsNlsResult:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWMediaPlayerMediaItem

- (FLOWSchemaFLOWMediaPlayerMediaItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = FLOWSchemaFLOWMediaPlayerMediaItem;
  v5 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(FLOWSchemaFLOWMediaPlayerMediaItem *)v5 setTitle:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"artist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(FLOWSchemaFLOWMediaPlayerMediaItem *)v5 setArtist:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"mediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerMediaItem setMediaType:](v5, "setMediaType:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"entityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(FLOWSchemaFLOWMediaPlayerMediaItem *)v5 setEntityId:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"isAlternative"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerMediaItem setIsAlternative:](v5, "setIsAlternative:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"isNlsResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerMediaItem setIsNlsResult:](v5, "setIsNlsResult:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"isNlsContainerResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMediaPlayerMediaItem setIsNlsContainerResult:](v5, "setIsNlsContainerResult:", [v15 BOOLValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWMediaPlayerMediaItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self dictionaryRepresentation];
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
  if (self->_artist)
  {
    v4 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"artist"];
  }

  if (self->_entityId)
  {
    v6 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"entityId"];
  }

  v8 = *(&self->_isNlsContainerResult + 1);
  if ((v8 & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMediaPlayerMediaItem isAlternative](self, "isAlternative")}];
    [v3 setObject:v9 forKeyedSubscript:@"isAlternative"];

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
  [v3 setObject:v10 forKeyedSubscript:@"isNlsContainerResult"];

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
  [v3 setObject:v11 forKeyedSubscript:@"isNlsResult"];

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

  [v3 setObject:v13 forKeyedSubscript:@"mediaType"];
LABEL_17:
  if (self->_title)
  {
    v14 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"title"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];
    v10 = [v4 title];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];
  v6 = [v4 artist];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v12 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];
    v15 = [v4 artist];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if (*(&self->_isNlsContainerResult + 1) != (v4[43] & 1))
  {
    goto LABEL_20;
  }

  if (*(&self->_isNlsContainerResult + 1))
  {
    mediaType = self->_mediaType;
    if (mediaType != [v4 mediaType])
    {
      goto LABEL_20;
    }
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];
  v6 = [v4 entityId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_19:

    goto LABEL_20;
  }

  v18 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];
  if (v18)
  {
    v19 = v18;
    v20 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];
    v21 = [v4 entityId];
    v22 = [v20 isEqual:v21];

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
  v27 = v4[43];
  if (v26 == ((v27 >> 1) & 1))
  {
    if (v26)
    {
      isAlternative = self->_isAlternative;
      if (isAlternative != [v4 isAlternative])
      {
        goto LABEL_20;
      }

      v25 = *(&self->_isNlsContainerResult + 1);
      v27 = v4[43];
    }

    v29 = (v25 >> 2) & 1;
    if (v29 == ((v27 >> 2) & 1))
    {
      if (v29)
      {
        isNlsResult = self->_isNlsResult;
        if (isNlsResult != [v4 isNlsResult])
        {
          goto LABEL_20;
        }

        v25 = *(&self->_isNlsContainerResult + 1);
        v27 = v4[43];
      }

      v31 = (v25 >> 3) & 1;
      if (v31 == ((v27 >> 3) & 1))
      {
        if (!v31 || (isNlsContainerResult = self->_isNlsContainerResult, isNlsContainerResult == [v4 isNlsContainerResult]))
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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self title];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self artist];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isNlsContainerResult + 1))
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(FLOWSchemaFLOWMediaPlayerMediaItem *)self entityId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = *(&self->_isNlsContainerResult + 1);
  v8 = v9;
  if ((v7 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v8 = v9;
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
  v8 = v9;
  if ((*(&self->_isNlsContainerResult + 1) & 8) != 0)
  {
LABEL_12:
    PBDataWriterWriteBOOLField();
    v8 = v9;
  }

LABEL_13:
}

- (void)setHasIsNlsContainerResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xF7 | v3;
}

- (void)setHasIsNlsResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xFB | v3;
}

- (void)setHasIsAlternative:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNlsContainerResult + 1) = *(&self->_isNlsContainerResult + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FLOWSchemaFLOWMediaPlayerMediaItem;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  if ([v4 isConditionSet:4])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  if ([v4 isConditionSet:5])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  if ([v4 isConditionSet:6])
  {
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteTitle];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteArtist];
    [(FLOWSchemaFLOWMediaPlayerMediaItem *)self deleteEntityId];
  }

  if ([v4 isConditionSet:7])
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