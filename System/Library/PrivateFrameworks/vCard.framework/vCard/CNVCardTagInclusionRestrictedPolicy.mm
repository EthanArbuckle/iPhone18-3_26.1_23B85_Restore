@interface CNVCardTagInclusionRestrictedPolicy
- (BOOL)shouldParseTag:(id)tag;
- (_TtC5vCard35CNVCardTagInclusionRestrictedPolicy)init;
@end

@implementation CNVCardTagInclusionRestrictedPolicy

- (BOOL)shouldParseTag:(id)tag
{
  v4 = sub_27721ACE4();
  v6 = v5;
  if (v4 == 0x4E4F4953524556 && v5 == 0xE700000000000000 || (v7 = v4, (sub_27721AD64() & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v9 = *(&self->super.isa + OBJC_IVAR____TtC5vCard35CNVCardTagInclusionRestrictedPolicy_tags);
    selfCopy = self;
    v8 = sub_2772198F4(v7, v6, v9);
  }

  return v8 & 1;
}

- (_TtC5vCard35CNVCardTagInclusionRestrictedPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end