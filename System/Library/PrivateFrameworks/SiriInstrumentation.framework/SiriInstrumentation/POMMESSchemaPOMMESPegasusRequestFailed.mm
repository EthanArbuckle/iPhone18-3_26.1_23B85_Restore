@interface POMMESSchemaPOMMESPegasusRequestFailed
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESPegasusRequestFailed)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESPegasusRequestFailed)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESPegasusRequestFailed

- (POMMESSchemaPOMMESPegasusRequestFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESPegasusRequestFailed;
  v5 = [(POMMESSchemaPOMMESPegasusRequestFailed *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"requestArguments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[POMMESSchemaPOMMESPegasusRequestArguments alloc] initWithDictionary:v7];
      [(POMMESSchemaPOMMESPegasusRequestFailed *)v5 setRequestArguments:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESPegasusRequestFailed setErrorCode:](v5, "setErrorCode:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESPegasusRequestFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESPegasusRequestFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[POMMESSchemaPOMMESPegasusRequestFailed errorCode](self, "errorCode")}];
    [v3 setObject:v5 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self reason]- 1;
    if (v6 > 4)
    {
      v7 = @"POMMESPEGASUSREQUESTFAILUREREASON_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E0F18[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"reason"];
  }

  if (self->_requestArguments)
  {
    v8 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"requestArguments"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"requestArguments"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_reason;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(POMMESSchemaPOMMESPegasusRequestArguments *)self->_requestArguments hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    reason = self->_reason;
    if (reason != [v4 reason])
    {
      goto LABEL_15;
    }
  }

  v6 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
  v7 = [v4 requestArguments];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
  if (v9)
  {
    v10 = v9;
    v11 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
    v12 = [v4 requestArguments];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((v4[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];

  if (v4)
  {
    v5 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasErrorCode:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESPegasusRequestFailed;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(POMMESSchemaPOMMESPegasusRequestFailed *)self requestArguments:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(POMMESSchemaPOMMESPegasusRequestFailed *)self deleteRequestArguments];
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