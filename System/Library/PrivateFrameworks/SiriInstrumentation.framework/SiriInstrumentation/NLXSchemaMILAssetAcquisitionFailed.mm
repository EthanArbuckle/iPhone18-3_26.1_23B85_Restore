@interface NLXSchemaMILAssetAcquisitionFailed
- (BOOL)isEqual:(id)equal;
- (NLXSchemaMILAssetAcquisitionFailed)initWithDictionary:(id)dictionary;
- (NLXSchemaMILAssetAcquisitionFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaMILAssetAcquisitionFailed

- (NLXSchemaMILAssetAcquisitionFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLXSchemaMILAssetAcquisitionFailed;
  v5 = [(NLXSchemaMILAssetAcquisitionFailed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"acquisitionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaMILAssetAcquisitionFailed setAcquisitionType:](v5, "setAcquisitionType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaMILAssetAcquisitionFailed setErrorCode:](v5, "setErrorCode:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLXSchemaMILAssetAcquisitionFailed *)v5 setErrorMessage:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaMILAssetAcquisitionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaMILAssetAcquisitionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaMILAssetAcquisitionFailed *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    acquisitionType = [(NLXSchemaMILAssetAcquisitionFailed *)self acquisitionType];
    v6 = @"MILASSETACQUISITIONTYPE_UNKNOWN";
    if (acquisitionType == 1)
    {
      v6 = @"MILASSETACQUISITIONTYPE_CACHE";
    }

    if (acquisitionType == 2)
    {
      v7 = @"MILASSETACQUISITIONTYPE_RECOMPILE";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"acquisitionType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [(NLXSchemaMILAssetAcquisitionFailed *)self errorCode]- 1;
    if (v8 > 6)
    {
      v9 = @"MILASSETACQUISITIONERRORCODE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78DC530[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorMessage)
  {
    errorMessage = [(NLXSchemaMILAssetAcquisitionFailed *)self errorMessage];
    v11 = [errorMessage copy];
    [dictionary setObject:v11 forKeyedSubscript:@"errorMessage"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_acquisitionType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_errorMessage hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_errorCode;
  return v7 ^ v6 ^ [(NSString *)self->_errorMessage hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    acquisitionType = self->_acquisitionType;
    if (acquisitionType != [equalCopy acquisitionType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (errorCode = self->_errorCode, errorCode == [equalCopy errorCode]))
    {
      errorMessage = [(NLXSchemaMILAssetAcquisitionFailed *)self errorMessage];
      errorMessage2 = [equalCopy errorMessage];
      v12 = errorMessage2;
      if ((errorMessage != 0) != (errorMessage2 == 0))
      {
        errorMessage3 = [(NLXSchemaMILAssetAcquisitionFailed *)self errorMessage];
        if (!errorMessage3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = errorMessage3;
        errorMessage4 = [(NLXSchemaMILAssetAcquisitionFailed *)self errorMessage];
        errorMessage5 = [equalCopy errorMessage];
        v17 = [errorMessage4 isEqual:errorMessage5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  errorMessage = [(NLXSchemaMILAssetAcquisitionFailed *)self errorMessage];

  v6 = toCopy;
  if (errorMessage)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end