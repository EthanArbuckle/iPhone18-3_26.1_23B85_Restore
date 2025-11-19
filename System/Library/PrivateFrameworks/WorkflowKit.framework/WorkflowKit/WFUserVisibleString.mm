@interface WFUserVisibleString
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSString)content;
- (WFUserVisibleString)initWithContent:(id)a3 ofKind:(unint64_t)a4 comment:(id)a5;
- (int64_t)hash;
- (void)setContent:(id)a3;
@end

@implementation WFUserVisibleString

- (NSString)content
{
  sub_1CA6A4820();
  v2 = sub_1CA94C368();

  return v2;
}

- (void)setContent:(id)a3
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = self;
  sub_1CA6A48CC(v4, v6);
}

- (BOOL)isEmpty
{
  v2 = self;
  v3 = sub_1CA6A491C();

  return v3;
}

- (WFUserVisibleString)initWithContent:(id)a3 ofKind:(unint64_t)a4 comment:(id)a5
{
  v7 = sub_1CA94C3A8();
  v9 = v8;
  if (a5)
  {
    v10 = sub_1CA94C3A8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  return sub_1CA6A49F8(v7, v9, a4, v10, v12);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = WFUserVisibleString.isEqual(_:)(v8);

  sub_1CA2C0A74(v8);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  v3 = WFUserVisibleString.hash.getter();

  return v3;
}

@end