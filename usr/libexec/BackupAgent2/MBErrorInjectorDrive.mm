@interface MBErrorInjectorDrive
+ (id)keysFromDictionary:(id)dictionary toIndex:(unint64_t)index;
+ (id)subdictionary:(id)subdictionary toIndex:(unint64_t)index;
+ (id)subdictionary:(id)subdictionary withKeys:(id)keys;
+ (unint64_t)subcountForOperation:(id)operation;
- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error;
- (BOOL)createDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (BOOL)done;
- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error;
- (MBErrorInjectorDrive)initWithScript:(id)script delegate:(id)delegate index:(unint64_t)index subindex:(unint64_t)subindex;
- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error;
- (unint64_t)nextIndex;
- (unint64_t)nextSubindex;
- (unint64_t)subcount;
@end

@implementation MBErrorInjectorDrive

+ (unint64_t)subcountForOperation:(id)operation
{
  operationCopy = operation;
  type = [operationCopy type];
  if (type > 6)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MBErrorInjectorDrive.m" lineNumber:38 description:{@"Unexpected operation type: %d", objc_msgSend(operationCopy, "type")}];

    v7 = 0;
  }

  else
  {
    v7 = 1;
    if (((1 << type) & 0x43) == 0)
    {
      if (((1 << type) & 0xC) != 0)
      {
        v7 = 2 * [operationCopy count];
        if (v7 <= 1)
        {
          v7 = 1;
        }
      }

      else
      {
        v8 = [operationCopy count];
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

+ (id)keysFromDictionary:(id)dictionary toIndex:(unint64_t)index
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count] <= index)
  {
    sub_10009EDAC();
  }

  allKeys = [dictionaryCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:"compare:"];

  v8 = [v7 subarrayWithRange:{0, index}];

  return v8;
}

+ (id)subdictionary:(id)subdictionary withKeys:(id)keys
{
  subdictionaryCopy = subdictionary;
  keysCopy = keys;
  v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [keysCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = keysCopy;
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
        v14 = [subdictionaryCopy objectForKeyedSubscript:{v13, v16}];
        [v7 setObject:v14 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)subdictionary:(id)subdictionary toIndex:(unint64_t)index
{
  subdictionaryCopy = subdictionary;
  v6 = [MBErrorInjectorDrive keysFromDictionary:subdictionaryCopy toIndex:index];
  v7 = [MBErrorInjectorDrive subdictionary:subdictionaryCopy withKeys:v6];

  return v7;
}

- (MBErrorInjectorDrive)initWithScript:(id)script delegate:(id)delegate index:(unint64_t)index subindex:(unint64_t)subindex
{
  scriptCopy = script;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = MBErrorInjectorDrive;
  v13 = [(MBErrorInjectorDrive *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_script, script);
    objc_storeStrong(&v14->_delegate, delegate);
    v14->_index = index;
    if ([(MBErrorInjectorDrive *)v14 count]<= index)
    {
      sub_10009EE18();
    }

    v14->_subindex = subindex;
    if ([(MBErrorInjectorDrive *)v14 subcount]<= subindex)
    {
      sub_10009EE74();
    }
  }

  return v14;
}

- (BOOL)done
{
  index = [(MBErrorInjectorDrive *)self index];
  if (index != [(MBErrorInjectorDrive *)self count]- 1)
  {
    return 0;
  }

  subindex = [(MBErrorInjectorDrive *)self subindex];
  return subindex == [(MBErrorInjectorDrive *)self subcount]- 1;
}

- (unint64_t)nextIndex
{
  subindex = [(MBErrorInjectorDrive *)self subindex];
  v4 = [(MBErrorInjectorDrive *)self subcount]- 1;
  result = [(MBErrorInjectorDrive *)self index];
  if (subindex == v4)
  {
    ++result;
  }

  return result;
}

- (unint64_t)nextSubindex
{
  subindex = [(MBErrorInjectorDrive *)self subindex];
  if (subindex == [(MBErrorInjectorDrive *)self subcount]- 1)
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

- (BOOL)createDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (error)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(MBDrive *)self->_delegate createDirectoryAtPath:pathCopy options:optionsCopy error:error];
  }

  return v10;
}

- (id)contentsOfDirectoryAtPath:(id)path options:(id)options error:(id *)error
{
  pathCopy = path;
  optionsCopy = options;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (error)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(MBDrive *)self->_delegate contentsOfDirectoryAtPath:pathCopy options:optionsCopy error:error];
  }

  return v10;
}

- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(id)options error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  optionsCopy = options;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if (error)
    {
      [MBError errorWithCode:100 format:@"Simulated I/O error"];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = [(MBDrive *)self->_delegate copyItemAtPath:pathCopy toPath:toPathCopy options:optionsCopy error:error];
  }

  return v13;
}

- (BOOL)uploadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= 2 * [pathsCopy count])
    {
      sub_10009EED0();
    }

    allKeys = [pathsCopy allKeys];
    v14 = [allKeys sortedArrayUsingSelector:"compare:"];

    v15 = [v14 subarrayWithRange:{0, self->_subindex >> 1}];
    v16 = [MBErrorInjectorDrive subdictionary:pathsCopy withKeys:v15];
    v17 = self->_subindex;
    if (v17)
    {
      [v14 objectAtIndexedSubscript:v17 >> 1];
      v18 = v24 = results;
      v19 = [pathsCopy objectForKeyedSubscript:v18];
      v20 = [v19 stringByAppendingPathExtension:kMBUploadFileExtension];

      [v16 setObject:v20 forKeyedSubscript:v18];
      results = v24;
    }

    v21 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v16 options:optionsCopy results:results error:error];
    if (error && v21)
    {
      *error = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v22 = 0;
  }

  else
  {
    v22 = [(MBDrive *)self->_delegate uploadFilesAtPaths:pathsCopy options:optionsCopy results:results error:error];
  }

  return v22;
}

- (BOOL)downloadFilesAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= [pathsCopy count])
    {
      sub_10009EF3C();
    }

    v13 = [MBErrorInjectorDrive subdictionary:pathsCopy toIndex:self->_subindex];
    v14 = [(MBDrive *)self->_delegate uploadFilesAtPaths:v13 options:optionsCopy results:results error:error];
    if (error && v14)
    {
      *error = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v15 = 0;
  }

  else
  {
    v15 = [(MBDrive *)self->_delegate uploadFilesAtPaths:pathsCopy options:optionsCopy results:results error:error];
  }

  return v15;
}

- (BOOL)moveItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    subindex = self->_subindex;
    if (subindex >= [pathsCopy count])
    {
      sub_10009EFA8();
    }

    v13 = [MBErrorInjectorDrive subdictionary:pathsCopy toIndex:self->_subindex];
    v14 = [(MBDrive *)self->_delegate moveItemsAtPaths:v13 options:optionsCopy results:results error:error];
    if (error && v14)
    {
      *error = [MBError errorWithCode:100 format:@"Simulated I/O error"];
    }

    v15 = 0;
  }

  else
  {
    v15 = [(MBDrive *)self->_delegate moveItemsAtPaths:pathsCopy options:optionsCopy results:results error:error];
  }

  return v15;
}

- (BOOL)removeItemsAtPaths:(id)paths options:(id)options results:(id *)results error:(id *)error
{
  pathsCopy = paths;
  optionsCopy = options;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    index = [(MBDriveScript *)self->_script index];
    index = self->_index;
    subindex = self->_subindex;
    *buf = 138413058;
    v27 = pathsCopy;
    v28 = 2048;
    v29 = index;
    v30 = 2048;
    v31 = index;
    v32 = 2048;
    v33 = subindex;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[MBErrorInjectorDrive remoteItemsAtPath:%@]: %lu %lu %lu", buf, 0x2Au);
    index2 = [(MBDriveScript *)self->_script index];
    v24 = self->_index;
    v25 = self->_subindex;
    v22 = pathsCopy;
    v23 = index2;
    _MBLog();
  }

  if ([(MBDriveScript *)self->_script index]== self->_index)
  {
    if ([pathsCopy count])
    {
      v17 = self->_subindex;
      if (v17 >= [pathsCopy count])
      {
        sub_10009F014();
      }

      v18 = [pathsCopy subarrayWithRange:{0, self->_subindex, v22, v23, v24, v25}];
      v19 = [(MBDrive *)self->_delegate removeItemsAtPaths:v18 options:optionsCopy results:results error:error];
      if (error && v19)
      {
        *error = [MBError errorWithCode:100 format:@"Simulated I/O error"];
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
    v20 = [(MBDrive *)self->_delegate removeItemsAtPaths:pathsCopy options:optionsCopy results:results error:error];
  }

  return v20;
}

@end