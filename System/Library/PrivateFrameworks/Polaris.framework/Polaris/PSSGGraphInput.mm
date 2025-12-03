@interface PSSGGraphInput
- (BOOL)isEqual:(id)equal;
- (PSSGGraphInput)init;
- (PSSGGraphInput)initWithResource:(id)resource type:(int64_t)type;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)setResource:(id)resource;
@end

@implementation PSSGGraphInput

- (void)setResource:(id)resource
{
  v4 = *(&self->super.isa + OBJC_IVAR___PSSGGraphInput_resource);
  *(&self->super.isa + OBJC_IVAR___PSSGGraphInput_resource) = resource;
  resourceCopy = resource;
}

- (PSSGGraphInput)initWithResource:(id)resource type:(int64_t)type
{
  *(&self->super.isa + OBJC_IVAR___PSSGGraphInput_resource) = resource;
  *(&self->super.isa + OBJC_IVAR___PSSGGraphInput_type) = type;
  v6.receiver = self;
  v6.super_class = PSSGGraphInput;
  resourceCopy = resource;
  return [(PSSGGraphInput *)&v6 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_25EB6E548();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = PSSGGraphInput.isEqual(_:)(v8);

  sub_25EB0D660(v8, &qword_27FD12030, &qword_25EB78E40);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  resource = [(PSSGGraphInput *)selfCopy resource];
  v4 = [(PSSGResourceID *)resource hash];

  type = [(PSSGGraphInput *)selfCopy type];
  return type ^ v4;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  resource = [(PSSGGraphInput *)selfCopy resource];
  v5 = [objc_allocWithZone(PSSGGraphInput) initWithResource:resource type:{-[PSSGGraphInput type](selfCopy, sel_type)}];

  return v5;
}

- (PSSGGraphInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end