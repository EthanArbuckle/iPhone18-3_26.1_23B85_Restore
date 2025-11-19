@interface URLWatcher.Presenter
- (NSOperationQueue)presentedItemOperationQueue;
- (NSURL)presentedItemURL;
- (_TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter)init;
- (void)presentedItemDidChange;
@end

@implementation URLWatcher.Presenter

- (NSURL)presentedItemURL
{
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_url, v3, v6);
  v9 = sub_1AFDFC048();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (NSOperationQueue)presentedItemOperationQueue
{
  v2 = [objc_opt_self() mainQueue];

  return v2;
}

- (void)presentedItemDidChange
{
  v2 = self;
  sub_1AF75114C();
}

- (_TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end