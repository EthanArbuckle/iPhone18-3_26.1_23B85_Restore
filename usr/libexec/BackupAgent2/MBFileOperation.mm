@interface MBFileOperation
+ (BOOL)clone:(int)a3 sourceRpath:(id)a4 destinationBasePath:(id)a5 destinationBaseFD:(int)a6 destinationRpath:(id)a7 error:(id *)a8;
+ (BOOL)closeFD:(int)a3 path:(id)a4 error:(id *)a5;
+ (BOOL)createDirectories:(int)a3 destinationBasePath:(id)a4 destinationRpath:(id)a5 permissions:(unsigned __int16)a6 error:(id *)a7;
+ (BOOL)crossVolumeCopyFrom:(const char *)a3 toDestination:(const char *)a4 shouldDeleteSource:(BOOL)a5 error:(id *)a6;
+ (BOOL)crossVolumeMoveFrom:(id)a3 intoDir:(id)a4 toFileNamed:(id)a5 error:(id *)a6;
+ (BOOL)exists:(BOOL *)a3 atBasePath:(id)a4 baseFD:(int)a5 rpath:(id)a6 error:(id *)a7;
+ (BOOL)hardlink:(int)a3 sourceRpath:(id)a4 destinationBasePath:(id)a5 destinationBaseFD:(int)a6 destinationRpath:(id)a7 error:(id *)a8;
+ (BOOL)openFD:(int *)a3 baseFD:(int)a4 rpath:(id)a5 flags:(int)a6 error:(id *)a7;
+ (BOOL)openFD:(int *)a3 path:(id)a4 flags:(int)a5 error:(id *)a6;
+ (BOOL)unlink:(int)a3 targetBasePath:(id)a4 targetRpath:(id)a5 error:(id *)a6;
+ (id)createPathInDirectory:(id)a3 fileName:(id)a4;
+ (id)symbolicLinkTargetWithPath:(id)a3 error:(id *)a4;
+ (id)symbolicLinkTargetWithPathFSR:(const char *)a3 error:(id *)a4;
@end

@implementation MBFileOperation

+ (BOOL)openFD:(int *)a3 baseFD:(int)a4 rpath:(id)a5 flags:(int)a6 error:(id *)a7
{
  v11 = a5;
  if (!a3)
  {
    sub_10009C9B8();
  }

  if (a4 == -1)
  {
    sub_10009C98C();
  }

  v12 = v11;
  if (!v11)
  {
    sub_10009C960();
  }

  if (!a6)
  {
    sub_10009C934();
  }

  v13 = openat(a4, [v11 fileSystemRepresentation], a6);
  v14 = v13;
  if (v13 < 0)
  {
    v15 = __error();
    if (a7)
    {
      *a7 = [MBError errorWithErrno:"errorWithErrno:path:format:" path:*v15 format:?];
    }
  }

  else
  {
    *a3 = v13;
  }

  return v14 >= 0;
}

+ (BOOL)openFD:(int *)a3 path:(id)a4 flags:(int)a5 error:(id *)a6
{
  v9 = a4;
  if (!a3)
  {
    sub_10009CA3C();
  }

  v10 = v9;
  if (!v9)
  {
    sub_10009CA10();
  }

  if (!a5)
  {
    sub_10009C9E4();
  }

  v11 = open([v9 fileSystemRepresentation], a5);
  v12 = v11;
  if (v11 < 0)
  {
    v13 = __error();
    if (a6)
    {
      *a6 = [MBError errorWithErrno:"errorWithErrno:path:format:" path:*v13 format:?];
    }
  }

  else
  {
    *a3 = v11;
  }

  return v12 >= 0;
}

+ (BOOL)closeFD:(int)a3 path:(id)a4 error:(id *)a5
{
  v7 = a4;
  if (a3 == -1)
  {
    sub_10009CA68();
  }

  v8 = v7;
  v9 = close(a3);
  if (v9)
  {
    v10 = __error();
    if (a5)
    {
      *a5 = [MBError errorWithErrno:"errorWithErrno:path:format:" path:*v10 format:?];
    }
  }

  return v9 == 0;
}

