@interface BRCPackageManifestReader
- (BRCPackageManifestReader)init;
- (BRCPackageManifestReader)initWithAsset:(id)a3;
- (BRCPackageManifestReader)initWithInputStream:(id)a3;
- (BRCPackageManifestReader)initWithURL:(id)a3;
- (id)nextObject;
- (void)dealloc;
- (void)done;
- (void)nextObject;
@end

@implementation BRCPackageManifestReader

- (BRCPackageManifestReader)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[BRCPackageManifestReader init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (BRCPackageManifestReader)initWithInputStream:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v18.receiver = self;
  v18.super_class = BRCPackageManifestReader;
  v6 = [(BRCPackageManifestReader *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, a3);
    v8 = [objc_alloc(MEMORY[0x277D43180]) initWithStream:v7->_stream];
    reader = v7->_reader;
    v7->_reader = v8;

    [(PBMessageStreamReader *)v7->_reader setClassOfNextMessage:objc_opt_class()];
    [v5 open];
    v10 = [(PBMessageStreamReader *)v7->_reader nextMessage];
    v11 = v10;
    if (v10 && [v10 version] == 1)
    {
      [(PBMessageStreamReader *)v7->_reader setClassOfNextMessage:objc_opt_class()];
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v16 = [v11 version];
        v17 = [(NSInputStream *)v7->_stream streamError];
        *buf = 138413058;
        v20 = v11;
        v21 = 1024;
        v22 = v16;
        v23 = 2112;
        v24 = v17;
        v25 = 2112;
        v26 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] unable to read package header %@ with version %d - %@%@", buf, 0x26u);
      }

      [(BRCPackageManifestReader *)v7 done];
      v7 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BRCPackageManifestReader)initWithURL:(id)a3
{
  v4 = [MEMORY[0x277CBEAE0] inputStreamWithURL:a3];
  v5 = [(BRCPackageManifestReader *)self initWithInputStream:v4];

  return v5;
}

- (BRCPackageManifestReader)initWithAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 fileID];
  if (v5 && (v6 = v5, [v4 deviceID], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v4 deviceID];
    v9 = [v8 unsignedIntValue];
    v10 = [v4 fileID];
    v11 = -[BRCPackageManifestReader initWithDeviceID:fileID:](self, "initWithDeviceID:fileID:", v9, [v10 unsignedLongLongValue]);
  }

  else
  {
    v8 = [v4 fileURL];
    v11 = [(BRCPackageManifestReader *)self initWithURL:v8];
  }

  return v11;
}

- (void)dealloc
{
  [(BRCPackageManifestReader *)self done];
  v3.receiver = self;
  v3.super_class = BRCPackageManifestReader;
  [(BRCPackageManifestReader *)&v3 dealloc];
}

- (void)done
{
  [(NSInputStream *)self->_stream close];
  reader = self->_reader;
  self->_reader = 0;

  stream = self->_stream;
  self->_stream = 0;
}

- (id)nextObject
{
  reader = self->_reader;
  if (!reader)
  {
    [(BRCPackageManifestReader *)&self->_reader nextObject];
    reader = v10;
  }

  v4 = [(PBMessageStreamReader *)reader nextMessage];
  if (!v4)
  {
    if ([(NSInputStream *)self->_stream streamStatus]== 7)
    {
      v5 = [(NSInputStream *)self->_stream streamError];
      error = self->_error;
      self->_error = v5;

      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, 0x90u))
      {
        [(BRCPackageManifestReader *)&self->_error nextObject];
      }
    }

    [(BRCPackageManifestReader *)self done];
  }

  return v4;
}

- (void)nextObject
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x277D85DE8];
}

@end