@interface SIServiceInstrumentationBatchResponse
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIServiceInstrumentationBatchResponse)initWithDictionary:(id)a3;
- (SIServiceInstrumentationBatchResponse)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SIServiceInstrumentationBatchResponse

- (SIServiceInstrumentationBatchResponse)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SIServiceInstrumentationBatchResponse;
  v5 = [(SIServiceInstrumentationBatchResponse *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"batchId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SIServiceInstrumentationBatchResponse *)v5 setBatch_id:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"statusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIServiceInstrumentationBatchResponse setStatus_code:](v5, "setStatus_code:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(SIServiceInstrumentationBatchResponse *)v5 setMessage:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SIServiceInstrumentationBatchResponse)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIServiceInstrumentationBatchResponse *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIServiceInstrumentationBatchResponse *)self dictionaryRepresentation];
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
  if (self->_batch_id)
  {
    v4 = [(SIServiceInstrumentationBatchResponse *)self batch_id];
    v5 = [v4 base64EncodedStringWithOptions:0];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"batchId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"batchId"];
    }
  }

  if (self->_message)
  {
    v7 = [(SIServiceInstrumentationBatchResponse *)self message];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"message"];
  }

  if (*&self->_has)
  {
    if ([(SIServiceInstrumentationBatchResponse *)self status_code]== 1)
    {
      v9 = @"FAILURE";
    }

    else
    {
      v9 = @"SUCCESS";
    }

    [v3 setObject:v9 forKeyedSubscript:@"statusCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_batch_id hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_status_code;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_message hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(SIServiceInstrumentationBatchResponse *)self batch_id];
  v6 = [v4 batch_id];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(SIServiceInstrumentationBatchResponse *)self batch_id];
  if (v7)
  {
    v8 = v7;
    v9 = [(SIServiceInstrumentationBatchResponse *)self batch_id];
    v10 = [v4 batch_id];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    status_code = self->_status_code;
    if (status_code != [v4 status_code])
    {
      goto LABEL_15;
    }
  }

  v5 = [(SIServiceInstrumentationBatchResponse *)self message];
  v6 = [v4 message];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(SIServiceInstrumentationBatchResponse *)self message];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(SIServiceInstrumentationBatchResponse *)self message];
    v16 = [v4 message];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(SIServiceInstrumentationBatchResponse *)self batch_id];

  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(SIServiceInstrumentationBatchResponse *)self message];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end