@interface TTRReminderCopyPasteItem
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (_TtC15RemindersUICore24TTRReminderCopyPasteItem)init;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTRReminderCopyPasteItem

- (_TtC15RemindersUICore24TTRReminderCopyPasteItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TTRReminderCopyPasteItem.encode(with:)(coderCopy);
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  _Block_copy(v5);
  selfCopy = self;
  v7 = sub_21D7F8E30(selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  v8 = sub_21DBF551C();
  v10 = v9;

  swift_getObjCClassMetadata();
  v11 = sub_21D7F8F98();
  sub_21D17B8A8(v8, v10);

  return v11;
}

@end