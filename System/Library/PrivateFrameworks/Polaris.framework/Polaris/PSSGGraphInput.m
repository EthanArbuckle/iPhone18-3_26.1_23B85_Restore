@interface PSSGGraphInput
- (BOOL)isEqual:(id)a3;
- (PSSGGraphInput)init;
- (PSSGGraphInput)initWithResource:(id)a3 type:(int64_t)a4;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)setResource:(id)a3;
@end

@implementation PSSGGraphInput

- (void)setResource:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PSSGGraphInput_resource);
  *(&self->super.isa + OBJC_IVAR___PSSGGraphInput_resource) = a3;
  v3 = a3;
}

- (PSSGGraphInput)initWithResource:(id)a3 type:(int64_t)a4
{
  *(&self->super.isa + OBJC_IVAR___PSSGGraphInput_resource) = a3;
  *(&self->super.isa + OBJC_IVAR___PSSGGraphInput_type) = a4;
  v6.receiver = self;
  v6.super_class = PSSGGraphInput;
  v4 = a3;
  return [(PSSGGraphInput *)&v6 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_25EB6E548();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = PSSGGraphInput.isEqual(_:)(v8);

  sub_25EB0D660(v8, &qword_27FD12030, &qword_25EB78E40);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  v3 = [(PSSGGraphInput *)v2 resource];
  v4 = [(PSSGResourceID *)v3 hash];

  v5 = [(PSSGGraphInput *)v2 type];
  return v5 ^ v4;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  v4 = [(PSSGGraphInput *)v3 resource];
  v5 = [objc_allocWithZone(PSSGGraphInput) initWithResource:v4 type:{-[PSSGGraphInput type](v3, sel_type)}];

  return v5;
}

- (PSSGGraphInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end