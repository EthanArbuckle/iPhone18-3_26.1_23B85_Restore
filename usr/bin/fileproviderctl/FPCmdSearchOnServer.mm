@interface FPCmdSearchOnServer
+ (void)cmdSearchOnServerWithArgc:(int)argc argv:(const char *)argv completionHandler:(id)handler;
- (FPCmdSearchOnServer)init;
@end

@implementation FPCmdSearchOnServer

+ (void)cmdSearchOnServerWithArgc:(int)argc argv:(const char *)argv completionHandler:(id)handler
{
  v9 = (*(*(sub_10000EFA0(&qword_1000213D8, &qword_100014C00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = argc;
  *(v13 + 24) = argv;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100014C10;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100014C20;
  v16[5] = v15;
  sub_10000F978(0, 0, v11, &unk_100014C30, v16);
}

- (FPCmdSearchOnServer)init
{
  v3.receiver = self;
  v3.super_class = FPCmdSearchOnServer;
  return [(FPCmdSearchOnServer *)&v3 init];
}

@end