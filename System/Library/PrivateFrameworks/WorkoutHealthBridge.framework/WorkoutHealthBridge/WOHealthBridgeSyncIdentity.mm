@interface WOHealthBridgeSyncIdentity
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WOHealthBridgeSyncIdentity

- (id)description
{
  selfCopy = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeSyncIdentity;
  v5 = [(WOHealthBridgeSyncIdentity *)&v7 description];
  dictionaryRepresentation = [(WOHealthBridgeSyncIdentity *)selfCopy dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v5, dictionaryRepresentation];
  MEMORY[0x277D82BD8](dictionaryRepresentation);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x277CBEB38] dictionary];
  if (selfCopy->_hardwareIdentifier)
  {
    [v4[0] setObject:selfCopy->_hardwareIdentifier forKey:@"hardwareIdentifier"];
  }

  if (selfCopy->_databaseIdentifier)
  {
    [v4[0] setObject:selfCopy->_databaseIdentifier forKey:@"databaseIdentifier"];
  }

  if (selfCopy->_instanceDiscriminator)
  {
    [v4[0] setObject:selfCopy->_instanceDiscriminator forKey:@"instanceDiscriminator"];
  }

  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (BOOL)readFrom:(id)from
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v4 = WOHealthBridgeSyncIdentityReadFrom(&selfCopy->super.super.isa, location[0]);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)writeTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  if (!selfCopy->_hardwareIdentifier)
  {
    __assert_rtn("[WOHealthBridgeSyncIdentity writeTo:]", "WOHealthBridgeSyncIdentity.m", 94, "nil != self->_hardwareIdentifier");
  }

  hardwareIdentifier = selfCopy->_hardwareIdentifier;
  PBDataWriterWriteDataField();
  if (!selfCopy->_databaseIdentifier)
  {
    __assert_rtn("[WOHealthBridgeSyncIdentity writeTo:]", "WOHealthBridgeSyncIdentity.m", 99, "nil != self->_databaseIdentifier");
  }

  databaseIdentifier = selfCopy->_databaseIdentifier;
  PBDataWriterWriteDataField();
  if (!selfCopy->_instanceDiscriminator)
  {
    __assert_rtn("[WOHealthBridgeSyncIdentity writeTo:]", "WOHealthBridgeSyncIdentity.m", 104, "nil != self->_instanceDiscriminator");
  }

  instanceDiscriminator = selfCopy->_instanceDiscriminator;
  PBDataWriterWriteStringField();
  objc_storeStrong(location, 0);
}

- (void)copyTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  [location[0] setHardwareIdentifier:selfCopy->_hardwareIdentifier];
  [location[0] setDatabaseIdentifier:selfCopy->_databaseIdentifier];
  [location[0] setInstanceDiscriminator:selfCopy->_instanceDiscriminator];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v13 = a2;
  zoneCopy = zone;
  v11 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSData *)selfCopy->_hardwareIdentifier copyWithZone:zoneCopy];
  v4 = v11[2];
  v11[2] = v3;
  MEMORY[0x277D82BD8](v4);
  v5 = [(NSData *)selfCopy->_databaseIdentifier copyWithZone:zoneCopy];
  v6 = v11[1];
  v11[1] = v5;
  MEMORY[0x277D82BD8](v6);
  v7 = [(NSString *)selfCopy->_instanceDiscriminator copyWithZone:zoneCopy];
  v8 = v11[3];
  v11[3] = v7;
  MEMORY[0x277D82BD8](v8);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  v6 = MEMORY[0x277D82BE0](location[0]);
  v5 = 0;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    if (!selfCopy->_hardwareIdentifier && !*(v6 + 2) || (v5 = 0, ([(NSData *)selfCopy->_hardwareIdentifier isEqual:*(v6 + 2)]& 1) != 0))
    {
      if (!selfCopy->_databaseIdentifier && !*(v6 + 1) || (v5 = 0, ([(NSData *)selfCopy->_databaseIdentifier isEqual:*(v6 + 1)]& 1) != 0))
      {
        if (selfCopy->_instanceDiscriminator || (v4 = 1, *(v6 + 3)))
        {
          v4 = [(NSString *)selfCopy->_instanceDiscriminator isEqual:*(v6 + 3)];
        }

        v5 = v4;
      }
    }
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_hardwareIdentifier hash];
  v4 = v3 ^ [(NSData *)self->_databaseIdentifier hash];
  return v4 ^ [(NSString *)self->_instanceDiscriminator hash];
}

- (void)mergeFrom:(id)from
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  if (*(location[0] + 2))
  {
    [(WOHealthBridgeSyncIdentity *)selfCopy setHardwareIdentifier:*(location[0] + 2)];
  }

  if (*(location[0] + 1))
  {
    [(WOHealthBridgeSyncIdentity *)selfCopy setDatabaseIdentifier:*(location[0] + 1)];
  }

  if (*(location[0] + 3))
  {
    [(WOHealthBridgeSyncIdentity *)selfCopy setInstanceDiscriminator:*(location[0] + 3)];
  }

  objc_storeStrong(location, 0);
}

@end