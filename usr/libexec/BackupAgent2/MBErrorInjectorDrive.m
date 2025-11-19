@interface MBErrorInjectorDrive
+ (id)keysFromDictionary:(id)a3 toIndex:(unint64_t)a4;
+ (id)subdictionary:(id)a3 toIndex:(unint64_t)a4;
+ (id)subdictionary:(id)a3 withKeys:(id)a4;
+ (unint64_t)subcountForOperation:(id)a3;
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)done;
- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (MBErrorInjectorDrive)initWithScript:(id)a3 delegate:(id)a4 index:(unint64_t)a5 subindex:(unint64_t)a6;
- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (unint64_t)nextIndex;
- (unint64_t)nextSubindex;
- (unint64_t)subcount;
@end

@implementation MBErrorInjectorDrive

+ (unint64_t)subcountForOperation:(id)a3
{
  v5 = a3;
  v6 = [v5 type];
  if (v6 > 6)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"MBErrorInjectorDrive.m" lineNumber:38 description:{@"Unexpected operation type: %d", objc_msgSend(v5, "type")}];

    v7 = 0;
  }

  else
  {
    v7 = 1;
    if (((1 << v6) & 0x43) == 0)
    {
      if (((1 << v6) & 0xC) != 0)
      {
        v7 = 2 * [v5 count];
        if (v7 <= 1)
        {
          v7 = 1;
        }
      }

      else
      {
        v8 = [v5 count];
        if (v8 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v8;
        }
      }
    }
  }

  v10 = v7;

  return v10;
}

+ (id)keysFromDictionary:(id)a3 toIndex:(unint64_t)a4
{
  v5 = a3;
  if ([v5 count] <= a4)
  {
    sub_10009EDAC();
  }

  v6 = [v5 allKeys];
  v7 = [v6 sortedArrayUsingSelector:"compare:"];

  v8 = [v7 subarrayWithRange:{0, a4}];

  return v8;
}

+ (id)subdictionary:(id)a3 withKeys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:{v13, v16}];
        [v7 setObject:v14 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)subdictionary:(id)a3 toIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [MBErrorInjectorDrive keysFromDictionary:v5 toIndex:a4];
  v7 = [MBErrorInjectorDrive subdictionary:v5 withKeys:v6];

  return v7;
}

- (MBErrorInjectorDrive)initWithScript:(id)a3 delegate:(id)a4 index:(unint64_t)a5 subindex:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MBErrorInjectorDrive;
  v13 = [(MBErrorInjectorDrive *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_script, a3);
    objc_storeStrong(&v14->_delegate, a4);
    v14->_index = a5;
    if ([(MBErrorInjectorDrive *)v14 count]<= a5)
    {
      sub_10009EE18();
    }

    v14->_subindex = a6;
    if ([(MBErrorInjectorDrive *)v14 subcount]<= a6)
    {
      sub_10009EE74();
    }
  }

  return v14;
}

- (BOOL)done
{
  v3 = [(MBErrorInjectorDrive *)self index];
  if (v3 != [(MBErrorInjectorDrive *)self count]- 1)
  {
    return 0;
  }

  v4 = [(MBErrorInjectorDrive *)self subindex];
  return v4 == [(MBErrorInjectorDrive *)self subcount]- 1;
}

- (unint64_t)nextIndex
{
  v3 = [(MBErrorInjectorDrive *)self subindex];
  v4 = [(MBErrorInjectorDrive *)self subcount]- 1;
  result = [(MBErrorInjectorDrive *)self index];
  if (v3 == v4)
  {
    ++result;
  }

  return result;
}

- (unint64_t)nextSubindex
{
  v3 = [(MBErrorInjectorDrive *)self subindex];
  if (v3 == [(MBErrorInjectorDrive *)self subcount]- 1)
  {
    return 0;
  }

  else
  {
    return [(MBErrorInjectorDrive *)self subindex]+ 1;
  }
}

