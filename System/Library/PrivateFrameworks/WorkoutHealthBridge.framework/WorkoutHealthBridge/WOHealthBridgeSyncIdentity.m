@interface WOHealthBridgeSyncIdentity
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WOHealthBridgeSyncIdentity

- (id)description
{
  v9 = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeSyncIdentity;
  v5 = [(WOHealthBridgeSyncIdentity *)&v7 description];
  v4 = [(WOHealthBridgeSyncIdentity *)v9 dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)dictionaryRepresentation
{
  v5 = self;
  v4[1] = a2;
  v4[0] = [MEMORY[0x277CBEB38] dictionary];
  if (v5->_hardwareIdentifier)
  {
    [v4[0] setObject:v5->_hardwareIdentifier forKey:@"hardwareIdentifier"];
  }

  if (v5->_databaseIdentifier)
  {
    [v4[0] setObject:v5->_databaseIdentifier forKey:@"databaseIdentifier"];
  }

  if (v5->_instanceDiscriminator)
  {
    [v4[0] setObject:v5->_instanceDiscriminator forKey:@"instanceDiscriminator"];
  }

  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (BOOL)readFrom:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = WOHealthBridgeSyncIdentityReadFrom(&v6->super.super.isa, location[0]);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v7->_hardwareIdentifier)
  {
    __assert_rtn("[WOHealthBridgeSyncIdentity writeTo:]", "WOHealthBridgeSyncIdentity.m", 94, "nil != self->_hardwareIdentifier");
  }

  hardwareIdentifier = v7->_hardwareIdentifier;
  PBDataWriterWriteDataField();
  if (!v7->_databaseIdentifier)
  {
    __assert_rtn("[WOHealthBridgeSyncIdentity writeTo:]", "WOHealthBridgeSyncIdentity.m", 99, "nil != self->_databaseIdentifier");
  }

  databaseIdentifier = v7->_databaseIdentifier;
  PBDataWriterWriteDataField();
  if (!v7->_instanceDiscriminator)
  {
    __assert_rtn("[WOHealthBridgeSyncIdentity writeTo:]", "WOHealthBridgeSyncIdentity.m", 104, "nil != self->_instanceDiscriminator");
  }

  instanceDiscriminator = v7->_instanceDiscriminator;
  PBDataWriterWriteStringField();
  objc_storeStrong(location, 0);
}

- (void)copyTo:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setHardwareIdentifier:v4->_hardwareIdentifier];
  [location[0] setDatabaseIdentifier:v4->_databaseIdentifier];
  [location[0] setInstanceDiscriminator:v4->_instanceDiscriminator];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSData *)v14->_hardwareIdentifier copyWithZone:v12];
  v4 = v11[2];
  v11[2] = v3;
  MEMORY[0x277D82BD8](v4);
  v5 = [(NSData *)v14->_databaseIdentifier copyWithZone:v12];
  v6 = v11[1];
  v11[1] = v5;
  MEMORY[0x277D82BD8](v6);
  v7 = [(NSString *)v14->_instanceDiscriminator copyWithZone:v12];
  v8 = v11[3];
  v11[3] = v7;
  MEMORY[0x277D82BD8](v8);
  v10 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = MEMORY[0x277D82BE0](location[0]);
  v5 = 0;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    if (!v8->_hardwareIdentifier && !*(v6 + 2) || (v5 = 0, ([(NSData *)v8->_hardwareIdentifier isEqual:*(v6 + 2)]& 1) != 0))
    {
      if (!v8->_databaseIdentifier && !*(v6 + 1) || (v5 = 0, ([(NSData *)v8->_databaseIdentifier isEqual:*(v6 + 1)]& 1) != 0))
      {
        if (v8->_instanceDiscriminator || (v4 = 1, *(v6 + 3)))
        {
          v4 = [(NSString *)v8->_instanceDiscriminator isEqual:*(v6 + 3)];
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

- (void)mergeFrom:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (*(location[0] + 2))
  {
    [(WOHealthBridgeSyncIdentity *)v4 setHardwareIdentifier:*(location[0] + 2)];
  }

  if (*(location[0] + 1))
  {
    [(WOHealthBridgeSyncIdentity *)v4 setDatabaseIdentifier:*(location[0] + 1)];
  }

  if (*(location[0] + 3))
  {
    [(WOHealthBridgeSyncIdentity *)v4 setInstanceDiscriminator:*(location[0] + 3)];
  }

  objc_storeStrong(location, 0);
}

@end