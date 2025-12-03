@interface ODDSiriSchemaODDMANetworkAccessTypes
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDMANetworkAccessTypes)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDMANetworkAccessTypes)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCellularAccessResponse:(BOOL)response;
- (void)setHasConstrainedNetworkAccessRequest:(BOOL)request;
- (void)setHasConstrainedNetworkAccessResponse:(BOOL)response;
- (void)setHasExpensiveNetworkAccessRequest:(BOOL)request;
- (void)setHasExpensiveNetworkAccessResponse:(BOOL)response;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDMANetworkAccessTypes

- (ODDSiriSchemaODDMANetworkAccessTypes)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = ODDSiriSchemaODDMANetworkAccessTypes;
  v5 = [(ODDSiriSchemaODDMANetworkAccessTypes *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cellularAccessRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMANetworkAccessTypes setCellularAccessRequest:](v5, "setCellularAccessRequest:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"cellularAccessResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMANetworkAccessTypes setCellularAccessResponse:](v5, "setCellularAccessResponse:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"constrainedNetworkAccessRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMANetworkAccessTypes setConstrainedNetworkAccessRequest:](v5, "setConstrainedNetworkAccessRequest:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"constrainedNetworkAccessResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMANetworkAccessTypes setConstrainedNetworkAccessResponse:](v5, "setConstrainedNetworkAccessResponse:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"expensiveNetworkAccessRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMANetworkAccessTypes setExpensiveNetworkAccessRequest:](v5, "setExpensiveNetworkAccessRequest:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"expensiveNetworkAccessResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMANetworkAccessTypes setExpensiveNetworkAccessResponse:](v5, "setExpensiveNetworkAccessResponse:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDMANetworkAccessTypes)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMANetworkAccessTypes *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDMANetworkAccessTypes *)self dictionaryRepresentation];
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
  v4 = *(&self->_expensiveNetworkAccessResponse + 1);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMANetworkAccessTypes cellularAccessRequest](self, "cellularAccessRequest")}];
    [dictionary setObject:v7 forKeyedSubscript:@"cellularAccessRequest"];

    v4 = *(&self->_expensiveNetworkAccessResponse + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(&self->_expensiveNetworkAccessResponse + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMANetworkAccessTypes cellularAccessResponse](self, "cellularAccessResponse")}];
  [dictionary setObject:v8 forKeyedSubscript:@"cellularAccessResponse"];

  v4 = *(&self->_expensiveNetworkAccessResponse + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMANetworkAccessTypes constrainedNetworkAccessRequest](self, "constrainedNetworkAccessRequest")}];
  [dictionary setObject:v9 forKeyedSubscript:@"constrainedNetworkAccessRequest"];

  v4 = *(&self->_expensiveNetworkAccessResponse + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMANetworkAccessTypes constrainedNetworkAccessResponse](self, "constrainedNetworkAccessResponse")}];
  [dictionary setObject:v10 forKeyedSubscript:@"constrainedNetworkAccessResponse"];

  v4 = *(&self->_expensiveNetworkAccessResponse + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMANetworkAccessTypes expensiveNetworkAccessRequest](self, "expensiveNetworkAccessRequest")}];
  [dictionary setObject:v11 forKeyedSubscript:@"expensiveNetworkAccessRequest"];

  if ((*(&self->_expensiveNetworkAccessResponse + 1) & 0x20) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDMANetworkAccessTypes expensiveNetworkAccessResponse](self, "expensiveNetworkAccessResponse")}];
    [dictionary setObject:v5 forKeyedSubscript:@"expensiveNetworkAccessResponse"];
  }

