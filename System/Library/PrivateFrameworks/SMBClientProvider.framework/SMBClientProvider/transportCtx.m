@interface transportCtx
- (transportCtx)initWithPiston:(id)a3 ServerName:(id)a4 ServerMaxRead:(unsigned int)a5 ServerMaxWrite:(unsigned int)a6 ServerMaxTransact:(unsigned int)a7 ShareID:(unsigned int)a8;
@end

@implementation transportCtx

- (transportCtx)initWithPiston:(id)a3 ServerName:(id)a4 ServerMaxRead:(unsigned int)a5 ServerMaxWrite:(unsigned int)a6 ServerMaxTransact:(unsigned int)a7 ShareID:(unsigned int)a8
{
  v15 = a3;
  v16 = a4;
  v21.receiver = self;
  v21.super_class = transportCtx;
  v17 = [(transportCtx *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_pd, a3);
    objc_storeStrong(&v18->_serverName, a4);
    fidCtx = v18->_fidCtx;
    v18->_fidCtx = 0;

    v18->_serverMaxRead = a5;
    v18->_serverMaxWrite = a6;
    v18->_serverMaxTransact = a7;
    v18->_shareID = a8;
  }

  return v18;
}

@end