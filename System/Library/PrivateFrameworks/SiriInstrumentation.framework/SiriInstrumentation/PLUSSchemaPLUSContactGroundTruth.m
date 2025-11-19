@interface PLUSSchemaPLUSContactGroundTruth
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactGroundTruth)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSContactGroundTruth)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasContactSuggestionUsedBySiri:(BOOL)a3;
- (void)setHasHasSiriResolvedContactForEntity:(BOOL)a3;
- (void)setHasSiriResolvedAndPlusInferredContactComparison:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSContactGroundTruth

- (PLUSSchemaPLUSContactGroundTruth)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSContactGroundTruth;
  v5 = [(PLUSSchemaPLUSContactGroundTruth *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"groundTruthId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactGroundTruth *)v5 setGroundTruthId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"groundTruthSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactGroundTruth setGroundTruthSource:](v5, "setGroundTruthSource:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"hasSiriResolvedContactForEntity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactGroundTruth setHasSiriResolvedContactForEntity:](v5, "setHasSiriResolvedContactForEntity:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"siriResolvedAndPlusInferredContactComparison"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactGroundTruth setSiriResolvedAndPlusInferredContactComparison:](v5, "setSiriResolvedAndPlusInferredContactComparison:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"contactSuggestionUsedBySiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactGroundTruth setContactSuggestionUsedBySiri:](v5, "setContactSuggestionUsedBySiri:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactGroundTruth)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactGroundTruth *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSContactGroundTruth *)self dictionaryRepresentation];
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
  if ((*&self->_has & 8) != 0)
  {
    v4 = [(PLUSSchemaPLUSContactGroundTruth *)self contactSuggestionUsedBySiri]- 1;
    if (v4 > 2)
    {
      v5 = @"PLUSINFERREDSUGGESTIONSTATE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E04C8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"contactSuggestionUsedBySiri"];
  }

  if (self->_groundTruthId)
  {
    v6 = [(PLUSSchemaPLUSContactGroundTruth *)self groundTruthId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"groundTruthId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"groundTruthId"];
    }
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSContactGroundTruth hasSiriResolvedContactForEntity](self, "hasSiriResolvedContactForEntity")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasSiriResolvedContactForEntity"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    v13 = [(PLUSSchemaPLUSContactGroundTruth *)self siriResolvedAndPlusInferredContactComparison]- 1;
    if (v13 > 4)
    {
      v14 = @"PLUSCONTACTREFERENCECOMPARISON_UNKNOWN";
    }

    else
    {
      v14 = off_1E78E0550[v13];
    }

    [v3 setObject:v14 forKeyedSubscript:@"siriResolvedAndPlusInferredContactComparison"];
    goto LABEL_24;
  }

  v10 = [(PLUSSchemaPLUSContactGroundTruth *)self groundTruthSource]- 1;
  if (v10 > 0xD)
  {
    v11 = @"PLUSCONTACTGROUNDTRUTHSOURCE_UNKNOWN";
  }

  else
  {
    v11 = off_1E78E04E0[v10];
  }

  [v3 setObject:v11 forKeyedSubscript:@"groundTruthSource"];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((has & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_groundTruthId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_groundTruthSource;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_hasSiriResolvedContactForEntity;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_siriResolvedAndPlusInferredContactComparison;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_contactSuggestionUsedBySiri;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(PLUSSchemaPLUSContactGroundTruth *)self groundTruthId];
  v6 = [v4 groundTruthId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_24;
  }

  v8 = [(PLUSSchemaPLUSContactGroundTruth *)self groundTruthId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PLUSSchemaPLUSContactGroundTruth *)self groundTruthId];
    v11 = [v4 groundTruthId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (*&has)
  {
    groundTruthSource = self->_groundTruthSource;
    if (groundTruthSource != [v4 groundTruthSource])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = v4[32];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    hasSiriResolvedContactForEntity = self->_hasSiriResolvedContactForEntity;
    if (hasSiriResolvedContactForEntity != [v4 hasSiriResolvedContactForEntity])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v14 = v4[32];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    siriResolvedAndPlusInferredContactComparison = self->_siriResolvedAndPlusInferredContactComparison;
    if (siriResolvedAndPlusInferredContactComparison == [v4 siriResolvedAndPlusInferredContactComparison])
    {
      has = self->_has;
      v14 = v4[32];
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_20:
  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    contactSuggestionUsedBySiri = self->_contactSuggestionUsedBySiri;
    if (contactSuggestionUsedBySiri != [v4 contactSuggestionUsedBySiri])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PLUSSchemaPLUSContactGroundTruth *)self groundTruthId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSContactGroundTruth *)self groundTruthId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  v7 = v8;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }

LABEL_9:
}

- (void)setHasContactSuggestionUsedBySiri:(BOOL)a3
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

- (void)setHasSiriResolvedAndPlusInferredContactComparison:(BOOL)a3
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

- (void)setHasHasSiriResolvedContactForEntity:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSContactGroundTruth;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSContactGroundTruth *)self groundTruthId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PLUSSchemaPLUSContactGroundTruth *)self deleteGroundTruthId];
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