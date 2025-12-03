@interface WOHealthBridgeKeyedString
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WOHealthBridgeKeyedString

- (id)description
{
  selfCopy = self;
  v8 = a2;
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WOHealthBridgeKeyedString;
  v5 = [(WOHealthBridgeKeyedString *)&v7 description];
  dictionaryRepresentation = [(WOHealthBridgeKeyedString *)selfCopy dictionaryRepresentation];
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
  if (selfCopy->_key)
  {
    [v4[0] setObject:selfCopy->_key forKey:@"key"];
  }

  if (selfCopy->_string)
  {
    [v4[0] setObject:selfCopy->_string forKey:@"string"];
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
  v4 = WOHealthBridgeKeyedStringReadFrom(selfCopy, location[0]);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)writeTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  if (!selfCopy->_key)
  {
    __assert_rtn("[WOHealthBridgeKeyedString writeTo:]", "WOHealthBridgeKeyedString.m", 83, "nil != self->_key");
  }

  key = selfCopy->_key;
  PBDataWriterWriteStringField();
  if (!selfCopy->_string)
  {
    __assert_rtn("[WOHealthBridgeKeyedString writeTo:]", "WOHealthBridgeKeyedString.m", 88, "nil != self->_string");
  }

  string = selfCopy->_string;
  PBDataWriterWriteStringField();
  objc_storeStrong(location, 0);
}

- (void)copyTo:(id)to
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, to);
  [location[0] setKey:selfCopy->_key];
  [location[0] setString:selfCopy->_string];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v11 = a2;
  zoneCopy = zone;
  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v3 = [(NSString *)selfCopy->_key copyWithZone:zoneCopy];
  v4 = v9[1];
  v9[1] = v3;
  MEMORY[0x277D82BD8](v4);
  v5 = [(NSString *)selfCopy->_string copyWithZone:zoneCopy];
  v6 = v9[2];
  v9[2] = v5;
  MEMORY[0x277D82BD8](v6);
  v8 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v8;
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
    if (!selfCopy->_key && !*(v6 + 1) || (v5 = 0, ([(NSString *)selfCopy->_key isEqual:*(v6 + 1)]& 1) != 0))
    {
      if (selfCopy->_string || (v4 = 1, *(v6 + 2)))
      {
        v4 = [(NSString *)selfCopy->_string isEqual:*(v6 + 2)];
      }

      v5 = v4;
    }
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)mergeFrom:(id)from
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  if (*(location[0] + 1))
  {
    [(WOHealthBridgeKeyedString *)selfCopy setKey:*(location[0] + 1)];
  }

  if (*(location[0] + 2))
  {
    [(WOHealthBridgeKeyedString *)selfCopy setString:*(location[0] + 2)];
  }

  objc_storeStrong(location, 0);
}

@end