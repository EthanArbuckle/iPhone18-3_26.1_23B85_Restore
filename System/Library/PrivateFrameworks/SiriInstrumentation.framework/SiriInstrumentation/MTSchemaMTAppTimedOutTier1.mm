@interface MTSchemaMTAppTimedOutTier1
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTAppTimedOutTier1)initWithDictionary:(id)dictionary;
- (MTSchemaMTAppTimedOutTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTAppTimedOutTier1

- (MTSchemaMTAppTimedOutTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MTSchemaMTAppTimedOutTier1;
  v5 = [(MTSchemaMTAppTimedOutTier1 *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"translationPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MTSchemaMTAppTimedOutTier1 *)v5 setTranslationPayload:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"localePair"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MTSchemaMTLocalePair alloc] initWithDictionary:v8];
      [(MTSchemaMTAppTimedOutTier1 *)v5 setLocalePair:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (MTSchemaMTAppTimedOutTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTAppTimedOutTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTAppTimedOutTier1 *)self dictionaryRepresentation];
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
  if (self->_localePair)
  {
    localePair = [(MTSchemaMTAppTimedOutTier1 *)self localePair];
    dictionaryRepresentation = [localePair dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"localePair"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"localePair"];
    }
  }

  if (self->_translationPayload)
  {
    translationPayload = [(MTSchemaMTAppTimedOutTier1 *)self translationPayload];
    v8 = [translationPayload copy];
    [dictionary setObject:v8 forKeyedSubscript:@"translationPayload"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  translationPayload = [(MTSchemaMTAppTimedOutTier1 *)self translationPayload];
  translationPayload2 = [equalCopy translationPayload];
  if ((translationPayload != 0) == (translationPayload2 == 0))
  {
    goto LABEL_11;
  }

  translationPayload3 = [(MTSchemaMTAppTimedOutTier1 *)self translationPayload];
  if (translationPayload3)
  {
    v8 = translationPayload3;
    translationPayload4 = [(MTSchemaMTAppTimedOutTier1 *)self translationPayload];
    translationPayload5 = [equalCopy translationPayload];
    v11 = [translationPayload4 isEqual:translationPayload5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  translationPayload = [(MTSchemaMTAppTimedOutTier1 *)self localePair];
  translationPayload2 = [equalCopy localePair];
  if ((translationPayload != 0) != (translationPayload2 == 0))
  {
    localePair = [(MTSchemaMTAppTimedOutTier1 *)self localePair];
    if (!localePair)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = localePair;
    localePair2 = [(MTSchemaMTAppTimedOutTier1 *)self localePair];
    localePair3 = [equalCopy localePair];
    v16 = [localePair2 isEqual:localePair3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  translationPayload = [(MTSchemaMTAppTimedOutTier1 *)self translationPayload];

  if (translationPayload)
  {
    PBDataWriterWriteStringField();
  }

  localePair = [(MTSchemaMTAppTimedOutTier1 *)self localePair];

  if (localePair)
  {
    localePair2 = [(MTSchemaMTAppTimedOutTier1 *)self localePair];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = MTSchemaMTAppTimedOutTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(MTSchemaMTAppTimedOutTier1 *)self deleteTranslationPayload];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(MTSchemaMTAppTimedOutTier1 *)self deleteTranslationPayload];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(MTSchemaMTAppTimedOutTier1 *)self deleteTranslationPayload];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(MTSchemaMTAppTimedOutTier1 *)self deleteTranslationPayload];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(MTSchemaMTAppTimedOutTier1 *)self deleteTranslationPayload];
  }

  localePair = [(MTSchemaMTAppTimedOutTier1 *)self localePair];
  v7 = [localePair applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MTSchemaMTAppTimedOutTier1 *)self deleteLocalePair];
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