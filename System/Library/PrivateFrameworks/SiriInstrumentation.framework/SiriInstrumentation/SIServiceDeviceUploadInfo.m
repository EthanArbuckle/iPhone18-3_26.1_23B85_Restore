@interface SIServiceDeviceUploadInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SIServiceDeviceUploadInfo)initWithDictionary:(id)a3;
- (SIServiceDeviceUploadInfo)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SIServiceDeviceUploadInfo

- (SIServiceDeviceUploadInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIServiceDeviceUploadInfo;
  v5 = [(SIServiceDeviceUploadInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"refId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SIServiceDeviceUploadInfo *)v5 setRef_id:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"nsRelativeToBoot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIServiceDeviceUploadInfo setNs_relative_to_boot:](v5, "setNs_relative_to_boot:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SIServiceDeviceUploadInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SIServiceDeviceUploadInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SIServiceDeviceUploadInfo *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SIServiceDeviceUploadInfo ns_relative_to_boot](self, "ns_relative_to_boot")}];
    [v3 setObject:v4 forKeyedSubscript:@"nsRelativeToBoot"];
  }

  if (self->_ref_id)
  {
    v5 = [(SIServiceDeviceUploadInfo *)self ref_id];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"refId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_ref_id hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_ns_relative_to_boot;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SIServiceDeviceUploadInfo *)self ref_id];
  v6 = [v4 ref_id];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(SIServiceDeviceUploadInfo *)self ref_id];
  if (v8)
  {
    v9 = v8;
    v10 = [(SIServiceDeviceUploadInfo *)self ref_id];
    v11 = [v4 ref_id];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    ns_relative_to_boot = self->_ns_relative_to_boot;
    if (ns_relative_to_boot != [v4 ns_relative_to_boot])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(SIServiceDeviceUploadInfo *)self ref_id];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end