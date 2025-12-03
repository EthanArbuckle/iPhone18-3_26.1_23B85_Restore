@interface SKEventCaptiveNetworkPresent
- (SKEventCaptiveNetworkPresent)initWithCaptiveURL:(id)l interfaceIdentifier:(id)identifier ssid:(id)ssid;
- (id)descriptionWithLevel:(int)level;
@end

@implementation SKEventCaptiveNetworkPresent

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v11 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  captiveSSID = self->_captiveSSID;
  CUAppendF();
  v5 = v4;

  captiveURL = self->_captiveURL;
  CUAppendF();
  v6 = v5;

  captiveInterfaceIdentifier = self->_captiveInterfaceIdentifier;
  CUAppendF();
  v7 = v6;

  v8 = &stru_2877689A8;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (SKEventCaptiveNetworkPresent)initWithCaptiveURL:(id)l interfaceIdentifier:(id)identifier ssid:(id)ssid
{
  lCopy = l;
  identifierCopy = identifier;
  ssidCopy = ssid;
  v11 = [(SKEvent *)self initWithEventType:200];
  if (v11)
  {
    v12 = [identifierCopy copy];
    captiveInterfaceIdentifier = v11->_captiveInterfaceIdentifier;
    v11->_captiveInterfaceIdentifier = v12;

    v14 = [ssidCopy copy];
    captiveSSID = v11->_captiveSSID;
    v11->_captiveSSID = v14;

    v16 = [lCopy copy];
    captiveURL = v11->_captiveURL;
    v11->_captiveURL = v16;

    v18 = v11;
  }

  return v11;
}

@end