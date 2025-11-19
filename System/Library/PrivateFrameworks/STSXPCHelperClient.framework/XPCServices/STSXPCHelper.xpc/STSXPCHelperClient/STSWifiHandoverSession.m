@interface STSWifiHandoverSession
- (void)wifiP2PController:(id)a3 didConnectTo:(id)a4 port:(id)a5;
- (void)wifiP2PControllerDidDisconnect:(id)a3 error:(id)a4;
@end

@implementation STSWifiHandoverSession

- (void)wifiP2PController:(id)a3 didConnectTo:(id)a4 port:(id)a5
{
  v25 = a3;
  v8 = a4;
  v11 = a5;
  if (self)
  {
    isServer = self->_isServer;
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiHandoverSession wifiP2PController:didConnectTo:port:]", 42, self, @"TargetAddr=%@, port=%@, isServer=%d", v9, v10, v8);
    if (self->_isServer)
    {
      goto LABEL_13;
    }

    objc_setProperty_nonatomic_copy(self, v12, v8, 80);
    objc_setProperty_nonatomic_copy(self, v13, v11, 88);
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSWifiHandoverSession wifiP2PController:didConnectTo:port:]", 42, 0, @"TargetAddr=%@, port=%@, isServer=%d", v9, v10, v8);
  }

  port = self->_port;
  v15 = self->_hostname;
  v16 = port;
  if (self->_isServer)
  {
    v17 = 0;
  }

  else
  {
    v18 = sub_100025ECC(self);
    v19 = [(NSString *)v15 UTF8String];
    if (v16)
    {
      v20 = [(NSString *)v16 UTF8String];
    }

    else
    {
      v20 = "0";
    }

    host = nw_endpoint_create_host(v19, v20);
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

- (void)wifiP2PControllerDidDisconnect:(id)a3 error:(id)a4
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSWifiHandoverSession wifiP2PControllerDidDisconnect:error:]", 56, self, @"Session invalidated, error=%@", v4, v5, a4);

  sub_100024EC0(self, v7, v8, v9, v10, v11, v12, v13);
}

@end