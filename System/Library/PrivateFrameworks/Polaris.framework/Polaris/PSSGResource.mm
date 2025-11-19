@interface PSSGResource
- (PSSGResource)init;
- (PSSGResource)initWithProducer:(id)a3 consumers:(id)a4;
- (id)copyWithZone:(void *)a3;
- (void)setProducer:(id)a3;
@end

@implementation PSSGResource

- (void)setProducer:(id)a3
{
  v4 = *(self + OBJC_IVAR___PSSGResource_producer);
  *(self + OBJC_IVAR___PSSGResource_producer) = a3;
  v3 = a3;
}

- (PSSGResource)initWithProducer:(id)a3 consumers:(id)a4
{
  if (!a4)
  {
    v9 = OBJC_IVAR___PSSGResource_producer;
    *(self + OBJC_IVAR___PSSGResource_producer) = 0;
    v8 = (self + OBJC_IVAR___PSSGResource_consumers);
    *(self + OBJC_IVAR___PSSGResource_consumers) = MEMORY[0x277D84FA0];
    *(self + v9) = a3;
LABEL_5:
    v6 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  v6 = sub_25EB6E438();
  v7 = OBJC_IVAR___PSSGResource_producer;
  *(self + OBJC_IVAR___PSSGResource_producer) = 0;
  v8 = (self + OBJC_IVAR___PSSGResource_consumers);
  *(self + OBJC_IVAR___PSSGResource_consumers) = MEMORY[0x277D84FA0];
  *(self + v7) = a3;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  *v8 = v6;
  v12.receiver = self;
  v12.super_class = PSSGResource;
  v10 = a3;
  return [(PSSGResource *)&v12 init];
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  v4 = [(PSSGResource *)v3 producer];
  v5 = [(PSSGResource *)v3 consumers];
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  sub_25EB6E438();

  v6 = objc_allocWithZone(PSSGResource);
  v7 = sub_25EB6E428();

  v8 = [v6 initWithProducer:v4 consumers:v7];

  return v8;
}

- (PSSGResource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end