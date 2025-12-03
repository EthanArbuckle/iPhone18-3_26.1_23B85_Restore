@interface PrivateDataActionProvider
- (_TtC10StocksCoreP33_8188EFB552A1879D25D8FDAD94CCB0E125PrivateDataActionProvider)init;
- (void)consumeNonDestructiveActionsSyncWithBlock:(id)block;
@end

@implementation PrivateDataActionProvider

- (_TtC10StocksCoreP33_8188EFB552A1879D25D8FDAD94CCB0E125PrivateDataActionProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PrivateDataActionProvider *)&v3 init];
}

- (void)consumeNonDestructiveActionsSyncWithBlock:(id)block
{
  v3 = _Block_copy(block);
  if (v3)
  {
    v4 = v3;
    _Block_copy(v3);
    v5 = sub_1DACB9634();
    v7[4] = nullsub_1;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1DAA5796C;
    v7[3] = &block_descriptor_29;
    v6 = _Block_copy(v7);

    (v4)[2](v4, v5, v6);
    _Block_release(v6);

    _Block_release(v4);
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

@end