void sub_100002824(uint64_t a1)
{
  v2 = [*(a1 + 32) recordDictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (!v3)
  {
    v4 = [*(a1 + 32) recordDictionary];
    v5 = objc_alloc_init(NSMutableDictionary);
    [v4 setValue:v5 forKey:*(a1 + 40)];
  }

  if ([*(a1 + 48) isEqual:&stru_100019088])
  {
    v6 = PTLogObjectForTopic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "keyPath is an empty string.", buf, 2u);
    }
  }

  else
  {
    v18 = [*(a1 + 48) componentsSeparatedByString:@"."];
    v7 = [*(a1 + 32) recordDictionary];
    v8 = [v7 objectForKey:*(a1 + 40)];

    if ([v18 count] == 1)
    {
      v9 = v8;
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = [v18 objectAtIndexedSubscript:v10];
        v12 = [v8 objectForKey:v11];

        if (!v12)
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = [v18 objectAtIndexedSubscript:v10];
          [v8 setValue:v13 forKey:v14];
        }

        v15 = [v18 objectAtIndexedSubscript:v10];
        v9 = [v8 objectForKey:v15];

        ++v10;
        v8 = v9;
      }

      while ([v18 count] - 1 > v10);
    }

    v16 = [[PTParameterRecordLeaf alloc] initWithRecordClassName:*(a1 + 56) value:*(a1 + 64)];
    v17 = [v18 lastObject];
    [v9 setValue:v16 forKey:v17];
  }
}

void sub_100002B78(uint64_t a1)
{
  v2 = [*(a1 + 32) recordDictionary];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    v21 = [*(a1 + 48) componentsSeparatedByString:@"."];
    v4 = objc_alloc_init(NSArray);
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [*(a1 + 32) recordDictionary];
    v7 = [v6 objectForKey:*(a1 + 40)];

    [v5 addObject:*(a1 + 40)];
    if ([v21 count])
    {
      v8 = 0;
      v9 = v21;
      while (1)
      {
        v10 = [v9 objectAtIndexedSubscript:v8];
        v11 = [v7 objectForKey:v10];

        if (!v11)
        {
          break;
        }

        v12 = [v7 allKeys];
        v13 = [v12 count];

        if (v13 >= 2)
        {
          v14 = [v5 copy];

          v4 = v14;
        }

        v15 = [v21 objectAtIndexedSubscript:v8];
        [v5 addObject:v15];

        ++v8;
        v7 = v11;
        v16 = [v21 count] > v8;
        v9 = v21;
        if (!v16)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v11 = v7;
LABEL_11:
      v17 = [*(a1 + 32) recordDictionary];

      if ([v4 count])
      {
        v18 = 0;
        do
        {
          v19 = [v4 objectAtIndexedSubscript:v18];
          v7 = [v17 objectForKey:v19];

          ++v18;
          v17 = v7;
        }

        while ([v4 count] > v18);
      }

      else
      {
        v7 = v17;
      }

      v20 = [v5 objectAtIndex:{objc_msgSend(v4, "count")}];
      [v7 removeObjectForKey:v20];
    }
  }
}

void sub_100002E0C(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v4 = NSFileProtectionKey;
  v5 = NSFileProtectionNone;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 setAttributes:v3 ofItemAtPath:v1 error:0];
}

id sub_100002EE4()
{
  v0 = NSHomeDirectoryForUser(@"mobile");
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = NSHomeDirectory();
  }

  v3 = v2;

  return v3;
}

id sub_100002F44()
{
  if (qword_10001FA20 != -1)
  {
    sub_10000B804();
  }

  v1 = qword_10001FA18;

  return v1;
}

void sub_100002F88(id a1)
{
  v1 = sub_100002EE4();
  v2 = [v1 stringByAppendingPathComponent:@"Library/Prototyping"];
  v3 = qword_10001FA18;
  qword_10001FA18 = v2;

  v4 = +[NSFileManager defaultManager];
  v5 = qword_10001FA18;
  v7 = NSFileOwnerAccountName;
  v8 = @"mobile";
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v6 error:0];

  sub_100002E0C(qword_10001FA18);
}

id sub_100003088()
{
  v0 = sub_100002F44();
  v1 = [v0 stringByAppendingPathComponent:@"ParameterRecords.archive"];

  return v1;
}

