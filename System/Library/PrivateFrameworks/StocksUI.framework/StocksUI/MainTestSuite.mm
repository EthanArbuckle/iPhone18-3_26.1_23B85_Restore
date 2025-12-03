@interface MainTestSuite
- (_TtC8StocksUI13MainTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation MainTestSuite

- (_TtC8StocksUI13MainTestSuite)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SNTestSuite *)&v3 init];
}

- (void)setupTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_22087800C(contextCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end