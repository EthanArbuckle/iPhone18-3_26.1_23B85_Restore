@interface GetShareListArgs
- (GetShareListArgs)initWithPiston:(id)piston ServerName:(id)name ServerMaxRead:(unsigned int)read ServerMaxWrite:(unsigned int)write ServerMaxTransact:(unsigned int)transact ShareID:(unsigned int)d;
- (void)dealloc;
@end

@implementation GetShareListArgs

- (GetShareListArgs)initWithPiston:(id)piston ServerName:(id)name ServerMaxRead:(unsigned int)read ServerMaxWrite:(unsigned int)write ServerMaxTransact:(unsigned int)transact ShareID:(unsigned int)d
{
  pistonCopy = piston;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = GetShareListArgs;
  v17 = [(GetShareListArgs *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_pd, piston);
    objc_storeStrong(&v18->_serverName, name);
    v18->_serverMaxRead = read;
    v18->_serverMaxWrite = write;
    v18->_serverMaxTransact = transact;
    v18->_shareID = d;
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