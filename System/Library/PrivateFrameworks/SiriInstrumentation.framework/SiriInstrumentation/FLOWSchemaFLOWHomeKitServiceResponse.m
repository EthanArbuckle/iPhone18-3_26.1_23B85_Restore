@interface FLOWSchemaFLOWHomeKitServiceResponse
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWHomeKitServiceResponse)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWHomeKitServiceResponse)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumServicesCompleted:(BOOL)a3;
- (void)setHasNumServicesFailed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWHomeKitServiceResponse

- (FLOWSchemaFLOWHomeKitServiceResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FLOWSchemaFLOWHomeKitServiceResponse;
  v5 = [(FLOWSchemaFLOWHomeKitServiceResponse *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"homeKitServiceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeKitServiceResponse setHomeKitServiceType:](v5, "setHomeKitServiceType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numServicesCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeKitServiceResponse setNumServicesCompleted:](v5, "setNumServicesCompleted:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numServicesFailed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWHomeKitServiceResponse setNumServicesFailed:](v5, "setNumServicesFailed:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWHomeKitServiceResponse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWHomeKitServiceResponse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWHomeKitServiceResponse *)self dictionaryRepresentation];
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
    v5 = [(FLOWSchemaFLOWHomeKitServiceResponse *)self homeKitServiceType]- 1;
    if (v5 > 0x2A)
    {
      v6 = @"FLOWHOMEKITSERVICETYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D5250[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"homeKitServiceType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[FLOWSchemaFLOWHomeKitServiceResponse numServicesCompleted](self, "numServicesCompleted")}];
    [v3 setObject:v7 forKeyedSubscript:@"numServicesCompleted"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[FLOWSchemaFLOWHomeKitServiceResponse numServicesFailed](self, "numServicesFailed")}];
    [v3 setObject:v8 forKeyedSubscript:@"numServicesFailed"];
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

  v2 = 2654435761 * self->_homeKitServiceType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_numServicesCompleted;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_numServicesFailed;
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
    homeKitServiceType = self->_homeKitServiceType;
    if (homeKitServiceType != [v4 homeKitServiceType])
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
    numServicesCompleted = self->_numServicesCompleted;
    if (numServicesCompleted == [v4 numServicesCompleted])
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
    numServicesFailed = self->_numServicesFailed;
    if (numServicesFailed != [v4 numServicesFailed])
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

- (void)setHasNumServicesFailed:(BOOL)a3
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

- (void)setHasNumServicesCompleted:(BOOL)a3
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