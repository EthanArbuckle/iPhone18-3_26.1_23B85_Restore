@interface SKGDomainEdge
+ (id)edgeFromDomain:(id)domain toNode:(id)node;
@end

@implementation SKGDomainEdge

+ (id)edgeFromDomain:(id)domain toNode:(id)node
{
  domainCopy = domain;
  nodeCopy = node;
  v7 = [(SKGEdge *)[SKGDomainEdge alloc] initWithSourceNode:domainCopy targetNode:nodeCopy];

  return v7;
}

@end