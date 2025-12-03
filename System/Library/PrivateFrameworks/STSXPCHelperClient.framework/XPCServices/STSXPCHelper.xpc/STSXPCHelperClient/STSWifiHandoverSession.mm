@interface STSWifiHandoverSession
- (void)wifiP2PController:(id)controller didConnectTo:(id)to port:(id)port;
- (void)wifiP2PControllerDidDisconnect:(id)disconnect error:(id)error;
@end

@implementation STSWifiHandoverSession

- (void)wifiP2PController:(id)controller didConnectTo:(id)to port:(id)port
{
  controllerCopy = controller;
  toCopy = to;
  portCopy = port;
  if (self)
  {
    isServer = self->_isServer;
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiHandoverSession wifiP2PController:didConnectTo:port:]", 42, self, @"TargetAddr=%@, port=%@, isServer=%d", v9, v10, toCopy);
    if (self->_isServer)
    {
      goto LABEL_13;
    }

    objc_setProperty_nonatomic_copy(self, v12, toCopy, 80);
    objc_setProperty_nonatomic_copy(self, v13, portCopy, 88);
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiHandoverSession wifiP2PController:didConnectTo:port:]", 42, 0, @"TargetAddr=%@, port=%@, isServer=%d", v9, v10, toCopy);
  }

  port = self->_port;
  v15 = self->_hostname;
  portCopy2 = port;
  if (self->_isServer)
  {
    v17 = 0;
  }

  else
  {
    v18 = sub_100025ECC(self);
    uTF8String = [(NSString *)v15 UTF8String];
    if (portCopy2)
    {
      uTF8String2 = [(NSString *)portCopy2 UTF8String];
    }

    else
    {
      uTF8String2 = "0";
    }

    host = nw_endpoint_create_host(uTF8String, uTF8String2);
    v17 = nw_connection_create(host, v18);
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession _new_outbound_connection:port:]", 264, self, @"connection=%@", v22, v23, v17);
  }

  if (!self->_isServer)
  {
    objc_storeStrong(&self->_clientHandle, v17);
  }

  sub_100024D84(self, v17);

LABEL_13:
}

- (void)wifiP2PControllerDidDisconnect:(id)disconnect error:(id)error
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession wifiP2PControllerDidDisconnect:error:]", 56, self, @"Session invalidated, error=%@", v4, v5, error);

  sub_100024EC0(self, v7, v8, v9, v10, v11, v12, v13);
}

@end