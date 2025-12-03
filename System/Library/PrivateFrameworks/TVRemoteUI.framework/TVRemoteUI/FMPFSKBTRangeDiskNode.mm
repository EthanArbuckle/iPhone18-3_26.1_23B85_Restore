@interface FMPFSKBTRangeDiskNode
- (_TtC10TVRemoteUI21FMPFSKBTRangeDiskNode)init;
- (_TtC10TVRemoteUI21FMPFSKBTRangeDiskNode)initWithCoder:(id)coder;
@end

@implementation FMPFSKBTRangeDiskNode

- (_TtC10TVRemoteUI21FMPFSKBTRangeDiskNode)init
{
  v3 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_sizeSpring;
  *(&self->super.super.super.super.super.isa + v3) = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v4 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_opacitySpring;
  *(&self->super.super.super.super.super.isa + v4) = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMPFSKBTRangeDiskNode();
  v5 = [(FMPFSKShapeNode *)&v7 init];
  FMPFSKBTRangeDiskNode.setup()();

  return v5;
}

- (_TtC10TVRemoteUI21FMPFSKBTRangeDiskNode)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_sizeSpring;
  *(&self->super.super.super.super.super.isa + v4) = specialized static FMPFFluidSpring.lazySpringWith(initialValue:stableValueThreshold:)(0, 0, 0x3F50624DD2F1A9FCLL, 0);
  v5 = OBJC_IVAR____TtC10TVRemoteUI21FMPFSKBTRangeDiskNode_opacitySpring;
  *(&self->super.super.super.super.super.isa + v5) = specialized static FMPFFluidSpring.defaultSpringWith(initialValue:stableValueThreshold:response:)(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end