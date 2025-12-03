@interface RRSchemaRRPullerFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaRRPullerFailed)initWithDictionary:(id)dictionary;
- (RRSchemaRRPullerFailed)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsTimeout:(BOOL)timeout;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaRRPullerFailed

- (RRSchemaRRPullerFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = RRSchemaRRPullerFailed;
  v5 = [(RRSchemaRRPullerFailed *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRPullerFailed setName:](v5, "setName:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isTimeout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRPullerFailed setIsTimeout:](v5, "setIsTimeout:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (RRSchemaRRPullerFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaRRPullerFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaRRPullerFailed *)self dictionaryRepresentation];
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
  v4 = *(&self->_isTimeout + 1);
  if ((v4 & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[RRSchemaRRPullerFailed isTimeout](self, "isTimeout")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isTimeout"];

    v4 = *(&self->_isTimeout + 1);
  }

  if (v4)
  {
    v6 = [(RRSchemaRRPullerFailed *)self name]- 1;
    if (v6 > 8)
    {
      v7 = @"RRPULLERNAME_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E2128[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isTimeout + 1))
  {
    v2 = 2654435761 * self->_name;
    if ((*(&self->_isTimeout + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_isTimeout + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isTimeout;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_isTimeout + 1);
  v6 = equalCopy[13];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    name = self->_name;
    if (name != [equalCopy name])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_isTimeout + 1);
    v6 = equalCopy[13];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    isTimeout = self->_isTimeout;
    if (isTimeout != [equalCopy isTimeout])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_isTimeout + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    v5 = *(&self->_isTimeout + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)setHasIsTimeout:(BOOL)timeout
{
  if (timeout)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isTimeout + 1) = *(&self->_isTimeout + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end