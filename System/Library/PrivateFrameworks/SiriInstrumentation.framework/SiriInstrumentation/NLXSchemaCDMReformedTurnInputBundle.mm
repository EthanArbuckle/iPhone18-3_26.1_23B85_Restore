@interface NLXSchemaCDMReformedTurnInputBundle
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMReformedTurnInputBundle)initWithDictionary:(id)a3;
- (NLXSchemaCDMReformedTurnInputBundle)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPreviousTurnsSkip:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMReformedTurnInputBundle

- (NLXSchemaCDMReformedTurnInputBundle)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMReformedTurnInputBundle;
  v5 = [(NLXSchemaCDMReformedTurnInputBundle *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMReformedTurnInputBundle setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"currentTurn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[NLXSchemaCDMTurnInput alloc] initWithDictionary:v7];
      [(NLXSchemaCDMReformedTurnInputBundle *)v5 setCurrentTurn:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"previousTurnsSkip"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMReformedTurnInputBundle setPreviousTurnsSkip:](v5, "setPreviousTurnsSkip:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMReformedTurnInputBundle)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMReformedTurnInputBundle *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMReformedTurnInputBundle *)self dictionaryRepresentation];
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
  if (self->_currentTurn)
  {
    v4 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"currentTurn"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"currentTurn"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMReformedTurnInputBundle previousTurnsSkip](self, "previousTurnsSkip")}];
    [v3 setObject:v8 forKeyedSubscript:@"previousTurnsSkip"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [(NLXSchemaCDMReformedTurnInputBundle *)self type]- 1;
    if (v9 > 3)
    {
      v10 = @"CDMREFORMTYPE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78DB8E0[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"type"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NLXSchemaCDMTurnInput *)self->_currentTurn hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_previousTurnsSkip;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type != [v4 type])
    {
      goto LABEL_15;
    }
  }

  v6 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
  v7 = [v4 currentTurn];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
  if (v9)
  {
    v10 = v9;
    v11 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
    v12 = [v4 currentTurn];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((v4[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    previousTurnsSkip = self->_previousTurnsSkip;
    if (previousTurnsSkip != [v4 previousTurnsSkip])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];

  if (v4)
  {
    v5 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasPreviousTurnsSkip:(BOOL)a3
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
  v9.super_class = NLXSchemaCDMReformedTurnInputBundle;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(NLXSchemaCDMReformedTurnInputBundle *)self deleteCurrentTurn];
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