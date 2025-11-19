@interface VCPBIntentDefinitionChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPBIntentDefinitionChange

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_changeType = v4[4];
  v7 = v4;
  if (*(v4 + 1))
  {
    [(VCPBIntentDefinitionChange *)self setAssociatedBundleID:?];
    v4 = v7;
  }

  intentDefinition = self->_intentDefinition;
  v6 = *(v4 + 3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_changeType == *(v4 + 4) && ((associatedBundleID = self->_associatedBundleID, !(associatedBundleID | v4[1])) || -[NSString isEqual:](associatedBundleID, "isEqual:")))
  {
    intentDefinition = self->_intentDefinition;
    if (intentDefinition | v4[3])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_changeType;
  v6 = [(NSString *)self->_associatedBundleID copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(VCPBIntentDefinition *)self->_intentDefinition copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[4] = self->_changeType;
  v5 = v4;
  [v4 setAssociatedBundleID:self->_associatedBundleID];
  if (self->_intentDefinition)
  {
    [v5 setIntentDefinition:?];
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  changeType = self->_changeType;
  v6 = v4;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_changeType - 1;
  if (v4 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_changeType];
  }

  else
  {
    v5 = off_2788FEB28[v4];
  }

  [v3 setObject:v5 forKey:@"changeType"];

  associatedBundleID = self->_associatedBundleID;
  if (associatedBundleID)
  {
    [v3 setObject:associatedBundleID forKey:@"associatedBundleID"];
  }

  intentDefinition = self->_intentDefinition;
  if (intentDefinition)
  {
    v8 = [(VCPBIntentDefinition *)intentDefinition dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"intentDefinition"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VCPBIntentDefinitionChange;
  v4 = [(VCPBIntentDefinitionChange *)&v8 description];
  v5 = [(VCPBIntentDefinitionChange *)self dictionaryRepresentation];
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

@end