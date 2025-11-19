@interface RWIProtocolConfiguration
- (RWIProtocolCSSDomainEventDispatcher)cssEventDispatcher;
- (RWIProtocolConfiguration)initWithController:(AugmentableInspectorController *)a3;
- (RWIProtocolConsoleDomainEventDispatcher)consoleEventDispatcher;
- (RWIProtocolDOMDomainEventDispatcher)domEventDispatcher;
- (RWIProtocolDOMStorageDomainEventDispatcher)domStorageEventDispatcher;
- (RWIProtocolNetworkDomainEventDispatcher)networkEventDispatcher;
- (RWIProtocolPageDomainEventDispatcher)pageEventDispatcher;
- (id).cxx_construct;
- (void)setCSSHandler:(id)a3;
- (void)setDOMHandler:(id)a3;
- (void)setDOMStorageHandler:(id)a3;
- (void)setNetworkHandler:(id)a3;
- (void)setPageHandler:(id)a3;
@end

@implementation RWIProtocolConfiguration

- (RWIProtocolConfiguration)initWithController:(AugmentableInspectorController *)a3
{
  v5.receiver = self;
  v5.super_class = RWIProtocolConfiguration;
  result = [(RWIProtocolConfiguration *)&v5 init];
  if (result)
  {
    result->_controller = a3;
  }

  return result;
}

- (void)setCSSHandler:(id)a3
{
  m_ptr = self->_cssHandler.m_ptr;
  if (m_ptr != a3)
  {
    if (a3)
    {
      v6 = a3;
      m_ptr = self->_cssHandler.m_ptr;
    }

    self->_cssHandler.m_ptr = a3;
    if (m_ptr)
    {
    }

    v7 = WTF::fastMalloc(0x18);
    Inspector::ObjCInspectorCSSBackendDispatcher::ObjCInspectorCSSBackendDispatcher(v7, a3);
    v18 = v7;
    v16[0] = "CSS";
    v16[1] = 4;
    std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>,0>(v16, self->_controller, &v18, &v17);
    controller = self->_controller;
    v9 = v17;
    v17 = 0;
    v15 = v9;
    (*(controller->var0 + 6))(controller, &v15);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v17;
    v17 = 0;
    if (v12)
    {
      Inspector::AlternateDispatchableAgent<Inspector::CSSBackendDispatcher,Inspector::AlternateCSSBackendDispatcher>::~AlternateDispatchableAgent(v12, v10);
      WTF::fastFree(v13, v14);
    }

    std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&v18, 0);
  }
}

- (RWIProtocolCSSDomainEventDispatcher)cssEventDispatcher
{
  result = self->_cssEventDispatcher.m_ptr;
  if (!result)
  {
    result = [[RWIProtocolCSSDomainEventDispatcher alloc] initWithController:self->_controller];
    m_ptr = self->_cssEventDispatcher.m_ptr;
    self->_cssEventDispatcher.m_ptr = result;
    if (m_ptr)
    {

      return self->_cssEventDispatcher.m_ptr;
    }
  }

  return result;
}

- (RWIProtocolConsoleDomainEventDispatcher)consoleEventDispatcher
{
  result = self->_consoleEventDispatcher.m_ptr;
  if (!result)
  {
    result = [[RWIProtocolConsoleDomainEventDispatcher alloc] initWithController:self->_controller];
    m_ptr = self->_consoleEventDispatcher.m_ptr;
    self->_consoleEventDispatcher.m_ptr = result;
    if (m_ptr)
    {

      return self->_consoleEventDispatcher.m_ptr;
    }
  }

  return result;
}

- (void)setDOMHandler:(id)a3
{
  m_ptr = self->_domHandler.m_ptr;
  if (m_ptr != a3)
  {
    if (a3)
    {
      v6 = a3;
      m_ptr = self->_domHandler.m_ptr;
    }

    self->_domHandler.m_ptr = a3;
    if (m_ptr)
    {
    }

    v7 = WTF::fastMalloc(0x18);
    Inspector::ObjCInspectorDOMBackendDispatcher::ObjCInspectorDOMBackendDispatcher(v7, a3);
    v18 = v7;
    v16[0] = "DOM";
    v16[1] = 4;
    std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMBackendDispatcher>,0>(v16, self->_controller, &v18, &v17);
    controller = self->_controller;
    v9 = v17;
    v17 = 0;
    v15 = v9;
    (*(controller->var0 + 6))(controller, &v15);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v17;
    v17 = 0;
    if (v12)
    {
      Inspector::AlternateDispatchableAgent<Inspector::DOMBackendDispatcher,Inspector::AlternateDOMBackendDispatcher>::~AlternateDispatchableAgent(v12, v10);
      WTF::fastFree(v13, v14);
    }

    std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&v18, 0);
  }
}

- (RWIProtocolDOMDomainEventDispatcher)domEventDispatcher
{
  result = self->_domEventDispatcher.m_ptr;
  if (!result)
  {
    result = [[RWIProtocolDOMDomainEventDispatcher alloc] initWithController:self->_controller];
    m_ptr = self->_domEventDispatcher.m_ptr;
    self->_domEventDispatcher.m_ptr = result;
    if (m_ptr)
    {

      return self->_domEventDispatcher.m_ptr;
    }
  }

  return result;
}

