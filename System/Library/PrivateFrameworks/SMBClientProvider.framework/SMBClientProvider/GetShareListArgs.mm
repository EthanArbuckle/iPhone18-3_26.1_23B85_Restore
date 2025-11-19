@interface GetShareListArgs
- (GetShareListArgs)initWithPiston:(id)a3 ServerName:(id)a4 ServerMaxRead:(unsigned int)a5 ServerMaxWrite:(unsigned int)a6 ServerMaxTransact:(unsigned int)a7 ShareID:(unsigned int)a8;
- (void)dealloc;
@end

@implementation GetShareListArgs

- (GetShareListArgs)initWithPiston:(id)a3 ServerName:(id)a4 ServerMaxRead:(unsigned int)a5 ServerMaxWrite:(unsigned int)a6 ServerMaxTransact:(unsigned int)a7 ShareID:(unsigned int)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = GetShareListArgs;
  v17 = [(GetShareListArgs *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_pd, a3);
    objc_storeStrong(&v18->_serverName, a4);
    v18->_serverMaxRead = a5;
    v18->_serverMaxWrite = a6;
    v18->_serverMaxTransact = a7;
    v18->_shareID = a8;
    v18->_status = 0;
  }

  return v18;
}

- (void)dealloc
{
  serverName = self->_serverName;
  self->_serverName = 0;

  v4.receiver = self;
  v4.super_class = GetShareListArgs;
  [(GetShareListArgs *)&v4 dealloc];
}

@end