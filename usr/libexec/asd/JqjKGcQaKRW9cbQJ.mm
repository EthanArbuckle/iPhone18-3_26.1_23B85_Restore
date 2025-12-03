@interface JqjKGcQaKRW9cbQJ
- (JqjKGcQaKRW9cbQJ)init;
- (id)WnJ3gJFPRgsreXQi:(id)qi;
@end

@implementation JqjKGcQaKRW9cbQJ

- (JqjKGcQaKRW9cbQJ)init
{
  v3.receiver = self;
  v3.super_class = JqjKGcQaKRW9cbQJ;
  return [(JqjKGcQaKRW9cbQJ *)&v3 init];
}

- (id)WnJ3gJFPRgsreXQi:(id)qi
{
  qiCopy = qi;
  value = [qiCopy value];
  if (![value length])
  {
    v5 = +[FnfDbwO2lFcwJMJU sharedInstance];
    n6iJbZh5ycxf9a3z = [v5 N6iJbZh5ycxf9a3z];

    value = n6iJbZh5ycxf9a3z;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if ([value length])
  {
    v7 = +[C7RiKwi0qHUD3RW9 sharedInstance];
    v8 = dispatch_group_create();
    v36 = 0;
    [v7 A6B42kYrDuXnlUJs:&v36 + 4 IaS2bByRUGdVAKHz:&v36];
    v9 = v36;
    dispatch_group_enter(v8);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000A4AC;
    v33[3] = &unk_10068F0E0;
    v35 = &v37;
    v10 = v8;
    v34 = v10;
    [v7 YMeSiVAJwqHb7P3U:value completion:v33];
    dispatch_group_enter(v10);
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10000A4C4;
    v30 = &unk_10068F0E0;
    v32 = &v41;
    v11 = v10;
    v31 = v11;
    [v7 KqWH25SjlYcX4wo6:value completion:&v27];
    v12 = dispatch_time(0, 1800000000);
    if (dispatch_group_wait(v11, v12))
    {
      sub_1000313F4(-32002);
    }

    v13 = SHIDWORD(v9);
    v14 = v9;
  }

  else
  {
    v14 = 0.0;
    v13 = 0.0;
  }

  v45[0] = &off_1006BA6D0;
  v15 = [value length];
  v17 = &off_1006BA700;
  if (!v15)
  {
    v17 = &off_1006BA6E8;
  }

  v46[0] = v17;
  v45[1] = &off_1006BA718;
  *&v16 = v13;
  v18 = [NSNumber numberWithFloat:v16];
  v46[1] = v18;
  v45[2] = &off_1006BA730;
  *&v19 = v14;
  v20 = [NSNumber numberWithFloat:v19];
  v46[2] = v20;
  v45[3] = &off_1006BA748;
  LODWORD(v21) = *(v42 + 6);
  v22 = [NSNumber numberWithFloat:v21];
  v46[3] = v22;
  v45[4] = &off_1006BA760;
  LODWORD(v23) = *(v38 + 6);
  v24 = [NSNumber numberWithFloat:v23];
  v46[4] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  return v25;
}

@end