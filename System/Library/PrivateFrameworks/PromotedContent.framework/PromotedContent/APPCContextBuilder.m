@interface APPCContextBuilder
- (APPCContext)context;
- (APPCContextBuilder)init;
- (APPCContextBuilder)initWithMaxSize:(CGSize)a3 current:(id)a4 newsContext:(id)a5 requestedAd:(id)a6;
- (APPCContextBuilder)initWithMaxSize:(CGSize)a3 current:(id)a4 next:(id)a5 newsContext:(id)a6 requestedAd:(id)a7;
- (APPCPromotableContentDepiction)current;
- (BOOL)addAdjacentWithAdjacent:(id)a3 error:(id *)a4;
- (CGSize)maxSize;
- (NSArray)adjacent;
- (NSArray)next;
- (NSString)requestedAd;
- (NSUUID)identifier;
- (_TtC15PromotedContent23NewsSupplementalContext)newsContext;
- (void)removeAdjacentWithAdjacent:(id)a3;
- (void)setCurrent:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setMaxSize:(CGSize)a3;
- (void)setNewsContext:(id)a3;
- (void)setNext:(id)a3;
- (void)setRequestedAd:(id)a3;
@end

@implementation APPCContextBuilder

- (NSUUID)identifier
{
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = sub_1C1B945B8();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setIdentifier:(id)a3
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B945D8();
  v9 = OBJC_IVAR___APPCContextBuilder_identifier;
  swift_beginAccess();
  v10 = *(v5 + 40);
  v11 = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (CGSize)maxSize
{
  v2 = (self + OBJC_IVAR___APPCContextBuilder_maxSize);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setMaxSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR___APPCContextBuilder_maxSize);
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (APPCPromotableContentDepiction)current
{
  v3 = OBJC_IVAR___APPCContextBuilder_current;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setCurrent:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C1AF6EF4(a3);
}

- (NSArray)next
{
  v3 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  v4 = *(self + v3);

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v5 = sub_1C1B94EB8();

  return v5;
}

- (void)setNext:(id)a3
{
  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v4 = sub_1C1B94EC8();
  v5 = OBJC_IVAR___APPCContextBuilder_next;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSArray)adjacent
{
  v3 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  v4 = *(self + OBJC_IVAR___APPCContextBuilder_resourceLock);
  v5 = self;
  [v4 lock];
  v6 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = *(self + v3);

  [v8 unlock];

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v9 = sub_1C1B94EB8();

  return v9;
}

- (NSString)requestedAd
{
  v2 = (self + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_1C1B94D78();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRequestedAd:(id)a3
{
  if (a3)
  {
    v4 = sub_1C1B94D88();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___APPCContextBuilder_requestedAd);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC15PromotedContent23NewsSupplementalContext)newsContext
{
  v3 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNewsContext:(id)a3
{
  v5 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (APPCContext)context
{
  v2 = self;
  v3 = sub_1C1AA47BC();

  return v3;
}

- (APPCContextBuilder)initWithMaxSize:(CGSize)a3 current:(id)a4 next:(id)a5 newsContext:(id)a6 requestedAd:(id)a7
{
  height = a3.height;
  width = a3.width;
  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v12 = sub_1C1B94EC8();
  if (a7)
  {
    a7 = sub_1C1B94D88();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  swift_unknownObjectRetain();
  v15 = a6;
  v16 = sub_1C1AF8784(a4, v12, a6, a7, v14, width, height);
  swift_unknownObjectRelease();

  return v16;
}

- (APPCContextBuilder)initWithMaxSize:(CGSize)a3 current:(id)a4 newsContext:(id)a5 requestedAd:(id)a6
{
  height = a3.height;
  width = a3.width;
  if (a6)
  {
    v10 = sub_1C1B94D88();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_unknownObjectRetain();
  v13 = a5;
  v14 = sub_1C1AA426C(a4, a5, v10, v12, width, height);
  swift_unknownObjectRelease();

  return v14;
}

- (BOOL)addAdjacentWithAdjacent:(id)a3 error:(id *)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_1C1AF7E8C(a3);

  swift_unknownObjectRelease();
  return 1;
}

- (void)removeAdjacentWithAdjacent:(id)a3
{
  v5 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  v6 = *(self + OBJC_IVAR___APPCContextBuilder_resourceLock);
  swift_unknownObjectRetain();
  v7 = self;
  [v6 lock];
  v8 = OBJC_IVAR___APPCContextBuilder_adjacentInternal;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v9 = sub_1C1AF895C((v7 + v8), a3);
  swift_unknownObjectRelease();
  v10 = *(v7 + v8);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v12 = *(v7 + v8);
    }

    v11 = sub_1C1B953A8();
    if (v11 >= v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v9)
    {
LABEL_3:
      sub_1C1AF8D8C(v9, v11);
      swift_endAccess();
      [*(self + v5) unlock];

      swift_unknownObjectRelease();
      return;
    }
  }

  __break(1u);
}

- (APPCContextBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end