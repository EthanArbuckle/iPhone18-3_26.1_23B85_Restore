@interface TTRReminderCopyPasteItem
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (_TtC15RemindersUICore24TTRReminderCopyPasteItem)init;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TTRReminderCopyPasteItem

- (_TtC15RemindersUICore24TTRReminderCopyPasteItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TTRReminderCopyPasteItem.encode(with:)(v4);
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = self;
  v7 = sub_21D7F8E30(v6, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_21DBF551C();
  v10 = v9;

  swift_getObjCClassMetadata();
  v11 = sub_21D7F8F98();
  sub_21D17B8A8(v8, v10);

  return v11;
}

@end