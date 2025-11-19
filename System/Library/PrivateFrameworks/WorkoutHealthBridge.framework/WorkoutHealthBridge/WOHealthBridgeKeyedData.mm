@interface WOHealthBridgeKeyedData
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WOHealthBridgeKeyedData

- (id)description
{
  v9 = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeKeyedData;
  v5 = [(WOHealthBridgeKeyedData *)&v7 description];
  v4 = [(WOHealthBridgeKeyedData *)v9 dictionaryRepresentation];
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
  if (v5->_key)
  {
    [v4[0] setObject:v5->_key forKey:@"key"];
  }

  if (v5->_ourData)
  {
    [v4[0] setObject:v5->_ourData forKey:@"ourData"];
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
  v4 = WOHealthBridgeKeyedDataReadFrom(v6, location[0]);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v6->_key)
  {
    __assert_rtn("[WOHealthBridgeKeyedData writeTo:]", "WOHealthBridgeKeyedData.m", 83, "nil != self->_key");
  }

  key = v6->_key;
  PBDataWriterWriteStringField();
  if (!v6->_ourData)
  {
    __assert_rtn("[WOHealthBridgeKeyedData writeTo:]", "WOHealthBridgeKeyedData.m", 88, "nil != self->_ourData");
  }

  ourData = v6->_ourData;
  PBDataWriterWriteDataField();
  objc_storeStrong(location, 0);
}

- (void)copyTo:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setKey:v4->_key];
  [location[0] setOurData:v4->_ourData];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v3 = [(NSString *)v12->_key copyWithZone:v10];
  v4 = v9[1];
  v9[1] = v3;
  MEMORY[0x277D82BD8](v4);
  v5 = [(NSData *)v12->_ourData copyWithZone:v10];
  v6 = v9[2];
  v9[2] = v5;
  MEMORY[0x277D82BD8](v6);
  v8 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v8;
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
    if (!v8->_key && !*(v6 + 1) || (v5 = 0, ([(NSString *)v8->_key isEqual:*(v6 + 1)]& 1) != 0))
    {
      if (v8->_ourData || (v4 = 1, *(v6 + 2)))
      {
        v4 = [(NSData *)v8->_ourData isEqual:*(v6 + 2)];
      }

      v5 = v4;
    }
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)mergeFrom:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (*(location[0] + 1))
  {
    [(WOHealthBridgeKeyedData *)v4 setKey:*(location[0] + 1)];
  }

  if (*(location[0] + 2))
  {
    [(WOHealthBridgeKeyedData *)v4 setOurData:*(location[0] + 2)];
  }

  objc_storeStrong(location, 0);
}

@end