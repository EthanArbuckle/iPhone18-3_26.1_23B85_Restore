@interface DeviceActivityCollector
+ (void)collectLocalActivityWithOptions:(int64_t)options shouldSync:(BOOL)sync completionHandler:(id)handler;
+ (void)deleteLocalActivityWithCompletionHandler:(id)handler;
@end

@implementation DeviceActivityCollector

+ (void)collectLocalActivityWithOptions:(int64_t)options shouldSync:(BOOL)sync completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_10002C9E0;
  }

  else
  {
    v8 = 0;
  }

  swift_getObjCClassMetadata();
  sub_10002355C(options, sync, v7, v8);

  sub_100029B58(v7);
}

+ (void)deleteLocalActivityWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = sub_100029BA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  swift_getObjCClassMetadata();
  sub_1000239D4(v6, v5);

  sub_100029B58(v6);
}

@end