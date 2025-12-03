@interface SharedTranslations
- (NSOperationQueue)presentedItemOperationQueue;
- (NSURL)presentedItemURL;
- (_TtC13TranslationUI18SharedTranslations)init;
- (void)dealloc;
- (void)presentedItemDidChange;
- (void)setPresentedItemOperationQueue:(id)queue;
- (void)setPresentedItemURL:(id)l;
@end

@implementation SharedTranslations

- (NSOperationQueue)presentedItemOperationQueue
{
  v3 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPresentedItemOperationQueue:(id)queue
{
  v5 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemOperationQueue;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = queue;
  queueCopy = queue;
}

- (NSURL)presentedItemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  sub_26F42ECE8(self + v7, v6);
  v8 = sub_26F49D878();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_26F49D828();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setPresentedItemURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  if (l)
  {
    sub_26F49D848();
    v9 = sub_26F49D878();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_26F49D878();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC13TranslationUI18SharedTranslations_presentedItemURL;
  swift_beginAccess();
  selfCopy = self;
  sub_26F42EEF8(v8, self + v11);
  swift_endAccess();
}

- (void)dealloc
{
  selfCopy = self;
  sub_26F4301E8();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for SharedTranslations(0);
  [(SharedTranslations *)&v3 dealloc];
}

- (void)presentedItemDidChange
{
  selfCopy = self;
  sub_26F4337F0();
}

- (_TtC13TranslationUI18SharedTranslations)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end