@interface WOHealthBridgeKeyedString
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation WOHealthBridgeKeyedString

- (id)description
{
  v9 = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeKeyedString;
  v5 = [(WOHealthBridgeKeyedString *)&v7 description];
  v4 = [(WOHealthBridgeKeyedString *)v9 dictionaryRepresentation];
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

  if (v5->_string)
  {
    [v4[0] setObject:v5->_string forKey:@"string"];
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
  v4 = WOHealthBridgeKeyedStringReadFrom(v6, location[0]);
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
    __assert_rtn("[WOHealthBridgeKeyedString writeTo:]", "WOHealthBridgeKeyedString.m", 83, "nil != self->_key");
  }

  key = v6->_key;
  PBDataWriterWriteStringField();
  if (!v6->_string)
  {
    __assert_rtn("[WOHealthBridgeKeyedString writeTo:]", "WOHealthBridgeKeyedString.m", 88, "nil != self->_string");
  }

  string = v6->_string;
  PBDataWriterWriteStringField();
  objc_storeStrong(location, 0);
}

- (void)copyTo:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setKey:v4->_key];
  [location[0] setString:v4->_string];
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
  v5 = [(NSString *)v12->_string copyWithZone:v10];
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
      if (v8->_string || (v4 = 1, *(v6 + 2)))
      {
        v4 = [(NSString *)v8->_string isEqual:*(v6 + 2)];
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
    [(WOHealthBridgeKeyedString *)v4 setKey:*(location[0] + 1)];
  }

  if (*(location[0] + 2))
  {
    [(WOHealthBridgeKeyedString *)v4 setString:*(location[0] + 2)];
  }

  objc_storeStrong(location, 0);
}

@end