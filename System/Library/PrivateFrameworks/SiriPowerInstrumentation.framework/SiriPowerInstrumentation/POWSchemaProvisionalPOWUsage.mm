@interface POWSchemaProvisionalPOWUsage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POWSchemaProvisionalPOWUsage)initWithDictionary:(id)dictionary;
- (POWSchemaProvisionalPOWUsage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasContext:(BOOL)context;
- (void)writeTo:(id)to;
@end

@implementation POWSchemaProvisionalPOWUsage

- (void)setHasContext:(BOOL)context
{
  if (context)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    process = self->_process;
    PBDataWriterWriteInt32Field();
  }

  processUsage = [(POWSchemaProvisionalPOWUsage *)self processUsage];

  if (processUsage)
  {
    processUsage2 = [(POWSchemaProvisionalPOWUsage *)self processUsage];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    context = self->_context;
    PBDataWriterWriteInt32Field();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((equalCopy[28] & 1) != (*&self->_has & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    process = self->_process;
    if (process != [equalCopy process])
    {
      goto LABEL_15;
    }
  }

  processUsage = [(POWSchemaProvisionalPOWUsage *)self processUsage];
  processUsage2 = [equalCopy processUsage];
  v8 = processUsage2;
  if ((processUsage != 0) == (processUsage2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  processUsage3 = [(POWSchemaProvisionalPOWUsage *)self processUsage];
  if (processUsage3)
  {
    v10 = processUsage3;
    processUsage4 = [(POWSchemaProvisionalPOWUsage *)self processUsage];
    processUsage5 = [equalCopy processUsage];
    v13 = [processUsage4 isEqual:processUsage5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  has = self->_has;
  if (((equalCopy[28] ^ *&has) & 2) != 0)
  {
    goto LABEL_15;
  }

  if ((*&has & 2) != 0)
  {
    context = self->_context;
    if (context != [equalCopy context])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_process;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(POWSchemaProvisionalPOWProcessUsage *)self->_processUsage hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_context;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [(POWSchemaProvisionalPOWUsage *)self context]- 1;
    if (v5 > 0x31)
    {
      v6 = @"UNKNOWN";
    }

    else
    {
      v6 = off_279C44BF8[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"context"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(POWSchemaProvisionalPOWUsage *)self process]- 1;
    if (v7 > 7)
    {
      v8 = @"POWPROCESS_UNKNOWN";
    }

    else
    {
      v8 = off_279C44D88[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"process"];
  }

  if (self->_processUsage)
  {
    processUsage = [(POWSchemaProvisionalPOWUsage *)self processUsage];
    dictionaryRepresentation = [processUsage dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"processUsage"];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null forKeyedSubscript:@"processUsage"];
    }
  }

  [(POWSchemaProvisionalPOWUsage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POWSchemaProvisionalPOWUsage *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (POWSchemaProvisionalPOWUsage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POWSchemaProvisionalPOWUsage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (POWSchemaProvisionalPOWUsage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POWSchemaProvisionalPOWUsage;
  v5 = [(POWSchemaProvisionalPOWUsage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"process"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWUsage setProcess:](v5, "setProcess:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"processUsage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[POWSchemaProvisionalPOWProcessUsage alloc] initWithDictionary:v7];
      [(POWSchemaProvisionalPOWUsage *)v5 setProcessUsage:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWUsage setContext:](v5, "setContext:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

@end