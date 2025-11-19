@interface FMPFSKNode
- (_TtC10TVRemoteUI10FMPFSKNode)init;
- (_TtC10TVRemoteUI10FMPFSKNode)initWithCoder:(id)a3;
@end

@implementation FMPFSKNode

- (_TtC10TVRemoteUI10FMPFSKNode)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPFSKNode();
  return [(SKNode *)&v3 init];
}

- (_TtC10TVRemoteUI10FMPFSKNode)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMPFSKNode();
  v4 = a3;
  v5 = [(SKNode *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end