void sub_100003448(uint64_t a1)
{
  v2 = [*(a1 + 32) recordDictionary];
  v14 = 0;
  v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v14];
  v4 = v14;

  if (!v3)
  {
    goto LABEL_3;
  }

  v5 = [*(a1 + 40) path];
  v13 = v4;
  v6 = [v3 writeToFile:v5 options:1 error:&v13];
  v7 = v13;

  v4 = v7;
  if ((v6 & 1) == 0)
  {
LABEL_3:
    v8 = PTLogObjectForTopic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) path];
      v10 = [v4 localizedDescription];
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to write test recipe dictionary to file %@: %@", buf, 0x16u);
    }
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  *(v11 + 8) = 0;
}

void sub_100003678(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (v3)
  {
    [v3 invalidate];
    v2 = *(a1 + 32);
  }

  objc_initWeak(&location, v2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003784;
  v7[3] = &unk_100018908;
  objc_copyWeak(&v9, &location);
  v8 = *(a1 + 40);
  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:0.25];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_100003768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100003784(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _writeToDiskWithParameterRecords:*(a1 + 32)];
}

void sub_100003CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

PTUIModifiedChangesViewController *sub_100003D20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained parameterRecordsOfTunedSettings];
  }

  else
  {
    v4 = [PTParameterRecords alloc];
    v5 = objc_alloc_init(NSMutableDictionary);
    v3 = [(PTParameterRecords *)v4 initWithDictionary:v5];
  }

  v6 = [[PTUIModifiedChangesViewController alloc] initWithParameterRecords:v3 withTitle:@"Show Modified Settings"];

  return v6;
}

id sub_100003F38(id a1)
{
  v5 = 1056964608;
  v1 = +[AVSystemController sharedAVSystemController];
  [v1 getActiveCategoryVolume:&v5 andName:0];

  LODWORD(v2) = v5;
  v3 = [NSNumber numberWithFloat:v2];

  return v3;
}

void sub_100003FAC(id a1, id a2)
{
  [a2 floatValue];
  v3 = v2;
  v5 = +[AVSystemController sharedAVSystemController];
  LODWORD(v4) = v3;
  [v5 setActiveCategoryVolumeTo:v4];
}

void sub_10000400C(id a1, PTRow *a2)
{
  v2 = a2;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:v2];
}

void sub_10000414C(id a1)
{
  v10[0] = AVSystemController_SystemVolumeDidChangeNotification;
  v10[1] = AVSystemController_ServerConnectionDiedNotification;
  v1 = [NSArray arrayWithObjects:v10 count:2];
  v2 = +[AVSystemController sharedAVSystemController];
  v7 = 0;
  v3 = [v2 setAttribute:v1 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v7];
  v4 = v7;
  v5 = PTLogObjectForTopic();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully subscribed to all necessary AVSystemController notifications: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10000B818(v4, v6);
  }
}

void sub_100004484(uint64_t a1, uint64_t a2)
{
  if (PTPrototypingEventAvailable())
  {
    v4 = PTPrototypingEventName();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000046EC;
    v22[3] = &unk_100018A38;
    v23 = *(a1 + 32);
    v24 = a2;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100004728;
    v19[3] = &unk_100018A60;
    v20 = *(a1 + 32);
    v21 = a2;
    v5 = [PTSwitchRow rowWithTitle:v4 valueGetter:v22 valueSetter:v19];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100004768;
    v16[3] = &unk_100018A88;
    v17 = *(a1 + 32);
    v18 = a2;
    [v5 setExternalCondition:v16];
    v6 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004774;
    v14[3] = &unk_100018AB0;
    v15 = v5;
    v7 = v5;
    [v6 observeShowUISwitchDefaultsOnQueue:&_dispatch_main_q withBlock:v14];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10000477C;
    v13 = v12 = &unk_100018AD8;
    v8 = v13;
    [v7 setUnregisterBlock:&v9];
    [*(a1 + 40) addObject:{v7, v9, v10, v11, v12}];
  }
}

id sub_1000046EC(uint64_t a1)
{
  v1 = [*(a1 + 32) displayedShowsUIValueForEvent:*(a1 + 40)];

  return [NSNumber numberWithBool:v1];
}

id sub_100004728(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 setShowsUI:v3 forEvent:v5];
}

id sub_100004784(uint64_t a1)
{
  v1 = [*(a1 + 32) multiWindowEnabled];

  return [NSNumber numberWithBool:v1];
}

