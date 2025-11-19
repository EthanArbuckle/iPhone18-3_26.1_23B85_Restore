@interface ODDSiriSchemaODDReliabilityCounts
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDReliabilityCounts)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDReliabilityCounts)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasClientErrorCount:(BOOL)a3;
- (void)setHasFailureResponseCount:(BOOL)a3;
- (void)setHasFatalResponseCount:(BOOL)a3;
- (void)setHasReliabilityTurnCount:(BOOL)a3;
- (void)setHasSiriUnavailableResponseCount:(BOOL)a3;
- (void)setHasUndesiredResponseCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDReliabilityCounts

- (ODDSiriSchemaODDReliabilityCounts)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDReliabilityCounts;
  v5 = [(ODDSiriSchemaODDReliabilityCounts *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reliabilityRequestCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDReliabilityCounts setReliabilityRequestCount:](v5, "setReliabilityRequestCount:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"reliabilityTurnCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDReliabilityCounts setReliabilityTurnCount:](v5, "setReliabilityTurnCount:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"clientErrorCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDReliabilityCounts setClientErrorCount:](v5, "setClientErrorCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"undesiredResponseCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDReliabilityCounts setUndesiredResponseCount:](v5, "setUndesiredResponseCount:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"fatalResponseCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDReliabilityCounts setFatalResponseCount:](v5, "setFatalResponseCount:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"failureResponseCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDReliabilityCounts setFailureResponseCount:](v5, "setFailureResponseCount:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"siriUnavailableResponseCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDReliabilityCounts setSiriUnavailableResponseCount:](v5, "setSiriUnavailableResponseCount:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDReliabilityCounts)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDReliabilityCounts *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDReliabilityCounts *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDReliabilityCounts clientErrorCount](self, "clientErrorCount")}];
    [v3 setObject:v7 forKeyedSubscript:@"clientErrorCount"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDReliabilityCounts failureResponseCount](self, "failureResponseCount")}];
  [v3 setObject:v8 forKeyedSubscript:@"failureResponseCount"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDReliabilityCounts fatalResponseCount](self, "fatalResponseCount")}];
  [v3 setObject:v9 forKeyedSubscript:@"fatalResponseCount"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDReliabilityCounts reliabilityRequestCount](self, "reliabilityRequestCount")}];
  [v3 setObject:v10 forKeyedSubscript:@"reliabilityRequestCount"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDReliabilityCounts reliabilityTurnCount](self, "reliabilityTurnCount")}];
  [v3 setObject:v11 forKeyedSubscript:@"reliabilityTurnCount"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDReliabilityCounts siriUnavailableResponseCount](self, "siriUnavailableResponseCount")}];
  [v3 setObject:v12 forKeyedSubscript:@"siriUnavailableResponseCount"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDReliabilityCounts undesiredResponseCount](self, "undesiredResponseCount")}];
    [v3 setObject:v5 forKeyedSubscript:@"undesiredResponseCount"];
  }

LABEL_9:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_reliabilityRequestCount;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_reliabilityTurnCount;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_clientErrorCount;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_undesiredResponseCount;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_fatalResponseCount;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_failureResponseCount;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_siriUnavailableResponseCount;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  v6 = v4[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (*&has)
  {
    reliabilityRequestCount = self->_reliabilityRequestCount;
    if (reliabilityRequestCount != [v4 reliabilityRequestCount])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_30;
  }

  if (v8)
  {
    reliabilityTurnCount = self->_reliabilityTurnCount;
    if (reliabilityTurnCount != [v4 reliabilityTurnCount])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_30;
  }

  if (v10)
  {
    clientErrorCount = self->_clientErrorCount;
    if (clientErrorCount != [v4 clientErrorCount])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    undesiredResponseCount = self->_undesiredResponseCount;
    if (undesiredResponseCount != [v4 undesiredResponseCount])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_30;
  }

  if (v14)
  {
    fatalResponseCount = self->_fatalResponseCount;
    if (fatalResponseCount != [v4 fatalResponseCount])
    {
      goto LABEL_30;
    }

    has = self->_has;
    v6 = v4[36];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_30;
  }

  if (v16)
  {
    failureResponseCount = self->_failureResponseCount;
    if (failureResponseCount == [v4 failureResponseCount])
    {
      has = self->_has;
      v6 = v4[36];
      goto LABEL_26;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

LABEL_26:
  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_30;
  }

  if (v18)
  {
    siriUnavailableResponseCount = self->_siriUnavailableResponseCount;
    if (siriUnavailableResponseCount != [v4 siriUnavailableResponseCount])
    {
      goto LABEL_30;
    }
  }

  v20 = 1;
LABEL_31:

  return v20;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)setHasSiriUnavailableResponseCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasFailureResponseCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasFatalResponseCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUndesiredResponseCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasClientErrorCount:(BOOL)a3
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

- (void)setHasReliabilityTurnCount:(BOOL)a3
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