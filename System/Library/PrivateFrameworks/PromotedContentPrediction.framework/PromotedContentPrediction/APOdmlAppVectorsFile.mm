@interface APOdmlAppVectorsFile
- (id)initForReadingContentsOfURL:(id)l version:(id)version;
- (id)nextVector;
- (void)dealloc;
@end

@implementation APOdmlAppVectorsFile

- (id)initForReadingContentsOfURL:(id)l version:(id)version
{
  v35 = *MEMORY[0x277D85DE8];
  lCopy = l;
  versionCopy = version;
  v8 = lCopy;
  v11 = objc_msgSend_fileSystemRepresentation(v8, v9, v10);
  v12 = fopen(v11, "r");
  if (!v12)
  {
    v16 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = objc_opt_class();
      v33 = 2112;
      v34 = lCopy;
      v17 = v32;
      _os_log_impl(&dword_260ECB000, v16, OS_LOG_TYPE_DEFAULT, "[%@] Could not open file for reading at %@.", buf, 0x16u);
    }

    goto LABEL_21;
  }

  v13 = v12;
  __ptr = 0;
  if (fread(&__ptr, 8uLL, 1uLL, v12) != 1)
  {
    if (feof(v13))
    {
      v18 = OdmlLogForCategory(2uLL);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v19 = objc_opt_class();
      *buf = 138412290;
      v32 = v19;
      v20 = v19;
      v21 = "[%@] Reached EOF reading header of AppVectorFile.";
    }

    else
    {
      if (!ferror(v13))
      {
LABEL_20:
        fclose(v13);
LABEL_21:
        selfCopy = 0;
        goto LABEL_22;
      }

      v18 = OdmlLogForCategory(2uLL);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v25 = objc_opt_class();
      *buf = 138412290;
      v32 = v25;
      v20 = v25;
      v21 = "[%@] Internal inconsistency reading AppVectorFile.  Failed to read header.";
    }

    v23 = v18;
    v24 = OS_LOG_TYPE_ERROR;
    goto LABEL_18;
  }

  if (__ptr != 1447253107)
  {
    v18 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138412290;
      v32 = v22;
      v20 = v22;
      v21 = "[%@] Internal inconsistency reading AppVectorFile.  Invalid header for vector file.";
      v23 = v18;
      v24 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      _os_log_impl(&dword_260ECB000, v23, v24, v21, buf, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  v29.receiver = self;
  v29.super_class = APOdmlAppVectorsFile;
  v14 = [(APOdmlAppVectorsFile *)&v29 init];
  v15 = v14;
  if (v14)
  {
    v14->_numberOfVectors = HIDWORD(__ptr);
    objc_storeStrong(&v14->_vectorVersion, version);
    v15->_file = v13;
    v15->_nextIndex = 0;
  }

  else
  {
    fclose(v13);
  }

  self = v15;
  selfCopy = self;
LABEL_22:

  v27 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)dealloc
{
  file = self->_file;
  if (file)
  {
    fclose(file);
  }

  v4.receiver = self;
  v4.super_class = APOdmlAppVectorsFile;
  [(APOdmlAppVectorsFile *)&v4 dealloc];
}

- (id)nextVector
{
  v29 = *MEMORY[0x277D85DE8];
  nextIndex = self->_nextIndex;
  if (objc_msgSend_numberOfVectors(self, a2, v2) <= nextIndex)
  {
    goto LABEL_20;
  }

  v25 = 0;
  v26 = 0;
  if (fread(&v25, 0x10uLL, 1uLL, self->_file) != 1)
  {
    if (feof(self->_file))
    {
      v14 = OdmlLogForCategory(2uLL);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v15 = objc_opt_class();
      *buf = 138412290;
      v28 = v15;
      v16 = v15;
      v17 = "[%@] Reached EOF reading vector.";
    }

    else
    {
      if (!ferror(self->_file))
      {
        goto LABEL_20;
      }

      v14 = OdmlLogForCategory(2uLL);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      v21 = objc_opt_class();
      *buf = 138412290;
      v28 = v21;
      v16 = v21;
      v17 = "[%@] Internal inconsistency reading AppVectorFile.  Failed to read header for vector.";
    }

LABEL_17:
    v19 = v14;
    v20 = OS_LOG_TYPE_ERROR;
    goto LABEL_18;
  }

  if (v26 != *"RTCV")
  {
    v14 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      *buf = 138412290;
      v28 = v18;
      v16 = v18;
      v17 = "[%@] Internal inconsistency reading AppVectorFile.  Missing signature for start of next vector.";
      v19 = v14;
      v20 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
      _os_log_impl(&dword_260ECB000, v19, v20, v17, buf, 0xCu);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v5 = 4 * HIDWORD(v26);
  v6 = malloc_type_malloc(v5, 0x3FC57CECuLL);
  if (v6)
  {
    v7 = v6;
    if (fread(v6, 1uLL, v5, self->_file) == v5)
    {
      v8 = [APOdmlAppVector alloc];
      v11 = objc_msgSend_vectorVersion(self, v9, v10);
      v13 = objc_msgSend_initWithVersion_header_floats_(v8, v12, v11, &v25, v7);

      free(v7);
      ++self->_nextIndex;
      goto LABEL_21;
    }

    v14 = OdmlLogForCategory(2uLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v22 = objc_opt_class();
    *buf = 138412290;
    v28 = v22;
    v16 = v22;
    v17 = "[%@] Internal inconsistency reading AppVectorFile.  Couldn't read required number of bytes.";
    goto LABEL_17;
  }

LABEL_20:
  v13 = 0;
LABEL_21:
  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

@end