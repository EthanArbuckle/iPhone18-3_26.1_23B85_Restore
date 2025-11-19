@interface RTTLiveCaptionObjC
- (RTTLiveCaptionObjC)init;
- (RTTLiveCaptionObjC)initWithRootObject:(id)a3;
- (id)text;
- (int64_t)resultType;
@end

@implementation RTTLiveCaptionObjC

- (RTTLiveCaptionObjC)initWithRootObject:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___RTTLiveCaptionObjC_rootObject) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RTTLiveCaptionObjC();
  v4 = a3;
  return [(RTTLiveCaptionObjC *)&v6 init];
}

- (id)text
{
  v2 = *(&self->super.isa + OBJC_IVAR___RTTLiveCaptionObjC_rootObject);
  v3 = self;
  sub_26177D4B0();

  v4 = sub_26177D530();

  return v4;
}

- (int64_t)resultType
{
  v2 = *(&self->super.isa + OBJC_IVAR___RTTLiveCaptionObjC_rootObject);
  v3 = self;
  sub_26177D4A0();
  v4 = sub_26177D500();

  return v4;
}

- (RTTLiveCaptionObjC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end