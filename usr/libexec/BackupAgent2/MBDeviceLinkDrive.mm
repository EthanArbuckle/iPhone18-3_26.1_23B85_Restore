@interface MBDeviceLinkDrive
+ (id)deviceLinkDriveWithConnection:(void *)connection;
- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)createDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)downloadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)removeItemAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)uploadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (MBDeviceLinkDrive)initWithConnection:(void *)connection;
- (__CFDictionary)mapOptions:(id)options;
- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (id)mapAttributes:(id)attributes;
- (id)mapFileType:(id)type;
- (id)mapResults:(id)results;
- (int)mapStatus:(int)status;
- (void)dealloc;
- (void)progressUpdatedWithPercentage:(double)percentage size:(unint64_t)size;
@end

@implementation MBDeviceLinkDrive

- (int)mapStatus:(int)status
{
  v4 = status + 15;
  if (status + 15) < 0x10 && ((0xE3F5u >> v4))
  {
    return dword_1000B7168[v4];
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No code for DeviceLink error: %d", buf, 8u);
    _MBLog();
  }

  return 100;
}

- (__CFDictionary)mapOptions:(id)options
{
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [options count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [options countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(options);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [options objectForKeyedSubscript:v9];
        if ([v9 isEqualToString:@"FileHandleFactory"])
        {
          v11 = [[MBDeviceLinkDriveContext alloc] initWithFileHandleFactory:v10];
          v13[0] = sub_100015598;
          v13[1] = sub_100015618;
          v13[2] = sub_100015670;
          v13[3] = sub_1000156D0;
          v13[4] = sub_100015740;
          v13[5] = v11;
          -[NSMutableDictionary setObject:forKeyedSubscript:](v4, "setObject:forKeyedSubscript:", +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [+[NSData dataWithBytes:length:](NSData bytes:v13]), @"DLDeviceIOCallbacks");
        }
      }

      v6 = [options countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)mapResults:(id)results
{
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [results countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(results);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [results objectForKeyedSubscript:v9];
        v11 = [NSMutableDictionary dictionaryWithCapacity:0];
        v12 = -[MBDeviceLinkDrive mapStatus:](self, "mapStatus:", [objc_msgSend(v10 objectForKeyedSubscript:{@"DLFileErrorCode", "intValue"}]);
        v13 = [v10 objectForKeyedSubscript:@"DLFileErrorString"];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = &stru_1000FF270;
        }

        [(NSMutableDictionary *)v11 setObject:v14 forKeyedSubscript:NSLocalizedDescriptionKey];
        [(NSMutableDictionary *)v4 setObject:[NSError forKeyedSubscript:"errorWithDomain:code:userInfo:" errorWithDomain:v12 code:v11 userInfo:?], v9];
      }

      v6 = [results countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)mapFileType:(id)type
{
  if ([type isEqualToString:@"DLFileTypeDirectory"])
  {
    v4 = &NSFileTypeDirectory;
  }

  else
  {
    v5 = [type isEqualToString:@"DLFileTypeRegular"];
    v4 = &NSFileTypeUnknown;
    if (v5)
    {
      v4 = &NSFileTypeRegular;
    }
  }

  return *v4;
}

- (id)mapAttributes:(id)attributes
{
  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [attributes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v16 = NSFileModificationDate;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(attributes);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [attributes objectForKeyedSubscript:{v10, v16}];
        if ([v10 isEqualToString:@"DLFileType"])
        {
          v12 = [(MBDeviceLinkDrive *)self mapFileType:v11];
          v13 = v5;
          v14 = NSFileType;
        }

        else if ([v10 isEqualToString:@"DLFileSize"])
        {
          v13 = v5;
          v12 = v11;
          v14 = NSFileSize;
        }

        else
        {
          if (![v10 isEqualToString:@"DLFileModificationDate"])
          {
            continue;
          }

          v13 = v5;
          v12 = v11;
          v14 = v16;
        }

        [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];
      }

      v7 = [attributes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)deviceLinkDriveWithConnection:(void *)connection
{
  v3 = [[MBDeviceLinkDrive alloc] initWithConnection:connection];

  return v3;
}

- (MBDeviceLinkDrive)initWithConnection:(void *)connection
{
  v5.receiver = self;
  v5.super_class = MBDeviceLinkDrive;
  result = [(MBDeviceLinkDrive *)&v5 init];
  if (result)
  {
    result->_connection = connection;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MBDeviceLinkDrive;
  [(MBDeviceLinkDrive *)&v2 dealloc];
}

- (BOOL)createDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v9 = DLCreateDirectory();
  v10 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v9 errorString:0 path:path error:error];
}

- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  v23 = 0;
  v24 = 0;
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v9 = DLContentsOfDirectory();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!v9)
  {
    v12 = [NSMutableDictionary dictionaryWithCapacity:0];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v24;
    v14 = [v24 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          -[NSMutableDictionary setObject:forKeyedSubscript:](v12, "setObject:forKeyedSubscript:", -[MBDeviceLinkDrive mapAttributes:](self, "mapAttributes:", [v24 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v17)]), *(*(&v19 + 1) + 8 * v17));
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v15);
    }
  }

  [(MBDeviceLinkDrive *)self mapStatus:v9 errorString:v23 path:path error:error];
  return v12;
}

- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v10 = DLCopyItem();
  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:path error:error];
}

- (BOOL)uploadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v10 = DLUploadFile();
  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:path error:error];
}

- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v10 = DLUploadFiles();
  if (results)
  {
    *results = [(MBDeviceLinkDrive *)self mapResults:0];
  }

  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:0 error:error];
}

- (BOOL)downloadFileAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v10 = DLDownloadFile();
  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:path error:error];
}

- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v10 = DLDownloadFiles();
  if (results)
  {
    *results = [(MBDeviceLinkDrive *)self mapResults:0];
  }

  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:0 error:error];
}

- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v10 = DLMoveItem();
  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:path error:error];
}

- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  if (![paths count])
  {
    return 1;
  }

  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v11 = DLMoveItems();
  if (results)
  {
    *results = [(MBDeviceLinkDrive *)self mapResults:0];
  }

  v12 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v11 errorString:0 path:0 error:error];
}

- (BOOL)removeItemAtPath:(id)path options:(id)options error:(id *)error
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v9 = DLRemoveItem();
  v10 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v9 errorString:0 path:path error:error];
}

- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  if (![paths count])
  {
    return 1;
  }

  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:options];
  v11 = DLRemoveItems();
  if (results)
  {
    *results = [(MBDeviceLinkDrive *)self mapResults:0];
  }

  v12 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v11 errorString:0 path:0 error:error];
}

- (void)progressUpdatedWithPercentage:(double)percentage size:(unint64_t)size
{
  connection = self->_connection;
  v6 = [NSNumber numberWithDouble:percentage];
  v7 = [NSNumber numberWithUnsignedLongLong:size];

  _DLSetProgress(connection, v6, v7);
}

@end