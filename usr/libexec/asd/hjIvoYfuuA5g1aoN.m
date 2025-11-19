@interface hjIvoYfuuA5g1aoN
+ (id)sharedInstance;
- (hjIvoYfuuA5g1aoN)init;
- (id)ciiN3o1L7RiefeS5:(_KUwyEjpVZR65eUyl *)a3;
- (id)ofrSKnQ5RUKxzAHY:(id)a3;
- (void)x7PkBasAKbApbiZS:(_KUwyEjpVZR65eUyl *)a3;
@end

@implementation hjIvoYfuuA5g1aoN

- (hjIvoYfuuA5g1aoN)init
{
  v8.receiver = self;
  v8.super_class = hjIvoYfuuA5g1aoN;
  v2 = [(hjIvoYfuuA5g1aoN *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.asd.clpw", 0);
    locationQueue = v2->_locationQueue;
    v2->_locationQueue = v3;

    v5 = objc_opt_new();
    locationManagers = v2->_locationManagers;
    v2->_locationManagers = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1006D7C78 != -1)
  {
    sub_100593548();
  }

  v3 = qword_1006D7C70;

  return v3;
}

- (id)ofrSKnQ5RUKxzAHY:(id)a3
{
  v4 = a3;
  v5 = [(hjIvoYfuuA5g1aoN *)self locationManagers];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = [(hjIvoYfuuA5g1aoN *)self locationQueue];
    [v6 prepareWithBundlePath:v4 andLocationQueue:v7];

    v8 = [(hjIvoYfuuA5g1aoN *)self locationManagers];
    [v8 setObject:v6 forKeyedSubscript:v4];
  }

  v9 = v6;

  return v9;
}

- (id)ciiN3o1L7RiefeS5:(_KUwyEjpVZR65eUyl *)a3
{
  *v9 = kCLLocationAccuracyBestForNavigation;
  *&v9[1] = kCLLocationAccuracyBest;
  *&v9[2] = kCLLocationAccuracyNearestTenMeters;
  *&v9[3] = kCLLocationAccuracyHundredMeters;
  *&v9[4] = kCLLocationAccuracyKilometer;
  *&v9[5] = kCLLocationAccuracyThreeKilometers;
  if ((a3->var1 & 0xFFFFFFFE) == 4)
  {
    v5 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:a3->var4.var0.var0 gsx0MJUoOpcxcozG:a3->var4.var1.var0.var1];
    v6 = *&v9[a3->var4.var5.var2];
    v7 = [(hjIvoYfuuA5g1aoN *)self ofrSKnQ5RUKxzAHY:v5];
    [v7 setMsur5CGmk1XEBjLD:v6];
    [v7 setG6zbwvXxUAZNoblY:0.8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)x7PkBasAKbApbiZS:(_KUwyEjpVZR65eUyl *)a3
{
  v5 = [(hjIvoYfuuA5g1aoN *)self locationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000CE24;
  v6[3] = &unk_10068F2F8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

@end