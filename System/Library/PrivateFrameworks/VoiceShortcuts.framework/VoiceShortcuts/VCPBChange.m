@interface VCPBChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)a3;
- (int)StringAsMessageType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPBChange

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_messageType = v4[6];
  self->_changeType = v4[2];
  v5 = v4;
  if (*(v4 + 4))
  {
    [(VCPBChange *)self setUniqueID:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(VCPBChange *)self setMessage:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_changeType) ^ (2654435761 * self->_messageType);
  v4 = [(NSString *)self->_uniqueID hash];
  return v3 ^ v4 ^ [(NSData *)self->_message hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_messageType == *(v4 + 6) && self->_changeType == *(v4 + 2) && ((uniqueID = self->_uniqueID, !(uniqueID | v4[4])) || -[NSString isEqual:](uniqueID, "isEqual:")))
  {
    message = self->_message;
    if (message | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_messageType;
  *(v5 + 8) = self->_changeType;
  v6 = [(NSString *)self->_uniqueID copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSData *)self->_message copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  *(a3 + 6) = self->_messageType;
  *(a3 + 2) = self->_changeType;
  uniqueID = self->_uniqueID;
  v5 = a3;
  [v5 setUniqueID:uniqueID];
  [v5 setMessage:self->_message];
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_messageType - 1;
  if (v4 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_messageType];
  }

  else
  {
    v5 = off_2788FEB40[v4];
  }

  [v3 setObject:v5 forKey:@"messageType"];

  v6 = self->_changeType - 1;
  if (v6 >= 3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_changeType];
  }

  else
  {
    v7 = off_2788FEB58[v6];
  }

  [v3 setObject:v7 forKey:@"changeType"];

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v3 setObject:uniqueID forKey:@"uniqueID"];
  }

  message = self->_message;
  if (message)
  {
    [v3 setObject:message forKey:@"message"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VCPBChange;
  v4 = [(VCPBChange *)&v8 description];
  v5 = [(VCPBChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsChangeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ADDED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UPDATED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DELETED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)StringAsMessageType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"IntentDefinitionChange"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"VoiceShortcutChange"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WorkflowChange"])
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