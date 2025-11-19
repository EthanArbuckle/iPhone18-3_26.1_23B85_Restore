@interface DeviceActivityCollector
+ (void)collectLocalActivityWithOptions:(int64_t)a3 shouldSync:(BOOL)a4 completionHandler:(id)a5;
+ (void)deleteLocalActivityWithCompletionHandler:(id)a3;
@end

@implementation DeviceActivityCollector

+ (void)collectLocalActivityWithOptions:(int64_t)a3 shouldSync:(BOOL)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
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
  sub_10002355C(a3, a4, v7, v8);

  sub_100029B58(v7);
}

+ (void)deleteLocalActivityWithCompletionHandler:(id)a3
{
  v3 = _Block_copy(a3);
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