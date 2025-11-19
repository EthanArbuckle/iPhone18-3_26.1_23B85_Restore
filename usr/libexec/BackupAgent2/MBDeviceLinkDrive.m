@interface MBDeviceLinkDrive
+ (id)deviceLinkDriveWithConnection:(void *)a3;
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (MBDeviceLinkDrive)initWithConnection:(void *)a3;
- (__CFDictionary)mapOptions:(id)a3;
- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (id)mapAttributes:(id)a3;
- (id)mapFileType:(id)a3;
- (id)mapResults:(id)a3;
- (int)mapStatus:(int)a3;
- (void)dealloc;
- (void)progressUpdatedWithPercentage:(double)a3 size:(unint64_t)a4;
@end

@implementation MBDeviceLinkDrive

- (int)mapStatus:(int)a3
{
  v4 = a3 + 15;
  if (a3 + 15) < 0x10 && ((0xE3F5u >> v4))
  {
    return dword_1000B7168[v4];
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No code for DeviceLink error: %d", buf, 8u);
    _MBLog();
  }

  return 100;
}

- (__CFDictionary)mapOptions:(id)a3
{
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [a3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [a3 objectForKeyedSubscript:v9];
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

      v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)mapResults:(id)a3
{
  v4 = [NSMutableDictionary dictionaryWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [a3 objectForKeyedSubscript:v9];
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

      v6 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)mapFileType:(id)a3
{
  if ([a3 isEqualToString:@"DLFileTypeDirectory"])
  {
    v4 = &NSFileTypeDirectory;
  }

  else
  {
    v5 = [a3 isEqualToString:@"DLFileTypeRegular"];
    v4 = &NSFileTypeUnknown;
    if (v5)
    {
      v4 = &NSFileTypeRegular;
    }
  }

  return *v4;
}

- (id)mapAttributes:(id)a3
{
  v5 = [NSMutableDictionary dictionaryWithCapacity:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [a3 objectForKeyedSubscript:{v10, v16}];
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

      v7 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)deviceLinkDriveWithConnection:(void *)a3
{
  v3 = [[MBDeviceLinkDrive alloc] initWithConnection:a3];

  return v3;
}

- (MBDeviceLinkDrive)initWithConnection:(void *)a3
{
  v5.receiver = self;
  v5.super_class = MBDeviceLinkDrive;
  result = [(MBDeviceLinkDrive *)&v5 init];
  if (result)
  {
    result->_connection = a3;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MBDeviceLinkDrive;
  [(MBDeviceLinkDrive *)&v2 dealloc];
}

- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a4];
  v9 = DLCreateDirectory();
  v10 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v9 errorString:0 path:a3 error:a5];
}

- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v23 = 0;
  v24 = 0;
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a4];
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

  [(MBDeviceLinkDrive *)self mapStatus:v9 errorString:v23 path:a3 error:a5];
  return v12;
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a5];
  v10 = DLCopyItem();
  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:a3 error:a6];
}

- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a5];
  v10 = DLUploadFile();
  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:a3 error:a6];
}

- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a4];
  v10 = DLUploadFiles();
  if (a5)
  {
    *a5 = [(MBDeviceLinkDrive *)self mapResults:0];
  }

  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:0 error:a6];
}

- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a5];
  v10 = DLDownloadFile();
  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:a3 error:a6];
}

- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a4];
  v10 = DLDownloadFiles();
  if (a5)
  {
    *a5 = [(MBDeviceLinkDrive *)self mapResults:0];
  }

  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:0 error:a6];
}

- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a5];
  v10 = DLMoveItem();
  v11 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v10 errorString:0 path:a3 error:a6];
}

- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  if (![a3 count])
  {
    return 1;
  }

  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a4];
  v11 = DLMoveItems();
  if (a5)
  {
    *a5 = [(MBDeviceLinkDrive *)self mapResults:0];
  }

  v12 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v11 errorString:0 path:0 error:a6];
}

- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a4];
  v9 = DLRemoveItem();
  v10 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v9 errorString:0 path:a3 error:a5];
}

- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  if (![a3 count])
  {
    return 1;
  }

  connection = self->_connection;
  [(MBDeviceLinkDrive *)self mapOptions:a4];
  v11 = DLRemoveItems();
  if (a5)
  {
    *a5 = [(MBDeviceLinkDrive *)self mapResults:0];
  }

  v12 = 0;
  return [(MBDeviceLinkDrive *)self mapStatus:v11 errorString:0 path:0 error:a6];
}

- (void)progressUpdatedWithPercentage:(double)a3 size:(unint64_t)a4
{
  connection = self->_connection;
  v6 = [NSNumber numberWithDouble:a3];
  v7 = [NSNumber numberWithUnsignedLongLong:a4];

  _DLSetProgress(connection, v6, v7);
}

@end