@interface VCPBIntentDefinitionChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPBIntentDefinitionChange

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_changeType = fromCopy[4];
  v7 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(VCPBIntentDefinitionChange *)self setAssociatedBundleID:?];
    fromCopy = v7;
  }

  intentDefinition = self->_intentDefinition;
  v6 = *(fromCopy + 3);
  if (intentDefinition)
  {
    if (v6)
    {
      [(VCPBIntentDefinition *)intentDefinition mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(VCPBIntentDefinitionChange *)self setIntentDefinition:?];
  }

  MEMORY[0x2821F96F8]();
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_changeType;
  v4 = [(NSString *)self->_associatedBundleID hash];
  return v4 ^ [(VCPBIntentDefinition *)self->_intentDefinition hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_changeType == *(equalCopy + 4) && ((associatedBundleID = self->_associatedBundleID, !(associatedBundleID | equalCopy[1])) || -[NSString isEqual:](associatedBundleID, "isEqual:")))
  {
    intentDefinition = self->_intentDefinition;
    if (intentDefinition | equalCopy[3])
    {
      v7 = [(VCPBIntentDefinition *)intentDefinition isEqual:?];
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
  *(v5 + 16) = self->_changeType;
  v6 = [(NSString *)self->_associatedBundleID copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(VCPBIntentDefinition *)self->_intentDefinition copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_changeType;
  v5 = toCopy;
  [toCopy setAssociatedBundleID:self->_associatedBundleID];
  if (self->_intentDefinition)
  {
    [v5 setIntentDefinition:?];
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  changeType = self->_changeType;
  v6 = toCopy;
  PBDataWriterWriteInt32Field();
  if (!self->_associatedBundleID)
  {
    __assert_rtn("[VCPBIntentDefinitionChange writeTo:]", "VCPBIntentDefinitionChange.m", 120, "nil != self->_associatedBundleID");
  }

  PBDataWriterWriteStringField();
  if (self->_intentDefinition)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_changeType - 1;
  if (v4 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_changeType];
  }

  else
  {
    v5 = off_2788FEB28[v4];
  }

  [dictionary setObject:v5 forKey:@"changeType"];

  associatedBundleID = self->_associatedBundleID;
  if (associatedBundleID)
  {
    [dictionary setObject:associatedBundleID forKey:@"associatedBundleID"];
  }

  intentDefinition = self->_intentDefinition;
  if (intentDefinition)
  {
    dictionaryRepresentation = [(VCPBIntentDefinition *)intentDefinition dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"intentDefinition"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VCPBIntentDefinitionChange;
  v4 = [(VCPBIntentDefinitionChange *)&v8 description];
  dictionaryRepresentation = [(VCPBIntentDefinitionChange *)self dictionaryRepresentation];
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

@end