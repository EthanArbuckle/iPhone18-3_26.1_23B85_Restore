@interface KNLiveVideoSourceSymbolTintColorSet
- (BOOL)isEqual:(id)equal;
- (_TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet)init;
- (_TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet)initWithForegroundColor:(id)color backgroundGradientTopColor:(id)topColor backgroundGradientBottomColor:(id)bottomColor backgroundGradientSwatchOutlineColor:(id)outlineColor labelColor:(id)labelColor secondaryLabelColor:(id)secondaryLabelColor;
- (int64_t)hash;
@end

@implementation KNLiveVideoSourceSymbolTintColorSet

- (_TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet)initWithForegroundColor:(id)color backgroundGradientTopColor:(id)topColor backgroundGradientBottomColor:(id)bottomColor backgroundGradientSwatchOutlineColor:(id)outlineColor labelColor:(id)labelColor secondaryLabelColor:(id)secondaryLabelColor
{
  v14 = (&self->super.isa + OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage);
  *v14 = color;
  v14[1] = topColor;
  v14[2] = bottomColor;
  v14[3] = outlineColor;
  v14[4] = labelColor;
  v14[5] = secondaryLabelColor;
  v22.receiver = self;
  v22.super_class = type metadata accessor for KNLiveVideoSourceSymbolTintColorSet();
  colorCopy = color;
  topColorCopy = topColor;
  bottomColorCopy = bottomColor;
  outlineColorCopy = outlineColor;
  labelColorCopy = labelColor;
  secondaryLabelColorCopy = secondaryLabelColor;
  return [(KNLiveVideoSourceSymbolTintColorSet *)&v22 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_275E61288();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_275E56C94(v8);

  sub_275E573B0(v8, &qword_280A3BE70);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = *&self->storage[OBJC_IVAR____TtC16KeynoteQuicklook35KNLiveVideoSourceSymbolTintColorSet_storage + 16];
  sub_275E61308();
  selfCopy = self;
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