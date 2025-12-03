@interface POMMESSchemaPOMMESCacheLookupEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESCacheLookupEnded)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESCacheLookupEnded)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESCacheLookupEnded

- (POMMESSchemaPOMMESCacheLookupEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = POMMESSchemaPOMMESCacheLookupEnded;
  v5 = [(POMMESSchemaPOMMESCacheLookupEnded *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESCacheLookupEnded setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"resultDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(POMMESSchemaPOMMESCacheLookupEnded *)v5 setResultDomain:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[POMMESSchemaPOMMESCacheEntry alloc] initWithDictionary:v9];
      [(POMMESSchemaPOMMESCacheLookupEnded *)v5 setResult:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESCacheLookupEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESCacheLookupEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESCacheLookupEnded *)self dictionaryRepresentation];
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
  if (self->_result)
  {
    result = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
    dictionaryRepresentation = [result dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"result"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"result"];
    }
  }

  if (self->_resultDomain)
  {
    resultDomain = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];
    v8 = [resultDomain copy];
    [dictionary setObject:v8 forKeyedSubscript:@"resultDomain"];
  }

  if (*&self->_has)
  {
    v9 = [(POMMESSchemaPOMMESCacheLookupEnded *)self status]- 1;
    if (v9 > 2)
    {
      v10 = @"POMMESCACHELOOKUPENDEDSTATUS_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E0D18[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_status;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_resultDomain hash]^ v3;
  return v4 ^ [(POMMESSchemaPOMMESCacheEntry *)self->_result hash];
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
    status = self->_status;
    if (status != [equalCopy status])
    {
      goto LABEL_15;
    }
  }

  resultDomain = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];
  resultDomain2 = [equalCopy resultDomain];
  if ((resultDomain != 0) == (resultDomain2 == 0))
  {
    goto LABEL_14;
  }

  resultDomain3 = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];
  if (resultDomain3)
  {
    v9 = resultDomain3;
    resultDomain4 = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];
    resultDomain5 = [equalCopy resultDomain];
    v12 = [resultDomain4 isEqual:resultDomain5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  resultDomain = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
  resultDomain2 = [equalCopy result];
  if ((resultDomain != 0) != (resultDomain2 == 0))
  {
    result = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
    if (!result)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = result;
    result2 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
    result3 = [equalCopy result];
    v17 = [result2 isEqual:result3];

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

  resultDomain = [(POMMESSchemaPOMMESCacheLookupEnded *)self resultDomain];

  if (resultDomain)
  {
    PBDataWriterWriteStringField();
  }

  result = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];

  v6 = toCopy;
  if (result)
  {
    result2 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESCacheLookupEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESCacheLookupEnded *)self result:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESCacheLookupEnded *)self deleteResult];
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