void sub_1000047C8(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLValue];
  v4 = [*(a1 + 32) multiWindowEnabled];
  [*(a1 + 32) setMultiWindowEnabled:v3];
  if (v3 != v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 connectedScenes];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = +[UIApplication sharedApplication];
          v13 = [v11 session];
          [v12 requestSceneSessionDestruction:v13 options:0 errorHandler:0];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = +[UIApplication sharedApplication];
    v15 = +[UISceneSessionActivationRequest request];
    [v14 activateSceneSessionForRequest:v15 errorHandler:0];
  }
}

void sub_1000050BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == *(v1 + 16))
  {
    v3 = [*(v1 + 8) didStartAcceptingConnections];
    v4 = PTLogObjectForTopic();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote editing server did start accepting connections.", buf, 2u);
      }
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remote editing server couldn't start accepting connection.", v6, 2u);
      }

      [*(a1 + 32) _disableRemoteEditingServer];
    }
  }
}

void sub_10000538C(id *a1)
{
  v2 = [a1[4] stateType];
  v3 = [a1[4] actionRevision];
  if (v2 == 2)
  {
    v4 = v3;
    v5 = a1[5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [a1[5] objectForKey:@"selector"];
      v7 = NSSelectorFromString(v6);
      v8 = a1[6];
      if (objc_opt_respondsToSelector())
      {
        v9 = [a1[5] objectForKey:@"Method"];
        v10 = [v9 isEqualToString:@"GET"];

        if (v10)
        {
          v11 = [a1[6] performSelector:v7 withObject:a1[5]];
          if (v11)
          {
            v19 = 0;
            v20 = &v19;
            v21 = 0x2050000000;
            v12 = qword_10001FA38;
            v22 = qword_10001FA38;
            if (!qword_10001FA38)
            {
              v18[0] = _NSConcreteStackBlock;
              v18[1] = 3221225472;
              v18[2] = sub_100005D28;
              v18[3] = &unk_100018BA0;
              v18[4] = &v19;
              sub_100005D28(v18);
              v12 = v20[3];
            }

            v13 = v12;
            _Block_object_dispose(&v19, 8);
            v14 = [[v12 alloc] initWithType:2 revision:v4];
            v15 = [NSMutableDictionary dictionaryWithDictionary:a1[5]];
            [v15 setObject:v11 forKey:@"responsePayload"];
            [a1[6] _broadCastState:v15 withStateInfo:v14];
          }
        }

        else
        {
          v16 = [a1[5] objectForKey:@"Method"];
          v17 = [v16 isEqualToString:@"POST"];

          if (v17 && v4 == -1)
          {
            [a1[6] performSelector:v7 withObject:a1[5]];
          }
        }
      }
    }
  }
}

void sub_1000055B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100005B60(uint64_t a1)
{
  sub_100005BB8();
  result = objc_getClass("RSPeerToPeerServerController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000B890();
  }

  qword_10001FA28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100005BB8()
{
  v1[0] = 0;
  if (!qword_10001FA30)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100005CB4;
    v1[4] = &unk_100018BD8;
    v1[5] = v1;
    v2 = off_100018BC0;
    v3 = 0;
    qword_10001FA30 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_10001FA30)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100005CB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001FA30 = result;
  return result;
}

Class sub_100005D28(uint64_t a1)
{
  sub_100005BB8();
  result = objc_getClass("RSStateInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000B8B8();
  }

  qword_10001FA38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id SceneDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100005DB8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id SceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100005F00()
{
  v0 = static CommandLine.argc.getter();
  v1 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for AppDelegate();
  v4 = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(v4);
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassNamea = String._bridgeToObjectiveC()();

    v5 = delegateClassNamea;
  }

  delegateClassName = v5;
  UIApplicationMain(v0, v1, v3, v5);
}

id sub_10000608C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene:a1];

  return v3;
}

id sub_1000060D0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Window();
  v3 = objc_msgSendSuper2(&v5, "initWithWindowScene:", a1);

  return v3;
}

