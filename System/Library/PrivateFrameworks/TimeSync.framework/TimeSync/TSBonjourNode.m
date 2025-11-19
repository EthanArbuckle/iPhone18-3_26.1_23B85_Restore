@interface TSBonjourNode
- (TSBonjourNode)init;
- (TSBonjourNode)initWithServiceName:(id)a3 type:(id)a4 andDomain:(id)a5;
- (void)removedFromInterface:(unsigned int)a3 named:(id)a4;
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

- (TSBonjourNode)initWithServiceName:(id)a3 type:(id)a4 andDomain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = TSBonjourNode;
  v11 = [(TSBonjourNode *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    type = v11->_type;
    v11->_type = v14;

    v16 = [v10 copy];
    domain = v11->_domain;
    v11->_domain = v16;

    v18 = [MEMORY[0x277CBEAC0] dictionary];
    interfaces = v11->_interfaces;
    v11->_interfaces = v18;
  }

  return v11;
}

- (void)removedFromInterface:(unsigned int)a3 named:(id)a4
{
  v5 = a4;
  v6 = [(TSBonjourNode *)self interfaces];

  v7 = MEMORY[0x277CBEB38];
  if (v6)
  {
    v8 = [(TSBonjourNode *)self interfaces];
    v9 = [v7 dictionaryWithDictionary:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
  }

  [v9 removeObjectForKey:v5];

  [(TSBonjourNode *)self setInterfaces:v9];
}

@end