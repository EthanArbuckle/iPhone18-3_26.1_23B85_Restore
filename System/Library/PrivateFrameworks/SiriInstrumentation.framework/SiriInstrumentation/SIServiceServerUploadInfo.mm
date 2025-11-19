@interface SIServiceServerUploadInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIServiceServerUploadInfo)initWithDictionary:(id)a3;
- (SIServiceServerUploadInfo)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SIServiceServerUploadInfo

- (SIServiceServerUploadInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SIServiceServerUploadInfo;
  v5 = [(SIServiceServerUploadInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"nsServerUploadTs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIServiceServerUploadInfo setNs_server_upload_ts:](v5, "setNs_server_upload_ts:", [v6 longLongValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (SIServiceServerUploadInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIServiceServerUploadInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIServiceServerUploadInfo *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SIServiceServerUploadInfo ns_server_upload_ts](self, "ns_server_upload_ts")}];
    [v3 setObject:v4 forKeyedSubscript:@"nsServerUploadTs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_ns_server_upload_ts;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[16] & 1))
    {
      if ((*&self->_has & 1) == 0 || (ns_server_upload_ts = self->_ns_server_upload_ts, ns_server_upload_ts == [v4 ns_server_upload_ts]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end