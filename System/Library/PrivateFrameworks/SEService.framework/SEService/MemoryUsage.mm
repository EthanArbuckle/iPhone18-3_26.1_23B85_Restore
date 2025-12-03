@interface MemoryUsage
+ (_TtC9SEService11MemoryUsage)empty;
- (_TtC9SEService11MemoryUsage)init;
- (_TtC9SEService11MemoryUsage)initWithCoder:(id)coder;
- (_TtC9SEService11MemoryUsage)initWithPHeap:(int64_t)heap cor:(int64_t)cor cod:(int64_t)cod usedIndices:(int64_t)indices;
- (int64_t)cod;
- (int64_t)cor;
- (int64_t)pHeap;
- (int64_t)usedIndices;
- (void)encodeWithCoder:(id)coder;
- (void)setCod:(int64_t)cod;
- (void)setCor:(int64_t)cor;
- (void)setPHeap:(int64_t)heap;
- (void)setUsedIndices:(int64_t)indices;
@end

@implementation MemoryUsage

- (_TtC9SEService11MemoryUsage)initWithPHeap:(int64_t)heap cor:(int64_t)cor cod:(int64_t)cod usedIndices:(int64_t)indices
{
  *(&self->super.isa + OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap) = heap;
  *(&self->super.isa + OBJC_IVAR____TtC9SEService11MemoryUsage_cor) = cor;
  *(&self->super.isa + OBJC_IVAR____TtC9SEService11MemoryUsage_cod) = cod;
  *(&self->super.isa + OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices) = indices;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MemoryUsage();
  return [(MemoryUsage *)&v7 init];
}

+ (_TtC9SEService11MemoryUsage)empty
{
  v2 = type metadata accessor for MemoryUsage();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = 0;
  *&v3[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = 0;
  *&v3[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = 0;
  *&v3[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

- (int64_t)pHeap
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPHeap:(int64_t)heap
{
  v5 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  *(&self->super.isa + v5) = heap;
}

- (int64_t)cor
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCor:(int64_t)cor
{
  v5 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  *(&self->super.isa + v5) = cor;
}

- (int64_t)cod
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCod:(int64_t)cod
{
  v5 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  *(&self->super.isa + v5) = cod;
}

- (int64_t)usedIndices
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUsedIndices:(int64_t)indices
{
  v5 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  swift_beginAccess();
  *(&self->super.isa + v5) = indices;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C7C5BBE4(coderCopy);
}

- (_TtC9SEService11MemoryUsage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1C7C5CCBC(coderCopy);

  return v4;
}

- (_TtC9SEService11MemoryUsage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end