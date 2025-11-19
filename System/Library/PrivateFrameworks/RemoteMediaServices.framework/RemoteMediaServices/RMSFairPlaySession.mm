@interface RMSFairPlaySession
- (BOOL)_getHardwareInfo:(FairPlayHWInfo_ *)a3;
- (id)_hexStringForData:(id)a3;
- (id)handshakeData;
- (id)handshakeIterationWithData:(id)a3;
- (id)headerForURL:(id)a3;
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

- (id)handshakeIterationWithData:(id)a3
{
  v20 = 0;
  v19 = 0;
  v18 = -1;
  v4 = a3;
  v5 = a3;
  [v5 bytes];
  [v5 length];

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

- (id)headerForURL:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  v6 = [v4 path];

  v7 = [v5 substringFromIndex:{objc_msgSend(v5, "rangeOfString:", v6)}];

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

- (BOOL)_getHardwareInfo:(FairPlayHWInfo_ *)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = MGCopyAnswer();
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFDataGetTypeID() && (Length = CFDataGetLength(v5), Length <= 20))
      {
        v3->IDLength = Length;
        [v5 getBytes:v3->ID length:?];
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = 0;
      }

      CFRelease(v5);
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)_hexStringForData:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{2 * objc_msgSend(v3, "length")}];
  v5 = [v3 length];
  v6 = [v3 bytes];
  if (v5)
  {
    v7 = v6;
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