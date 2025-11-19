@interface MHSchemaMHUnintendedResponseSuppressionStarted
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHUnintendedResponseSuppressionStarted)initWithDictionary:(id)a3;
- (MHSchemaMHUnintendedResponseSuppressionStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumTokensTopPath:(BOOL)a3;
- (void)setHasTrailingSilenceDurationInNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHUnintendedResponseSuppressionStarted

- (MHSchemaMHUnintendedResponseSuppressionStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MHSchemaMHUnintendedResponseSuppressionStarted;
  v5 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numAsrRecords"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUnintendedResponseSuppressionStarted setNumAsrRecords:](v5, "setNumAsrRecords:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numTokensTopPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUnintendedResponseSuppressionStarted setNumTokensTopPath:](v5, "setNumTokensTopPath:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"trailingSilenceDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUnintendedResponseSuppressionStarted setTrailingSilenceDurationInNs:](v5, "setTrailingSilenceDurationInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"aftmScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated alloc] initWithDictionary:v9];
      [(MHSchemaMHUnintendedResponseSuppressionStarted *)v5 setAftmScore:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"lrnnScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[MHSchemaMHLatticeFalseTriggerMitigationEnded alloc] initWithDictionary:v11];
      [(MHSchemaMHUnintendedResponseSuppressionStarted *)v5 setLrnnScore:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"uemScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[MHSchemaMHUserEngagementFalseTriggerMitigationScoreGenerated alloc] initWithDictionary:v13];
      [(MHSchemaMHUnintendedResponseSuppressionStarted *)v5 setUemScore:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (MHSchemaMHUnintendedResponseSuppressionStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self dictionaryRepresentation];
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
  if (self->_aftmScore)
  {
    v4 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"aftmScore"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"aftmScore"];
    }
  }

  if (self->_lrnnScore)
  {
    v7 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"lrnnScore"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"lrnnScore"];
    }
  }

  has = self->_has;
  if (has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHUnintendedResponseSuppressionStarted numAsrRecords](self, "numAsrRecords")}];
    [v3 setObject:v14 forKeyedSubscript:@"numAsrRecords"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHUnintendedResponseSuppressionStarted numTokensTopPath](self, "numTokensTopPath")}];
  [v3 setObject:v15 forKeyedSubscript:@"numTokensTopPath"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHUnintendedResponseSuppressionStarted trailingSilenceDurationInNs](self, "trailingSilenceDurationInNs")}];
    [v3 setObject:v11 forKeyedSubscript:@"trailingSilenceDurationInNs"];
  }

LABEL_15:
  if (self->_uemScore)
  {
    v12 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"uemScore"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"uemScore"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_numAsrRecords;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_numTokensTopPath;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761u * self->_trailingSilenceDurationInNs;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated *)self->_aftmScore hash];
  v7 = [(MHSchemaMHLatticeFalseTriggerMitigationEnded *)self->_lrnnScore hash];
  return v6 ^ v7 ^ [(MHSchemaMHUserEngagementFalseTriggerMitigationScoreGenerated *)self->_uemScore hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  has = self->_has;
  v6 = v4[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_28;
  }

  if (*&has)
  {
    numAsrRecords = self->_numAsrRecords;
    if (numAsrRecords != [v4 numAsrRecords])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v6 = v4[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      numTokensTopPath = self->_numTokensTopPath;
      if (numTokensTopPath != [v4 numTokensTopPath])
      {
        goto LABEL_28;
      }

      has = self->_has;
      v6 = v4[48];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_28;
    }

    if (v10)
    {
      trailingSilenceDurationInNs = self->_trailingSilenceDurationInNs;
      if (trailingSilenceDurationInNs != [v4 trailingSilenceDurationInNs])
      {
        goto LABEL_28;
      }
    }

    v12 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
    v13 = [v4 aftmScore];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_27;
    }

    v14 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
    if (v14)
    {
      v15 = v14;
      v16 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
      v17 = [v4 aftmScore];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v12 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
    v13 = [v4 lrnnScore];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_27;
    }

    v19 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
    if (v19)
    {
      v20 = v19;
      v21 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
      v22 = [v4 lrnnScore];
      v23 = [v21 isEqual:v22];

      if (!v23)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v12 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
    v13 = [v4 uemScore];
    if ((v12 != 0) != (v13 == 0))
    {
      v24 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
      if (!v24)
      {

LABEL_31:
        v29 = 1;
        goto LABEL_29;
      }

      v25 = v24;
      v26 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
      v27 = [v4 uemScore];
      v28 = [v26 isEqual:v27];

      if (v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_27:
    }
  }

LABEL_28:
  v29 = 0;
LABEL_29:

  return v29;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
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
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  v5 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];

  if (v5)
  {
    v6 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];

  if (v7)
  {
    v8 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];

  v10 = v12;
  if (v9)
  {
    v11 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

- (void)setHasTrailingSilenceDurationInNs:(BOOL)a3
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

- (void)setHasNumTokensTopPath:(BOOL)a3
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
  v16.receiver = self;
  v16.super_class = MHSchemaMHUnintendedResponseSuppressionStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHUnintendedResponseSuppressionStarted *)self deleteAftmScore];
  }

  v9 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MHSchemaMHUnintendedResponseSuppressionStarted *)self deleteLrnnScore];
  }

  v12 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MHSchemaMHUnintendedResponseSuppressionStarted *)self deleteUemScore];
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