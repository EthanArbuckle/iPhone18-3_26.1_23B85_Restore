@interface REBluetoothDeviceRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REBluetoothDeviceRelevanceProvider)initWithConnectionToCar:(BOOL)car connectionToSpeaker:(BOOL)speaker;
- (REBluetoothDeviceRelevanceProvider)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REBluetoothDeviceRelevanceProvider

- (REBluetoothDeviceRelevanceProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"car"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"speaker"];

  v7 = -[REBluetoothDeviceRelevanceProvider initWithConnectionToCar:connectionToSpeaker:](self, "initWithConnectionToCar:connectionToSpeaker:", [v5 BOOLValue], objc_msgSend(v6, "BOOLValue"));
  return v7;
}

- (id)dictionaryEncoding
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_connectedToCar];
  [dictionary setObject:v4 forKeyedSubscript:@"car"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_connectedToSpeaker];
  [dictionary setObject:v5 forKeyedSubscript:@"speaker"];

  v6 = [dictionary copy];

  return v6;
}

- (REBluetoothDeviceRelevanceProvider)initWithConnectionToCar:(BOOL)car connectionToSpeaker:(BOOL)speaker
{
  v7.receiver = self;
  v7.super_class = REBluetoothDeviceRelevanceProvider;
  result = [(RERelevanceProvider *)&v7 init];
  if (result)
  {
    result->_connectedToCar = car;
    result->_connectedToSpeaker = speaker;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  connectedToCar = self->_connectedToCar;
  connectedToSpeaker = self->_connectedToSpeaker;

  return [v4 initWithConnectionToCar:connectedToCar connectionToSpeaker:connectedToSpeaker];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = REBluetoothDeviceRelevanceProvider;
    v5 = [(RERelevanceProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_connectedToSpeaker == equalCopy->_connectedToSpeaker && self->_connectedToCar == equalCopy->_connectedToCar;
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