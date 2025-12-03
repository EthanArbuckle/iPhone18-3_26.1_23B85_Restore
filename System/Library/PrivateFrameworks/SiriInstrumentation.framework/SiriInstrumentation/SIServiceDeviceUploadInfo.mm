@interface SIServiceDeviceUploadInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIServiceDeviceUploadInfo)initWithDictionary:(id)dictionary;
- (SIServiceDeviceUploadInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SIServiceDeviceUploadInfo

- (SIServiceDeviceUploadInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SIServiceDeviceUploadInfo;
  v5 = [(SIServiceDeviceUploadInfo *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"refId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SIServiceDeviceUploadInfo *)v5 setRef_id:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"nsRelativeToBoot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIServiceDeviceUploadInfo setNs_relative_to_boot:](v5, "setNs_relative_to_boot:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SIServiceDeviceUploadInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIServiceDeviceUploadInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIServiceDeviceUploadInfo *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SIServiceDeviceUploadInfo ns_relative_to_boot](self, "ns_relative_to_boot")}];
    [dictionary setObject:v4 forKeyedSubscript:@"nsRelativeToBoot"];
  }

  if (self->_ref_id)
  {
    ref_id = [(SIServiceDeviceUploadInfo *)self ref_id];
    v6 = [ref_id copy];
    [dictionary setObject:v6 forKeyedSubscript:@"refId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  ref_id = [(SIServiceDeviceUploadInfo *)self ref_id];
  ref_id2 = [equalCopy ref_id];
  v7 = ref_id2;
  if ((ref_id != 0) == (ref_id2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  ref_id3 = [(SIServiceDeviceUploadInfo *)self ref_id];
  if (ref_id3)
  {
    v9 = ref_id3;
    ref_id4 = [(SIServiceDeviceUploadInfo *)self ref_id];
    ref_id5 = [equalCopy ref_id];
    v12 = [ref_id4 isEqual:ref_id5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[24] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    ns_relative_to_boot = self->_ns_relative_to_boot;
    if (ns_relative_to_boot != [equalCopy ns_relative_to_boot])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ref_id = [(SIServiceDeviceUploadInfo *)self ref_id];

  if (ref_id)
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