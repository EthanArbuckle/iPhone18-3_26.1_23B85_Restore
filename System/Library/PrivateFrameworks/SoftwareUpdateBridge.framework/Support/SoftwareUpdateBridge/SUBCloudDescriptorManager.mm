@interface SUBCloudDescriptorManager
+ (id)sharedCloudDescriptorManager;
- (SUBCloudDescriptorManager)init;
- (id)getCloudDescriptorPath;
- (id)getCloudDescriptors;
- (void)removeCloudDescriptor:(id)descriptor;
- (void)saveCloudDescriptor:(id)descriptor;
@end

@implementation SUBCloudDescriptorManager

+ (id)sharedCloudDescriptorManager
{
  if (qword_100033970 != -1)
  {
    sub_100019BA8();
  }

  v3 = qword_100033968;

  return v3;
}

- (SUBCloudDescriptorManager)init
{
  v7.receiver = self;
  v7.super_class = SUBCloudDescriptorManager;
  v2 = [(SUBCloudDescriptorManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SUBCloudDescriptorManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (id)getCloudDescriptorPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndexedSubscript:0];

  v4 = [v3 stringByAppendingPathComponent:@"SoftwareUpdate/docsFromCloudDevice"];

  return v4;
}

- (void)saveCloudDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  getCloudDescriptorPath = [(SUBCloudDescriptorManager *)self getCloudDescriptorPath];
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F1EC;
  v9[3] = &unk_10002D210;
  v10 = getCloudDescriptorPath;
  v11 = descriptorCopy;
  v7 = descriptorCopy;
  v8 = getCloudDescriptorPath;
  dispatch_sync(queue, v9);
}

- (id)getCloudDescriptors
{
  getCloudDescriptorPath = [(SUBCloudDescriptorManager *)self getCloudDescriptorPath];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:getCloudDescriptorPath];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v23 = getCloudDescriptorPath;
    v7 = [NSURL URLWithString:getCloudDescriptorPath];
    v8 = +[NSArray array];
    v28 = 0;
    v9 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v8 options:0 error:&v28];
    v22 = v28;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
    v13 = *v25;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [NSData dataWithContentsOfURL:v15, v22];
        if (v16)
        {
          v17 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v16 error:0];
          absoluteString = [v17 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
          [v17 finishDecoding];
          [v3 addObject:absoluteString];
        }

        else
        {
          v19 = softwareupdatebridge_log;
          if (!os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v17 = v19;
          absoluteString = [v15 absoluteString];
          *buf = 138412290;
          v30 = absoluteString;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Docs found, but failed to deserialize at %@", buf, 0xCu);
        }

LABEL_12:
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
      if (!v12)
      {
LABEL_14:

        v20 = v3;
        getCloudDescriptorPath = v23;
        goto LABEL_16;
      }
    }
  }

  v20 = 0;
LABEL_16:

  return v20;
}

- (void)removeCloudDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  getCloudDescriptorPath = [(SUBCloudDescriptorManager *)self getCloudDescriptorPath];
  productVersion = [descriptorCopy productVersion];

  v7 = [NSString stringWithFormat:@"%@/%@", getCloudDescriptorPath, productVersion];

  v8 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing descriptor at: %@", buf, 0xCu);
  }

  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v7];

  if (v10)
  {
    v11 = +[NSFileManager defaultManager];
    v14 = 0;
    [v11 removeItemAtPath:v7 error:&v14];
    v12 = v14;

    if (v12)
    {
      v13 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to remove: %@ - %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = 0;
  }
}

@end