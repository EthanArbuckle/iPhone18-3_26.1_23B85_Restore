@interface UNCOneTimeCodeManager
+ (id)sharedInstance;
- (UNCOneTimeCodeManager)init;
- (void)foundCode:(id)a3 displayCode:(id)a4 application:(id)a5 notification:(id)a6 timestamp:(id)a7;
- (void)setListener:(id)a3;
@end

@implementation UNCOneTimeCodeManager

- (void)setListener:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener);
  *(&self->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener) = a3;
  v3 = a3;
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

- (void)foundCode:(id)a3 displayCode:(id)a4 application:(id)a5 notification:(id)a6 timestamp:(id)a7
{
  v13[1] = a7;
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
  v12 = self;
  UNCOneTimeCodeManager.foundCode(_:displayCode:application:notification:timestamp:)();

  (*(v14 + 8))(v11, v15);
}

@end