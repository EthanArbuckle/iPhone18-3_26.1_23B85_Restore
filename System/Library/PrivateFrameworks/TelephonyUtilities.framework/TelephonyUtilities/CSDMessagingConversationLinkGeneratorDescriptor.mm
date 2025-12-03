@interface CSDMessagingConversationLinkGeneratorDescriptor
+ (CSDMessagingConversationLinkGeneratorDescriptor)generatorDescriptorWithCSDConversationLinkGeneratorDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (CSDConversationLinkGeneratorDescriptor)csdConversationLinkGeneratorDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationLinkGeneratorDescriptor

+ (CSDMessagingConversationLinkGeneratorDescriptor)generatorDescriptorWithCSDConversationLinkGeneratorDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_alloc_init(CSDMessagingConversationLinkGeneratorDescriptor);
  identifier = [descriptorCopy identifier];
  [(CSDMessagingConversationLinkGeneratorDescriptor *)v4 setGeneratorID:identifier];

  version = [descriptorCopy version];
  [(CSDMessagingConversationLinkGeneratorDescriptor *)v4 setGeneratorVersion:version];

  return v4;
}

- (CSDConversationLinkGeneratorDescriptor)csdConversationLinkGeneratorDescriptor
{
  v3 = [CSDConversationLinkGeneratorDescriptor alloc];
  generatorID = [(CSDMessagingConversationLinkGeneratorDescriptor *)self generatorID];
  v5 = [(CSDConversationLinkGeneratorDescriptor *)v3 initWithIdentifier:generatorID version:[(CSDMessagingConversationLinkGeneratorDescriptor *)self generatorVersion]];

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationLinkGeneratorDescriptor;
  v3 = [(CSDMessagingConversationLinkGeneratorDescriptor *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationLinkGeneratorDescriptor *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  generatorID = self->_generatorID;
  if (generatorID)
  {
    [v3 setObject:generatorID forKey:@"generatorID"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_generatorVersion];
    [v4 setObject:v6 forKey:@"generatorVersion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_generatorID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    generatorVersion = self->_generatorVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_generatorID)
  {
    v5 = toCopy;
    [toCopy setGeneratorID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_generatorVersion;
    *(toCopy + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_generatorID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_generatorVersion;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  generatorID = self->_generatorID;
  if (generatorID | *(equalCopy + 1))
  {
    if (![(NSString *)generatorID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) != 0 && self->_generatorVersion == *(equalCopy + 4))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_generatorID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_generatorVersion;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(CSDMessagingConversationLinkGeneratorDescriptor *)self setGeneratorID:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_generatorVersion = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end