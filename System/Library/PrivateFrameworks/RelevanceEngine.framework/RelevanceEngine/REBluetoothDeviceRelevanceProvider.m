@interface REBluetoothDeviceRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (REBluetoothDeviceRelevanceProvider)initWithConnectionToCar:(BOOL)a3 connectionToSpeaker:(BOOL)a4;
- (REBluetoothDeviceRelevanceProvider)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REBluetoothDeviceRelevanceProvider

- (REBluetoothDeviceRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"car"];
  v6 = [v4 objectForKeyedSubscript:@"speaker"];

  v7 = -[REBluetoothDeviceRelevanceProvider initWithConnectionToCar:connectionToSpeaker:](self, "initWithConnectionToCar:connectionToSpeaker:", [v5 BOOLValue], objc_msgSend(v6, "BOOLValue"));
  return v7;
}

- (id)dictionaryEncoding
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_connectedToCar];
  [v3 setObject:v4 forKeyedSubscript:@"car"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_connectedToSpeaker];
  [v3 setObject:v5 forKeyedSubscript:@"speaker"];

  v6 = [v3 copy];

  return v6;
}

- (REBluetoothDeviceRelevanceProvider)initWithConnectionToCar:(BOOL)a3 connectionToSpeaker:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = REBluetoothDeviceRelevanceProvider;
  result = [(RERelevanceProvider *)&v7 init];
  if (result)
  {
    result->_connectedToCar = a3;
    result->_connectedToSpeaker = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  connectedToCar = self->_connectedToCar;
  connectedToSpeaker = self->_connectedToSpeaker;

  return [v4 initWithConnectionToCar:connectedToCar connectionToSpeaker:connectedToSpeaker];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = REBluetoothDeviceRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_connectedToSpeaker == v4->_connectedToSpeaker && self->_connectedToCar == v4->_connectedToCar;
  }

  return v5;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = REBluetoothDeviceRelevanceProvider;
  v3 = [(REBluetoothDeviceRelevanceProvider *)&v8 description];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_connectedToSpeaker];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_connectedToCar];
  v6 = [v3 stringByAppendingFormat:@" speaker=%@, car=%@", v4, v5];

  return v6;
}

@end