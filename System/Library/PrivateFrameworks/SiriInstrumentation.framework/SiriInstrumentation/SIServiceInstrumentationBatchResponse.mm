@interface SIServiceInstrumentationBatchResponse
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIServiceInstrumentationBatchResponse)initWithDictionary:(id)dictionary;
- (SIServiceInstrumentationBatchResponse)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SIServiceInstrumentationBatchResponse

- (SIServiceInstrumentationBatchResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SIServiceInstrumentationBatchResponse;
  v5 = [(SIServiceInstrumentationBatchResponse *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"batchId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SIServiceInstrumentationBatchResponse *)v5 setBatch_id:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"statusCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIServiceInstrumentationBatchResponse setStatus_code:](v5, "setStatus_code:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"message"];
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

- (SIServiceInstrumentationBatchResponse)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIServiceInstrumentationBatchResponse *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIServiceInstrumentationBatchResponse *)self dictionaryRepresentation];
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
  if (self->_batch_id)
  {
    batch_id = [(SIServiceInstrumentationBatchResponse *)self batch_id];
    v5 = [batch_id base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"batchId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"batchId"];
    }
  }

  if (self->_message)
  {
    message = [(SIServiceInstrumentationBatchResponse *)self message];
    v8 = [message copy];
    [dictionary setObject:v8 forKeyedSubscript:@"message"];
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

    [dictionary setObject:v9 forKeyedSubscript:@"statusCode"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  batch_id = [(SIServiceInstrumentationBatchResponse *)self batch_id];
  batch_id2 = [equalCopy batch_id];
  if ((batch_id != 0) == (batch_id2 == 0))
  {
    goto LABEL_14;
  }

  batch_id3 = [(SIServiceInstrumentationBatchResponse *)self batch_id];
  if (batch_id3)
  {
    v8 = batch_id3;
    batch_id4 = [(SIServiceInstrumentationBatchResponse *)self batch_id];
    batch_id5 = [equalCopy batch_id];
    v11 = [batch_id4 isEqual:batch_id5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    status_code = self->_status_code;
    if (status_code != [equalCopy status_code])
    {
      goto LABEL_15;
    }
  }

  batch_id = [(SIServiceInstrumentationBatchResponse *)self message];
  batch_id2 = [equalCopy message];
  if ((batch_id != 0) != (batch_id2 == 0))
  {
    message = [(SIServiceInstrumentationBatchResponse *)self message];
    if (!message)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = message;
    message2 = [(SIServiceInstrumentationBatchResponse *)self message];
    message3 = [equalCopy message];
    v17 = [message2 isEqual:message3];

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
  batch_id = [(SIServiceInstrumentationBatchResponse *)self batch_id];

  if (batch_id)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  message = [(SIServiceInstrumentationBatchResponse *)self message];

  v6 = toCopy;
  if (message)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end