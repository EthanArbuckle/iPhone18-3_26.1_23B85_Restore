@interface _ANEProgramCache
+ (id)programForConnection:(id)a3 model:(id)a4 bundleID:(id)a5;
+ (unint64_t)programCountForConnection:(id)a3;
+ (void)initialize;
+ (void)removeAllProgramsForConnection:(id)a3;
+ (void)removeProgramForConnection:(id)a3 model:(id)a4 bundleID:(id)a5;
@end

@implementation _ANEProgramCache

+ (void)initialize
{
  v2 = [&__NSDictionary0__struct mutableCopy];
  v3 = qword_1000364D8;
  qword_1000364D8 = v2;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.ane.program", v6);
  v5 = qword_1000364E0;
  qword_1000364E0 = v4;
}

+ (id)programForConnection:(id)a3 model:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100001AA8;
  v27 = sub_100001AB8;
  v28 = 0;
  v11 = qword_1000364E0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001AC0;
  block[3] = &unk_100030688;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v14 = v8;
  v20 = v14;
  v21 = &v23;
  v22 = a2;
  dispatch_sync(v11, block);
  [v24[5] addCachedReference];
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

+ (void)removeProgramForConnection:(id)a3 model:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000364E0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001DE8;
  v15[3] = &unk_1000306B0;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v19 = a2;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_sync(v11, v15);
}

+ (void)removeAllProgramsForConnection:(id)a3
{
  v4 = a3;
  v5 = qword_1000364E0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002270;
  v7[3] = &unk_100030718;
  v8 = v4;
  v9 = a2;
  v6 = v4;
  dispatch_sync(v5, v7);
}

+ (unint64_t)programCountForConnection:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = qword_1000364E0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000246C;
  v8[3] = &unk_100030740;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

@end