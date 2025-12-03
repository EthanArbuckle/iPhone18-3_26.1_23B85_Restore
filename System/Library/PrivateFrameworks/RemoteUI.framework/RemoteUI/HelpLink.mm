@interface HelpLink
- (_TtC8RemoteUI8HelpLink)init;
- (_TtC8RemoteUI8HelpLink)initWithAttributes:(id)attributes parent:(id)parent;
- (void)tapped;
@end

@implementation HelpLink

- (void)tapped
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x70);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B9CE7B4;
    aBlock[3] = &block_descriptor_5;
    v5 = _Block_copy(aBlock);
    [v4 activateElement:selfCopy completion:v5];

    _Block_release(v5);
  }

  else
  {
  }
}

- (_TtC8RemoteUI8HelpLink)initWithAttributes:(id)attributes parent:(id)parent
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8RemoteUI8HelpLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end