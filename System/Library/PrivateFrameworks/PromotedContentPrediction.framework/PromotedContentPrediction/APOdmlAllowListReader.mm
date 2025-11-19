@interface APOdmlAllowListReader
- (id)nextLine;
- (id)openForReadingContentsOfURL:(id)a3;
- (id)readFile;
- (void)dealloc;
- (void)setFile:(__sFILE *)a3;
@end

@implementation APOdmlAllowListReader

- (id)openForReadingContentsOfURL:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v8 = objc_msgSend_fileSystemRepresentation(a3, v6, v7);
  v9 = fopen(v8, "r");
  if (!v9)
  {
    v14 = OdmlLogForCategory(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = objc_opt_class();
      v15 = v31;
      _os_log_impl(&dword_260ECB000, v14, OS_LOG_TYPE_ERROR, "[%@] ERROR: Unable to open file.", buf, 0xCu);
    }

    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v16, @"APOdmlFeatureCalculatorErrorDomain", 3001, 0);
    goto LABEL_20;
  }

  v10 = v9;
  __ptr = 0;
  if (fread(&__ptr, 8uLL, 1uLL, v9) != 1)
  {
    if (feof(v10))
    {
      v17 = OdmlLogForCategory(7uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        *buf = 138412290;
        v31 = v18;
        v19 = v18;
        v20 = "[%@] Reached EOF reading header of file.";
LABEL_17:
        _os_log_impl(&dword_260ECB000, v17, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
      }
    }

    else
    {
      if (!ferror(v10))
      {
LABEL_19:
        fclose(v10);
        objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v26, @"APOdmlFeatureCalculatorErrorDomain", 3002, 0);
        goto LABEL_20;
      }

      v17 = OdmlLogForCategory(7uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        *buf = 138412290;
        v31 = v25;
        v19 = v25;
        v20 = "[%@] Internal inconsistency reading file. Failed to read header.";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  if (__ptr == 1447253107)
  {
    objc_msgSend_setFile_(self, v11, v10);
    objc_msgSend_setNumberOfIDs_(self, v12, HIDWORD(__ptr));
    v13 = 0;
    goto LABEL_21;
  }

  v21 = OdmlLogForCategory(7uLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    *buf = 138412290;
    v31 = v22;
    v23 = v22;
    _os_log_impl(&dword_260ECB000, v21, OS_LOG_TYPE_ERROR, "[%@] Internal inconsistency reading file. Invalid header for file.", buf, 0xCu);
  }

  fclose(v10);
  objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v24, @"APOdmlFeatureCalculatorErrorDomain", 3003, 0);
  v13 = LABEL_20:;
LABEL_21:

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)dealloc
{
  file = self->_file;
  if (file)
  {
    fclose(file);
    self->_file = 0;
  }

  v4.receiver = self;
  v4.super_class = APOdmlAllowListReader;
  [(APOdmlAllowListReader *)&v4 dealloc];
}

- (id)nextLine
{
  v34 = *MEMORY[0x277D85DE8];
  Index = objc_msgSend_nextIndex(self, a2, v2);
  if (objc_msgSend_numberOfIDs(self, v5, v6) <= Index)
  {
    goto LABEL_16;
  }

  __ptr = 0;
  v31 = 0;
  v9 = objc_msgSend_file(self, v7, v8);
  if (fread(&__ptr, 0x10uLL, 1uLL, v9) == 1)
  {
    if (__ptr == 1447253074)
    {
      v12 = objc_msgSend_nextIndex(self, v10, v11);
      objc_msgSend_setNextIndex_(self, v13, (v12 + 1));
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%llu", v31);
      goto LABEL_17;
    }

    v19 = OdmlLogForCategory(7uLL);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v23 = objc_opt_class();
    *buf = 138412290;
    v33 = v23;
    v21 = v23;
    v22 = "[%@] Internal inconsistency reading file. Missing signature for start of next ID.";
    v24 = v19;
    v25 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

  v16 = objc_msgSend_file(self, v10, v11);
  if (feof(v16))
  {
    v19 = OdmlLogForCategory(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      *buf = 138412290;
      v33 = v20;
      v21 = v20;
      v22 = "[%@] Reached EOF reading ID.";
LABEL_13:
      v24 = v19;
      v25 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_260ECB000, v24, v25, v22, buf, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v26 = objc_msgSend_file(self, v17, v18);
  if (ferror(v26))
  {
    v19 = OdmlLogForCategory(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      *buf = 138412290;
      v33 = v27;
      v21 = v27;
      v22 = "[%@] Internal inconsistency reading file. Failed to read header for ID.";
      goto LABEL_13;
    }

LABEL_15:
  }

LABEL_16:
  v15 = 0;
LABEL_17:
  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)readFile
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_msgSend_nextLine(self, v4, v5);
  if (v6)
  {
    v9 = v6;
    do
    {
      objc_msgSend_addObject_(v3, v7, v9);
      v12 = objc_msgSend_nextLine(self, v10, v11);

      v9 = v12;
    }

    while (v12);
  }

  v13 = objc_msgSend_copy(v3, v7, v8);

  return v13;
}

- (void)setFile:(__sFILE *)a3
{
  file = self->_file;
  if (file)
  {
    fclose(file);
  }

  self->_file = a3;
}

@end