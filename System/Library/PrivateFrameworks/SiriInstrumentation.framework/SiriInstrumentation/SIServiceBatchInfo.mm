@interface SIServiceBatchInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIServiceBatchInfo)initWithDictionary:(id)a3;
- (SIServiceBatchInfo)initWithJSON:(id)a3;
- (SIServiceDeviceUploadInfo)device_upload_info;
- (SIServiceServerUploadInfo)server_upload_info;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteDevice_upload_info;
- (void)deleteServer_upload_info;
- (void)setDevice_upload_info:(id)a3;
- (void)setServer_upload_info:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIServiceBatchInfo

- (SIServiceBatchInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SIServiceBatchInfo;
  v5 = [(SIServiceBatchInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"batchId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SIServiceBatchInfo *)v5 setBatch_id:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"deviceUploadInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SIServiceDeviceUploadInfo alloc] initWithDictionary:v8];
      [(SIServiceBatchInfo *)v5 setDevice_upload_info:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"serverUploadInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SIServiceServerUploadInfo alloc] initWithDictionary:v10];
      [(SIServiceBatchInfo *)v5 setServer_upload_info:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"batchType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIServiceBatchInfo setBatch_type:](v5, "setBatch_type:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SIServiceBatchInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIServiceBatchInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIServiceBatchInfo *)self dictionaryRepresentation];
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
    v4 = [(SIServiceBatchInfo *)self batch_id];
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

  if (*&self->_has)
  {
    v7 = [(SIServiceBatchInfo *)self batch_type];
    v8 = @"UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"DATA";
    }

    if (v7 == 2)
    {
      v9 = @"SENTINEL";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"batchType"];
  }

  if (self->_device_upload_info)
  {
    v10 = [(SIServiceBatchInfo *)self device_upload_info];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"deviceUploadInfo"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"deviceUploadInfo"];
    }
  }

  if (self->_server_upload_info)
  {
    v13 = [(SIServiceBatchInfo *)self server_upload_info];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"serverUploadInfo"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"serverUploadInfo"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *&self->_hasBatch_id;
  if (v5 != [v4 whichUpload_Info])
  {
    goto LABEL_18;
  }

  v6 = [(SIServiceBatchInfo *)self batch_id];
  v7 = [v4 batch_id];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(SIServiceBatchInfo *)self batch_id];
  if (v8)
  {
    v9 = v8;
    v10 = [(SIServiceBatchInfo *)self batch_id];
    v11 = [v4 batch_id];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(SIServiceBatchInfo *)self device_upload_info];
  v7 = [v4 device_upload_info];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(SIServiceBatchInfo *)self device_upload_info];
  if (v13)
  {
    v14 = v13;
    v15 = [(SIServiceBatchInfo *)self device_upload_info];
    v16 = [v4 device_upload_info];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(SIServiceBatchInfo *)self server_upload_info];
  v7 = [v4 server_upload_info];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v18 = [(SIServiceBatchInfo *)self server_upload_info];
  if (v18)
  {
    v19 = v18;
    v20 = [(SIServiceBatchInfo *)self server_upload_info];
    v21 = [v4 server_upload_info];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (batch_type = self->_batch_type, batch_type == [v4 batch_type]))
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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(SIServiceBatchInfo *)self batch_id];

  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  v5 = [(SIServiceBatchInfo *)self device_upload_info];

  if (v5)
  {
    v6 = [(SIServiceBatchInfo *)self device_upload_info];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(SIServiceBatchInfo *)self server_upload_info];

  if (v7)
  {
    v8 = [(SIServiceBatchInfo *)self server_upload_info];
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

- (void)setServer_upload_info:(id)a3
{
  v4 = a3;
  device_upload_info = self->_device_upload_info;
  self->_device_upload_info = 0;

  v6 = 3;
  if (!v4)
  {
    v6 = 0;
  }

  *&self->_hasBatch_id = v6;
  server_upload_info = self->_server_upload_info;
  self->_server_upload_info = v4;
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

- (void)setDevice_upload_info:(id)a3
{
  v4 = a3;
  server_upload_info = self->_server_upload_info;
  self->_server_upload_info = 0;

  *&self->_hasBatch_id = 2 * (v4 != 0);
  device_upload_info = self->_device_upload_info;
  self->_device_upload_info = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SIServiceBatchInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SIServiceBatchInfo *)self device_upload_info];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SIServiceBatchInfo *)self deleteDevice_upload_info];
  }

  v9 = [(SIServiceBatchInfo *)self server_upload_info];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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