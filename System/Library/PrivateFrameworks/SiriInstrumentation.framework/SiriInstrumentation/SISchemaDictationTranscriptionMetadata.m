@interface SISchemaDictationTranscriptionMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaDictationTranscriptionMetadata)initWithDictionary:(id)a3;
- (SISchemaDictationTranscriptionMetadata)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaDictationTranscriptionMetadata

- (SISchemaDictationTranscriptionMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaDictationTranscriptionMetadata;
  v5 = [(SISchemaDictationTranscriptionMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dictationModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaDictationTranscriptionMetadata setDictationModel:](v5, "setDictationModel:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"dictationModelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SISchemaDictationTranscriptionMetadata *)v5 setDictationModelVersion:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"dictationAlternativesPresent"];
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

- (SISchemaDictationTranscriptionMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaDictationTranscriptionMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaDictationTranscriptionMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_dictationAlternativesPresent)
  {
    v4 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"dictationAlternativesPresent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"dictationAlternativesPresent"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(SISchemaDictationTranscriptionMetadata *)self dictationModel];
    v8 = @"DICTATIONMODEL_UNKNOWN_DICTATION_MODEL_SOURCE";
    if (v7 == 1)
    {
      v8 = @"DICTATIONMODEL_CLIENT";
    }

    if (v7 == 2)
    {
      v9 = @"DICTATIONMODEL_SERVER";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"dictationModel"];
  }

  if (self->_dictationModelVersion)
  {
    v10 = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"dictationModelVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    dictationModel = self->_dictationModel;
    if (dictationModel != [v4 dictationModel])
    {
      goto LABEL_15;
    }
  }

  v6 = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];
  v7 = [v4 dictationModelVersion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];
    v11 = [v4 dictationModelVersion];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
  v7 = [v4 dictationAlternativesPresent];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
    v16 = [v4 dictationAlternativesPresent];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(SISchemaDictationTranscriptionMetadata *)self dictationModelVersion];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];

  v6 = v8;
  if (v5)
  {
    v7 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaDictationTranscriptionMetadata;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaDictationTranscriptionMetadata *)self dictationAlternativesPresent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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