id sub_100006204(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id sub_100006268(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000063AC(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_1000063F0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Window();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100006538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Window();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100006570()
{
  v1 = OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___rootModuleController;
  v2 = *(v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___rootModuleController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___rootModuleController);
LABEL_8:
    v16 = v2;
    return;
  }

  v4 = v0;
  v5 = objc_opt_self();
  v6 = [v5 sharedApplication];
  v7 = [v6 delegate];

  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  v8 = sub_100007D04();
  swift_unknownObjectRelease();
  v9 = [v5 sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_dynamicCastClassUnconditional();
  v11 = sub_100007D28();
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(PTDRootModuleController) initWithDomainServer:v8 editingServer:v11];

  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = [v5 sharedApplication];
  v14 = [v13 delegate];

  if (v14)
  {
    [v12 setDelegate:swift_dynamicCastClassUnconditional()];
    swift_unknownObjectRelease();
    v15 = *(v4 + v1);
    *(v4 + v1) = v12;
    v12;

    v2 = 0;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

id sub_100006770(uint64_t *a1, void *a2, Class *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(*a3) initWithTarget:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

Swift::Void __swiftcall SceneDelegate.sceneDidDisconnect(_:)(UIScene a1)
{
  v3 = OBJC_IVAR____TtC10prototyped13SceneDelegate_window;
  v4 = *(v1 + OBJC_IVAR____TtC10prototyped13SceneDelegate_window);
  if (v4)
  {
    v5 = [v4 windowScene];
    if (v5)
    {
      v6 = v5;

      if (v6 == a1.super.super.isa)
      {
        v7 = *(v1 + v3);
        if (v7)
        {
          v8 = [v7 rootViewController];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 view];

            if (!v10)
            {
              __break(1u);
              return;
            }

            [v10 removeFromSuperview];
          }

          v7 = *(v1 + v3);
          if (v7)
          {
            [v7 setRootViewController:0];
            v7 = *(v1 + v3);
            if (v7)
            {
              [v7 removeFromSuperview];
              v7 = *(v1 + v3);
            }
          }
        }

        *(v1 + v3) = 0;
      }
    }
  }
}

void sub_100006A1C()
{
  v1 = (v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___originalOrigin);
  if (*(v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___originalOrigin + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate_window);
    if (v2)
    {
      [v2 frame];
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    *v1 = v3;
    v1[1] = v4;
    *(v1 + 16) = 0;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
  }
}

void sub_100006A94()
{
  v1 = (v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___originalBounds);
  if (*(v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___originalBounds + 32))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate_window);
    if (v2)
    {
      [v2 bounds];
    }

    else
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
    }

    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    *(v1 + 32) = 0;
  }

  else
  {
    v7 = v1[2];
    v8 = v1[3];
    v9 = *v1;
    v10 = v1[1];
  }
}

double variable initialization expression of SceneDelegate.$__lazy_storage_$_originalBounds@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void sub_100006B28()
{
  v1 = *(v0 + OBJC_IVAR____TtC10prototyped13SceneDelegate_window);
  if (v1)
  {
    v2 = [v1 windowScene];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 session];

      if (v4)
      {
        v5 = [objc_opt_self() sharedApplication];
        [v5 requestSceneSessionDestruction:v4 options:0 errorHandler:0];
      }
    }
  }
}

void sub_100006CB4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10prototyped13SceneDelegate_window);
  if (v2)
  {
    v21 = v2;
    [v21 endEditing:1];
    v4 = [a1 state];
    if (v4 < 2)
    {
LABEL_5:
      [v21 frame];
      v6 = v5;
      v8 = v7;

      v9 = v1 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___originalOrigin;
      *v9 = v6;
      *(v9 + 8) = v8;
      *(v9 + 16) = 0;
      return;
    }

    if (v4 == 2)
    {
      [a1 translationInView:v21];
      v11 = v10;
      v13 = v12;
      [a1 setTranslation:v21 inView:{0.0, 0.0}];
      [v21 frame];
      [v21 setFrame:v11 + v14];
      [v21 frame];
      [v21 setFrame:{v16, v13 + v15}];
    }

    else
    {
      if (v4 == 3)
      {
        goto LABEL_5;
      }

      sub_100006A1C();
      v18 = v17;
      v20 = v19;
      [v21 frame];
      [v21 setFrame:{v18, v20}];
    }
  }
}

void sub_100006E54(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10prototyped13SceneDelegate_window);
  if (v2)
  {
    v4 = v2;
    v5 = [a1 state];
    if (v5 < 2)
    {
LABEL_5:
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = v1 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___originalBounds;
      *v14 = v7;
      *(v14 + 8) = v9;
      *(v14 + 16) = v11;
      *(v14 + 24) = v13;
      *(v14 + 32) = 0;
      return;
    }

    if (v5 == 2)
    {
      v15 = v4;
      sub_100006A94();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [a1 scale];
      v25 = v24;
      [a1 scale];
      CGAffineTransformMakeScale(&v28, v25, v26);
      v30.origin.x = v17;
      v30.origin.y = v19;
      v30.size.width = v21;
      v30.size.height = v23;
      v31 = CGRectApplyAffineTransform(v30, &v28);
      [v15 setBounds:{0.0, 0.0, v31.size.width, v31.size.height}];
    }

    else
    {
      if (v5 == 3)
      {
        goto LABEL_5;
      }

      v27 = v4;
      sub_100006A94();
      [v27 setBounds:?];
    }
  }
}

