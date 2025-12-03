@interface IMCoreInterface
+ (id)checkWithWait:(id)wait service:(id)service;
+ (id)logHandle;
+ (void)checkAndClear:(id)clear service:(id)service;
+ (void)clearUnreadFor:(id)for andPhone:(id)phone;
- (IMCoreInterface)init;
- (void)grabUnreadFor:(id)for completionHandler:(id)handler;
@end

@implementation IMCoreInterface

+ (id)logHandle
{
  if (qword_100064048[0] != -1)
  {
    sub_10004B2F8();
  }

  v3 = qword_100064040;

  return v3;
}

+ (void)checkAndClear:(id)clear service:(id)service
{
  serviceCopy = service;
  serviceCopy2 = service;
  clearCopy = clear;
  v7 = [NSArray arrayWithObjects:&serviceCopy count:1];
  v11 = clearCopy;
  v8 = [NSArray arrayWithObjects:&v11 count:1];

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.people.checkAndClear", v9);
  IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS();
}

+ (void)clearUnreadFor:(id)for andPhone:(id)phone
{
  forCopy = for;
  phoneCopy = phone;
  if (forCopy && [forCopy length])
  {
    [IMCoreInterface checkAndClear:forCopy service:IMSPIiMessageService];
  }

  if (phoneCopy && [phoneCopy length])
  {
    [IMCoreInterface checkAndClear:phoneCopy service:IMSPIiMessageService];
    [IMCoreInterface checkAndClear:phoneCopy service:IMSPISMSService];
  }
}

+ (id)checkWithWait:(id)wait service:(id)service
{
  waitCopy = wait;
  serviceCopy = service;
  v7 = [AAFPromise alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000026BC;
  v12[3] = &unk_10005D8E8;
  v13 = serviceCopy;
  v14 = waitCopy;
  v8 = waitCopy;
  v9 = serviceCopy;
  v10 = [v7 initWithBlock:v12];

  return v10;
}

- (IMCoreInterface)init
{
  v3.receiver = self;
  v3.super_class = IMCoreInterface;
  return [(IMCoreInterface *)&v3 init];
}

- (void)grabUnreadFor:(id)for completionHandler:(id)handler
{
  forCopy = for;
  handlerCopy = handler;
  v6 = [[AAFPromise alloc] initWithValue:&__NSArray0__struct];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = forCopy;
  v23 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v23)
  {
    v22 = *v35;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v7);
        then = [v8 then];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100002DB8;
        v33[3] = &unk_10005D910;
        v33[4] = v9;
        v26 = then;
        v25 = (*(then + 16))(then, v33);
        then2 = [v25 then];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100002EC8;
        v32[3] = &unk_10005D910;
        v32[4] = v9;
        v24 = (then2)[2](then2, v32);
        then3 = [v24 then];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100002FD8;
        v31[3] = &unk_10005D910;
        v31[4] = v9;
        v13 = (then3)[2](then3, v31);
        then4 = [v13 then];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1000030E4;
        v30[3] = &unk_10005D910;
        v30[4] = v9;
        v15 = (then4)[2](then4, v30);
        then5 = [v15 then];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1000031F0;
        v29[3] = &unk_10005D910;
        v29[4] = v9;
        v6 = (then5)[2](then5, v29);

        v7 = v7 + 1;
        v8 = v6;
      }

      while (v23 != v7);
      v23 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v23);
  }

  then6 = [v6 then];
  v18 = (then6)[2](then6, &stru_10005D950);

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000351C;
  v27[3] = &unk_10005D9A0;
  v28 = handlerCopy;
  v19 = handlerCopy;
  [v18 onComplete:v27];
}

@end