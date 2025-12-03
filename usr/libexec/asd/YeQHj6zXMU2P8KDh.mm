@interface YeQHj6zXMU2P8KDh
+ (BOOL)sensitiveLoggingEnabled;
+ (id)sharedInstance;
- (YeQHj6zXMU2P8KDh)init;
- (void)cGauGmZFPJJkT1d3:(id)t1d3;
- (void)y8gKmeUT3DQp3zY:(id)y vyKTnPNvILkFENv4:(id)nv4;
- (void)zQehSLHqShQPYsHo:(id)ho kidVYacbY8LCJT8v:(const _eipjLVDiD7LNwlPc *)t8v;
@end

@implementation YeQHj6zXMU2P8KDh

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C89C;
  block[3] = &unk_10068EEE8;
  block[4] = self;
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

- (void)cGauGmZFPJJkT1d3:(id)t1d3
{
  t1d3Copy = t1d3;
  if (+[YeQHj6zXMU2P8KDh sensitiveLoggingEnabled])
  {
    v18 = t1d3Copy;
    v5 = [t1d3Copy description];
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

    t1d3Copy = v18;
  }

  else
  {
    v15 = self->pqeBGOQoC53XfqEz;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      allKeys = [t1d3Copy allKeys];
      *buf = 138412290;
      v20 = allKeys;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "InVal keys for IB: %@", buf, 0xCu);
    }
  }
}

- (void)y8gKmeUT3DQp3zY:(id)y vyKTnPNvILkFENv4:(id)nv4
{
  yCopy = y;
  nv4Copy = nv4;
  pqeBGOQoC53XfqEz = self->pqeBGOQoC53XfqEz;
  if (os_log_type_enabled(pqeBGOQoC53XfqEz, OS_LOG_TYPE_INFO))
  {
    v9 = 138412546;
    v10 = nv4Copy;
    v11 = 2112;
    v12 = yCopy;
    _os_log_impl(&_mh_execute_header, pqeBGOQoC53XfqEz, OS_LOG_TYPE_INFO, "c: %@, f: %@", &v9, 0x16u);
  }
}

- (void)zQehSLHqShQPYsHo:(id)ho kidVYacbY8LCJT8v:(const _eipjLVDiD7LNwlPc *)t8v
{
  hoCopy = ho;
  pqeBGOQoC53XfqEz = self->pqeBGOQoC53XfqEz;
  v8 = os_log_type_enabled(pqeBGOQoC53XfqEz, OS_LOG_TYPE_INFO);
  if (hoCopy)
  {
    if (v8)
    {
      profileIDPrefix = t8v->profileIDPrefix;
      dataframeIndex = t8v->dataframeIndex;
      v11 = pqeBGOQoC53XfqEz;
      qfSDGTGvqd3Hruzg = [hoCopy qfSDGTGvqd3Hruzg];
      gyF0atX3JpCKc9pK = [hoCopy GyF0atX3JpCKc9pK];
      v16 = 67109890;
      v17 = profileIDPrefix;
      v18 = 1024;
      v19 = dataframeIndex;
      v20 = 2048;
      v21 = qfSDGTGvqd3Hruzg;
      v22 = 2112;
      v23 = gyF0atX3JpCKc9pK;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "DF[%x, %d]: EC %ld, V: %@", &v16, 0x22u);
    }
  }

  else if (v8)
  {
    v14 = t8v->profileIDPrefix;
    v15 = t8v->dataframeIndex;
    v16 = 67109376;
    v17 = v14;
    v18 = 1024;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, pqeBGOQoC53XfqEz, OS_LOG_TYPE_INFO, "DF[%x, %d]: nil", &v16, 0xEu);
  }
}

@end