+ (BOOL)exists:(BOOL *)a3 atBasePath:(id)a4 baseFD:(int)a5 rpath:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a6;
  if (!a3)
  {
    sub_10009CB18();
  }

  if (!v11)
  {
    sub_10009CAEC();
  }

  if (a5 == -1)
  {
    sub_10009CAC0();
  }

  v13 = v12;
  if (!v12)
  {
    sub_10009CA94();
  }

  if (faccessat(a5, [v12 fileSystemRepresentation], 0, 32))
  {
    v14 = *__error();
    if (v14 == 2)
    {
      *a3 = 0;
      LOBYTE(a7) = 1;
    }

    else if (a7)
    {
      v15 = [v11 stringByAppendingPathComponent:v13];
      *a7 = [MBError errorWithErrno:v14 path:v15 format:@"faccessat() failure %d", v14];

      LOBYTE(a7) = 0;
    }
  }

  else
  {
    LOBYTE(a7) = 1;
    *a3 = 1;
  }

  return a7;
}

+ (BOOL)hardlink:(int)a3 sourceRpath:(id)a4 destinationBasePath:(id)a5 destinationBaseFD:(int)a6 destinationRpath:(id)a7 error:(id *)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (a3 == -1)
  {
    sub_10009CCD0();
  }

  if (!v13)
  {
    sub_10009CCA4();
  }

  if (!v14)
  {
    sub_10009CC78();
  }

  if (a6 == -1)
  {
    sub_10009CC4C();
  }

  v16 = v15;
  if (!v15)
  {
    sub_10009CC20();
  }

  v17 = linkat(a3, [v13 fileSystemRepresentation], a6, objc_msgSend(v15, "fileSystemRepresentation"), 0);
  v18 = v17;
  if (a8 && v17)
  {
    v19 = *__error();
    v20 = [v14 stringByAppendingPathComponent:v16];
    *a8 = [MBError errorWithErrno:v19 path:v20 format:@"linkat() failure %d", v19];
  }

  return v18 == 0;
}

+ (BOOL)clone:(int)a3 sourceRpath:(id)a4 destinationBasePath:(id)a5 destinationBaseFD:(int)a6 destinationRpath:(id)a7 error:(id *)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (a3 == -1)
  {
    sub_10009CDAC();
  }

  if (!v13)
  {
    sub_10009CD80();
  }

  if (!v14)
  {
    sub_10009CD54();
  }

  if (a6 == -1)
  {
    sub_10009CD28();
  }

  v16 = v15;
  if (!v15)
  {
    sub_10009CCFC();
  }

  v17 = clonefileat(a3, [v13 fileSystemRepresentation], a6, objc_msgSend(v15, "fileSystemRepresentation"), 0);
  v18 = v17;
  if (a8 && v17)
  {
    v19 = *__error();
    v20 = [v14 stringByAppendingPathComponent:v16];
    *a8 = [MBError errorWithErrno:v19 path:v20 format:@"clonefileat() failure %d", v19];
  }

  return v18 == 0;
}

+ (BOOL)createDirectories:(int)a3 destinationBasePath:(id)a4 destinationRpath:(id)a5 permissions:(unsigned __int16)a6 error:(id *)a7
{
  v8 = a6;
  v11 = a4;
  v12 = a5;
  if (a3 == 1)
  {
    sub_10009CE5C();
  }

  if (!v11)
  {
    sub_10009CE30();
  }

  v13 = v12;
  if (!v12)
  {
    sub_10009CE04();
  }

  if (!v8)
  {
    sub_10009CDD8();
  }

  v14 = mkpathat_np(a3, [v12 fileSystemRepresentation], v8);
  v15 = v14;
  if (v14 && v14 != 17 && a7)
  {
    v16 = [v11 stringByAppendingPathComponent:v13];
    *a7 = [MBError errorWithErrno:v15 path:v16 format:@"mkpathat_np() failure %d", v15];
  }

  if (v15)
  {
    v17 = v15 == 17;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;

  return v18;
}

+ (BOOL)unlink:(int)a3 targetBasePath:(id)a4 targetRpath:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  if (a3 == 1)
  {
    sub_10009CEB4();
  }

  v11 = v10;
  if (!v10)
  {
    sub_10009CE88();
  }

  v12 = unlinkat(a3, [v10 fileSystemRepresentation], 0);
  v13 = v12;
  if (a6 && v12)
  {
    v14 = *__error();
    v15 = [v9 stringByAppendingPathComponent:v11];
    *a6 = [MBError errorWithErrno:v14 path:v15 format:@"unlinkat() failure %d", v14];
  }

  return v13 == 0;
}

