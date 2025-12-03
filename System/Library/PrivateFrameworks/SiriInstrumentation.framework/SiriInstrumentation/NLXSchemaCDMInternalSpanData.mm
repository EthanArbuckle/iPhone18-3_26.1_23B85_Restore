@interface NLXSchemaCDMInternalSpanData
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMInternalSpanData)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMInternalSpanData)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMInternalSpanData

- (NLXSchemaCDMInternalSpanData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = NLXSchemaCDMInternalSpanData;
  v5 = [(NLXSchemaCDMInternalSpanData *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriVocabularySpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMSiriVocabularySpanData alloc] initWithDictionary:v6];
      [(NLXSchemaCDMInternalSpanData *)v5 setSiriVocabularySpanData:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"plumSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLXSchemaPLUMSpanData alloc] initWithDictionary:v8];
      [(NLXSchemaCDMInternalSpanData *)v5 setPlumSpanData:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"mentionDetectorSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaMentionDetectorSpanData alloc] initWithDictionary:v10];
      [(NLXSchemaCDMInternalSpanData *)v5 setMentionDetectorSpanData:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"mentionResolverSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLXSchemaMentionResolverSpanData alloc] initWithDictionary:v12];
      [(NLXSchemaCDMInternalSpanData *)v5 setMentionResolverSpanData:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"contextualSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLXSchemaContextualSpanData alloc] initWithDictionary:v14];
      [(NLXSchemaCDMInternalSpanData *)v5 setContextualSpanData:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (NLXSchemaCDMInternalSpanData)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMInternalSpanData *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMInternalSpanData *)self dictionaryRepresentation];
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
  if (self->_contextualSpanData)
  {
    contextualSpanData = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
    dictionaryRepresentation = [contextualSpanData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contextualSpanData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contextualSpanData"];
    }
  }

  if (self->_mentionDetectorSpanData)
  {
    mentionDetectorSpanData = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
    dictionaryRepresentation2 = [mentionDetectorSpanData dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"mentionDetectorSpanData"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mentionDetectorSpanData"];
    }
  }

  if (self->_mentionResolverSpanData)
  {
    mentionResolverSpanData = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
    dictionaryRepresentation3 = [mentionResolverSpanData dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"mentionResolverSpanData"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"mentionResolverSpanData"];
    }
  }

  if (self->_plumSpanData)
  {
    plumSpanData = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
    dictionaryRepresentation4 = [plumSpanData dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"plumSpanData"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"plumSpanData"];
    }
  }

  if (self->_siriVocabularySpanData)
  {
    siriVocabularySpanData = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
    dictionaryRepresentation5 = [siriVocabularySpanData dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"siriVocabularySpanData"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"siriVocabularySpanData"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NLXSchemaCDMSiriVocabularySpanData *)self->_siriVocabularySpanData hash];
  v4 = [(NLXSchemaPLUMSpanData *)self->_plumSpanData hash]^ v3;
  v5 = [(NLXSchemaMentionDetectorSpanData *)self->_mentionDetectorSpanData hash];
  v6 = v4 ^ v5 ^ [(NLXSchemaMentionResolverSpanData *)self->_mentionResolverSpanData hash];
  return v6 ^ [(NLXSchemaContextualSpanData *)self->_contextualSpanData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  siriVocabularySpanData = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
  siriVocabularySpanData2 = [equalCopy siriVocabularySpanData];
  if ((siriVocabularySpanData != 0) == (siriVocabularySpanData2 == 0))
  {
    goto LABEL_26;
  }

  siriVocabularySpanData3 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
  if (siriVocabularySpanData3)
  {
    v8 = siriVocabularySpanData3;
    siriVocabularySpanData4 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
    siriVocabularySpanData5 = [equalCopy siriVocabularySpanData];
    v11 = [siriVocabularySpanData4 isEqual:siriVocabularySpanData5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  siriVocabularySpanData = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
  siriVocabularySpanData2 = [equalCopy plumSpanData];
  if ((siriVocabularySpanData != 0) == (siriVocabularySpanData2 == 0))
  {
    goto LABEL_26;
  }

  plumSpanData = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
  if (plumSpanData)
  {
    v13 = plumSpanData;
    plumSpanData2 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
    plumSpanData3 = [equalCopy plumSpanData];
    v16 = [plumSpanData2 isEqual:plumSpanData3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  siriVocabularySpanData = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
  siriVocabularySpanData2 = [equalCopy mentionDetectorSpanData];
  if ((siriVocabularySpanData != 0) == (siriVocabularySpanData2 == 0))
  {
    goto LABEL_26;
  }

  mentionDetectorSpanData = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
  if (mentionDetectorSpanData)
  {
    v18 = mentionDetectorSpanData;
    mentionDetectorSpanData2 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
    mentionDetectorSpanData3 = [equalCopy mentionDetectorSpanData];
    v21 = [mentionDetectorSpanData2 isEqual:mentionDetectorSpanData3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  siriVocabularySpanData = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
  siriVocabularySpanData2 = [equalCopy mentionResolverSpanData];
  if ((siriVocabularySpanData != 0) == (siriVocabularySpanData2 == 0))
  {
    goto LABEL_26;
  }

  mentionResolverSpanData = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
  if (mentionResolverSpanData)
  {
    v23 = mentionResolverSpanData;
    mentionResolverSpanData2 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
    mentionResolverSpanData3 = [equalCopy mentionResolverSpanData];
    v26 = [mentionResolverSpanData2 isEqual:mentionResolverSpanData3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  siriVocabularySpanData = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
  siriVocabularySpanData2 = [equalCopy contextualSpanData];
  if ((siriVocabularySpanData != 0) != (siriVocabularySpanData2 == 0))
  {
    contextualSpanData = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
    if (!contextualSpanData)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = contextualSpanData;
    contextualSpanData2 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
    contextualSpanData3 = [equalCopy contextualSpanData];
    v31 = [contextualSpanData2 isEqual:contextualSpanData3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  siriVocabularySpanData = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];

  if (siriVocabularySpanData)
  {
    siriVocabularySpanData2 = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
    PBDataWriterWriteSubmessage();
  }

  plumSpanData = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];

  if (plumSpanData)
  {
    plumSpanData2 = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
    PBDataWriterWriteSubmessage();
  }

  mentionDetectorSpanData = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];

  if (mentionDetectorSpanData)
  {
    mentionDetectorSpanData2 = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
    PBDataWriterWriteSubmessage();
  }

  mentionResolverSpanData = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];

  if (mentionResolverSpanData)
  {
    mentionResolverSpanData2 = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
    PBDataWriterWriteSubmessage();
  }

  contextualSpanData = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];

  v13 = toCopy;
  if (contextualSpanData)
  {
    contextualSpanData2 = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = NLXSchemaCDMInternalSpanData;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  siriVocabularySpanData = [(NLXSchemaCDMInternalSpanData *)self siriVocabularySpanData];
  v7 = [siriVocabularySpanData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMInternalSpanData *)self deleteSiriVocabularySpanData];
  }

  plumSpanData = [(NLXSchemaCDMInternalSpanData *)self plumSpanData];
  v10 = [plumSpanData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMInternalSpanData *)self deletePlumSpanData];
  }

  mentionDetectorSpanData = [(NLXSchemaCDMInternalSpanData *)self mentionDetectorSpanData];
  v13 = [mentionDetectorSpanData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLXSchemaCDMInternalSpanData *)self deleteMentionDetectorSpanData];
  }

  mentionResolverSpanData = [(NLXSchemaCDMInternalSpanData *)self mentionResolverSpanData];
  v16 = [mentionResolverSpanData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLXSchemaCDMInternalSpanData *)self deleteMentionResolverSpanData];
  }

  contextualSpanData = [(NLXSchemaCDMInternalSpanData *)self contextualSpanData];
  v19 = [contextualSpanData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NLXSchemaCDMInternalSpanData *)self deleteContextualSpanData];
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