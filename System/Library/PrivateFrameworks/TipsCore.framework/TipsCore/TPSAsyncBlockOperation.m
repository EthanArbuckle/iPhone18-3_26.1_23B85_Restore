@interface TPSAsyncBlockOperation
- (TPSAsyncBlockOperation)init;
- (TPSAsyncBlockOperation)initWithAsyncBlock:(id)a3;
- (id)asyncBlock;
- (void)main;
- (void)setAsyncBlock:(id)a3;
@end

@implementation TPSAsyncBlockOperation

- (id)asyncBlock
{
  v2 = (self + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  aBlock[4] = v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C010D9B0;
  aBlock[3] = &block_descriptor_14;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (void)setAsyncBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_1C010E32C;
  v6[1] = v5;
}

- (TPSAsyncBlockOperation)initWithAsyncBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock);
  *v6 = sub_1C010E28C;
  v6[1] = v5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TPSAsyncBlockOperation();
  return [(TPSAsyncOperation *)&v8 init];
}

- (void)main
{
  v3 = self + OBJC_IVAR___TPSAsyncBlockOperation_asyncBlock;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 1);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = self;

  v5(sub_1C010E334, v6);
}

- (TPSAsyncBlockOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end