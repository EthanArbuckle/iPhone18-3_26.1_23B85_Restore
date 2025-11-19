@interface NFSecureElementReaderProxyListener
- (NFSecureElementReaderProxyListener)initWithSTSReaderSession:(id)a3;
- (id)transceiveWithData:(id)a3 outError:(id *)a4;
@end

@implementation NFSecureElementReaderProxyListener

- (NFSecureElementReaderProxyListener)initWithSTSReaderSession:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NFSecureElementReaderProxyListener;
  v5 = [(NFSecureElementReaderProxyListener *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v14 = 0;
  v6 = [MEMORY[0x277D2C870] embeddedSecureElementWithError:&v14];
  v7 = v14;
  v8 = [v6 info];
  seInfo = v5->_seInfo;
  v5->_seInfo = v8;

  if (!v7)
  {
    v11 = [v4 proxyReaderSESession];
    seSession = v5->_seSession;
    v5->_seSession = v11;

LABEL_5:
    v10 = v5;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (id)transceiveWithData:(id)a3 outError:(id *)a4
{
  v23[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[NFSecureElementReaderProxyListener transceiveWithData:outError:]", 64, self, @"data = %@", v8, v9, v7);
  v10 = [(NFSecureElementReaderProxyListener *)self seSession];

  if (v10)
  {
    v11 = [(NFSecureElementReaderProxyListener *)self seSession];
    v12 = [(NFSecureElementReaderProxyListener *)self seInfo];
    v13 = [v12 serialNumber];
    a4 = [v11 transceive:v7 forSEID:v13 error:a4];
  }

  else if (a4)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v22[0] = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
    v23[0] = v16;
    v23[1] = &unk_2876ECCC0;
    v22[1] = @"Line";
    v22[2] = @"Method";
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(a2)];
    v23[2] = v17;
    v22[3] = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(a2), 69];
    v23[3] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
    *a4 = [v14 errorWithDomain:v15 code:12 userInfo:v19];

    a4 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return a4;
}

@end