@interface MHSchemaMHUnintendedResponseSuppressionStarted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHUnintendedResponseSuppressionStarted)initWithDictionary:(id)dictionary;
- (MHSchemaMHUnintendedResponseSuppressionStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumTokensTopPath:(BOOL)path;
- (void)setHasTrailingSilenceDurationInNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHUnintendedResponseSuppressionStarted

- (MHSchemaMHUnintendedResponseSuppressionStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = MHSchemaMHUnintendedResponseSuppressionStarted;
  v5 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numAsrRecords"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUnintendedResponseSuppressionStarted setNumAsrRecords:](v5, "setNumAsrRecords:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numTokensTopPath"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUnintendedResponseSuppressionStarted setNumTokensTopPath:](v5, "setNumTokensTopPath:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"trailingSilenceDurationInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUnintendedResponseSuppressionStarted setTrailingSilenceDurationInNs:](v5, "setTrailingSilenceDurationInNs:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"aftmScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[MHSchemaMHAcousticFalseTriggerMitigationScoreGenerated alloc] initWithDictionary:v9];
      [(MHSchemaMHUnintendedResponseSuppressionStarted *)v5 setAftmScore:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"lrnnScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[MHSchemaMHLatticeFalseTriggerMitigationEnded alloc] initWithDictionary:v11];
      [(MHSchemaMHUnintendedResponseSuppressionStarted *)v5 setLrnnScore:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"uemScore"];
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

- (MHSchemaMHUnintendedResponseSuppressionStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self dictionaryRepresentation];
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
  if (self->_aftmScore)
  {
    aftmScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
    dictionaryRepresentation = [aftmScore dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aftmScore"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aftmScore"];
    }
  }

  if (self->_lrnnScore)
  {
    lrnnScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
    dictionaryRepresentation2 = [lrnnScore dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"lrnnScore"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"lrnnScore"];
    }
  }

  has = self->_has;
  if (has)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHUnintendedResponseSuppressionStarted numAsrRecords](self, "numAsrRecords")}];
    [dictionary setObject:v14 forKeyedSubscript:@"numAsrRecords"];

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
  [dictionary setObject:v15 forKeyedSubscript:@"numTokensTopPath"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_14:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHUnintendedResponseSuppressionStarted trailingSilenceDurationInNs](self, "trailingSilenceDurationInNs")}];
    [dictionary setObject:v11 forKeyedSubscript:@"trailingSilenceDurationInNs"];
  }

LABEL_15:
  if (self->_uemScore)
  {
    uemScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
    dictionaryRepresentation3 = [uemScore dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"uemScore"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"uemScore"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  has = self->_has;
  v6 = equalCopy[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_28;
  }

  if (*&has)
  {
    numAsrRecords = self->_numAsrRecords;
    if (numAsrRecords != [equalCopy numAsrRecords])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      numTokensTopPath = self->_numTokensTopPath;
      if (numTokensTopPath != [equalCopy numTokensTopPath])
      {
        goto LABEL_28;
      }

      has = self->_has;
      v6 = equalCopy[48];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_28;
    }

    if (v10)
    {
      trailingSilenceDurationInNs = self->_trailingSilenceDurationInNs;
      if (trailingSilenceDurationInNs != [equalCopy trailingSilenceDurationInNs])
      {
        goto LABEL_28;
      }
    }

    aftmScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
    aftmScore2 = [equalCopy aftmScore];
    if ((aftmScore != 0) == (aftmScore2 == 0))
    {
      goto LABEL_27;
    }

    aftmScore3 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
    if (aftmScore3)
    {
      v15 = aftmScore3;
      aftmScore4 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
      aftmScore5 = [equalCopy aftmScore];
      v18 = [aftmScore4 isEqual:aftmScore5];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    aftmScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
    aftmScore2 = [equalCopy lrnnScore];
    if ((aftmScore != 0) == (aftmScore2 == 0))
    {
      goto LABEL_27;
    }

    lrnnScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
    if (lrnnScore)
    {
      v20 = lrnnScore;
      lrnnScore2 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
      lrnnScore3 = [equalCopy lrnnScore];
      v23 = [lrnnScore2 isEqual:lrnnScore3];

      if (!v23)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    aftmScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
    aftmScore2 = [equalCopy uemScore];
    if ((aftmScore != 0) != (aftmScore2 == 0))
    {
      uemScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
      if (!uemScore)
      {

LABEL_31:
        v29 = 1;
        goto LABEL_29;
      }

      v25 = uemScore;
      uemScore2 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
      uemScore3 = [equalCopy uemScore];
      v28 = [uemScore2 isEqual:uemScore3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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
  aftmScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];

  if (aftmScore)
  {
    aftmScore2 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
    PBDataWriterWriteSubmessage();
  }

  lrnnScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];

  if (lrnnScore)
  {
    lrnnScore2 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
    PBDataWriterWriteSubmessage();
  }

  uemScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];

  v10 = toCopy;
  if (uemScore)
  {
    uemScore2 = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (void)setHasTrailingSilenceDurationInNs:(BOOL)ns
{
  if (ns)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumTokensTopPath:(BOOL)path
{
  if (path)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = MHSchemaMHUnintendedResponseSuppressionStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  aftmScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self aftmScore];
  v7 = [aftmScore applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHUnintendedResponseSuppressionStarted *)self deleteAftmScore];
  }

  lrnnScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self lrnnScore];
  v10 = [lrnnScore applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MHSchemaMHUnintendedResponseSuppressionStarted *)self deleteLrnnScore];
  }

  uemScore = [(MHSchemaMHUnintendedResponseSuppressionStarted *)self uemScore];
  v13 = [uemScore applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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