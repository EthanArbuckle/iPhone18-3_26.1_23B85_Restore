@interface SISchemaDictationTranscriptionMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDictationTranscriptionMetadata)initWithDictionary:(id)dictionary;
- (SISchemaDictationTranscriptionMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDictationTranscriptionMetadata

- (SISchemaDictationTranscriptionMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaDictationTranscriptionMetadata;
  v5 = [(SISchemaDictationTranscriptionMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dictationModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationTranscriptionMetadata setDictationModel:](v5, "setDictationModel:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"dictationModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SISchemaDictationTranscriptionMetadata *)v5 setDictationModelVersion:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"dictationAlternativesPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaDictationAlternativesPresent alloc] initWithDictionary:v9];
      [(SISchemaDictationTranscriptionMetadata *)v5 setDictationAlternativesPresent:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaDictationTranscriptionMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDictationTranscriptionMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDictationTranscriptionMetadata *)self dictionaryRepresentation];
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
  if (self->_dictationAlternativesPresent)
  {
    dictationAlternativesPresent = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
    dictionaryRepresentation = [dictationAlternativesPresent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dictationAlternativesPresent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dictationAlternativesPresent"];
    }
  }

  if (*&self->_has)
  {
    dictationModel = [(SISchemaDictationTranscriptionMetadata *)self dictationModel];
    v8 = @"DICTATIONMODEL_UNKNOWN_DICTATION_MODEL_SOURCE";
    if (dictationModel == 1)
    {
      v8 = @"DICTATIONMODEL_CLIENT";
    }

    if (dictationModel == 2)
    {
      v9 = @"DICTATIONMODEL_SERVER";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"dictationModel"];
  }

  if (self->_dictationModelVersion)
  {
    dictationModelVersion = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];
    v11 = [dictationModelVersion copy];
    [dictionary setObject:v11 forKeyedSubscript:@"dictationModelVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_dictationModel;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_dictationModelVersion hash]^ v3;
  return v4 ^ [(SISchemaDictationAlternativesPresent *)self->_dictationAlternativesPresent hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    dictationModel = self->_dictationModel;
    if (dictationModel != [equalCopy dictationModel])
    {
      goto LABEL_15;
    }
  }

  dictationModelVersion = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];
  dictationModelVersion2 = [equalCopy dictationModelVersion];
  if ((dictationModelVersion != 0) == (dictationModelVersion2 == 0))
  {
    goto LABEL_14;
  }

  dictationModelVersion3 = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];
  if (dictationModelVersion3)
  {
    v9 = dictationModelVersion3;
    dictationModelVersion4 = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];
    dictationModelVersion5 = [equalCopy dictationModelVersion];
    v12 = [dictationModelVersion4 isEqual:dictationModelVersion5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  dictationModelVersion = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
  dictationModelVersion2 = [equalCopy dictationAlternativesPresent];
  if ((dictationModelVersion != 0) != (dictationModelVersion2 == 0))
  {
    dictationAlternativesPresent = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
    if (!dictationAlternativesPresent)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = dictationAlternativesPresent;
    dictationAlternativesPresent2 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
    dictationAlternativesPresent3 = [equalCopy dictationAlternativesPresent];
    v17 = [dictationAlternativesPresent2 isEqual:dictationAlternativesPresent3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  dictationModelVersion = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];

  if (dictationModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  dictationAlternativesPresent = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];

  v6 = toCopy;
  if (dictationAlternativesPresent)
  {
    dictationAlternativesPresent2 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaDictationTranscriptionMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaDictationTranscriptionMetadata *)self deleteDictationAlternativesPresent];
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