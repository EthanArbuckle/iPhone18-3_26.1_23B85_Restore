@interface PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSuggestionPresentInModelOutput:(BOOL)output;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported

- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported;
  v5 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)v5 setSuggestionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isDuplicateSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported setIsDuplicateSuggestion:](v5, "setIsDuplicateSuggestion:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isSuggestionPresentInModelOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported setIsSuggestionPresentInModelOutput:](v5, "setIsSuggestionPresentInModelOutput:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self dictionaryRepresentation];
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
  v4 = *(&self->_isSuggestionPresentInModelOutput + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported isDuplicateSuggestion](self, "isDuplicateSuggestion")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isDuplicateSuggestion"];

    v4 = *(&self->_isSuggestionPresentInModelOutput + 1);
  }

  if ((v4 & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported isSuggestionPresentInModelOutput](self, "isSuggestionPresentInModelOutput")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isSuggestionPresentInModelOutput"];
  }

  if (self->_suggestionId)
  {
    suggestionId = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
    dictionaryRepresentation = [suggestionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"suggestionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"suggestionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_suggestionId hash];
  if (*(&self->_isSuggestionPresentInModelOutput + 1))
  {
    v4 = 2654435761 * self->_isDuplicateSuggestion;
    if ((*(&self->_isSuggestionPresentInModelOutput + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*(&self->_isSuggestionPresentInModelOutput + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isSuggestionPresentInModelOutput;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  suggestionId = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
  suggestionId2 = [equalCopy suggestionId];
  v7 = suggestionId2;
  if ((suggestionId != 0) == (suggestionId2 == 0))
  {

    goto LABEL_16;
  }

  suggestionId3 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
  if (suggestionId3)
  {
    v9 = suggestionId3;
    suggestionId4 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
    suggestionId5 = [equalCopy suggestionId];
    v12 = [suggestionId4 isEqual:suggestionId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isSuggestionPresentInModelOutput + 1);
  v14 = equalCopy[18];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    isDuplicateSuggestion = self->_isDuplicateSuggestion;
    if (isDuplicateSuggestion == [equalCopy isDuplicateSuggestion])
    {
      v13 = *(&self->_isSuggestionPresentInModelOutput + 1);
      v14 = equalCopy[18];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    isSuggestionPresentInModelOutput = self->_isSuggestionPresentInModelOutput;
    if (isSuggestionPresentInModelOutput != [equalCopy isSuggestionPresentInModelOutput])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  suggestionId = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];

  if (suggestionId)
  {
    suggestionId2 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isSuggestionPresentInModelOutput + 1);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_isSuggestionPresentInModelOutput + 1);
  }

  v7 = toCopy;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }
}

- (void)setHasIsSuggestionPresentInModelOutput:(BOOL)output
{
  if (output)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSuggestionPresentInModelOutput + 1) = *(&self->_isSuggestionPresentInModelOutput + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self deleteSuggestionId];
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