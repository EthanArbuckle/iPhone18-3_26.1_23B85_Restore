@interface YeQHj6zXMU2P8KDh
+ (BOOL)sensitiveLoggingEnabled;
+ (id)sharedInstance;
- (YeQHj6zXMU2P8KDh)init;
- (void)a38gKmeUT3DQp3zY:(id)a3 vyKTnPNvILkFENv4:(id)a4;
- (void)cGauGmZFPJJkT1d3:(id)a3;
- (void)zQehSLHqShQPYsHo:(id)a3 kidVYacbY8LCJT8v:(const _eipjLVDiD7LNwlPc *)a4;
@end

@implementation YeQHj6zXMU2P8KDh

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C89C;
  block[3] = &unk_10068EEE8;
  block[4] = a1;
  if (qword_1006D7CE8 != -1)
  {
    dispatch_once(&qword_1006D7CE8, block);
  }

  v2 = qword_1006D7CE0;

  return v2;
}

- (YeQHj6zXMU2P8KDh)init
{
  v3 = os_log_create("com.apple.asd", "dfLog");
  pqeBGOQoC53XfqEz = self->pqeBGOQoC53XfqEz;
  self->pqeBGOQoC53XfqEz = v3;

  return self;
}

+ (BOOL)sensitiveLoggingEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"debug.log-sensitive-data"];

  return v3;
}

- (void)cGauGmZFPJJkT1d3:(id)a3
{
  v4 = a3;
  if (+[YeQHj6zXMU2P8KDh sensitiveLoggingEnabled])
  {
    v18 = v4;
    v5 = [v4 description];
    v6 = [v5 length];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = (v6 >> 9) + 1;
      v10 = 1;
      do
      {
        if (v7 - v8 >= 0x200)
        {
          v11 = 512;
        }

        else
        {
          v11 = v7 - v8;
        }

        pqeBGOQoC53XfqEz = self->pqeBGOQoC53XfqEz;
        if (os_log_type_enabled(pqeBGOQoC53XfqEz, OS_LOG_TYPE_DEFAULT))
        {
          v13 = pqeBGOQoC53XfqEz;
          v14 = [v5 substringWithRange:{v8, v11}];
          *buf = 134218498;
          v20 = v10;
          v21 = 2048;
          v22 = v9;
          v23 = 2112;
          v24 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "InVal for IB (part %lu of %lu):\n%@", buf, 0x20u);
        }

        v8 += v11;
        ++v10;
      }

      while (v8 < v7);
    }

    v4 = v18;
  }

  else
  {
    v15 = self->pqeBGOQoC53XfqEz;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [v4 allKeys];
      *buf = 138412290;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "InVal keys for IB: %@", buf, 0xCu);
    }
  }
}

- (void)a38gKmeUT3DQp3zY:(id)a3 vyKTnPNvILkFENv4:(id)a4
{
  v6 = a3;
  v7 = a4;
  pqeBGOQoC53XfqEz = self->pqeBGOQoC53XfqEz;
  if (os_log_type_enabled(pqeBGOQoC53XfqEz, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, pqeBGOQoC53XfqEz, OS_LOG_TYPE_INFO, "c: %@, f: %@", &v9, 0x16u);
  }
}

- (void)zQehSLHqShQPYsHo:(id)a3 kidVYacbY8LCJT8v:(const _eipjLVDiD7LNwlPc *)a4
{
  v6 = a3;
  pqeBGOQoC53XfqEz = self->pqeBGOQoC53XfqEz;
  v8 = os_log_type_enabled(pqeBGOQoC53XfqEz, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      profileIDPrefix = a4->profileIDPrefix;
      dataframeIndex = a4->dataframeIndex;
      v11 = pqeBGOQoC53XfqEz;
      v12 = [v6 qfSDGTGvqd3Hruzg];
      v13 = [v6 GyF0atX3JpCKc9pK];
      v16 = 67109890;
      v17 = profileIDPrefix;
      v18 = 1024;
      v19 = dataframeIndex;
      v20 = 2048;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "DF[%x, %d]: EC %ld, V: %@", &v16, 0x22u);
    }
  }

  else if (v8)
  {
    v14 = a4->profileIDPrefix;
    v15 = a4->dataframeIndex;
    v16 = 67109376;
    v17 = v14;
    v18 = 1024;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, pqeBGOQoC53XfqEz, OS_LOG_TYPE_INFO, "DF[%x, %d]: nil", &v16, 0xEu);
  }
}

@end