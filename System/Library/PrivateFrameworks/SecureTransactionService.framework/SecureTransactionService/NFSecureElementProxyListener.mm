@interface NFSecureElementProxyListener
- (NFSecureElementProxyListener)initWithSTSSession:(id)a3;
- (id)transceiveWithData:(id)a3 outError:(id *)a4;
@end

@implementation NFSecureElementProxyListener

- (NFSecureElementProxyListener)initWithSTSSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NFSecureElementProxyListener;
  v5 = [(NFSecureElementProxyListener *)&v9 init];
  if (v5)
  {
    v6 = [v4 masterSESession];
    seSession = v5->_seSession;
    v5->_seSession = v6;
  }

  return v5;
}

- (id)transceiveWithData:(id)a3 outError:(id *)a4
{
  v6 = a3;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[NFSecureElementProxyListener transceiveWithData:outError:]", 45, self, @"data = %@", v7, v8, v6);
  v17 = 0;
  v9 = [MEMORY[0x277D2C870] embeddedSecureElementWithError:&v17];
  v10 = v17;
  v11 = [v9 info];

  if (v10)
  {
    if (a4)
    {
      v12 = v10;
      v13 = 0;
      *a4 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = [(NFSecureElementProxyListener *)self seSession];
    v15 = [v11 serialNumber];
    v13 = [v14 transceive:v6 forSEID:v15 error:a4];
  }

  return v13;
}

@end