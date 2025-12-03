@interface NFSecureElementProxyListener
- (NFSecureElementProxyListener)initWithSTSSession:(id)session;
- (id)transceiveWithData:(id)data outError:(id *)error;
@end

@implementation NFSecureElementProxyListener

- (NFSecureElementProxyListener)initWithSTSSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = NFSecureElementProxyListener;
  v5 = [(NFSecureElementProxyListener *)&v9 init];
  if (v5)
  {
    masterSESession = [sessionCopy masterSESession];
    seSession = v5->_seSession;
    v5->_seSession = masterSESession;
  }

  return v5;
}

- (id)transceiveWithData:(id)data outError:(id *)error
{
  dataCopy = data;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[NFSecureElementProxyListener transceiveWithData:outError:]", 45, self, @"data = %@", v7, v8, dataCopy);
  v17 = 0;
  v9 = [MEMORY[0x277D2C870] embeddedSecureElementWithError:&v17];
  v10 = v17;
  info = [v9 info];

  if (v10)
  {
    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    seSession = [(NFSecureElementProxyListener *)self seSession];
    serialNumber = [info serialNumber];
    v13 = [seSession transceive:dataCopy forSEID:serialNumber error:error];
  }

  return v13;
}

@end