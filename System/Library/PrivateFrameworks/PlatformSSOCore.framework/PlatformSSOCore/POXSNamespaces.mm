@interface POXSNamespaces
+ (id)prefixForNamespaceURI:(id)i;
@end

@implementation POXSNamespaces

+ (id)prefixForNamespaceURI:(id)i
{
  v3 = prefixForNamespaceURI__predicate;
  iCopy = i;
  if (v3 != -1)
  {
    +[POXSNamespaces prefixForNamespaceURI:];
  }

  v5 = [prefixForNamespaceURI__namespaces objectForKeyedSubscript:iCopy];

  return v5;
}

void __40__POXSNamespaces_prefixForNamespaceURI___block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = @"http://www.w3.org/2003/05/soap-envelope";
  v3[1] = @"http://www.w3.org/2005/08/addressing";
  v4[0] = @"s";
  v4[1] = @"a";
  v3[2] = @"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd";
  v3[3] = @"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd";
  v4[2] = @"u";
  v4[3] = @"o";
  v3[4] = @"http://docs.oasis-open.org/ws-sx/ws-trust/200512";
  v3[5] = @"http://schemas.xmlsoap.org/ws/2005/02/trust";
  v4[4] = @"trust";
  v4[5] = @"trust";
  v3[6] = @"http://schemas.xmlsoap.org/ws/2004/09/policy";
  v4[6] = @"wsp";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = prefixForNamespaceURI__namespaces;
  prefixForNamespaceURI__namespaces = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end