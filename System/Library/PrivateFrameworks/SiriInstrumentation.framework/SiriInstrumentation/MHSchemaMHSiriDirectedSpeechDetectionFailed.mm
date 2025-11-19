@interface MHSchemaMHSiriDirectedSpeechDetectionFailed
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHSiriDirectedSpeechDetectionFailed)initWithDictionary:(id)a3;
- (MHSchemaMHSiriDirectedSpeechDetectionFailed)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHSiriDirectedSpeechDetectionFailed

- (MHSchemaMHSiriDirectedSpeechDetectionFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MHSchemaMHSiriDirectedSpeechDetectionFailed;
  v5 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)v5 setErrorMessage:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSiriDirectedSpeechDetectionFailed setErrorCode:](v5, "setErrorCode:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaMHSiriDirectedSpeechDetectionFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHSiriDirectedSpeechDetectionFailed errorCode](self, "errorCode")}];
    [v3 setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorMessage)
  {
    v5 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"errorMessage"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorMessage hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];
  v6 = [v4 errorMessage];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];
    v11 = [v4 errorMessage];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end