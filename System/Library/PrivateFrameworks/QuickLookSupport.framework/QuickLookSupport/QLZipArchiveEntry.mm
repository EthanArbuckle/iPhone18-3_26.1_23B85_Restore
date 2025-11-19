@interface QLZipArchiveEntry
- (NSURL)url;
- (QLZipArchive)archive;
- (id)readDataWithError:(id *)a3;
@end

@implementation QLZipArchiveEntry

- (NSURL)url
{
  v2 = archive_entry_pathname_w();
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v2 length:4 * wcslen(v2) encoding:2617245952];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

- (id)readDataWithError:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  data = self->_data;
  if (data)
  {
    v4 = data;
  }

  else
  {
    p_error = &self->_error;
    error = self->_error;
    if (a3 && error)
    {
      v4 = 0;
      *a3 = error;
    }

    else
    {
      self->_error = 0;

      WeakRetained = objc_loadWeakRetained(&self->_archive);
      entry = self->_entry;
      v18 = 0;
      v11 = [WeakRetained readCurrentDataWithEntry:entry error:&v18];
      v12 = v18;
      v13 = v18;
      v14 = self->_data;
      self->_data = v11;

      if (!a3 || self->_data)
      {
        if (v13)
        {
          v16 = _qlsLogHandle;
          if (!_qlsLogHandle)
          {
            QLSInitLogging();
            v16 = _qlsLogHandle;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v20 = v13;
            _os_log_impl(&dword_2615AE000, v16, OS_LOG_TYPE_ERROR, "Error while attempting to read data: %@ #ZIPHandling", buf, 0xCu);
          }
        }
      }

      else
      {
        v15 = v13;
        *a3 = v13;
        objc_storeStrong(p_error, v12);
      }

      v4 = self->_data;
    }
  }

  return v4;
}

- (QLZipArchive)archive
{
  WeakRetained = objc_loadWeakRetained(&self->_archive);

  return WeakRetained;
}

@end