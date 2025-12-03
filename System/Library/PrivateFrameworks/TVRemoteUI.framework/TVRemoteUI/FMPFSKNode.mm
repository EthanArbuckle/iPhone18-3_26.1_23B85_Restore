@interface FMPFSKNode
- (_TtC10TVRemoteUI10FMPFSKNode)init;
- (_TtC10TVRemoteUI10FMPFSKNode)initWithCoder:(id)coder;
@end

@implementation FMPFSKNode

- (_TtC10TVRemoteUI10FMPFSKNode)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPFSKNode();
  return [(SKNode *)&v3 init];
}

- (_TtC10TVRemoteUI10FMPFSKNode)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMPFSKNode();
  coderCopy = coder;
  v5 = [(SKNode *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end