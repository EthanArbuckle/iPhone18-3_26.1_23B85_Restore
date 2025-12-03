@interface PSSGResource
- (PSSGResource)init;
- (PSSGResource)initWithProducer:(id)producer consumers:(id)consumers;
- (id)copyWithZone:(void *)zone;
- (void)setProducer:(id)producer;
@end

@implementation PSSGResource

- (void)setProducer:(id)producer
{
  v4 = *(self + OBJC_IVAR___PSSGResource_producer);
  *(self + OBJC_IVAR___PSSGResource_producer) = producer;
  producerCopy = producer;
}

- (PSSGResource)initWithProducer:(id)producer consumers:(id)consumers
{
  if (!consumers)
  {
    v9 = OBJC_IVAR___PSSGResource_producer;
    *(self + OBJC_IVAR___PSSGResource_producer) = 0;
    v8 = (self + OBJC_IVAR___PSSGResource_consumers);
    *(self + OBJC_IVAR___PSSGResource_consumers) = MEMORY[0x277D84FA0];
    *(self + v9) = producer;
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
  *(self + v7) = producer;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  *v8 = v6;
  v12.receiver = self;
  v12.super_class = PSSGResource;
  producerCopy = producer;
  return [(PSSGResource *)&v12 init];
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  producer = [(PSSGResource *)selfCopy producer];
  consumers = [(PSSGResource *)selfCopy consumers];
  type metadata accessor for PSSGGraphID(0);
  sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID);
  sub_25EB6E438();

  v6 = objc_allocWithZone(PSSGResource);
  v7 = sub_25EB6E428();

  v8 = [v6 initWithProducer:producer consumers:v7];

  return v8;
}

- (PSSGResource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end