@interface MBRestoreFileHandle
- (BOOL)closeWithError:(id *)error;
- (MBRestoreFileHandle)initWithEngine:(id)engine fileHandle:(id)handle file:(id)file;
- (int64_t)writeWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
@end

@implementation MBRestoreFileHandle

- (MBRestoreFileHandle)initWithEngine:(id)engine fileHandle:(id)handle file:(id)file
{
  engineCopy = engine;
  fileCopy = file;
  v18.receiver = self;
  v18.super_class = MBRestoreFileHandle;
  v11 = [(MBFileHandleProxy *)&v18 initWithFileHandle:handle];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_engine, engine);
    objc_storeStrong(&v12->_file, file);
    digest = [fileCopy domain];
    if ([digest shouldDigest])
    {
      shouldVerifyDigests = [engineCopy shouldVerifyDigests];

      if (!shouldVerifyDigests)
      {
LABEL_6:
        +[NSDate timeIntervalSinceReferenceDate];
        v12->_startTime = v16;
        goto LABEL_7;
      }

      v15 = objc_alloc_init(MBDigestSHA1);
      digest = v12->_digest;
      v12->_digest = v15;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v12;
}

- (int64_t)writeWithBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  fileHandle = [(MBFileHandleProxy *)self fileHandle];
  v10 = [fileHandle writeWithBytes:bytes length:length error:error];

  if (v10 >= 1)
  {
    [(MBDigest *)self->_digest updateWithBytes:bytes length:v10];
  }

  return v10;
}

- (BOOL)closeWithError:(id *)error
{
  final = [(MBDigest *)self->_digest final];
  if (!final)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      absolutePath = [(MBFile *)self->_file absolutePath];
      *buf = 138412290;
      v40 = absolutePath;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Not digested: %@", buf, 0xCu);

      absolutePath2 = [(MBFile *)self->_file absolutePath];
      v32 = absolutePath2;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_16;
  }

  digest = [(MBFile *)self->_file digest];

  if (digest)
  {
    digest2 = [(MBFile *)self->_file digest];
    v8 = [final isEqualToData:digest2];

    v9 = MBGetDefaultLog();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        absolutePath3 = [(MBFile *)self->_file absolutePath];
        *buf = 138412290;
        v40 = absolutePath3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Digest matches: %@", buf, 0xCu);

        absolutePath2 = [(MBFile *)self->_file absolutePath];
        v32 = absolutePath2;
LABEL_8:
        _MBLog();

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      digest3 = [(MBFile *)self->_file digest];
      absolutePath4 = [(MBFile *)self->_file absolutePath];
      fileID = [(MBFile *)self->_file fileID];
      *buf = 138413058;
      v40 = final;
      v41 = 2112;
      v42 = digest3;
      v43 = 2112;
      v44 = absolutePath4;
      v45 = 2112;
      v46 = fileID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "File digest does not match manifest (%@ vs %@): %@ (%@)", buf, 0x2Au);

      digest4 = [(MBFile *)self->_file digest];
      absolutePath5 = [(MBFile *)self->_file absolutePath];
      [(MBFile *)self->_file fileID];
      v38 = v36 = absolutePath5;
      v32 = final;
      v34 = digest4;
      _MBLog();

      goto LABEL_14;
    }
  }

  else
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      absolutePath6 = [(MBFile *)self->_file absolutePath];
      fileID2 = [(MBFile *)self->_file fileID];
      *buf = 138412546;
      v40 = absolutePath6;
      v41 = 2112;
      v42 = fileID2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Digest missing from file: %@ (%@)", buf, 0x16u);

      digest4 = [(MBFile *)self->_file absolutePath];
      absolutePath5 = [(MBFile *)self->_file fileID];
      v32 = digest4;
      v34 = absolutePath5;
      _MBLog();
LABEL_14:
    }
  }

  [(MBDriveRestoreEngine *)self->_engine digestDidNotMatchForFile:self->_file];
LABEL_16:
  [NSDate timeIntervalSinceReferenceDate:v32];
  v22 = v21;
  startTime = self->_startTime;
  v24 = [(MBFile *)self->_file size];
  absolutePath7 = [(MBFile *)self->_file absolutePath];

  if (absolutePath7)
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v22 - startTime;
      absolutePath8 = [(MBFile *)self->_file absolutePath];
      *buf = 138412802;
      v40 = absolutePath8;
      v41 = 2048;
      v42 = v24;
      v43 = 2048;
      v44 = (v24 / v27);
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Downloaded: %@ (%{bytes}llu at %{bytes}llu/s)", buf, 0x20u);

      [(MBFile *)self->_file absolutePath];
      v35 = v24;
      v33 = v37 = (v24 / v27);
      _MBLog();
    }
  }

  v29 = [(MBFileHandleProxy *)self fileHandle:v33];
  v30 = [v29 closeWithError:error];

  return v30;
}

@end