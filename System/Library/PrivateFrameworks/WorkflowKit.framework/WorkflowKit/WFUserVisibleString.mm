@interface WFUserVisibleString
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (NSString)content;
- (WFUserVisibleString)initWithContent:(id)content ofKind:(unint64_t)kind comment:(id)comment;
- (int64_t)hash;
- (void)setContent:(id)content;
@end

@implementation WFUserVisibleString

- (NSString)content
{
  sub_1CA6A4820();
  v2 = sub_1CA94C368();

  return v2;
}

- (void)setContent:(id)content
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  selfCopy = self;
  sub_1CA6A48CC(v4, v6);
}

- (BOOL)isEmpty
{
  selfCopy = self;
  v3 = sub_1CA6A491C();

  return v3;
}

- (WFUserVisibleString)initWithContent:(id)content ofKind:(unint64_t)kind comment:(id)comment
{
  v7 = sub_1CA94C3A8();
  v9 = v8;
  if (comment)
  {
    v10 = sub_1CA94C3A8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  return sub_1CA6A49F8(v7, v9, kind, v10, v12);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = WFUserVisibleString.isEqual(_:)(v8);

  sub_1CA2C0A74(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = WFUserVisibleString.hash.getter();

  return v3;
}

@end