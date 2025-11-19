@interface SISchemaHomeKitAccessoryResponse
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaHomeKitAccessoryResponse)initWithDictionary:(id)a3;
- (SISchemaHomeKitAccessoryResponse)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumAccessoriesCompleted:(BOOL)a3;
- (void)setHasNumAccessoriesNotCompleted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaHomeKitAccessoryResponse

- (SISchemaHomeKitAccessoryResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SISchemaHomeKitAccessoryResponse;
  v5 = [(SISchemaHomeKitAccessoryResponse *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"homeKitAccessoryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaHomeKitAccessoryResponse setHomeKitAccessoryType:](v5, "setHomeKitAccessoryType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numAccessoriesCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaHomeKitAccessoryResponse setNumAccessoriesCompleted:](v5, "setNumAccessoriesCompleted:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numAccessoriesNotCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaHomeKitAccessoryResponse setNumAccessoriesNotCompleted:](v5, "setNumAccessoriesNotCompleted:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaHomeKitAccessoryResponse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaHomeKitAccessoryResponse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaHomeKitAccessoryResponse *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(SISchemaHomeKitAccessoryResponse *)self homeKitAccessoryType]- 1;
    if (v5 > 0x26)
    {
      v6 = @"HOMEKITACCESSORYTYPE_UNKNOWN_HOMEKIT_ACCESSORY_TYPE";
    }

    else
    {
      v6 = off_1E78E4C70[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"homeKitAccessoryType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaHomeKitAccessoryResponse numAccessoriesCompleted](self, "numAccessoriesCompleted")}];
    [v3 setObject:v7 forKeyedSubscript:@"numAccessoriesCompleted"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaHomeKitAccessoryResponse numAccessoriesNotCompleted](self, "numAccessoriesNotCompleted")}];
    [v3 setObject:v8 forKeyedSubscript:@"numAccessoriesNotCompleted"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_homeKitAccessoryType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_numAccessoriesCompleted;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_numAccessoriesNotCompleted;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    homeKitAccessoryType = self->_homeKitAccessoryType;
    if (homeKitAccessoryType != [v4 homeKitAccessoryType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    numAccessoriesCompleted = self->_numAccessoriesCompleted;
    if (numAccessoriesCompleted == [v4 numAccessoriesCompleted])
    {
      has = self->_has;
      v6 = v4[20];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    numAccessoriesNotCompleted = self->_numAccessoriesNotCompleted;
    if (numAccessoriesNotCompleted != [v4 numAccessoriesNotCompleted])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasNumAccessoriesNotCompleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumAccessoriesCompleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end