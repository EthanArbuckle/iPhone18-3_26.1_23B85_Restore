@interface PLUSSchemaPLUSSuggestionMatchResult
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggestionMatchResult)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggestionMatchResult)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggestionMatchResult

- (PLUSSchemaPLUSSuggestionMatchResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSSuggestionMatchResult;
  v5 = [(PLUSSchemaPLUSSuggestionMatchResult *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggestionMatchResult *)v5 setSuggestionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"generatedSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSSuggestion alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggestionMatchResult *)v5 setGeneratedSuggestion:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggestionMatchResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionMatchResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggestionMatchResult *)self dictionaryRepresentation];
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
  if (self->_generatedSuggestion)
  {
    generatedSuggestion = [(PLUSSchemaPLUSSuggestionMatchResult *)self generatedSuggestion];
    dictionaryRepresentation = [generatedSuggestion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"generatedSuggestion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"generatedSuggestion"];
    }
  }

  if (self->_suggestionId)
  {
    suggestionId = [(PLUSSchemaPLUSSuggestionMatchResult *)self suggestionId];
    dictionaryRepresentation2 = [suggestionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"suggestionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"suggestionId"];
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

  suggestionId = [(PLUSSchemaPLUSSuggestionMatchResult *)self suggestionId];
  suggestionId2 = [equalCopy suggestionId];
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {
    goto LABEL_11;
  }

  suggestionId3 = [(PLUSSchemaPLUSSuggestionMatchResult *)self suggestionId];
  if (suggestionId3)
  {
    v8 = suggestionId3;
    suggestionId4 = [(PLUSSchemaPLUSSuggestionMatchResult *)self suggestionId];
    suggestionId5 = [equalCopy suggestionId];
    v11 = [suggestionId4 isEqual:suggestionId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  suggestionId = [(PLUSSchemaPLUSSuggestionMatchResult *)self generatedSuggestion];
  suggestionId2 = [equalCopy generatedSuggestion];
  if ((suggestionId != 0) != (suggestionId2 == 0))
  {
    generatedSuggestion = [(PLUSSchemaPLUSSuggestionMatchResult *)self generatedSuggestion];
    if (!generatedSuggestion)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = generatedSuggestion;
    generatedSuggestion2 = [(PLUSSchemaPLUSSuggestionMatchResult *)self generatedSuggestion];
    generatedSuggestion3 = [equalCopy generatedSuggestion];
    v16 = [generatedSuggestion2 isEqual:generatedSuggestion3];

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
  suggestionId = [(PLUSSchemaPLUSSuggestionMatchResult *)self suggestionId];

  if (suggestionId)
  {
    suggestionId2 = [(PLUSSchemaPLUSSuggestionMatchResult *)self suggestionId];
    PBDataWriterWriteSubmessage();
  }

  generatedSuggestion = [(PLUSSchemaPLUSSuggestionMatchResult *)self generatedSuggestion];

  if (generatedSuggestion)
  {
    generatedSuggestion2 = [(PLUSSchemaPLUSSuggestionMatchResult *)self generatedSuggestion];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PLUSSchemaPLUSSuggestionMatchResult;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  suggestionId = [(PLUSSchemaPLUSSuggestionMatchResult *)self suggestionId];
  v7 = [suggestionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggestionMatchResult *)self deleteSuggestionId];
  }

  generatedSuggestion = [(PLUSSchemaPLUSSuggestionMatchResult *)self generatedSuggestion];
  v10 = [generatedSuggestion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggestionMatchResult *)self deleteGeneratedSuggestion];
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