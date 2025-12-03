@interface PLUSSchemaPLUSContactSuggestionAccuracySignalReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSContactSuggestionAccuracySignalReported

- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PLUSSchemaPLUSContactSuggestionAccuracySignalReported;
  v5 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalPlusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)v5 setOriginalPlusId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)v5 setSuggestionId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"accuracySignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PLUSSchemaPLUSSuggestionAccuracySignal alloc] initWithDictionary:v10];
      [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)v5 setAccuracySignal:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggestionAccuracySignalReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self dictionaryRepresentation];
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
  if (self->_accuracySignal)
  {
    accuracySignal = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
    dictionaryRepresentation = [accuracySignal dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accuracySignal"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"accuracySignal"];
    }
  }

  if (self->_originalPlusId)
  {
    originalPlusId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
    dictionaryRepresentation2 = [originalPlusId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"originalPlusId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"originalPlusId"];
    }
  }

  if (self->_suggestionId)
  {
    suggestionId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
    dictionaryRepresentation3 = [suggestionId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"suggestionId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"suggestionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalPlusId hash];
  v4 = [(SISchemaUUID *)self->_suggestionId hash]^ v3;
  return v4 ^ [(PLUSSchemaPLUSSuggestionAccuracySignal *)self->_accuracySignal hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  originalPlusId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
  originalPlusId2 = [equalCopy originalPlusId];
  if ((originalPlusId != 0) == (originalPlusId2 == 0))
  {
    goto LABEL_16;
  }

  originalPlusId3 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
  if (originalPlusId3)
  {
    v8 = originalPlusId3;
    originalPlusId4 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
    originalPlusId5 = [equalCopy originalPlusId];
    v11 = [originalPlusId4 isEqual:originalPlusId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  originalPlusId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
  originalPlusId2 = [equalCopy suggestionId];
  if ((originalPlusId != 0) == (originalPlusId2 == 0))
  {
    goto LABEL_16;
  }

  suggestionId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
  if (suggestionId)
  {
    v13 = suggestionId;
    suggestionId2 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
    suggestionId3 = [equalCopy suggestionId];
    v16 = [suggestionId2 isEqual:suggestionId3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  originalPlusId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
  originalPlusId2 = [equalCopy accuracySignal];
  if ((originalPlusId != 0) != (originalPlusId2 == 0))
  {
    accuracySignal = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
    if (!accuracySignal)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = accuracySignal;
    accuracySignal2 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
    accuracySignal3 = [equalCopy accuracySignal];
    v21 = [accuracySignal2 isEqual:accuracySignal3];

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
  originalPlusId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];

  if (originalPlusId)
  {
    originalPlusId2 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
    PBDataWriterWriteSubmessage();
  }

  suggestionId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];

  if (suggestionId)
  {
    suggestionId2 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
    PBDataWriterWriteSubmessage();
  }

  accuracySignal = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];

  v9 = toCopy;
  if (accuracySignal)
  {
    accuracySignal2 = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PLUSSchemaPLUSContactSuggestionAccuracySignalReported;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  originalPlusId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self originalPlusId];
  v7 = [originalPlusId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self deleteOriginalPlusId];
  }

  suggestionId = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self suggestionId];
  v10 = [suggestionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self deleteSuggestionId];
  }

  accuracySignal = [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self accuracySignal];
  v13 = [accuracySignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PLUSSchemaPLUSContactSuggestionAccuracySignalReported *)self deleteAccuracySignal];
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