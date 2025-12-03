@interface FLOWSchemaFLOWMapsExecution
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWMapsExecution)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWMapsExecution)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsProxySearchResult:(BOOL)result;
- (void)setHasIsSearchAlongRouteRequest:(BOOL)request;
- (void)setHasIsSpellCorrected:(BOOL)corrected;
- (void)setHasMapsQueryLabel:(BOOL)label;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWMapsExecution

- (FLOWSchemaFLOWMapsExecution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWMapsExecution;
  v5 = [(FLOWSchemaFLOWMapsExecution *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mapsFeature"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMapsExecution setMapsFeature:](v5, "setMapsFeature:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"mapsQueryLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMapsExecution setMapsQueryLabel:](v5, "setMapsQueryLabel:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isSearchAlongRouteRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMapsExecution setIsSearchAlongRouteRequest:](v5, "setIsSearchAlongRouteRequest:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isProxySearchResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMapsExecution setIsProxySearchResult:](v5, "setIsProxySearchResult:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isSpellCorrected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWMapsExecution setIsSpellCorrected:](v5, "setIsSpellCorrected:", [v10 BOOLValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWMapsExecution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWMapsExecution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWMapsExecution *)self dictionaryRepresentation];
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
  v4 = *(&self->_isSpellCorrected + 1);
  if ((v4 & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMapsExecution isProxySearchResult](self, "isProxySearchResult")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isProxySearchResult"];

    v4 = *(&self->_isSpellCorrected + 1);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(&self->_isSpellCorrected + 1) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMapsExecution isSearchAlongRouteRequest](self, "isSearchAlongRouteRequest")}];
  [dictionary setObject:v6 forKeyedSubscript:@"isSearchAlongRouteRequest"];

  v4 = *(&self->_isSpellCorrected + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = [(FLOWSchemaFLOWMapsExecution *)self mapsFeature]- 1;
    if (v8 > 0xB)
    {
      v9 = @"FLOWMAPSFEATURE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D59E8[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"mapsFeature"];
    if ((*(&self->_isSpellCorrected + 1) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_9:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWMapsExecution isSpellCorrected](self, "isSpellCorrected")}];
  [dictionary setObject:v7 forKeyedSubscript:@"isSpellCorrected"];

  v4 = *(&self->_isSpellCorrected + 1);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) != 0)
  {
LABEL_14:
    v10 = [(FLOWSchemaFLOWMapsExecution *)self mapsQueryLabel]- 1;
    if (v10 > 0xA)
    {
      v11 = @"FLOWMAPSQUERYLABEL_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D5A48[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"mapsQueryLabel"];
  }

LABEL_18:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isSpellCorrected + 1))
  {
    v2 = 2654435761 * self->_mapsFeature;
    if ((*(&self->_isSpellCorrected + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_mapsQueryLabel;
      if ((*(&self->_isSpellCorrected + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*(&self->_isSpellCorrected + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_isSpellCorrected + 1) & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isSearchAlongRouteRequest;
    if ((*(&self->_isSpellCorrected + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*(&self->_isSpellCorrected + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*(&self->_isSpellCorrected + 1) & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_isProxySearchResult;
  if ((*(&self->_isSpellCorrected + 1) & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_isSpellCorrected;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(&self->_isSpellCorrected + 1);
  v6 = equalCopy[19];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (v5)
  {
    mapsFeature = self->_mapsFeature;
    if (mapsFeature != [equalCopy mapsFeature])
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isSpellCorrected + 1);
    v6 = equalCopy[19];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    mapsQueryLabel = self->_mapsQueryLabel;
    if (mapsQueryLabel != [equalCopy mapsQueryLabel])
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isSpellCorrected + 1);
    v6 = equalCopy[19];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    isSearchAlongRouteRequest = self->_isSearchAlongRouteRequest;
    if (isSearchAlongRouteRequest != [equalCopy isSearchAlongRouteRequest])
    {
      goto LABEL_22;
    }

    v5 = *(&self->_isSpellCorrected + 1);
    v6 = equalCopy[19];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    isProxySearchResult = self->_isProxySearchResult;
    if (isProxySearchResult == [equalCopy isProxySearchResult])
    {
      v5 = *(&self->_isSpellCorrected + 1);
      v6 = equalCopy[19];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    isSpellCorrected = self->_isSpellCorrected;
    if (isSpellCorrected != [equalCopy isSpellCorrected])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_isSpellCorrected + 1);
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v4 = *(&self->_isSpellCorrected + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(&self->_isSpellCorrected + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  v4 = *(&self->_isSpellCorrected + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isSpellCorrected + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isSpellCorrected + 1) & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
}

- (void)setHasIsSpellCorrected:(BOOL)corrected
{
  if (corrected)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSpellCorrected + 1) = *(&self->_isSpellCorrected + 1) & 0xEF | v3;
}

- (void)setHasIsProxySearchResult:(BOOL)result
{
  if (result)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSpellCorrected + 1) = *(&self->_isSpellCorrected + 1) & 0xF7 | v3;
}

- (void)setHasIsSearchAlongRouteRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSpellCorrected + 1) = *(&self->_isSpellCorrected + 1) & 0xFB | v3;
}

- (void)setHasMapsQueryLabel:(BOOL)label
{
  if (label)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSpellCorrected + 1) = *(&self->_isSpellCorrected + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end