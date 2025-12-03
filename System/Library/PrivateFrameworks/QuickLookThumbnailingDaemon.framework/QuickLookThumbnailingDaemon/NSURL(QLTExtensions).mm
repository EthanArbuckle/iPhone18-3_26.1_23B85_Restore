@interface NSURL(QLTExtensions)
- (BOOL)qlt_getDeviceIdentifier:()QLTExtensions;
- (BOOL)qlt_getVolumeUUID:()QLTExtensions;
- (uint64_t)qlt_getDocumentIdentifier:()QLTExtensions;
@end

@implementation NSURL(QLTExtensions)

- (uint64_t)qlt_getDocumentIdentifier:()QLTExtensions
{
  v12 = 0;
  v5 = *MEMORY[0x277CBE7C8];
  v11 = 0;
  v6 = [self getResourceValue:&v12 forKey:v5 error:&v11];
  v7 = v12;
  v8 = v11;
  if (v6)
  {
    if (a3)
    {
      *a3 = [v7 unsignedIntegerValue];
    }
  }

  else
  {
    v9 = _log_2();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(QLTExtensions) *)v8 qlt_getDocumentIdentifier:self, v9];
    }
  }

  return v6;
}

- (BOOL)qlt_getDeviceIdentifier:()QLTExtensions
{
  memset(&v6, 0, sizeof(v6));
  v4 = stat([self fileSystemRepresentation], &v6);
  if (a3 && !v4)
  {
    *a3 = v6.st_dev;
  }

  return v4 == 0;
}

- (BOOL)qlt_getVolumeUUID:()QLTExtensions
{
  v16 = *MEMORY[0x277D85DE8];
  memset(&v15, 0, 512);
  if (statfs([self fileSystemRepresentation], &v15))
  {
    v5 = _log_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NSURL(QLTExtensions) *)self qlt_getVolumeUUID:v5];
    }

    v6 = 0;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v12 = xmmword_2616305C0;
    v13 = 0;
    v7 = getattrlist(v15.f_mntonname, &v12, v14, 0x14uLL, 0);
    v6 = v7 == 0;
    if (v7)
    {
      v8 = v7;
      v9 = _log_2();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NSURL(QLTExtensions) *)v8 qlt_getVolumeUUID:v9];
      }
    }

    else
    {
      *a3 = *&v14[4];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)qlt_getDocumentIdentifier:()QLTExtensions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2615D3000, log, OS_LOG_TYPE_ERROR, "Got error %@ trying to find docid for %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)qlt_getVolumeUUID:()QLTExtensions .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "statfs on %@ failed", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)qlt_getVolumeUUID:()QLTExtensions .cold.2(int a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v6[0] = 67109376;
  v6[1] = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "getattrlist returned %d %{errno}d", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

@end