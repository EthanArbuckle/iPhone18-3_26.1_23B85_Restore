@interface BY55toxwCGYxot4p
- (BY55toxwCGYxot4p)init;
- (id)WnJ3gJFPRgsreXQi:(id)a3;
@end

@implementation BY55toxwCGYxot4p

- (BY55toxwCGYxot4p)init
{
  v6.receiver = self;
  v6.super_class = BY55toxwCGYxot4p;
  v2 = [(BY55toxwCGYxot4p *)&v6 init];
  v3 = dispatch_queue_create("com.apple.asd.ca.stcq.nae", 0);
  UQa7uorw6jeKCE2x = v2->UQa7uorw6jeKCE2x;
  v2->UQa7uorw6jeKCE2x = v3;

  return v2;
}

- (id)WnJ3gJFPRgsreXQi:(id)a3
{
  v4 = [a3 value];
  v5 = +[NSMutableDictionary dictionary];
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v4 firstName];
  if (!v6)
  {
    v6 = [v4 lastName];
    if (!v6)
    {
      v16 = [v4 fullName];

      if (v16)
      {
        goto LABEL_5;
      }

LABEL_9:
      [v5 setObject:&off_1006BA688 forKeyedSubscript:&off_1006BA6A0];
      [v5 setObject:&off_1006BA688 forKeyedSubscript:&off_1006BA6B8];
      goto LABEL_10;
    }
  }

LABEL_5:
  v7 = +[C7RiKwi0qHUD3RW9 sharedInstance];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100009E78;
  v21[3] = &unk_10068F130;
  v21[4] = self;
  v9 = v5;
  v22 = v9;
  v10 = v8;
  v23 = v10;
  [v7 SKiIwgejuzELNOY0:v4 completion:v21];
  dispatch_group_enter(v10);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100009F94;
  v18[3] = &unk_10068F130;
  v18[4] = self;
  v11 = v9;
  v19 = v11;
  v12 = v10;
  v20 = v12;
  [v7 b8mzIZQ1GCTnhVAP:v4 completion:v18];
  v13 = dispatch_time(0, 1800000000);
  if (dispatch_group_wait(v12, v13))
  {
    sub_1000313F4(-32001);
  }

  v14 = v20;
  v15 = v11;

LABEL_10:

  return v5;
}

@end