LABEL_8:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_expensiveNetworkAccessResponse + 1))
  {
    v2 = 2654435761 * self->_cellularAccessRequest;
    if ((*(&self->_expensiveNetworkAccessResponse + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_cellularAccessResponse;
      if ((*(&self->_expensiveNetworkAccessResponse + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*(&self->_expensiveNetworkAccessResponse + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_expensiveNetworkAccessResponse + 1) & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_constrainedNetworkAccessRequest;
    if ((*(&self->_expensiveNetworkAccessResponse + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*(&self->_expensiveNetworkAccessResponse + 1) & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_constrainedNetworkAccessResponse;
    if ((*(&self->_expensiveNetworkAccessResponse + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*(&self->_expensiveNetworkAccessResponse + 1) & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*(&self->_expensiveNetworkAccessResponse + 1) & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_expensiveNetworkAccessRequest;
  if ((*(&self->_expensiveNetworkAccessResponse + 1) & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_expensiveNetworkAccessResponse;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(&self->_expensiveNetworkAccessResponse + 1);
  v6 = equalCopy[14];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (v5)
  {
    cellularAccessRequest = self->_cellularAccessRequest;
    if (cellularAccessRequest != [equalCopy cellularAccessRequest])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_expensiveNetworkAccessResponse + 1);
    v6 = equalCopy[14];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_26;
  }

  if (v8)
  {
    cellularAccessResponse = self->_cellularAccessResponse;
    if (cellularAccessResponse != [equalCopy cellularAccessResponse])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_expensiveNetworkAccessResponse + 1);
    v6 = equalCopy[14];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_26;
  }

  if (v10)
  {
    constrainedNetworkAccessRequest = self->_constrainedNetworkAccessRequest;
    if (constrainedNetworkAccessRequest != [equalCopy constrainedNetworkAccessRequest])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_expensiveNetworkAccessResponse + 1);
    v6 = equalCopy[14];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_26;
  }

  if (v12)
  {
    constrainedNetworkAccessResponse = self->_constrainedNetworkAccessResponse;
    if (constrainedNetworkAccessResponse != [equalCopy constrainedNetworkAccessResponse])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_expensiveNetworkAccessResponse + 1);
    v6 = equalCopy[14];
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_26;
  }

  if (v14)
  {
    expensiveNetworkAccessRequest = self->_expensiveNetworkAccessRequest;
    if (expensiveNetworkAccessRequest == [equalCopy expensiveNetworkAccessRequest])
    {
      v5 = *(&self->_expensiveNetworkAccessResponse + 1);
      v6 = equalCopy[14];
      goto LABEL_22;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

LABEL_22:
  v16 = (v5 >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_26;
  }

  if (v16)
  {
    expensiveNetworkAccessResponse = self->_expensiveNetworkAccessResponse;
    if (expensiveNetworkAccessResponse != [equalCopy expensiveNetworkAccessResponse])
    {
      goto LABEL_26;
    }
  }

  v18 = 1;
LABEL_27:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_expensiveNetworkAccessResponse + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_expensiveNetworkAccessResponse + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(&self->_expensiveNetworkAccessResponse + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = *(&self->_expensiveNetworkAccessResponse + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_expensiveNetworkAccessResponse + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_expensiveNetworkAccessResponse + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_expensiveNetworkAccessResponse + 1) & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
}

- (void)setHasExpensiveNetworkAccessResponse:(BOOL)response
{
  if (response)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_expensiveNetworkAccessResponse + 1) = *(&self->_expensiveNetworkAccessResponse + 1) & 0xDF | v3;
}

- (void)setHasExpensiveNetworkAccessRequest:(BOOL)request
{
  if (request)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_expensiveNetworkAccessResponse + 1) = *(&self->_expensiveNetworkAccessResponse + 1) & 0xEF | v3;
}

- (void)setHasConstrainedNetworkAccessResponse:(BOOL)response
{
  if (response)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_expensiveNetworkAccessResponse + 1) = *(&self->_expensiveNetworkAccessResponse + 1) & 0xF7 | v3;
}

- (void)setHasConstrainedNetworkAccessRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_expensiveNetworkAccessResponse + 1) = *(&self->_expensiveNetworkAccessResponse + 1) & 0xFB | v3;
}

- (void)setHasCellularAccessResponse:(BOOL)response
{
  if (response)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_expensiveNetworkAccessResponse + 1) = *(&self->_expensiveNetworkAccessResponse + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end