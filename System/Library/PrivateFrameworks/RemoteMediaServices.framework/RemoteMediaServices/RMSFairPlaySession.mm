@interface RMSFairPlaySession
- (BOOL)_getHardwareInfo:(FairPlayHWInfo_ *)info;
- (id)_hexStringForData:(id)data;
- (id)handshakeData;
- (id)handshakeIterationWithData:(id)data;
- (id)headerForURL:(id)l;
- (void)dealloc;
- (void)invalidate;
@end

@implementation RMSFairPlaySession

- (void)dealloc
{
  [(RMSFairPlaySession *)self invalidate];
  v3.receiver = self;
  v3.super_class = RMSFairPlaySession;
  [(RMSFairPlaySession *)&v3 dealloc];
}

- (id)handshakeData
{
  [(RMSFairPlaySession *)self _getHardwareInfo:&self->_hardwareInfo];
  cp2g1b9ro();
  if (v3)
  {
    v4 = v3;
    v5 = RMSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(RMSFairPlaySession *)v4 handshakeData:v5];
    }

    v12 = 0;
  }

  else
  {
    v12 = [(RMSFairPlaySession *)self handshakeIterationWithData:0];
  }

  return v12;
}

- (id)handshakeIterationWithData:(id)data
{
  v20 = 0;
  v19 = 0;
  v18 = -1;
  dataCopy = data;
  dataCopy2 = data;
  [dataCopy2 bytes];
  [dataCopy2 length];

  Mib5yocT();
  if (v6)
  {
    v7 = v6;
    v8 = RMSLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(RMSFairPlaySession *)v7 handshakeIterationWithData:v8, v9, v10, v11, v12, v13, v14];
    }

    v16 = 0;
  }

  else
  {
    v15 = RMSLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RMSFairPlaySession handshakeIterationWithData:v15];
    }

    v16 = v20;
  }

  return v16;
}

- (id)headerForURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  path = [lCopy path];

  v7 = [absoluteString substringFromIndex:{objc_msgSend(absoluteString, "rangeOfString:", path)}];

  v8 = [v7 dataUsingEncoding:4];
  v9 = malloc_type_malloc(0x10uLL, 0xF399E873uLL);
  CC_MD5([v8 bytes], objc_msgSend(v8, "length"), v9);
  U4HBs();
  v11 = v10;
  free(v9);
  if (v11)
  {
    v12 = RMSLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(RMSFairPlaySession *)v11 headerForURL:v12, v13, v14, v15, v16, v17, v18];
    }

    v19 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:0 length:0];
    v19 = [(RMSFairPlaySession *)self _hexStringForData:v12];
  }

  return v19;
}

- (void)invalidate
{
  self->_handshakeComplete = 0;
  if (self->_sessionToken)
  {
    IPaI1oem5iL();
    self->_sessionToken = 0;
  }
}

- (BOOL)_getHardwareInfo:(FairPlayHWInfo_ *)info
{
  infoCopy = info;
  if (info)
  {
    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFDataGetTypeID() && (Length = CFDataGetLength(v5), Length <= 20))
      {
        infoCopy->IDLength = Length;
        [v5 getBytes:infoCopy->ID length:?];
        LOBYTE(infoCopy) = 1;
      }

      else
      {
        LOBYTE(infoCopy) = 0;
      }

      CFRelease(v5);
    }

    else
    {
      LOBYTE(infoCopy) = 0;
    }
  }

  return infoCopy;
}

- (id)_hexStringForData:(id)data
{
  dataCopy = data;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{2 * objc_msgSend(dataCopy, "length")}];
  v5 = [dataCopy length];
  bytes = [dataCopy bytes];
  if (v5)
  {
    v7 = bytes;
    do
    {
      v8 = *v7++;
      [v4 appendFormat:@"%02X", v8];
      --v5;
    }

    while (v5);
  }

  return v4;
}

@end