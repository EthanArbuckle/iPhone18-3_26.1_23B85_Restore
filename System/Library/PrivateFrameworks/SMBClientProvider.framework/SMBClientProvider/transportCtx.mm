@interface transportCtx
- (transportCtx)initWithPiston:(id)piston ServerName:(id)name ServerMaxRead:(unsigned int)read ServerMaxWrite:(unsigned int)write ServerMaxTransact:(unsigned int)transact ShareID:(unsigned int)d;
@end

@implementation transportCtx

- (transportCtx)initWithPiston:(id)piston ServerName:(id)name ServerMaxRead:(unsigned int)read ServerMaxWrite:(unsigned int)write ServerMaxTransact:(unsigned int)transact ShareID:(unsigned int)d
{
  pistonCopy = piston;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = transportCtx;
  v17 = [(transportCtx *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_pd, piston);
    objc_storeStrong(&v18->_serverName, name);
    fidCtx = v18->_fidCtx;
    v18->_fidCtx = 0;

    v18->_serverMaxRead = read;
    v18->_serverMaxWrite = write;
    v18->_serverMaxTransact = transact;
    v18->_shareID = d;
  }

  return v18;
}

@end