- (unint64_t)subcount
{
  v2 = [(MBDriveScript *)self->_script operationAtIndex:self->_index];
  v3 = [MBErrorInjectorDrive subcountForOperation:v2];

  return v3;
}

- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (a5)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(MBDrive *)self->_delegate createDirectoryAtPath:v8 options:v9 error:a5];
  }

  return v10;
}

- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (a5)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *a5 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(MBDrive *)self->_delegate contentsOfDirectoryAtPath:v8 options:v9 error:a5];
  }

  return v10;
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (a6)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *a6 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [(MBDrive *)self->_delegate copyItemAtPath:v10 toPath:v11 options:v12 error:a6];
  }

  return v13;
}

- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= 2 * [v10 count])
    {
      sub_10009EED0();
    }

    v13 = [v10 allKeys];
    v14 = [v13 sortedArrayUsingSelector:"compare:"];

    v15 = [v14 subarrayWithRange:{0, self->_subindex >> 1}];
    v16 = [MBErrorInjectorDrive subdictionary:v10 withKeys:v15];
    v17 = self->_subindex;
    if (v17)
    {
      [v14 objectAtIndexedSubscript:v17 >> 1];
      v18 = v24 = a5;
      v19 = [v10 objectForKeyedSubscript:v18];
      v20 = [v19 stringByAppendingPathExtension:kMBUploadFileExtension];

      [v16 setObject:v20 forKeyedSubscript:v18];
      a5 = v24;
    }

    v21 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v16 options:v11 results:a5 error:a6];
    if (a6 && v21)
    {
      *a6 = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v22 = 0;
  }

  else
  {
    v22 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v10 options:v11 results:a5 error:a6];
  }

  return v22;
}

- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= [v10 count])
    {
      sub_10009EF3C();
    }

    v13 = [MBErrorInjectorDrive subdictionary:v10 toIndex:self->_subindex];
    v14 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v13 options:v11 results:a5 error:a6];
    if (a6 && v14)
    {
      *a6 = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v15 = 0;
  }

  else
  {
    v15 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v10 options:v11 results:a5 error:a6];
  }

  return v15;
}

- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= [v10 count])
    {
      sub_10009EFA8();
    }

    v13 = [MBErrorInjectorDrive subdictionary:v10 toIndex:self->_subindex];
    v14 = [(MBDrive *)self->_delegate moveItemsAtPaths:v13 options:v11 results:a5 error:a6];
    if (a6 && v14)
    {
      *a6 = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v15 = 0;
  }

  else
  {
    v15 = [(MBDrive *)self->_delegate moveItemsAtPaths:v10 options:v11 results:a5 error:a6];
  }

  return v15;
}

- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(MBDriveScript *)self->_script index];
    index = self->_index;
    subindex = self->_subindex;
    *buf = 138413058;
    v27 = v10;
    v28 = 2048;
    v29 = v13;
    v30 = 2048;
    v31 = index;
    v32 = 2048;
    v33 = subindex;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[MBErrorInjectorDrive remoteItemsAtPath:%@]: %lu %lu %lu", buf, 0x2Au);
    v16 = [(MBDriveScript *)self->_script index];
    v24 = self->_index;
    v25 = self->_subindex;
    v22 = v10;
    v23 = v16;
    _MBLog();
  }

  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if ([v10 count])
    {
      v17 = self->_subindex;
      if (v17 >= [v10 count])
      {
        sub_10009F014();
      }

      v18 = [v10 subarrayWithRange:{0, self->_subindex, v22, v23, v24, v25}];
      v19 = [(MBDrive *)self->_delegate removeItemsAtPaths:v18 options:v11 results:a5 error:a6];
      if (a6 && v19)
      {
        *a6 = [MBError errorWithCode:100 format:@"Simulated I/O error"];
      }

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = [(MBDrive *)self->_delegate removeItemsAtPaths:v10 options:v11 results:a5 error:a6];
  }

  return v20;
}

@end