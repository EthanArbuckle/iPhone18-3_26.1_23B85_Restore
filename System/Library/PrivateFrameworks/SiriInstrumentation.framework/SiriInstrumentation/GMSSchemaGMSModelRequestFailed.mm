@interface GMSSchemaGMSModelRequestFailed
- (BOOL)isEqual:(id)equal;
- (GMSSchemaGMSModelRequestFailed)initWithDictionary:(id)dictionary;
- (GMSSchemaGMSModelRequestFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasGmsErrorCode:(BOOL)code;
- (void)setHasOpenAIErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation GMSSchemaGMSModelRequestFailed

- (GMSSchemaGMSModelRequestFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = GMSSchemaGMSModelRequestFailed;
  v5 = [(GMSSchemaGMSModelRequestFailed *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestFailed setErrorDomain:](v5, "setErrorDomain:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"gmsErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestFailed setGmsErrorCode:](v5, "setGmsErrorCode:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"openAIErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestFailed setOpenAIErrorCode:](v5, "setOpenAIErrorCode:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"errorDomainString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(GMSSchemaGMSModelRequestFailed *)v5 setErrorDomainString:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GMSSchemaGMSModelRequestFailed setErrorCode:](v5, "setErrorCode:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (GMSSchemaGMSModelRequestFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GMSSchemaGMSModelRequestFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GMSSchemaGMSModelRequestFailed *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[GMSSchemaGMSModelRequestFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v5 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(GMSSchemaGMSModelRequestFailed *)self errorDomain]- 1;
    if (v6 > 0x2F)
    {
      v7 = @"GMSERRORDOMAIN_UNKNOWN";
    }

    else
    {
      v7 = off_1E78D7380[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_errorDomainString)
  {
    errorDomainString = [(GMSSchemaGMSModelRequestFailed *)self errorDomainString];
    v9 = [errorDomainString copy];
    [dictionary setObject:v9 forKeyedSubscript:@"errorDomainString"];
  }

  v10 = self->_has;
  if ((v10 & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[GMSSchemaGMSModelRequestFailed gmsErrorCode](self, "gmsErrorCode")}];
    [dictionary setObject:v11 forKeyedSubscript:@"gmsErrorCode"];

    v10 = self->_has;
  }

  if ((v10 & 4) != 0)
  {
    v12 = [(GMSSchemaGMSModelRequestFailed *)self openAIErrorCode]- 1;
    if (v12 > 0x17)
    {
      v13 = @"GMSOPENAIERRORCODE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78D7500[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"openAIErrorCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_errorDomain;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_gmsErrorCode;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_openAIErrorCode;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_errorDomainString hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_errorCode;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v7 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = equalCopy[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    errorDomain = self->_errorDomain;
    if (errorDomain != [equalCopy errorDomain])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v8)
  {
    gmsErrorCode = self->_gmsErrorCode;
    if (gmsErrorCode == [equalCopy gmsErrorCode])
    {
      has = self->_has;
      v6 = equalCopy[36];
      goto LABEL_10;
    }

LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_23;
  }

  if (v10)
  {
    openAIErrorCode = self->_openAIErrorCode;
    if (openAIErrorCode != [equalCopy openAIErrorCode])
    {
      goto LABEL_23;
    }
  }

  errorDomainString = [(GMSSchemaGMSModelRequestFailed *)self errorDomainString];
  errorDomainString2 = [equalCopy errorDomainString];
  v14 = errorDomainString2;
  if ((errorDomainString != 0) == (errorDomainString2 == 0))
  {

    goto LABEL_23;
  }

  errorDomainString3 = [(GMSSchemaGMSModelRequestFailed *)self errorDomainString];
  if (errorDomainString3)
  {
    v16 = errorDomainString3;
    errorDomainString4 = [(GMSSchemaGMSModelRequestFailed *)self errorDomainString];
    errorDomainString5 = [equalCopy errorDomainString];
    v19 = [errorDomainString4 isEqual:errorDomainString5];

    if (!v19)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 3) & 1;
  if (v20 != ((equalCopy[36] >> 3) & 1))
  {
    goto LABEL_23;
  }

  if (v20)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_23;
    }
  }

  v22 = 1;
LABEL_24:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  errorDomainString = [(GMSSchemaGMSModelRequestFailed *)self errorDomainString];

  if (errorDomainString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasOpenAIErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasGmsErrorCode:(BOOL)code
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