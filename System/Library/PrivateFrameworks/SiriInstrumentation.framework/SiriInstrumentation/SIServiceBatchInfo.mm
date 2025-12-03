@interface SIServiceBatchInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIServiceBatchInfo)initWithDictionary:(id)dictionary;
- (SIServiceBatchInfo)initWithJSON:(id)n;
- (SIServiceDeviceUploadInfo)device_upload_info;
- (SIServiceServerUploadInfo)server_upload_info;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteDevice_upload_info;
- (void)deleteServer_upload_info;
- (void)setDevice_upload_info:(id)device_upload_info;
- (void)setServer_upload_info:(id)server_upload_info;
- (void)writeTo:(id)to;
@end

@implementation SIServiceBatchInfo

- (SIServiceBatchInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SIServiceBatchInfo;
  v5 = [(SIServiceBatchInfo *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"batchId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SIServiceBatchInfo *)v5 setBatch_id:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"deviceUploadInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SIServiceDeviceUploadInfo alloc] initWithDictionary:v8];
      [(SIServiceBatchInfo *)v5 setDevice_upload_info:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"serverUploadInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SIServiceServerUploadInfo alloc] initWithDictionary:v10];
      [(SIServiceBatchInfo *)v5 setServer_upload_info:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"batchType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIServiceBatchInfo setBatch_type:](v5, "setBatch_type:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SIServiceBatchInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIServiceBatchInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIServiceBatchInfo *)self dictionaryRepresentation];
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
    batch_id = [(SIServiceBatchInfo *)self batch_id];
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

  if (*&self->_has)
  {
    batch_type = [(SIServiceBatchInfo *)self batch_type];
    v8 = @"UNKNOWN";
    if (batch_type == 1)
    {
      v8 = @"DATA";
    }

    if (batch_type == 2)
    {
      v9 = @"SENTINEL";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"batchType"];
  }

  if (self->_device_upload_info)
  {
    device_upload_info = [(SIServiceBatchInfo *)self device_upload_info];
    dictionaryRepresentation = [device_upload_info dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"deviceUploadInfo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"deviceUploadInfo"];
    }
  }

  if (self->_server_upload_info)
  {
    server_upload_info = [(SIServiceBatchInfo *)self server_upload_info];
    dictionaryRepresentation2 = [server_upload_info dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"serverUploadInfo"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"serverUploadInfo"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_batch_id hash];
  v4 = [(SIServiceDeviceUploadInfo *)self->_device_upload_info hash];
  v5 = [(SIServiceServerUploadInfo *)self->_server_upload_info hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_batch_type;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *&self->_hasBatch_id;
  if (v5 != [equalCopy whichUpload_Info])
  {
    goto LABEL_18;
  }

  batch_id = [(SIServiceBatchInfo *)self batch_id];
  batch_id2 = [equalCopy batch_id];
  if ((batch_id != 0) == (batch_id2 == 0))
  {
    goto LABEL_17;
  }

  batch_id3 = [(SIServiceBatchInfo *)self batch_id];
  if (batch_id3)
  {
    v9 = batch_id3;
    batch_id4 = [(SIServiceBatchInfo *)self batch_id];
    batch_id5 = [equalCopy batch_id];
    v12 = [batch_id4 isEqual:batch_id5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  batch_id = [(SIServiceBatchInfo *)self device_upload_info];
  batch_id2 = [equalCopy device_upload_info];
  if ((batch_id != 0) == (batch_id2 == 0))
  {
    goto LABEL_17;
  }

  device_upload_info = [(SIServiceBatchInfo *)self device_upload_info];
  if (device_upload_info)
  {
    v14 = device_upload_info;
    device_upload_info2 = [(SIServiceBatchInfo *)self device_upload_info];
    device_upload_info3 = [equalCopy device_upload_info];
    v17 = [device_upload_info2 isEqual:device_upload_info3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  batch_id = [(SIServiceBatchInfo *)self server_upload_info];
  batch_id2 = [equalCopy server_upload_info];
  if ((batch_id != 0) == (batch_id2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  server_upload_info = [(SIServiceBatchInfo *)self server_upload_info];
  if (server_upload_info)
  {
    v19 = server_upload_info;
    server_upload_info2 = [(SIServiceBatchInfo *)self server_upload_info];
    server_upload_info3 = [equalCopy server_upload_info];
    v22 = [server_upload_info2 isEqual:server_upload_info3];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (batch_type = self->_batch_type, batch_type == [equalCopy batch_type]))
    {
      v23 = 1;
      goto LABEL_19;
    }
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  batch_id = [(SIServiceBatchInfo *)self batch_id];

  if (batch_id)
  {
    PBDataWriterWriteDataField();
  }

  device_upload_info = [(SIServiceBatchInfo *)self device_upload_info];

  if (device_upload_info)
  {
    device_upload_info2 = [(SIServiceBatchInfo *)self device_upload_info];
    PBDataWriterWriteSubmessage();
  }

  server_upload_info = [(SIServiceBatchInfo *)self server_upload_info];

  if (server_upload_info)
  {
    server_upload_info2 = [(SIServiceBatchInfo *)self server_upload_info];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)deleteServer_upload_info
{
  if (*&self->_hasBatch_id == 3)
  {
    *&self->_hasBatch_id = 0;
    self->_server_upload_info = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIServiceServerUploadInfo)server_upload_info
{
  if (*&self->_hasBatch_id == 3)
  {
    v3 = self->_server_upload_info;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServer_upload_info:(id)server_upload_info
{
  server_upload_infoCopy = server_upload_info;
  device_upload_info = self->_device_upload_info;
  self->_device_upload_info = 0;

  v6 = 3;
  if (!server_upload_infoCopy)
  {
    v6 = 0;
  }

  *&self->_hasBatch_id = v6;
  server_upload_info = self->_server_upload_info;
  self->_server_upload_info = server_upload_infoCopy;
}

- (void)deleteDevice_upload_info
{
  if (*&self->_hasBatch_id == 2)
  {
    *&self->_hasBatch_id = 0;
    self->_device_upload_info = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SIServiceDeviceUploadInfo)device_upload_info
{
  if (*&self->_hasBatch_id == 2)
  {
    v3 = self->_device_upload_info;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDevice_upload_info:(id)device_upload_info
{
  device_upload_infoCopy = device_upload_info;
  server_upload_info = self->_server_upload_info;
  self->_server_upload_info = 0;

  *&self->_hasBatch_id = 2 * (device_upload_infoCopy != 0);
  device_upload_info = self->_device_upload_info;
  self->_device_upload_info = device_upload_infoCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SIServiceBatchInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  device_upload_info = [(SIServiceBatchInfo *)self device_upload_info];
  v7 = [device_upload_info applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SIServiceBatchInfo *)self deleteDevice_upload_info];
  }

  server_upload_info = [(SIServiceBatchInfo *)self server_upload_info];
  v10 = [server_upload_info applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SIServiceBatchInfo *)self deleteServer_upload_info];
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