void sub_100007020(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

id SceneDelegate.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___originalOrigin];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  v3 = &v0[OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___originalBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  *&v0[OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___rootModuleController] = 0;
  *&v0[OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___panGesture] = 0;
  *&v0[OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___pinchGesture] = 0;
  *&v0[OBJC_IVAR____TtC10prototyped13SceneDelegate_settingsViewController] = 0;
  *&v0[OBJC_IVAR____TtC10prototyped13SceneDelegate_window] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

void _s10prototyped13SceneDelegateC5scene_13willConnectTo7optionsySo7UISceneC_So0I7SessionCSo0I17ConnectionOptionsCtF_0(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(type metadata accessor for Window());
    v7 = a1;
    v8 = [v6 initWithWindowScene:v5];
    sub_100006570();
    v10 = v9;
    v68 = objc_opt_self();
    v11 = [v68 sharedApplication];
    v12 = [v11 delegate];

    if (v12)
    {
      type metadata accessor for AppDelegate();
      swift_dynamicCastClassUnconditional();
      v13 = sub_100007D04();
      swift_unknownObjectRelease();
      v14 = [v13 parameterRecordsOfTunedSettings];

      [v10 setParameterRecordsOfTunedSettings:v14];
      v15 = objc_opt_self();
      v16 = [v15 sharedInstance];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 multiWindowEnabled];

        if (v18)
        {
          v19 = [*(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___rootModuleController) module];
          v20 = [objc_allocWithZone(PTUISettingsController) initWithRootModule:v19];

          v21 = *(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate_settingsViewController);
          *(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate_settingsViewController) = v20;

          v22 = [v68 sharedApplication];
          v23 = [v22 delegate];

          if (!v23)
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v24 = swift_dynamicCastClassUnconditional();
          v25 = OBJC_IVAR____TtC10prototyped11AppDelegate_cachedSingleWindowRootViewController;
          swift_beginAccess();
          v26 = *(v24 + v25);
          *(v24 + v25) = 0;
          v27 = v8;
          goto LABEL_15;
        }

        v67 = v7;
        v28 = [v68 sharedApplication];
        v29 = [v28 delegate];

        if (!v29)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v30 = swift_dynamicCastClassUnconditional();
        v31 = OBJC_IVAR____TtC10prototyped11AppDelegate_cachedSingleWindowRootViewController;
        swift_beginAccess();
        v32 = *(v30 + v31);
        v33 = v32;
        swift_unknownObjectRelease();
        v27 = v8;
        if (v32)
        {
          objc_opt_self();
          v34 = swift_dynamicCastObjCClass();
          if (v34)
          {
LABEL_13:
            v37 = OBJC_IVAR____TtC10prototyped13SceneDelegate_settingsViewController;
            v38 = *(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate_settingsViewController);
            *(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate_settingsViewController) = v34;

            v39 = [v68 sharedApplication];
            v40 = [v39 delegate];

            if (!v40)
            {
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v41 = swift_dynamicCastClassUnconditional();
            v42 = *(v2 + v37);
            v43 = OBJC_IVAR____TtC10prototyped11AppDelegate_cachedSingleWindowRootViewController;
            swift_beginAccess();
            v26 = *(v41 + v43);
            *(v41 + v43) = v42;
            v44 = v42;
            v7 = v67;
LABEL_15:
            swift_unknownObjectRelease();

            v45 = OBJC_IVAR____TtC10prototyped13SceneDelegate_settingsViewController;
            v46 = *(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate_settingsViewController);
            if (v46)
            {
              v47 = objc_allocWithZone(UIBarButtonItem);
              v48 = v46;
              v49 = [v47 initWithBarButtonSystemItem:0 target:v2 action:"didSelectDone"];
              [v48 setDismissButton:v49];

              v50 = *(v2 + v45);
            }

            else
            {
              v50 = 0;
            }

            [v27 setRootViewController:v50];
            [v27 makeKeyAndVisible];
            v51 = [v15 sharedInstance];
            if (v51)
            {
              v52 = v51;
              v53 = [v51 multiWindowEnabled];

              if (!v53)
              {
                goto LABEL_27;
              }

              v54 = v27;
              [v54 bounds];
              [v54 setBounds:?];
              [v54 bounds];
              [v54 setBounds:?];
              [v54 bounds];
              v55 = [v68 sharedApplication];
              v56 = [v55 connectedScenes];

              sub_100007AA8();
              sub_100007AF4();
              v57 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

              if ((v57 & 0xC000000000000001) != 0)
              {
                __CocoaSet.count.getter();
              }

              else
              {
                v58 = *(v57 + 16);
              }

              [v54 center];
              [v54 setCenter:?];

              v59 = *(v2 + v45);
              if (!v59)
              {
                goto LABEL_27;
              }

              v60 = [v59 navigationBar];
              v61 = sub_100006770(&OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___panGesture, &selRef_didDrag_, UIPanGestureRecognizer_ptr);
              [v60 addGestureRecognizer:v61];

              v62 = *(v2 + v45);
              if (!v62)
              {
                goto LABEL_27;
              }

              v63 = [v62 view];
              if (v63)
              {
                v64 = v63;
                v65 = sub_100006770(&OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___pinchGesture, &selRef_didPinch_, UIPinchGestureRecognizer_ptr);
                [v64 addGestureRecognizer:v65];

LABEL_27:
                v66 = *(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate_window);
                *(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate_window) = v27;

                return;
              }

LABEL_36:
              __break(1u);
              return;
            }

            goto LABEL_31;
          }
        }

        v35 = [*(v2 + OBJC_IVAR____TtC10prototyped13SceneDelegate____lazy_storage___rootModuleController) module];
        v36 = [objc_allocWithZone(PTUISettingsController) initWithRootModule:v35];

        if (!v36)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v34 = v36;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }
}

__n128 sub_100007A1C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100007A28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007A48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100007A88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_100007AA8()
{
  result = qword_10001F608;
  if (!qword_10001F608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001F608);
  }

  return result;
}

