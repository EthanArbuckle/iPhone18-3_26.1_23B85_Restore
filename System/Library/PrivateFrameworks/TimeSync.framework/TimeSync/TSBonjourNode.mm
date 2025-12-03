@interface TSBonjourNode
- (TSBonjourNode)init;
- (TSBonjourNode)initWithServiceName:(id)name type:(id)type andDomain:(id)domain;
- (void)removedFromInterface:(unsigned int)interface named:(id)named;
@end

@implementation TSBonjourNode

- (TSBonjourNode)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSBonjourNode init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (TSBonjourNode)initWithServiceName:(id)name type:(id)type andDomain:(id)domain
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  v21.receiver = self;
  v21.super_class = TSBonjourNode;
  v11 = [(TSBonjourNode *)&v21 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [typeCopy copy];
    type = v11->_type;
    v11->_type = v14;

    v16 = [domainCopy copy];
    domain = v11->_domain;
    v11->_domain = v16;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    interfaces = v11->_interfaces;
    v11->_interfaces = dictionary;
  }

  return v11;
}

- (void)removedFromInterface:(unsigned int)interface named:(id)named
{
  namedCopy = named;
  interfaces = [(TSBonjourNode *)self interfaces];

  v7 = MEMORY[0x277CBEB38];
  if (interfaces)
  {
    interfaces2 = [(TSBonjourNode *)self interfaces];
    dictionary = [v7 dictionaryWithDictionary:interfaces2];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  [dictionary removeObjectForKey:namedCopy];

  [(TSBonjourNode *)self setInterfaces:dictionary];
}

@end