@interface UNCOneTimeCodeManager
+ (id)sharedInstance;
- (UNCOneTimeCodeManager)init;
- (void)foundCode:(id)code displayCode:(id)displayCode application:(id)application notification:(id)notification timestamp:(id)timestamp;
- (void)setListener:(id)listener;
@end

@implementation UNCOneTimeCodeManager

- (void)setListener:(id)listener
{
  v4 = *(&self->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener);
  *(&self->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener) = listener;
  listenerCopy = listener;
}

+ (id)sharedInstance
{
  if (qword_1EE110BF0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE110BF8;

  return v3;
}

- (UNCOneTimeCodeManager)init
{
  v3 = [objc_allocWithZone(UNCOneTimeCodeServiceListener) init];
  *(&self->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener) = v3;
  v6.receiver = self;
  v6.super_class = UNCOneTimeCodeManager;
  v4 = [(UNCOneTimeCodeManager *)&v6 init];
  [*(&v4->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener) activate];
  return v4;
}

- (void)foundCode:(id)code displayCode:(id)displayCode application:(id)application notification:(id)notification timestamp:(id)timestamp
{
  v13[1] = timestamp;
  v8 = sub_1DA93FAF4();
  v14 = *(v8 - 8);
  v15 = v8;
  v9 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA940A14();
  sub_1DA940A14();
  sub_1DA940A14();
  sub_1DA940A14();
  sub_1DA93FAB4();
  selfCopy = self;
  UNCOneTimeCodeManager.foundCode(_:displayCode:application:notification:timestamp:)();

  (*(v14 + 8))(v11, v15);
}

@end