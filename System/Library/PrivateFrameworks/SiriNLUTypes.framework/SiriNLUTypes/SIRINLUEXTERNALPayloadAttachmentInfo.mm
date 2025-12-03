@interface SIRINLUEXTERNALPayloadAttachmentInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAttachmentType:(id)type;
- (int)attachmentType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALPayloadAttachmentInfo

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_attachmentType = *(from + 2);
    *&self->_has |= 1u;
  }
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
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_attachmentType == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_attachmentType;
    *(result + 12) |= 1u;
  }

  return result;
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_attachmentType;
    *(to + 12) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    attachmentType = self->_attachmentType;
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    attachmentType = self->_attachmentType;
    if (attachmentType)
    {
      if (attachmentType == 1)
      {
        v5 = @"PARTIAL";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_attachmentType];
      }
    }

    else
    {
      v5 = @"FULL";
    }

    [dictionary setObject:v5 forKey:@"attachment_type"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALPayloadAttachmentInfo;
  v4 = [(SIRINLUEXTERNALPayloadAttachmentInfo *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALPayloadAttachmentInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsAttachmentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FULL"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"PARTIAL"];
  }

  return v4;
}

- (int)attachmentType
{
  if (*&self->_has)
  {
    return self->_attachmentType;
  }

  else
  {
    return 0;
  }
}

@end