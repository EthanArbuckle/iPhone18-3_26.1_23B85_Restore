@interface _MLNetworking
- (id)initConnection:(id)a3;
- (id)initListener:(id)a3;
- (void)receiveLoop:(id)a3;
- (void)sendData:(id)a3;
- (void)setListenerReceiveDataCallBack:(id)a3;
- (void)setReceiveDataCallBack:(id)a3;
- (void)startConnection;
@end

@implementation _MLNetworking

- (id)initConnection:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = _MLNetworking;
  v6 = [(_MLNetworking *)&v22 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.remoteCoreMLClientNetwork", 0);
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;

    v9 = +[_MLLog clientFramework];
    v10 = *(v6 + 7);
    *(v6 + 7) = v9;

    objc_storeStrong(v6 + 4, a3);
    v11 = [v5 useBonjour];
    v12 = [*(v6 + 4) networkNameIdentifier];
    if (v11)
    {
      if ([v5 useUDP])
      {
        v13 = "_nwcat._udp";
      }

      else
      {
        v13 = "_nwcat._tcp";
      }

      bonjour_service = nw_endpoint_create_bonjour_service(v12, v13, "local");
    }

    else
    {
      bonjour_service = nw_endpoint_create_host(v12, [*(v6 + 4) port]);
    }

    v15 = bonjour_service;
    v16 = [_MLNetworkUtilities doInitNetwork:*(v6 + 4)];
    v17 = *(v6 + 6);
    *(v6 + 6) = v16;

    if ([*(v6 + 4) localAddr] || objc_msgSend(*(v6 + 4), "localPort"))
    {
      if ([v5 useBonjour])
      {
        v18 = 0;
      }

      else
      {
        v18 = [v5 networkNameIdentifier];
      }

      +[_MLNetworkUtilities bindEndPoints:localAddr:localPort:](_MLNetworkUtilities, "bindEndPoints:localAddr:localPort:", *(v6 + 6), v18, [v5 port]);
    }

    v19 = nw_connection_create(v15, *(v6 + 6));
    v20 = *(v6 + 2);
    *(v6 + 2) = v19;
  }

  return v6;
}

- (id)initListener:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = _MLNetworking;
  v6 = [(_MLNetworking *)&v17 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.remoteCoreMLServerNetwork", 0);
    v8 = *(v6 + 8);
    *(v6 + 8) = v7;

    v9 = +[_MLLog serverFramework];
    v10 = *(v6 + 7);
    *(v6 + 7) = v9;

    objc_storeStrong(v6 + 4, a3);
    v11 = [_MLNetworkUtilities doInitNetwork:v5];
    v12 = *(v6 + 6);
    *(v6 + 6) = v11;

    v13 = 0;
    if (([v5 useBonjour] & 1) == 0)
    {
      v13 = [v5 networkNameIdentifier];
    }

    +[_MLNetworkUtilities bindEndPoints:localAddr:localPort:](_MLNetworkUtilities, "bindEndPoints:localAddr:localPort:", *(v6 + 6), v13, [v5 port]);
    v14 = nw_listener_create(*(v6 + 6));
    v15 = *(v6 + 3);
    *(v6 + 3) = v14;

    +[_MLNetworkUtilities setupBonjour:name:useBonjour:useUDP:](_MLNetworkUtilities, "setupBonjour:name:useBonjour:useUDP:", *(v6 + 3), [v5 networkNameIdentifier], objc_msgSend(v5, "useBonjour"), objc_msgSend(v5, "useUDP"));
    nw_listener_set_queue(*(v6 + 3), MEMORY[0x277D85CD0]);
    +[_MLNetworkUtilities setupListenerStateChangeHandler:useUDP:](_MLNetworkUtilities, "setupListenerStateChangeHandler:useUDP:", *(v6 + 3), [v5 useUDP]);
  }

  return v6;
}

- (void)startConnection
{
  nw_connection_set_queue(self->_connection, self->_q);
  connection = self->_connection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32___MLNetworking_startConnection__block_invoke;
  v5[3] = &unk_279AFC920;
  v5[4] = self;
  v5[5] = a2;
  nw_connection_set_state_changed_handler(connection, v5);
  nw_connection_start(self->_connection);
}

- (void)setReceiveDataCallBack:(id)a3
{
  v4 = a3;
  [(_MLNetworking *)self startConnection];
  [(_MLNetworking *)self receiveLoop:v4];
}

- (void)setListenerReceiveDataCallBack:(id)a3
{
  v5 = a3;
  listener = self->_listener;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48___MLNetworking_setListenerReceiveDataCallBack___block_invoke;
  handler[3] = &unk_279AFC948;
  v9 = v5;
  v10 = a2;
  handler[4] = self;
  v7 = v5;
  nw_listener_set_new_connection_handler(listener, handler);
  nw_listener_start(self->_listener);
}

- (void)sendData:(id)a3
{
  v6 = a3;
  v7 = a3;
  v8 = [v7 bytes];
  v9 = [v7 length];

  v10 = dispatch_data_create(v8, v9, 0, 0);
  connection = self->_connection;
  v12 = *MEMORY[0x277CD9218];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __26___MLNetworking_sendData___block_invoke;
  v13[3] = &unk_279AFC970;
  v13[4] = self;
  v13[5] = a2;
  nw_connection_send(connection, v10, v12, 1, v13);
}

- (void)receiveLoop:(id)a3
{
  v5 = a3;
  connection = self->_connection;
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __29___MLNetworking_receiveLoop___block_invoke;
  completion[3] = &unk_279AFC9C0;
  v9 = v5;
  v10 = a2;
  completion[4] = self;
  v7 = v5;
  nw_connection_receive(connection, 4u, 0xFFFFFFFF, completion);
}

@end