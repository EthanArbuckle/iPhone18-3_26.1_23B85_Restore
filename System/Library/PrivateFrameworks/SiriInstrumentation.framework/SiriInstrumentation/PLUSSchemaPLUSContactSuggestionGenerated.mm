@interface PLUSSchemaPLUSContactSuggestionGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestionGenerated)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactSuggestionGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactSuggestionGenerated

- (PLUSSchemaPLUSContactSuggestionGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PLUSSchemaPLUSContactSuggestionGenerated;
  v5 = [(PLUSSchemaPLUSContactSuggestionGenerated *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"generatedSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSContactSuggestion alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggestionGenerated *)v5 setGeneratedSuggestion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isSuggestionUpdated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggestionGenerated setIsSuggestionUpdated:](v5, "setIsSuggestionUpdated:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggestionGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestionGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactSuggestionGenerated *)self dictionaryRepresentation];
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
    generatedSuggestion = [(PLUSSchemaPLUSContactSuggestionGenerated *)self generatedSuggestion];
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

  if (*(&self->_isSuggestionUpdated + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSContactSuggestionGenerated isSuggestionUpdated](self, "isSuggestionUpdated")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isSuggestionUpdated"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSContactSuggestion *)self->_generatedSuggestion hash];
  if (*(&self->_isSuggestionUpdated + 1))
  {
    v4 = 2654435761 * self->_isSuggestionUpdated;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  generatedSuggestion = [(PLUSSchemaPLUSContactSuggestionGenerated *)self generatedSuggestion];
  generatedSuggestion2 = [equalCopy generatedSuggestion];
  v7 = generatedSuggestion2;
  if ((generatedSuggestion != 0) == (generatedSuggestion2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  generatedSuggestion3 = [(PLUSSchemaPLUSContactSuggestionGenerated *)self generatedSuggestion];
  if (generatedSuggestion3)
  {
    v9 = generatedSuggestion3;
    generatedSuggestion4 = [(PLUSSchemaPLUSContactSuggestionGenerated *)self generatedSuggestion];
    generatedSuggestion5 = [equalCopy generatedSuggestion];
    v12 = [generatedSuggestion4 isEqual:generatedSuggestion5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isSuggestionUpdated + 1) != (equalCopy[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_isSuggestionUpdated + 1))
  {
    isSuggestionUpdated = self->_isSuggestionUpdated;
    if (isSuggestionUpdated != [equalCopy isSuggestionUpdated])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  generatedSuggestion = [(PLUSSchemaPLUSContactSuggestionGenerated *)self generatedSuggestion];

  if (generatedSuggestion)
  {
    generatedSuggestion2 = [(PLUSSchemaPLUSContactSuggestionGenerated *)self generatedSuggestion];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_isSuggestionUpdated + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSContactSuggestionGenerated;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSContactSuggestionGenerated *)self generatedSuggestion:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PLUSSchemaPLUSContactSuggestionGenerated *)self deleteGeneratedSuggestion];
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