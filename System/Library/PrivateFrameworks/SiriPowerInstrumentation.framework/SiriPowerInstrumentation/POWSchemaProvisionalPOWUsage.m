@interface POWSchemaProvisionalPOWUsage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POWSchemaProvisionalPOWUsage)initWithDictionary:(id)a3;
- (POWSchemaProvisionalPOWUsage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasContext:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POWSchemaProvisionalPOWUsage

- (void)setHasContext:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    process = self->_process;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(POWSchemaProvisionalPOWUsage *)self processUsage];

  if (v5)
  {
    v6 = [(POWSchemaProvisionalPOWUsage *)self processUsage];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    context = self->_context;
    PBDataWriterWriteInt32Field();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((v4[28] & 1) != (*&self->_has & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    process = self->_process;
    if (process != [v4 process])
    {
      goto LABEL_15;
    }
  }

  v6 = [(POWSchemaProvisionalPOWUsage *)self processUsage];
  v7 = [v4 processUsage];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(POWSchemaProvisionalPOWUsage *)self processUsage];
  if (v9)
  {
    v10 = v9;
    v11 = [(POWSchemaProvisionalPOWUsage *)self processUsage];
    v12 = [v4 processUsage];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  has = self->_has;
  if (((v4[28] ^ *&has) & 2) != 0)
  {
    goto LABEL_15;
  }

  if ((*&has & 2) != 0)
  {
    context = self->_context;
    if (context != [v4 context])
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v6 forKeyedSubscript:@"context"];
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

    [v3 setObject:v8 forKeyedSubscript:@"process"];
  }

  if (self->_processUsage)
  {
    v9 = [(POWSchemaProvisionalPOWUsage *)self processUsage];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"processUsage"];
    }

    else
    {
      v11 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v11 forKeyedSubscript:@"processUsage"];
    }
  }

  [(POWSchemaProvisionalPOWUsage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(POWSchemaProvisionalPOWUsage *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (POWSchemaProvisionalPOWUsage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POWSchemaProvisionalPOWUsage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (POWSchemaProvisionalPOWUsage)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = POWSchemaProvisionalPOWUsage;
  v5 = [(POWSchemaProvisionalPOWUsage *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"process"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POWSchemaProvisionalPOWUsage setProcess:](v5, "setProcess:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"processUsage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[POWSchemaProvisionalPOWProcessUsage alloc] initWithDictionary:v7];
      [(POWSchemaProvisionalPOWUsage *)v5 setProcessUsage:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"context"];
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