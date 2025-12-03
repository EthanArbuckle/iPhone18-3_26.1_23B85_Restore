@interface RTTLiveCaptionObjC
- (RTTLiveCaptionObjC)init;
- (RTTLiveCaptionObjC)initWithRootObject:(id)object;
- (id)text;
- (int64_t)resultType;
@end

@implementation RTTLiveCaptionObjC

- (RTTLiveCaptionObjC)initWithRootObject:(id)object
{
  *(&self->super.isa + OBJC_IVAR___RTTLiveCaptionObjC_rootObject) = object;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RTTLiveCaptionObjC();
  objectCopy = object;
  return [(RTTLiveCaptionObjC *)&v6 init];
}

- (id)text
{
  v2 = *(&self->super.isa + OBJC_IVAR___RTTLiveCaptionObjC_rootObject);
  selfCopy = self;
  sub_26177D4B0();

  v4 = sub_26177D530();

  return v4;
}

- (int64_t)resultType
{
  v2 = *(&self->super.isa + OBJC_IVAR___RTTLiveCaptionObjC_rootObject);
  selfCopy = self;
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