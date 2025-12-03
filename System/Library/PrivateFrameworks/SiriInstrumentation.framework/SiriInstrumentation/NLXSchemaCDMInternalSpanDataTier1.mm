@interface NLXSchemaCDMInternalSpanDataTier1
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMInternalSpanDataTier1)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMInternalSpanDataTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMInternalSpanDataTier1

- (NLXSchemaCDMInternalSpanDataTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NLXSchemaCDMInternalSpanDataTier1;
  v5 = [(NLXSchemaCDMInternalSpanDataTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriVocabularySpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLXSchemaCDMSiriVocabularySpanDataTier1 alloc] initWithDictionary:v6];
      [(NLXSchemaCDMInternalSpanDataTier1 *)v5 setSiriVocabularySpanData:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (NLXSchemaCDMInternalSpanDataTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMInternalSpanDataTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMInternalSpanDataTier1 *)self dictionaryRepresentation];
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
  if (self->_siriVocabularySpanData)
  {
    siriVocabularySpanData = [(NLXSchemaCDMInternalSpanDataTier1 *)self siriVocabularySpanData];
    dictionaryRepresentation = [siriVocabularySpanData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriVocabularySpanData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriVocabularySpanData"];
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
    siriVocabularySpanData = [(NLXSchemaCDMInternalSpanDataTier1 *)self siriVocabularySpanData];
    siriVocabularySpanData2 = [equalCopy siriVocabularySpanData];
    v7 = siriVocabularySpanData2;
    if ((siriVocabularySpanData != 0) != (siriVocabularySpanData2 == 0))
    {
      siriVocabularySpanData3 = [(NLXSchemaCDMInternalSpanDataTier1 *)self siriVocabularySpanData];
      if (!siriVocabularySpanData3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = siriVocabularySpanData3;
      siriVocabularySpanData4 = [(NLXSchemaCDMInternalSpanDataTier1 *)self siriVocabularySpanData];
      siriVocabularySpanData5 = [equalCopy siriVocabularySpanData];
      v12 = [siriVocabularySpanData4 isEqual:siriVocabularySpanData5];

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
  siriVocabularySpanData = [(NLXSchemaCDMInternalSpanDataTier1 *)self siriVocabularySpanData];

  if (siriVocabularySpanData)
  {
    siriVocabularySpanData2 = [(NLXSchemaCDMInternalSpanDataTier1 *)self siriVocabularySpanData];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = NLXSchemaCDMInternalSpanDataTier1;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaCDMInternalSpanDataTier1 *)self siriVocabularySpanData:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaCDMInternalSpanDataTier1 *)self deleteSiriVocabularySpanData];
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