@interface FMPFSKShapeNode
- (_TtC10TVRemoteUI15FMPFSKShapeNode)init;
- (_TtC10TVRemoteUI15FMPFSKShapeNode)initWithCoder:(id)coder;
@end

@implementation FMPFSKShapeNode

- (_TtC10TVRemoteUI15FMPFSKShapeNode)init
{
  v2 = self + OBJC_IVAR____TtC10TVRemoteUI15FMPFSKShapeNode_previousBrightness;
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMPFSKShapeNode();
  return [(SKShapeNode *)&v4 init];
}

- (_TtC10TVRemoteUI15FMPFSKShapeNode)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC10TVRemoteUI15FMPFSKShapeNode_previousBrightness;
  *v4 = 0;
  v4[8] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPFSKShapeNode();
  coderCopy = coder;
  v6 = [(SKShapeNode *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end