@interface VMUtilities
+ (BOOL)writeDataToFile:(id)file fileData:(id)data;
+ (id)readDataFromFile:(id)file customClassSet:(id)set;
@end

@implementation VMUtilities

+ (id)readDataFromFile:(id)file customClassSet:(id)set
{
  fileCopy = file;
  setCopy = set;
  if (![fileCopy length])
  {
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10009BE10(v7);
    }

    goto LABEL_15;
  }

  v7 = [NSURL fileURLWithPath:fileCopy isDirectory:0];
  v24 = 0;
  v8 = [NSData dataWithContentsOfURL:v7 options:1 error:&v24];
  v9 = v24;
  if (!v8)
  {
    v21 = vm_vmd_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10009BDA8();
    }

LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [NSMutableSet setWithObjects:v10, v11, objc_opt_class(), 0];
  v13 = [v12 setByAddingObjectsFromSet:setCopy];
  v23 = v9;
  v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v8 error:&v23];
  v15 = v23;

  if (v15)
  {
    v16 = vm_vmd_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10009BD40();
    }
  }

  v17 = vm_vmd_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    *buf = 138412546;
    v26 = fileCopy;
    v27 = 2112;
    v28 = v18;
    v19 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "For file %@, unarchived object class: %@", buf, 0x16u);
  }

  v20 = v14;
  v7 = v20;
LABEL_16:

  return v20;
}

+ (BOOL)writeDataToFile:(id)file fileData:(id)data
{
  fileCopy = file;
  dataCopy = data;
  if ([fileCopy length])
  {
    v7 = [NSURL fileURLWithPath:fileCopy isDirectory:0];
    if (!v7)
    {
      v11 = vm_vmd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10009BF24(fileCopy, v11);
      }

      v12 = 0;
      goto LABEL_21;
    }

    v17 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v17];
    v9 = v17;
    if (v9)
    {
      v10 = vm_vmd_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10009BE54();
      }

      v11 = 0;
    }

    else
    {
      v16 = 0;
      v13 = [v8 writeToURL:v7 options:268435457 error:&v16];
      v11 = v16;
      v14 = vm_vmd_log();
      v10 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = dataCopy;
          v20 = 2112;
          v21 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "File data %@ written to location: %@", buf, 0x16u);
        }

        v12 = 1;
        goto LABEL_20;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10009BEBC();
      }
    }

    v12 = 0;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10009BF9C(v7);
  }

  v12 = 0;
LABEL_22:

  return v12;
}

@end