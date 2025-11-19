@interface SKIOMedia
- (NSString)BSDName;
- (SKIOMedia)initWithDADisk:(id)a3;
- (SKIOMedia)initWithDevName:(id)a3;
- (id)copyBlockDevice;
@end

@implementation SKIOMedia

- (SKIOMedia)initWithDevName:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CD2898];
  v6 = [v4 lastPathComponent];
  v7 = IOBSDNameMatching(v5, 0, [v6 UTF8String]);
  MatchingService = IOServiceGetMatchingService(v5, v7);

  if (MatchingService)
  {
    v13.receiver = self;
    v13.super_class = SKIOMedia;
    self = [(SKIOObject *)&v13 initWithIOObject:MatchingService];
    v9 = self;
  }

  else
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_26BBB8000, v10, OS_LOG_TYPE_ERROR, "Failed to find IO media entry for %@", buf, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (SKIOMedia)initWithDADisk:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = DADiskCopyIOMedia(v4);
  if (!v6)
  {
    v8 = SKGetOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_26BBB8000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get IO media object for DA disk %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = SKIOMedia;
  self = [(SKIOObject *)&v11 initWithIOObject:v6];
  v7 = self;
LABEL_8:

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSString)BSDName
{
  v2 = [(SKIOObject *)self copyPropertyWithClass:objc_opt_class() key:@"BSD Name"];

  return v2;
}

- (id)copyBlockDevice
{
  v2 = [(SKIOObject *)self ioObjectWithClassName:@"IOBlockStorageDevice" iterateParents:1];
  v3 = [(SKIOObject *)[SKBlockDevice alloc] initWithSKIOObject:v2];

  return v3;
}

@end