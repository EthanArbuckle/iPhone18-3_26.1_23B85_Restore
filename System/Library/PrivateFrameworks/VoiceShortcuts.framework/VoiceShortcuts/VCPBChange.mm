@interface VCPBChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)type;
- (int)StringAsMessageType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPBChange

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_messageType = fromCopy[6];
  self->_changeType = fromCopy[2];
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(VCPBChange *)self setUniqueID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(VCPBChange *)self setMessage:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_changeType) ^ (2654435761 * self->_messageType);
  v4 = [(NSString *)self->_uniqueID hash];
  return v3 ^ v4 ^ [(NSData *)self->_message hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_messageType == *(equalCopy + 6) && self->_changeType == *(equalCopy + 2) && ((uniqueID = self->_uniqueID, !(uniqueID | equalCopy[4])) || -[NSString isEqual:](uniqueID, "isEqual:")))
  {
    message = self->_message;
    if (message | equalCopy[2])
    {
      v7 = [(NSData *)message isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_messageType;
  *(v5 + 8) = self->_changeType;
  v6 = [(NSString *)self->_uniqueID copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_message copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  *(to + 6) = self->_messageType;
  *(to + 2) = self->_changeType;
  uniqueID = self->_uniqueID;
  toCopy = to;
  [toCopy setUniqueID:uniqueID];
  [toCopy setMessage:self->_message];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  messageType = self->_messageType;
  PBDataWriterWriteInt32Field();
  changeType = self->_changeType;
  PBDataWriterWriteInt32Field();
  if (!self->_uniqueID)
  {
    __assert_rtn("[VCPBChange writeTo:]", "VCPBChange.m", 121, "nil != self->_uniqueID");
  }

  PBDataWriterWriteStringField();
  if (!self->_message)
  {
    __assert_rtn("[VCPBChange writeTo:]", "VCPBChange.m", 126, "nil != self->_message");
  }

  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_messageType - 1;
  if (v4 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_messageType];
  }

  else
  {
    v5 = off_2788FEB40[v4];
  }

  [dictionary setObject:v5 forKey:@"messageType"];

  v6 = self->_changeType - 1;
  if (v6 >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_changeType];
  }

  else
  {
    v7 = off_2788FEB58[v6];
  }

  [dictionary setObject:v7 forKey:@"changeType"];

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [dictionary setObject:uniqueID forKey:@"uniqueID"];
  }

  message = self->_message;
  if (message)
  {
    [dictionary setObject:message forKey:@"message"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VCPBChange;
  v4 = [(VCPBChange *)&v8 description];
  dictionaryRepresentation = [(VCPBChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsChangeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ADDED"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"UPDATED"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"DELETED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)StringAsMessageType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"IntentDefinitionChange"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"VoiceShortcutChange"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"WorkflowChange"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end