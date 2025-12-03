@interface NLXSchemaCDMReformedTurnInputBundle
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMReformedTurnInputBundle)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMReformedTurnInputBundle)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPreviousTurnsSkip:(BOOL)skip;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMReformedTurnInputBundle

- (NLXSchemaCDMReformedTurnInputBundle)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMReformedTurnInputBundle;
  v5 = [(NLXSchemaCDMReformedTurnInputBundle *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMReformedTurnInputBundle setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"currentTurn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[NLXSchemaCDMTurnInput alloc] initWithDictionary:v7];
      [(NLXSchemaCDMReformedTurnInputBundle *)v5 setCurrentTurn:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"previousTurnsSkip"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMReformedTurnInputBundle setPreviousTurnsSkip:](v5, "setPreviousTurnsSkip:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMReformedTurnInputBundle)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMReformedTurnInputBundle *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMReformedTurnInputBundle *)self dictionaryRepresentation];
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
  if (self->_currentTurn)
  {
    currentTurn = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
    dictionaryRepresentation = [currentTurn dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"currentTurn"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"currentTurn"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMReformedTurnInputBundle previousTurnsSkip](self, "previousTurnsSkip")}];
    [dictionary setObject:v8 forKeyedSubscript:@"previousTurnsSkip"];

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

    [dictionary setObject:v10 forKeyedSubscript:@"type"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type != [equalCopy type])
    {
      goto LABEL_15;
    }
  }

  currentTurn = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
  currentTurn2 = [equalCopy currentTurn];
  v8 = currentTurn2;
  if ((currentTurn != 0) == (currentTurn2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  currentTurn3 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
  if (currentTurn3)
  {
    v10 = currentTurn3;
    currentTurn4 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
    currentTurn5 = [equalCopy currentTurn];
    v13 = [currentTurn4 isEqual:currentTurn5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((equalCopy[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    previousTurnsSkip = self->_previousTurnsSkip;
    if (previousTurnsSkip != [equalCopy previousTurnsSkip])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  currentTurn = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];

  if (currentTurn)
  {
    currentTurn2 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasPreviousTurnsSkip:(BOOL)skip
{
  if (skip)
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
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMReformedTurnInputBundle;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMReformedTurnInputBundle *)self currentTurn:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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