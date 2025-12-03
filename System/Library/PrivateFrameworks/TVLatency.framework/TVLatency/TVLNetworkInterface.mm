@interface TVLNetworkInterface
- (TVLNetworkInterface)initWithInterfaceType:(unint64_t)type interfaceName:(id)name;
@end

@implementation TVLNetworkInterface

- (TVLNetworkInterface)initWithInterfaceType:(unint64_t)type interfaceName:(id)name
{
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = TVLNetworkInterface;
  v7 = [(TVLNetworkInterface *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v7->_interfaceType = type;
    v9 = [nameCopy copy];
    interfaceName = v8->_interfaceName;
    v8->_interfaceName = v9;

    v11 = _IPAddress(2, v8->_interfaceName);
    v12 = [v11 copy];
    ipv4 = v8->_ipv4;
    v8->_ipv4 = v12;

    v14 = _IPAddress(30, v8->_interfaceName);
    v15 = [v14 copy];
    ipv6 = v8->_ipv6;
    v8->_ipv6 = v15;
  }

  return v8;
}

@end