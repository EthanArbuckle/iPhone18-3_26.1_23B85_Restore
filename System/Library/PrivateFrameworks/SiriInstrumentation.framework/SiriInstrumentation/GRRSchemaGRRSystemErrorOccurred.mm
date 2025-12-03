@interface GRRSchemaGRRSystemErrorOccurred
- (BOOL)isEqual:(id)equal;
- (GRRSchemaGRRSystemErrorOccurred)initWithDictionary:(id)dictionary;
- (GRRSchemaGRRSystemErrorOccurred)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation GRRSchemaGRRSystemErrorOccurred

- (GRRSchemaGRRSystemErrorOccurred)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = GRRSchemaGRRSystemErrorOccurred;
  v5 = [(GRRSchemaGRRSystemErrorOccurred *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRRSchemaGRRSystemErrorOccurred setErrorCode:](v5, "setErrorCode:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(GRRSchemaGRRSystemErrorOccurred *)v5 setErrorMessage:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (GRRSchemaGRRSystemErrorOccurred)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GRRSchemaGRRSystemErrorOccurred *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GRRSchemaGRRSystemErrorOccurred *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    errorCode = [(GRRSchemaGRRSystemErrorOccurred *)self errorCode];
    v5 = @"GRRERRORCODE_UNKNOWN";
    if (errorCode == 1)
    {
      v5 = @"GRRERRORCODE_FEATURE_EXTRACTION_ERROR";
    }

    if (errorCode == 2)
    {
      v6 = @"GRRERRORCODE_RANKING_ERROR";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorMessage)
  {
    errorMessage = [(GRRSchemaGRRSystemErrorOccurred *)self errorMessage];
    v8 = [errorMessage copy];
    [dictionary setObject:v8 forKeyedSubscript:@"errorMessage"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_errorCode;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_errorMessage hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (errorCode = self->_errorCode, errorCode == [equalCopy errorCode]))
      {
        errorMessage = [(GRRSchemaGRRSystemErrorOccurred *)self errorMessage];
        errorMessage2 = [equalCopy errorMessage];
        v8 = errorMessage2;
        if ((errorMessage != 0) != (errorMessage2 == 0))
        {
          errorMessage3 = [(GRRSchemaGRRSystemErrorOccurred *)self errorMessage];
          if (!errorMessage3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = errorMessage3;
          errorMessage4 = [(GRRSchemaGRRSystemErrorOccurred *)self errorMessage];
          errorMessage5 = [equalCopy errorMessage];
          v13 = [errorMessage4 isEqual:errorMessage5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  errorMessage = [(GRRSchemaGRRSystemErrorOccurred *)self errorMessage];

  v5 = toCopy;
  if (errorMessage)
  {
    PBDataWriterWriteStringField();
    v5 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end