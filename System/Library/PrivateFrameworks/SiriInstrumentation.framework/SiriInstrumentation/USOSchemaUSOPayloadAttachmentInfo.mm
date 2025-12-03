@interface USOSchemaUSOPayloadAttachmentInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOPayloadAttachmentInfo)initWithDictionary:(id)dictionary;
- (USOSchemaUSOPayloadAttachmentInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOPayloadAttachmentInfo

- (USOSchemaUSOPayloadAttachmentInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = USOSchemaUSOPayloadAttachmentInfo;
  v5 = [(USOSchemaUSOPayloadAttachmentInfo *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"attachmentType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOPayloadAttachmentInfo setAttachmentType:](v5, "setAttachmentType:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (USOSchemaUSOPayloadAttachmentInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOPayloadAttachmentInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOPayloadAttachmentInfo *)self dictionaryRepresentation];
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
    attachmentType = [(USOSchemaUSOPayloadAttachmentInfo *)self attachmentType];
    v5 = @"USOATTACHMENTTYPE_UNKNOWN";
    if (attachmentType == 1)
    {
      v5 = @"USOATTACHMENTTYPE_FULL";
    }

    if (attachmentType == 2)
    {
      v6 = @"USOATTACHMENTTYPE_PARTIAL";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"attachmentType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_attachmentType;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (attachmentType = self->_attachmentType, attachmentType == [equalCopy attachmentType]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end