+ (id)createPathInDirectory:(id)a3 fileName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    sub_10009CEF4();
  }

  v7 = v6;
  if (qword_10011E338 != -1)
  {
    sub_10009CEE0();
  }

  v8 = [v5 fileSystemRepresentation];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10002D85C;
  v26 = sub_10002D86C;
  v27 = 0;
  v9 = qword_10011E330;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D874;
  block[3] = &unk_1000FD840;
  v21 = v8;
  v10 = v5;
  v18 = v10;
  v11 = v7;
  v19 = v11;
  v20 = &v22;
  dispatch_sync(v9, block);
  v12 = v23[5];
  if (!v12)
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[MBFileOperation createPathInDirectory:fileName:]");
    [v15 handleFailureInFunction:v16 file:@"MBFileOperation.m" lineNumber:218 description:{@"Unable to create temporary path in: %@", v10}];

    v12 = v23[5];
  }

  v13 = v12;

  _Block_object_dispose(&v22, 8);

  return v13;
}

+ (BOOL)crossVolumeCopyFrom:(const char *)a3 toDestination:(const char *)a4 shouldDeleteSource:(BOOL)a5 error:(id *)a6
{
  if (!a3)
  {
    sub_10009CFFC();
  }

  if (!a4)
  {
    sub_10009CFD0();
  }

  if (!a6)
  {
    sub_10009CFA4();
  }

  if (a5)
  {
    v9 = 1179662;
  }

  else
  {
    v9 = 131086;
  }

  v10 = copyfile_state_alloc();
  v11 = copyfile(a3, a4, v10, v9);
  v12 = *__error();
  copyfile_state_free(v10);
  if (v11)
  {
    v13 = v12 == 17;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (!v13)
  {
    v15 = [NSString mb_stringWithFileSystemRepresentation:a3];
    *a6 = [MBError posixErrorWithPath:v15 format:@"copyfile failed"];

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v19 = a3;
      v20 = 2080;
      v21 = a4;
      v22 = 1024;
      v23 = v11;
      v24 = 1024;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "copyfile(%s, %s) failed (%d): %{errno}d", buf, 0x22u);
      _MBLog();
    }
  }

  return v14;
}

+ (BOOL)crossVolumeMoveFrom:(id)a3 intoDir:(id)a4 toFileNamed:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    sub_10009D0AC();
  }

  if (!v11)
  {
    sub_10009D080();
  }

  v13 = v12;
  if (!v12)
  {
    sub_10009D054();
  }

  if (!a6)
  {
    sub_10009D028();
  }

  v14 = [v11 stringByAppendingPathComponent:@"cross_volume_copy"];
  v15 = [a1 createPathInDirectory:v14 fileName:0];

  v16 = [v10 fileSystemRepresentation];
  v17 = [v15 fileSystemRepresentation];
  if ([a1 crossVolumeCopyFrom:v16 toDestination:v17 shouldDeleteSource:1 error:a6])
  {
    v18 = [a1 createPathInDirectory:v11 fileName:v13];
    v19 = [v18 fileSystemRepresentation];
    v20 = renamex_np(v17, v19, 4u);
    v21 = v20 == 0;
    if (v20)
    {
      v27 = *__error();
      v22 = [NSString stringWithUTF8String:v16];
      *a6 = [MBError errorWithErrno:v27 path:v22 format:@"renamex_np() from %s to %s failed", v16, v19];
    }
  }

  else
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *a6;
      *buf = 136315650;
      v29 = v16;
      v30 = 2080;
      v31 = v17;
      v32 = 2112;
      v33 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "could not copy across volumes from %s to %s: %@", buf, 0x20u);
      v26 = *a6;
      _MBLog();
    }

    v21 = 0;
  }

  return v21;
}

+ (id)symbolicLinkTargetWithPath:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [a3 fileSystemRepresentation];

  return [a1 symbolicLinkTargetWithPathFSR:v8 error:a4];
}

+ (id)symbolicLinkTargetWithPathFSR:(const char *)a3 error:(id *)a4
{
  v7 = readlink(a3, v17, 0x400uLL);
  if (v7 < 0)
  {
    if (*__error() == 2 || *__error() == 22)
    {
      if (a4)
      {
        v12 = [a1 description];
        v13 = 4;
LABEL_13:
        *a4 = [MBError posixErrorWithCode:v13 path:v12 format:@"readlink error"];
      }
    }

    else if (a4)
    {
      v12 = [a1 description];
      v13 = 101;
      goto LABEL_13;
    }

    v10 = 0;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 stringWithFileSystemRepresentation:v17 length:v8];

  if (!v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = a3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to convert filesystem representation %s", buf, 0xCu);
      _MBLog();
    }

    if (a4)
    {
      *a4 = [MBError errorWithCode:7 format:@"Failed to convert filesystem representation"];
    }
  }

LABEL_15:

  return v10;
}

@end