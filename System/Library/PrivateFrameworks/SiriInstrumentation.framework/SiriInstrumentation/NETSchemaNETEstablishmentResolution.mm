@interface NETSchemaNETEstablishmentResolution
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETEstablishmentResolution)initWithDictionary:(id)a3;
- (NETSchemaNETEstablishmentResolution)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndpointCount:(BOOL)a3;
- (void)setHasResolutionSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETEstablishmentResolution

- (NETSchemaNETEstablishmentResolution)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NETSchemaNETEstablishmentResolution;
  v5 = [(NETSchemaNETEstablishmentResolution *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"duration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETEstablishmentResolution setDuration:](v5, "setDuration:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"resolutionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETEstablishmentResolution setResolutionSource:](v5, "setResolutionSource:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"successfulEndpoint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NETSchemaNETEndpoint alloc] initWithDictionary:v8];
      [(NETSchemaNETEstablishmentResolution *)v5 setSuccessfulEndpoint:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"preferredEndpoint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NETSchemaNETEndpoint alloc] initWithDictionary:v10];
      [(NETSchemaNETEstablishmentResolution *)v5 setPreferredEndpoint:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"endpointCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETEstablishmentResolution setEndpointCount:](v5, "setEndpointCount:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (NETSchemaNETEstablishmentResolution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETEstablishmentResolution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETEstablishmentResolution *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[NETSchemaNETEstablishmentResolution duration](self, "duration")}];
    [v3 setObject:v5 forKeyedSubscript:@"duration"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETEstablishmentResolution endpointCount](self, "endpointCount")}];
    [v3 setObject:v6 forKeyedSubscript:@"endpointCount"];
  }

  if (self->_preferredEndpoint)
  {
    v7 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"preferredEndpoint"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"preferredEndpoint"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETEstablishmentResolution resolutionSource](self, "resolutionSource")}];
    [v3 setObject:v10 forKeyedSubscript:@"resolutionSource"];
  }

  if (self->_successfulEndpoint)
  {
    v11 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"successfulEndpoint"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"successfulEndpoint"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_duration;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_resolutionSource;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NETSchemaNETEndpoint *)self->_successfulEndpoint hash];
  v6 = [(NETSchemaNETEndpoint *)self->_preferredEndpoint hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_endpointCount;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = v4[44];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    duration = self->_duration;
    if (duration != [v4 duration])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = v4[44];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    resolutionSource = self->_resolutionSource;
    if (resolutionSource != [v4 resolutionSource])
    {
      goto LABEL_19;
    }
  }

  v10 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
  v11 = [v4 successfulEndpoint];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_18;
  }

  v12 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
  if (v12)
  {
    v13 = v12;
    v14 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
    v15 = [v4 successfulEndpoint];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
  v11 = [v4 preferredEndpoint];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v17 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
  if (v17)
  {
    v18 = v17;
    v19 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
    v20 = [v4 preferredEndpoint];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v24 = (*&self->_has >> 2) & 1;
  if (v24 == ((v4[44] >> 2) & 1))
  {
    if (!v24 || (endpointCount = self->_endpointCount, endpointCount == [v4 endpointCount]))
    {
      v22 = 1;
      goto LABEL_20;
    }
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];

  if (v5)
  {
    v6 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];

  if (v7)
  {
    v8 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasEndpointCount:(BOOL)a3
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

- (void)setHasResolutionSource:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NETSchemaNETEstablishmentResolution;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(NETSchemaNETEstablishmentResolution *)self successfulEndpoint];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NETSchemaNETEstablishmentResolution *)self deleteSuccessfulEndpoint];
  }

  v9 = [(NETSchemaNETEstablishmentResolution *)self preferredEndpoint];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NETSchemaNETEstablishmentResolution *)self deletePreferredEndpoint];
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