unint64_t sub_100007AF4()
{
  result = qword_10001F610;
  if (!qword_10001F610)
  {
    sub_100007AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001F610);
  }

  return result;
}

uint64_t sub_100007B4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007B6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100007BA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_100007BFC()
{
  v1 = OBJC_IVAR____TtC10prototyped11AppDelegate_cachedSingleWindowRootViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100007C48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10prototyped11AppDelegate_cachedSingleWindowRootViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100007D28()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC10prototyped11AppDelegate_listener) + OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_uiServer) + 112);

  v2 = sub_100007D7C();

  return v2;
}

id sub_100007D7C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [objc_allocWithZone(PTUIEditingServer) initWithDataSource:*(v0 + 16) delegate:*(v0 + 16) forRemoteEditing:0];
  if (result)
  {
    v4 = *(v0 + 24);
    *(v0 + 24) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100007E00()
{
  v0 = objc_allocWithZone(type metadata accessor for Listener());

  return [v0 init];
}

uint64_t sub_100007E60()
{
  if (qword_10001FA40 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000A9F4(v0, qword_10001FDD0);
}

id sub_100007FF4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC10prototyped11AppDelegate_cachedSingleWindowRootViewController] = 0;
  v2 = OBJC_IVAR____TtC10prototyped11AppDelegate_listener;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for Listener()) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100008198()
{
  v1 = (*(*(sub_10000AA2C(&qword_10001F6F8, &qword_1000139A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_100008460(0, 0, v3, &unk_1000139B0, v7);
}

uint64_t sub_1000082BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100008354, v6, v5);
}

uint64_t sub_100008354()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = *(*(v2 + OBJC_IVAR____TtC10prototyped11AppDelegate_listener) + OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_connection);
  if (v3 && ([v3 remoteObjectProxy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_10000AA2C(&qword_10001F9D0, &qword_100013A98), (swift_dynamicCast() & 1) != 0))
  {
    [*(v0 + 48) killSpringBoard];
    swift_unknownObjectRelease();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  **(v0 + 56) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100008460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000AA2C(&qword_10001F6F8, &qword_1000139A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000B08C(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B2A0(v11, &qword_10001F6F8, &qword_1000139A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_10000AA2C(&qword_10001F9C8, &qword_100013A80);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_10000B2A0(a3, &qword_10001F6F8, &qword_1000139A0);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B2A0(a3, &qword_10001F6F8, &qword_1000139A0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_10000AA2C(&qword_10001F9C8, &qword_100013A80);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100008764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000AA2C(&qword_10001F6F8, &qword_1000139A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000B08C(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B2A0(v11, &qword_10001F6F8, &qword_1000139A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000B2A0(a3, &qword_10001F6F8, &qword_1000139A0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B2A0(a3, &qword_10001F6F8, &qword_1000139A0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_100008B84()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for Servers();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(PTDomainServer) init];
  *(v2 + 24) = 0;
  v1[14] = v2;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, "init");
}

char *sub_100008C0C()
{
  *&v0[OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_connection] = 0;
  v1 = OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_listener;
  *&v0[v1] = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:PTUIMachService];
  v2 = OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_uiServer;
  v3 = type metadata accessor for UIServer();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for Servers();
  v5 = swift_allocObject();
  *(v5 + 16) = [objc_allocWithZone(PTDomainServer) init];
  *(v5 + 24) = 0;
  v4[14] = v5;
  v9.receiver = v4;
  v9.super_class = v3;
  *&v0[v2] = objc_msgSendSuper2(&v9, "init");
  v8.receiver = v0;
  v8.super_class = type metadata accessor for Listener();
  v6 = objc_msgSendSuper2(&v8, "init");
  [*&v6[OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_listener] setDelegate:v6];
  return v6;
}

uint64_t sub_100008D4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100008DF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Listener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008E80()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100008EC0(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(sub_10000AA2C(&qword_10001F6F8, &qword_1000139A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v19 - v5;
  if (qword_10001FA40 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A9F4(v7, qword_10001FDD0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = sub_100009110(a1);
    v14 = sub_10000A050(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "handle prototyping event: %s", v10, 0xCu);
    sub_10000AFE0(v11);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = a1;
  v17[5] = v2;
  sub_100008764(0, 0, v6, &unk_100013A38, v17);
}

uint64_t sub_100009110(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 0xD000000000000010;
    }

    goto LABEL_13;
  }

  if (a1 == 2)
  {
    return 0xD000000000000012;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      return 0xD000000000000014;
    }

LABEL_13:
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    return 0x206E776F6E6B6E75;
  }

  return 0xD000000000000014;
}

uint64_t sub_100009230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for UISceneSessionActivationRequest();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009328, v10, v9);
}

void sub_100009328()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = v2;
  if ([v2 activeTestRecipeEatsEvent:v0[9]])
  {
    v4 = v0[15];
    v6 = v0[9];
    v5 = v0[10];

    v7 = *(*(v5 + 112) + 16);
    v8 = [v3 activeTestRecipeIdentifier];
    [v7 sendEvent:v6 forTestRecipeID:v8];

LABEL_31:
    v38 = v0[13];

    v39 = v0[1];

    v39();
    return;
  }

  if (([v3 multiWindowEnabled] & 1) != 0 || ((v9 = objc_msgSend(v1, "connectedScenes"), sub_100007AA8(), sub_10000B4E8(&qword_10001F610, sub_100007AA8), v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v9, (v10 & 0xC000000000000001) == 0) ? (v11 = *(v10 + 16)) : (v11 = __CocoaSet.count.getter()), , !v11))
  {
    v19 = CFNotificationCenterGetDarwinNotifyCenter();
    if (!PTPrototypingIsActiveDarwinNotification)
    {
      goto LABEL_36;
    }

    v20 = v19;
    v21 = v0[15];
    v22 = v0[12];
    v23 = v0[13];
    v24 = v0[11];
    v25 = PTPrototypingIsActiveDarwinNotification;

    CFNotificationCenterPostNotification(v20, v25, 0, 0, 1u);

    v26 = UIWindowSceneSessionRoleApplication;
    UISceneSessionActivationRequest.init(role:userActivity:options:)();
    UIApplication.activateSceneSession(for:errorHandler:)();

    (*(v22 + 8))(v23, v24);
    goto LABEL_31;
  }

  v41 = v3;
  v12 = v0[15];

  v13 = [v1 connectedScenes];
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v1;
  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v14 = v0[2];
    v15 = v0[3];
    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[6];
  }

  else
  {
    v27 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v17 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v18 = v29 & *(v14 + 56);

    v16 = 0;
  }

  v40 = v17;
  while (v14 < 0)
  {
    v36 = __CocoaSet.Iterator.next()();
    if (!v36 || (v0[8] = v36, swift_dynamicCast(), v35 = v0[7], v33 = v16, v34 = v18, !v35))
    {
LABEL_30:
      sub_10000B1EC();

      goto LABEL_31;
    }

LABEL_28:
    v37 = v0[14];
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v30 = [v35 session];
    [v42 requestSceneSessionDestruction:v30 options:0 errorHandler:0];

    v16 = v33;
    v18 = v34;
  }

  v31 = v16;
  v32 = v18;
  v33 = v16;
  if (v18)
  {
LABEL_24:
    v34 = (v32 - 1) & v32;
    v35 = *(*(v14 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));
    if (!v35)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v33 >= ((v17 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v32 = *(v15 + 8 * v33);
    ++v31;
    if (v32)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1000098F0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100009934()
{
  v0 = type metadata accessor for Logger();
  sub_10000B6A0(v0, qword_10001FDD0);
  sub_10000A9F4(v0, qword_10001FDD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000099B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001FA40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_10000A9F4(v2, qword_10001FDD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100009A60()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100009A9C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100009AF0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100009B6C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100009BE4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100009C64@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100009CA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100009D30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100009D78@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100009DA4(uint64_t a1)
{
  v2 = sub_10000B4E8(&qword_10001F9C0, type metadata accessor for LaunchOptionsKey);
  v3 = sub_10000B4E8(&unk_10001FA00, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100009E60(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009F58;

  return v7(a1);
}

uint64_t sub_100009F58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A050(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000A11C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000B02C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000AFE0(v11);
  return v7;
}

unint64_t sub_10000A11C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000A228(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000A228(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000A274(a1, a2);
  sub_10000A3A4(&off_100018DF0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000A274(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000A490(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000A490(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000A3A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000A504(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000A490(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000AA2C(&qword_10001F9B0, &qword_100013A40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000A504(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000AA2C(&qword_10001F9B0, &qword_100013A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000A5F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10000A6EC;

  return v6(v2 + 32);
}

uint64_t sub_10000A6EC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000A800(uint64_t a1)
{
  v2 = v1;
  if (qword_10001FA40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A9F4(v4, qword_10001FDD0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (a1)
    {
      type metadata accessor for LaunchOptionsKey(0);
      sub_10000B4E8(&qword_10001F9C0, type metadata accessor for LaunchOptionsKey);
      v9 = Dictionary.description.getter();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_10000A050(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "application didFinishLaunchingWithOptions: %s", v7, 0xCu);
    sub_10000AFE0(v8);
  }

  [*(*(v2 + OBJC_IVAR____TtC10prototyped11AppDelegate_listener) + OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_listener) resume];
  return 1;
}

uint64_t sub_10000A9F4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000AA2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000AA78(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B800;

  return sub_1000082BC(a1, v5, v6, v4);
}

BOOL sub_10000AB84(void *a1)
{
  v2 = v1;
  if (qword_10001FA40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A9F4(v4, qword_10001FDD0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "listener shouldAcceptNewConnection: %@", v8, 0xCu);
    sub_10000B2A0(v9, &qword_10001F9B8, &qword_100013A60);
  }

  v11 = OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_connection;
  v12 = *(v2 + OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_connection);
  if (!v12)
  {
    v13 = PTUIClientInterface();
    [v5 setRemoteObjectInterface:v13];

    v14 = PTUIServerInterface();
    [v5 setExportedInterface:v14];

    [v5 setExportedObject:*(v2 + OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_uiServer)];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20[4] = sub_10000B22C;
    v20[5] = v15;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100008D4C;
    v20[3] = &unk_100018EE0;
    v16 = _Block_copy(v20);

    [v5 setInvalidationHandler:v16];
    _Block_release(v16);
    [v5 resume];
    v17 = *(v2 + v11);
    *(v2 + v11) = v5;
    v18 = v5;
  }

  return v12 == 0;
}

uint64_t sub_10000AF08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AF48()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000B800;

  return sub_100009230(v4, v5, v6, v2, v3);
}

uint64_t sub_10000AFE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000B02C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B08C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AA2C(&qword_10001F6F8, &qword_1000139A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B0FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B134(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B800;

  return sub_100009E60(a1, v5);
}

uint64_t sub_10000B1F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000B22C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_connection];
    *&Strong[OBJC_IVAR____TtC10prototypedP33_7D6121B4D28911B7760A4E8ABB7760C28Listener_connection] = 0;
  }
}

uint64_t sub_10000B288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B2A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000AA2C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000B300()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B340(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B3E0;

  return sub_1000082BC(a1, v5, v6, v4);
}

uint64_t sub_10000B3E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B4E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000B530(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B800;

  return sub_10000A5F8(a1, v5);
}

uint64_t sub_10000B5E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B3E0;

  return sub_10000A5F8(a1, v5);
}

uint64_t *sub_10000B6A0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_10000B818(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to subscribe to AVSystemController notifications due to error: %@", &v2, 0xCu);
}