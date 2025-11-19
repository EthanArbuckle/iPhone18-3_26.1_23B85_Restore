@interface KNLiveVideoSourceSymbolTintColorSet
- (BOOL)isEqual:(id)a3;
- (_TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet)init;
- (_TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet)initWithForegroundColor:(id)a3 backgroundGradientTopColor:(id)a4 backgroundGradientBottomColor:(id)a5 backgroundGradientSwatchOutlineColor:(id)a6 labelColor:(id)a7 secondaryLabelColor:(id)a8;
- (int64_t)hash;
@end

@implementation KNLiveVideoSourceSymbolTintColorSet

- (_TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet)initWithForegroundColor:(id)a3 backgroundGradientTopColor:(id)a4 backgroundGradientBottomColor:(id)a5 backgroundGradientSwatchOutlineColor:(id)a6 labelColor:(id)a7 secondaryLabelColor:(id)a8
{
  v14 = (&self->super.isa + OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage);
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v22.receiver = self;
  v22.super_class = type metadata accessor for KNLiveVideoSourceSymbolTintColorSet();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  return [(KNLiveVideoSourceSymbolTintColorSet *)&v22 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_275E61288();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_275E56C94(v8);

  sub_275E573B0(v8, &qword_280A3BE70);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = *&self->storage[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage + 16];
  sub_275E61308();
  v4 = self;
  sub_275E61278();
  sub_275E61278();
  sub_275E61278();
  sub_275E61318();
  if (v3)
  {
    v5 = v3;
    sub_275E61278();
  }

  sub_275E61278();
  sub_275E61278();
  v6 = sub_275E61328();

  return v6;
}

- (_TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end