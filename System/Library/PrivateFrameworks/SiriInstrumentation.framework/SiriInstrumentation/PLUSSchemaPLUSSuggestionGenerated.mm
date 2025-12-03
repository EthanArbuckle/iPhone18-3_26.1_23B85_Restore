@interface PLUSSchemaPLUSSuggestionGenerated
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSSuggestionGenerated)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSSuggestionGenerated)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSSuggestionGenerated

- (PLUSSchemaPLUSSuggestionGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSSuggestionGenerated;
  v5 = [(PLUSSchemaPLUSSuggestionGenerated *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionDomainMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSSuggestionDomainMetadata alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSSuggestionGenerated *)v5 setSuggestionDomainMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"generatedSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PLUSSchemaPLUSSuggestion alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSSuggestionGenerated *)v5 setGeneratedSuggestion:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"suggestionChangeDataCaptureMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PLUSSchemaPLUSChangeDataCaptureMetadata alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSSuggestionGenerated *)v5 setSuggestionChangeDataCaptureMetadata:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSSuggestionGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSSuggestionGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSSuggestionGenerated *)self dictionaryRepresentation];
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
    generatedSuggestion = [(PLUSSchemaPLUSSuggestionGenerated *)self generatedSuggestion];
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

  if (self->_suggestionChangeDataCaptureMetadata)
  {
    suggestionChangeDataCaptureMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionChangeDataCaptureMetadata];
    dictionaryRepresentation2 = [suggestionChangeDataCaptureMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"suggestionChangeDataCaptureMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"suggestionChangeDataCaptureMetadata"];
    }
  }

  if (self->_suggestionDomainMetadata)
  {
    suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionDomainMetadata];
    dictionaryRepresentation3 = [suggestionDomainMetadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"suggestionDomainMetadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"suggestionDomainMetadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PLUSSchemaPLUSSuggestionDomainMetadata *)self->_suggestionDomainMetadata hash];
  v4 = [(PLUSSchemaPLUSSuggestion *)self->_generatedSuggestion hash]^ v3;
  return v4 ^ [(PLUSSchemaPLUSChangeDataCaptureMetadata *)self->_suggestionChangeDataCaptureMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionDomainMetadata];
  suggestionDomainMetadata2 = [equalCopy suggestionDomainMetadata];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_16;
  }

  suggestionDomainMetadata3 = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionDomainMetadata];
  if (suggestionDomainMetadata3)
  {
    v8 = suggestionDomainMetadata3;
    suggestionDomainMetadata4 = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionDomainMetadata];
    suggestionDomainMetadata5 = [equalCopy suggestionDomainMetadata];
    v11 = [suggestionDomainMetadata4 isEqual:suggestionDomainMetadata5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self generatedSuggestion];
  suggestionDomainMetadata2 = [equalCopy generatedSuggestion];
  if ((suggestionDomainMetadata != 0) == (suggestionDomainMetadata2 == 0))
  {
    goto LABEL_16;
  }

  generatedSuggestion = [(PLUSSchemaPLUSSuggestionGenerated *)self generatedSuggestion];
  if (generatedSuggestion)
  {
    v13 = generatedSuggestion;
    generatedSuggestion2 = [(PLUSSchemaPLUSSuggestionGenerated *)self generatedSuggestion];
    generatedSuggestion3 = [equalCopy generatedSuggestion];
    v16 = [generatedSuggestion2 isEqual:generatedSuggestion3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionChangeDataCaptureMetadata];
  suggestionDomainMetadata2 = [equalCopy suggestionChangeDataCaptureMetadata];
  if ((suggestionDomainMetadata != 0) != (suggestionDomainMetadata2 == 0))
  {
    suggestionChangeDataCaptureMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionChangeDataCaptureMetadata];
    if (!suggestionChangeDataCaptureMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = suggestionChangeDataCaptureMetadata;
    suggestionChangeDataCaptureMetadata2 = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionChangeDataCaptureMetadata];
    suggestionChangeDataCaptureMetadata3 = [equalCopy suggestionChangeDataCaptureMetadata];
    v21 = [suggestionChangeDataCaptureMetadata2 isEqual:suggestionChangeDataCaptureMetadata3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionDomainMetadata];

  if (suggestionDomainMetadata)
  {
    suggestionDomainMetadata2 = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionDomainMetadata];
    PBDataWriterWriteSubmessage();
  }

  generatedSuggestion = [(PLUSSchemaPLUSSuggestionGenerated *)self generatedSuggestion];

  if (generatedSuggestion)
  {
    generatedSuggestion2 = [(PLUSSchemaPLUSSuggestionGenerated *)self generatedSuggestion];
    PBDataWriterWriteSubmessage();
  }

  suggestionChangeDataCaptureMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionChangeDataCaptureMetadata];

  v9 = toCopy;
  if (suggestionChangeDataCaptureMetadata)
  {
    suggestionChangeDataCaptureMetadata2 = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionChangeDataCaptureMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PLUSSchemaPLUSSuggestionGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  suggestionDomainMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionDomainMetadata];
  v7 = [suggestionDomainMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSSuggestionGenerated *)self deleteSuggestionDomainMetadata];
  }

  generatedSuggestion = [(PLUSSchemaPLUSSuggestionGenerated *)self generatedSuggestion];
  v10 = [generatedSuggestion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSSuggestionGenerated *)self deleteGeneratedSuggestion];
  }

  suggestionChangeDataCaptureMetadata = [(PLUSSchemaPLUSSuggestionGenerated *)self suggestionChangeDataCaptureMetadata];
  v13 = [suggestionChangeDataCaptureMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSSuggestionGenerated *)self deleteSuggestionChangeDataCaptureMetadata];
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