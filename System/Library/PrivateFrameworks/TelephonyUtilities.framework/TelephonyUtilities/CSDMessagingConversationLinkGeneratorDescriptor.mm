@interface CSDMessagingConversationLinkGeneratorDescriptor
+ (CSDMessagingConversationLinkGeneratorDescriptor)generatorDescriptorWithCSDConversationLinkGeneratorDescriptor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CSDConversationLinkGeneratorDescriptor)csdConversationLinkGeneratorDescriptor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationLinkGeneratorDescriptor

+ (CSDMessagingConversationLinkGeneratorDescriptor)generatorDescriptorWithCSDConversationLinkGeneratorDescriptor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSDMessagingConversationLinkGeneratorDescriptor);
  v5 = [v3 identifier];
  [(CSDMessagingConversationLinkGeneratorDescriptor *)v4 setGeneratorID:v5];

  v6 = [v3 version];
  [(CSDMessagingConversationLinkGeneratorDescriptor *)v4 setGeneratorVersion:v6];

  return v4;
}

- (CSDConversationLinkGeneratorDescriptor)csdConversationLinkGeneratorDescriptor
{
  v3 = [CSDConversationLinkGeneratorDescriptor alloc];
  v4 = [(CSDMessagingConversationLinkGeneratorDescriptor *)self generatorID];
  v5 = [(CSDConversationLinkGeneratorDescriptor *)v3 initWithIdentifier:v4 version:[(CSDMessagingConversationLinkGeneratorDescriptor *)self generatorVersion]];

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationLinkGeneratorDescriptor;
  v3 = [(CSDMessagingConversationLinkGeneratorDescriptor *)&v7 description];
  v4 = [(CSDMessagingConversationLinkGeneratorDescriptor *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_generatorID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    generatorVersion = self->_generatorVersion;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_generatorID)
  {
    v5 = v4;
    [v4 setGeneratorID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_generatorVersion;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_generatorID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_generatorVersion;
    *(v5 + 20) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  generatorID = self->_generatorID;
  if (generatorID | *(v4 + 1))
  {
    if (![(NSString *)generatorID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_generatorVersion == *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v5 = v4;
    [(CSDMessagingConversationLinkGeneratorDescriptor *)self setGeneratorID:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_generatorVersion = v4[4];
    *&self->_has |= 1u;
  }
}

@end