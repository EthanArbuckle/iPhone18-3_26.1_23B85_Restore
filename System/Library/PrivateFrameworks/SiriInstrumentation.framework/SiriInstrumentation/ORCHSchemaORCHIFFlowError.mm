@interface ORCHSchemaORCHIFFlowError
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHIFFlowError)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHIFFlowError)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHIFFlowError

- (ORCHSchemaORCHIFFlowError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ORCHSchemaORCHIFFlowError;
  v5 = [(ORCHSchemaORCHIFFlowError *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"underLyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHError alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHIFFlowError *)v5 setUnderLyingError:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ifflowErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHIFFlowError setIfflowErrorCode:](v5, "setIfflowErrorCode:", [v8 longLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHIFFlowError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHIFFlowError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHIFFlowError *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ORCHSchemaORCHIFFlowError ifflowErrorCode](self, "ifflowErrorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"ifflowErrorCode"];
  }

  if (self->_underLyingError)
  {
    underLyingError = [(ORCHSchemaORCHIFFlowError *)self underLyingError];
    dictionaryRepresentation = [underLyingError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"underLyingError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"underLyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ORCHSchemaORCHError *)self->_underLyingError hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_ifflowErrorCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  underLyingError = [(ORCHSchemaORCHIFFlowError *)self underLyingError];
  underLyingError2 = [equalCopy underLyingError];
  v7 = underLyingError2;
  if ((underLyingError != 0) == (underLyingError2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  underLyingError3 = [(ORCHSchemaORCHIFFlowError *)self underLyingError];
  if (underLyingError3)
  {
    v9 = underLyingError3;
    underLyingError4 = [(ORCHSchemaORCHIFFlowError *)self underLyingError];
    underLyingError5 = [equalCopy underLyingError];
    v12 = [underLyingError4 isEqual:underLyingError5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    ifflowErrorCode = self->_ifflowErrorCode;
    if (ifflowErrorCode != [equalCopy ifflowErrorCode])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  underLyingError = [(ORCHSchemaORCHIFFlowError *)self underLyingError];

  if (underLyingError)
  {
    underLyingError2 = [(ORCHSchemaORCHIFFlowError *)self underLyingError];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ORCHSchemaORCHIFFlowError;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ORCHSchemaORCHIFFlowError *)self underLyingError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ORCHSchemaORCHIFFlowError *)self deleteUnderLyingError];
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