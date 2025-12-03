@interface _MLNetworkUtilities
+ (id)configureTLS:(id)s;
+ (id)createSecureConnectionParameter:(id)parameter useUDP:(BOOL)p;
+ (id)doInitNetwork:(id)network;
+ (id)setProtocolStack:(id)stack family:(unint64_t)family;
+ (void)bindEndPoints:(id)points localAddr:(const char *)addr localPort:(const char *)port;
+ (void)setAWDL:(id)l useAWDL:(BOOL)dL;
+ (void)setupBonjour:(id)bonjour name:(const char *)name useBonjour:(BOOL)useBonjour useUDP:(BOOL)p;
+ (void)setupListenerStateChangeHandler:(id)handler useUDP:(BOOL)p;
@end

@implementation _MLNetworkUtilities

+ (id)doInitNetwork:(id)network
{
  v3 = *MEMORY[0x277CD9238];
  networkCopy = network;
  v5 = MEMORY[0x26671F110](v3);
  v6 = [_MLNetworkUtilities configureTLS:networkCopy];

  v7 = +[_MLNetworkUtilities createSecureConnectionParameter:useUDP:](_MLNetworkUtilities, "createSecureConnectionParameter:useUDP:", v6, [networkCopy useUDP]);
  family = [networkCopy family];

  v9 = [_MLNetworkUtilities setProtocolStack:v7 family:family];

  return v7;
}

+ (void)setupBonjour:(id)bonjour name:(const char *)name useBonjour:(BOOL)useBonjour useUDP:(BOOL)p
{
  if (name && useBonjour)
  {
    if (p)
    {
      v9 = "_nwcat._udp";
    }

    else
    {
      v9 = "_nwcat._tcp";
    }

    bonjourCopy = bonjour;
    bonjour_service = nw_advertise_descriptor_create_bonjour_service(name, v9, "local");
    nw_listener_set_advertise_descriptor(bonjourCopy, bonjour_service);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59___MLNetworkUtilities_setupBonjour_name_useBonjour_useUDP___block_invoke;
    v12[3] = &__block_descriptor_41_e37_v20__0__NSObject_OS_nw_endpoint__8B16l;
    v12[4] = a2;
    pCopy = p;
    nw_listener_set_advertised_endpoint_changed_handler(bonjourCopy, v12);
  }
}

+ (void)setupListenerStateChangeHandler:(id)handler useUDP:(BOOL)p
{
  handlerCopy = handler;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62___MLNetworkUtilities_setupListenerStateChangeHandler_useUDP___block_invoke;
  handler[3] = &unk_279AFC8D0;
  v9 = handlerCopy;
  v10 = a2;
  pCopy = p;
  v7 = handlerCopy;
  nw_listener_set_state_changed_handler(v7, handler);
}

+ (id)configureTLS:(id)s
{
  sCopy = s;
  v4 = MEMORY[0x26671F110](*MEMORY[0x277CD9238]);
  if ([sCopy useTLS])
  {
    if ([sCopy psk])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __36___MLNetworkUtilities_configureTLS___block_invoke;
      v8[3] = &unk_279AFC8F8;
      v9 = sCopy;
      v5 = MEMORY[0x26671F110](v8);
    }

    else
    {
      v5 = MEMORY[0x26671F110](*MEMORY[0x277CD9230]);
    }

    v4 = v5;
  }

  v6 = MEMORY[0x26671F110](v4);

  return v6;
}

+ (id)createSecureConnectionParameter:(id)parameter useUDP:(BOOL)p
{
  v4 = *MEMORY[0x277CD9230];
  if (p)
  {
    secure_udp = nw_parameters_create_secure_udp(parameter, v4);
  }

  else
  {
    secure_udp = nw_parameters_create_secure_tcp(parameter, v4);
  }

  return secure_udp;
}

+ (void)setAWDL:(id)l useAWDL:(BOOL)dL
{
  dLCopy = dL;
  parameters = l;
  if (dLCopy)
  {
    nw_parameters_set_include_peer_to_peer(parameters, 1);
    nw_parameters_set_use_p2p();
    nw_parameters_set_required_interface_subtype();
  }

  nw_parameters_set_required_interface_type(parameters, nw_interface_type_wifi);
}

+ (id)setProtocolStack:(id)stack family:(unint64_t)family
{
  v5 = nw_parameters_copy_default_protocol_stack(stack);
  v6 = v5;
  if (family == 30 || family == 2)
  {
    v7 = nw_protocol_stack_copy_internet_protocol(v5);
    v8 = v7;
    if (family == 2)
    {
      v9 = 4;
    }

    else
    {
      v9 = 6;
    }

    MEMORY[0x26671EE60](v7, v9);
  }

  return v6;
}

+ (void)bindEndPoints:(id)points localAddr:(const char *)addr localPort:(const char *)port
{
  if (addr | port)
  {
    if (addr)
    {
      addrCopy = addr;
    }

    else
    {
      addrCopy = "::";
    }

    if (port)
    {
      portCopy = port;
    }

    else
    {
      portCopy = "0";
    }

    pointsCopy = points;
    host = nw_endpoint_create_host(addrCopy, portCopy);
    nw_parameters_set_local_endpoint(pointsCopy, host);
  }
}

@end