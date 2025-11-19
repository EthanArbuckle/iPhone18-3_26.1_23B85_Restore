@interface MemoryUsage
+ (_TtC9SEService11MemoryUsage)empty;
- (_TtC9SEService11MemoryUsage)init;
- (_TtC9SEService11MemoryUsage)initWithCoder:(id)a3;
- (_TtC9SEService11MemoryUsage)initWithPHeap:(int64_t)a3 cor:(int64_t)a4 cod:(int64_t)a5 usedIndices:(int64_t)a6;
- (int64_t)cod;
- (int64_t)cor;
- (int64_t)pHeap;
- (int64_t)usedIndices;
- (void)encodeWithCoder:(id)a3;
- (void)setCod:(int64_t)a3;
- (void)setCor:(int64_t)a3;
- (void)setPHeap:(int64_t)a3;
- (void)setUsedIndices:(int64_t)a3;
@end

@implementation MemoryUsage

- (_TtC9SEService11MemoryUsage)initWithPHeap:(int64_t)a3 cor:(int64_t)a4 cod:(int64_t)a5 usedIndices:(int64_t)a6
{
  *(&self->super.isa + OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC9SEService11MemoryUsage_cor) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC9SEService11MemoryUsage_cod) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices) = a6;
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

- (void)setPHeap:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)cor
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCor:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)cod
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCod:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)usedIndices
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUsedIndices:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C7C5BBE4(v4);
}

- (_TtC9SEService11MemoryUsage)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1C7C5CCBC(v3);

  return v4;
}

- (_TtC9SEService11MemoryUsage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end