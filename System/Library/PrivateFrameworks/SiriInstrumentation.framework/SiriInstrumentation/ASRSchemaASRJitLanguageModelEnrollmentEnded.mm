@interface ASRSchemaASRJitLanguageModelEnrollmentEnded
- (ASRSchemaASRJitLanguageModelEnrollmentEnded)initWithDictionary:(id)dictionary;
- (ASRSchemaASRJitLanguageModelEnrollmentEnded)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRJitLanguageModelEnrollmentEnded

- (ASRSchemaASRJitLanguageModelEnrollmentEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRJitLanguageModelEnrollmentEnded;
  v5 = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)v5 setLinkId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ASRSchemaASRJitLanguageModelEnrollmentEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    linkId = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self linkId];
    linkId2 = [equalCopy linkId];
    v7 = linkId2;
    if ((linkId != 0) != (linkId2 == 0))
    {
      linkId3 = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self linkId];
      if (!linkId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = linkId3;
      linkId4 = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self linkId];
      linkId5 = [equalCopy linkId];
      v12 = [linkId4 isEqual:linkId5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRJitLanguageModelEnrollmentEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEnded *)self deleteLinkId];
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