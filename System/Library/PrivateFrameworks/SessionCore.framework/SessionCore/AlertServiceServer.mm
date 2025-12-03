@interface AlertServiceServer
- (_TtC11SessionCore18AlertServiceServer)init;
- (void)dismissAlertWithActivityIdentifier:(id)identifier;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)presentAlertWithActivityIdentifier:(id)identifier payload:(id)payload options:(id)options completion:(id)completion;
@end

@implementation AlertServiceServer

- (void)presentAlertWithActivityIdentifier:(id)identifier payload:(id)payload options:(id)options completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_22D01667C();
  v12 = v11;
  payloadCopy = payload;
  optionsCopy = options;
  selfCopy = self;
  v16 = sub_22D0141EC();
  v18 = v17;

  v19 = sub_22D0141EC();
  v21 = v20;

  _Block_copy(v9);
  sub_22CF34DA4(v10, v12, v16, v18, v19, v21, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
  sub_22CEE7524(v19, v21);
  sub_22CEE7524(v16, v18);
}

- (void)dismissAlertWithActivityIdentifier:(id)identifier
{
  v4 = sub_22D01667C();
  v6 = v5;
  selfCopy = self;
  sub_22CF3CB30(v4, v6);
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22CFAAA18(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore18AlertServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end