- (void)setDOMStorageHandler:(id)a3
{
  m_ptr = self->_domStorageHandler.m_ptr;
  if (m_ptr != a3)
  {
    if (a3)
    {
      v6 = a3;
      m_ptr = self->_domStorageHandler.m_ptr;
    }

    self->_domStorageHandler.m_ptr = a3;
    if (m_ptr)
    {
    }

    v7 = WTF::fastMalloc(0x18);
    Inspector::ObjCInspectorDOMStorageBackendDispatcher::ObjCInspectorDOMStorageBackendDispatcher(v7, a3);
    v18 = v7;
    v16[0] = "DOMStorage";
    v16[1] = 11;
    std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorDOMStorageBackendDispatcher>,0>(v16, self->_controller, &v18, &v17);
    controller = self->_controller;
    v9 = v17;
    v17 = 0;
    v15 = v9;
    (*(controller->var0 + 6))(controller, &v15);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v17;
    v17 = 0;
    if (v12)
    {
      Inspector::AlternateDispatchableAgent<Inspector::DOMStorageBackendDispatcher,Inspector::AlternateDOMStorageBackendDispatcher>::~AlternateDispatchableAgent(v12, v10);
      WTF::fastFree(v13, v14);
    }

    std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&v18, 0);
  }
}

- (RWIProtocolDOMStorageDomainEventDispatcher)domStorageEventDispatcher
{
  result = self->_domStorageEventDispatcher.m_ptr;
  if (!result)
  {
    result = [[RWIProtocolDOMStorageDomainEventDispatcher alloc] initWithController:self->_controller];
    m_ptr = self->_domStorageEventDispatcher.m_ptr;
    self->_domStorageEventDispatcher.m_ptr = result;
    if (m_ptr)
    {

      return self->_domStorageEventDispatcher.m_ptr;
    }
  }

  return result;
}

- (void)setNetworkHandler:(id)a3
{
  m_ptr = self->_networkHandler.m_ptr;
  if (m_ptr != a3)
  {
    if (a3)
    {
      v6 = a3;
      m_ptr = self->_networkHandler.m_ptr;
    }

    self->_networkHandler.m_ptr = a3;
    if (m_ptr)
    {
    }

    v7 = WTF::fastMalloc(0x18);
    Inspector::ObjCInspectorNetworkBackendDispatcher::ObjCInspectorNetworkBackendDispatcher(v7, a3);
    v18 = v7;
    v16[0] = "Network";
    v16[1] = 8;
    std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorNetworkBackendDispatcher>,0>(v16, self->_controller, &v18, &v17);
    controller = self->_controller;
    v9 = v17;
    v17 = 0;
    v15 = v9;
    (*(controller->var0 + 6))(controller, &v15);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v17;
    v17 = 0;
    if (v12)
    {
      Inspector::AlternateDispatchableAgent<Inspector::NetworkBackendDispatcher,Inspector::AlternateNetworkBackendDispatcher>::~AlternateDispatchableAgent(v12, v10);
      WTF::fastFree(v13, v14);
    }

    std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&v18, 0);
  }
}

- (RWIProtocolNetworkDomainEventDispatcher)networkEventDispatcher
{
  result = self->_networkEventDispatcher.m_ptr;
  if (!result)
  {
    result = [[RWIProtocolNetworkDomainEventDispatcher alloc] initWithController:self->_controller];
    m_ptr = self->_networkEventDispatcher.m_ptr;
    self->_networkEventDispatcher.m_ptr = result;
    if (m_ptr)
    {

      return self->_networkEventDispatcher.m_ptr;
    }
  }

  return result;
}

- (void)setPageHandler:(id)a3
{
  m_ptr = self->_pageHandler.m_ptr;
  if (m_ptr != a3)
  {
    if (a3)
    {
      v6 = a3;
      m_ptr = self->_pageHandler.m_ptr;
    }

    self->_pageHandler.m_ptr = a3;
    if (m_ptr)
    {
    }

    v7 = WTF::fastMalloc(0x18);
    Inspector::ObjCInspectorPageBackendDispatcher::ObjCInspectorPageBackendDispatcher(v7, a3);
    v18 = v7;
    v16[0] = "Page";
    v16[1] = 5;
    std::make_unique[abi:sn200100]<Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>,WTF::ASCIILiteral,Inspector::AugmentableInspectorController &,std::unique_ptr<Inspector::ObjCInspectorPageBackendDispatcher>,0>(v16, self->_controller, &v18, &v17);
    controller = self->_controller;
    v9 = v17;
    v17 = 0;
    v15 = v9;
    (*(controller->var0 + 6))(controller, &v15);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v17;
    v17 = 0;
    if (v12)
    {
      Inspector::AlternateDispatchableAgent<Inspector::PageBackendDispatcher,Inspector::AlternatePageBackendDispatcher>::~AlternateDispatchableAgent(v12, v10);
      WTF::fastFree(v13, v14);
    }

    std::unique_ptr<Inspector::ObjCInspectorCSSBackendDispatcher>::reset[abi:sn200100](&v18, 0);
  }
}

- (RWIProtocolPageDomainEventDispatcher)pageEventDispatcher
{
  result = self->_pageEventDispatcher.m_ptr;
  if (!result)
  {
    result = [[RWIProtocolPageDomainEventDispatcher alloc] initWithController:self->_controller];
    m_ptr = self->_pageEventDispatcher.m_ptr;
    self->_pageEventDispatcher.m_ptr = result;
    if (m_ptr)
    {

      return self->_pageEventDispatcher.m_ptr;
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end