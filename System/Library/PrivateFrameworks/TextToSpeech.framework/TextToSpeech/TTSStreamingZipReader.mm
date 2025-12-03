@interface TTSStreamingZipReader
- (BOOL)enumerateFiles:(id)files;
- (TTSStreamingZipReader)initWithPath:(id)path andPassword:(id)password;
@end

@implementation TTSStreamingZipReader

- (TTSStreamingZipReader)initWithPath:(id)path andPassword:(id)password
{
  pathCopy = path;
  passwordCopy = password;
  v12.receiver = self;
  v12.super_class = TTSStreamingZipReader;
  v9 = [(TTSStreamingZipReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_zipPath, path);
    objc_storeStrong(&v10->_password, password);
  }

  return v10;
}

- (BOOL)enumerateFiles:(id)files
{
  filesCopy = files;
  v5 = archive_read_new();
  if (archive_read_support_format_zip())
  {
    v10 = AXTTSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A95784D4();
    }

    goto LABEL_12;
  }

  v11 = objc_msgSend_password(self, v6, v7, v8, v9);
  v12 = v11;
  objc_msgSend_UTF8String(v12, v13, v14, v15, v16);
  add_passphrase = archive_read_add_passphrase();

  if (add_passphrase)
  {
    v22 = AXTTSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1A957854C(self, v22, v23, v24, v25);
    }

LABEL_11:

    archive_read_free();
    goto LABEL_12;
  }

  v26 = objc_msgSend_zipPath(self, v18, v19, v20, v21);
  v27 = v26;
  objc_msgSend_fileSystemRepresentation(v27, v28, v29, v30, v31);
  open_filename = archive_read_open_filename();

  if (open_filename)
  {
    v22 = AXTTSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1A95785D8(self, v22, v33, v34, v35);
    }

    goto LABEL_11;
  }

  v47[5] = 0;
  if (archive_read_next_header())
  {
LABEL_17:
    archive_read_free();
    v36 = 1;
    goto LABEL_13;
  }

  while (1)
  {
    v38 = archive_entry_pathname();
    v41 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v39, v38, 4, v40);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1A9346978;
    v47[3] = &unk_1E7880348;
    v47[4] = v5;
    v42 = _Block_copy(v47);
    if (!v38)
    {
      break;
    }

    filesCopy[2](filesCopy, v41, v42);

    if (archive_read_next_header())
    {
      goto LABEL_17;
    }
  }

  v43 = AXTTSLogCommon();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    sub_1A9578664(self, v43, v44, v45, v46);
  }

LABEL_12:
  v36 = 0;
LABEL_13:

  return v36;
}

@end