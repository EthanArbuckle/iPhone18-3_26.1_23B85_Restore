@interface PLUSSchemaPLUSSuggestion
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggestion)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggestion)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggestion

- (PLUSSchemaPLUSSuggestion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSSuggestion;
  v5 = [(PLUSSchemaPLUSSuggestion *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggestion *)v5 setSuggestionMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestionValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSSuggestionValue alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggestion *)v5 setSuggestionValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggestion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggestion *)self dictionaryRepresentation];
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
  if (self->_suggestionMetadata)
  {
    suggestionMetadata = [(PLUSSchemaPLUSSuggestion *)self suggestionMetadata];
    dictionaryRepresentation = [suggestionMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"suggestionMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"suggestionMetadata"];
    }
  }

  if (self->_suggestionValue)
  {
    suggestionValue = [(PLUSSchemaPLUSSuggestion *)self suggestionValue];
    dictionaryRepresentation2 = [suggestionValue dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"suggestionValue"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"suggestionValue"];
    }
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

  suggestionMetadata = [(PLUSSchemaPLUSSuggestion *)self suggestionMetadata];
  suggestionMetadata2 = [equalCopy suggestionMetadata];
  if ((suggestionMetadata != 0) == (suggestionMetadata2 == 0))
  {
    goto LABEL_11;
  }

  suggestionMetadata3 = [(PLUSSchemaPLUSSuggestion *)self suggestionMetadata];
  if (suggestionMetadata3)
  {
    v8 = suggestionMetadata3;
    suggestionMetadata4 = [(PLUSSchemaPLUSSuggestion *)self suggestionMetadata];
    suggestionMetadata5 = [equalCopy suggestionMetadata];
    v11 = [suggestionMetadata4 isEqual:suggestionMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  suggestionMetadata = [(PLUSSchemaPLUSSuggestion *)self suggestionValue];
  suggestionMetadata2 = [equalCopy suggestionValue];
  if ((suggestionMetadata != 0) != (suggestionMetadata2 == 0))
  {
    suggestionValue = [(PLUSSchemaPLUSSuggestion *)self suggestionValue];
    if (!suggestionValue)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = suggestionValue;
    suggestionValue2 = [(PLUSSchemaPLUSSuggestion *)self suggestionValue];
    suggestionValue3 = [equalCopy suggestionValue];
    v16 = [suggestionValue2 isEqual:suggestionValue3];

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
  suggestionMetadata = [(PLUSSchemaPLUSSuggestion *)self suggestionMetadata];

  if (suggestionMetadata)
  {
    suggestionMetadata2 = [(PLUSSchemaPLUSSuggestion *)self suggestionMetadata];
    PBDataWriterWriteSubmessage();
  }

  suggestionValue = [(PLUSSchemaPLUSSuggestion *)self suggestionValue];

  if (suggestionValue)
  {
    suggestionValue2 = [(PLUSSchemaPLUSSuggestion *)self suggestionValue];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSSuggestion;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  suggestionMetadata = [(PLUSSchemaPLUSSuggestion *)self suggestionMetadata];
  v7 = [suggestionMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggestion *)self deleteSuggestionMetadata];
  }

  suggestionValue = [(PLUSSchemaPLUSSuggestion *)self suggestionValue];
  v10 = [suggestionValue applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggestion *)self deleteSuggestionValue];
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