@interface AFSCFileInterface
- (AFSCFileInterface)initWithFilePath:(id)a3 expectedSize:(int64_t)a4 resumptionState:(id)a5;
- (BOOL)closeOutputFDWithError:(id *)a3;
- (BOOL)finalizeFileWithAccessTime:(timeval)a3 modTime:(timeval)a4 mode:(unsigned __int16)a5 error:(id *)a6;
- (BOOL)setCurrentOffset:(int64_t)a3 error:(id *)a4;
- (BOOL)writeBuffer:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (id)suspendWithError:(id *)a3;
- (void)configureFileAndSetOwnership:(BOOL)a3 toUID:(unsigned int)a4 GID:(unsigned int)a5;
- (void)dealloc;
- (void)setIncompleteExtractionAttribute;
@end

@implementation AFSCFileInterface

- (id)suspendWithError:(id *)a3
{
  v5 = [(AFSCFileInterface *)self path];
  if (![(AFSCFileInterface *)self aaStream])
  {
    v13 = sub_10000126C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = v5;
      *&v41[8] = 2112;
      *&v41[10] = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to suspend %@ : %@", buf, 0x16u);
    }

    v15 = sub_1000015F4("[AFSCFileInterface suspendWithError:]", 352, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to suspend %@", v14, v5);
    goto LABEL_12;
  }

  v39 = 0;
  v38 = 0;
  v6 = [[MemoryBufferStream alloc] initWithError:&v38];
  v7 = v38;
  if (!v6)
  {
    v16 = sub_10000126C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = v5;
      *&v41[8] = 2112;
      *&v41[10] = v7;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create MemoryBufferStream while suspending %@ : %@", buf, 0x16u);
    }

    v15 = sub_1000015F4("[AFSCFileInterface suspendWithError:]", 359, @"SZExtractorErrorDomain", 1, v7, 0, @"Failed to create MemoryBufferStream while suspending %@", v17, v5);

LABEL_12:
    v6 = 0;
    goto LABEL_27;
  }

  [(AFSCFileInterface *)self setAaStream:0];
  [(MemoryBufferStream *)v6 stream];
  AAThreadErrorContextEnter();
  *__error() = 0;
  v8 = AAByteStreamCloseWithState();
  v9 = *__error();
  v10 = AAThreadErrorContextLeave();
  if (v8)
  {
    v11 = v10;
    if (v9)
    {
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    }

    else
    {
      v12 = 0;
    }

    v21 = sub_10000126C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v41 = v8;
      *&v41[4] = 2112;
      *&v41[6] = v12;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "AAByteStreamCloseWithState failed, returning %d : %@", buf, 0x12u);
    }

    v23 = sub_1000015F4("_StreamCloseWithState", 102, @"SZAppleArchiveError", v11, v12, 0, @"AAByteStreamCloseWithState failed, returning %d", v22, v8);
    v24 = v23;

    v25 = v23;
    v26 = sub_10000126C();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = v5;
      *&v41[8] = 2112;
      *&v41[10] = v25;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to suspend AAAFSC stream for %@ : %@", buf, 0x16u);
    }

    v15 = sub_1000015F4("[AFSCFileInterface suspendWithError:]", 365, @"SZExtractorErrorDomain", 1, v25, 0, @"Failed to suspend AAAFSC stream for %@", v27, v5);

    goto LABEL_27;
  }

  v18 = v39;
  if (v18 != [(AFSCFileInterface *)self currentOffset])
  {
    v28 = sub_10000126C();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v35 = v39;
      v36 = [(AFSCFileInterface *)self currentOffset];
      *buf = 134218754;
      *v41 = v35;
      *&v41[8] = 2048;
      *&v41[10] = v36;
      v42 = 2112;
      v43 = v5;
      v44 = 2112;
      v45 = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Mismatched suspend offset from AAByteStreamCloseWithState: got %lld, but we wrote %lld for %@ : %@", buf, 0x2Au);
    }

    v29 = v39;
    [(AFSCFileInterface *)self currentOffset];
    v15 = sub_1000015F4("[AFSCFileInterface suspendWithError:]", 370, @"SZExtractorErrorDomain", 1, 0, 0, @"Mismatched suspend offset from AAByteStreamCloseWithState: got %lld, but we wrote %lld for %@", v30, v29);

LABEL_27:
    v19 = 0;
    if (!a3)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v37 = v7;
  v19 = [(MemoryBufferStream *)v6 closeAndReturnBufferWithError:&v37];
  v15 = v37;

  v20 = sub_10000126C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v19 length];
    *buf = 134218242;
    *v41 = v34;
    *&v41[8] = 2112;
    *&v41[10] = v5;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Got %lu bytes of suspend data from AA for %@", buf, 0x16u);
  }

  if (a3)
  {
LABEL_28:
    if (!v19)
    {
      v31 = v15;
      *a3 = v15;
    }
  }

LABEL_30:
  v32 = v19;

  return v19;
}

- (BOOL)finalizeFileWithAccessTime:(timeval)a3 modTime:(timeval)a4 mode:(unsigned __int16)a5 error:(id *)a6
{
  v7 = a5;
  v8 = *&a4.tv_usec;
  tv_sec = a4.tv_sec;
  v10 = *&a3.tv_usec;
  v11 = a3.tv_sec;
  v13 = [(AFSCFileInterface *)self path];
  v14 = [(AFSCFileInterface *)self aaStream];
  if (!v14)
  {
    v19 = sub_10000126C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v13;
      v29 = 2112;
      v30 = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to finalize %@ : %@", buf, 0x16u);
    }

    v17 = sub_1000015F4("[AFSCFileInterface finalizeFileWithAccessTime:modTime:mode:error:]", 321, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to finalize %@", v20, v13);
    if (!a6)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v15 = v14;
  [(AFSCFileInterface *)self setAaStream:0];
  v26 = 0;
  v16 = sub_10000C364(v15, &v26);
  v17 = v26;
  if (!v16)
  {
    v22 = sub_10000126C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v13;
      v29 = 2112;
      v30 = v17;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to close AAAFSC stream for %@ : %@", buf, 0x16u);
    }

    v24 = sub_1000015F4("[AFSCFileInterface finalizeFileWithAccessTime:modTime:mode:error:]", 328, @"SZExtractorErrorDomain", 1, v17, 0, @"Failed to close AAAFSC stream for %@", v23, v13);

    v17 = v24;
    if (!a6)
    {
LABEL_11:
      v18 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v21 = v17;
    v18 = 0;
    *a6 = v17;
    goto LABEL_12;
  }

  sub_10000C4E0(-[AFSCFileInterface outputFD](self, "outputFD"), [v13 fileSystemRepresentation], v11, v10, tv_sec, v8, v7);
  v18 = 1;
LABEL_12:

  return v18;
}

- (void)configureFileAndSetOwnership:(BOOL)a3 toUID:(unsigned int)a4 GID:(unsigned int)a5
{
  v7 = a3;
  v9 = [(AFSCFileInterface *)self outputFD];
  v11 = [(AFSCFileInterface *)self path];
  v10 = v11;
  sub_10000C700(v9, [v11 fileSystemRepresentation], -[AFSCFileInterface fileSize](self, "fileSize"), v7, a4, a5);
}

- (void)setIncompleteExtractionAttribute
{
  v3 = [(AFSCFileInterface *)self outputFD];
  v5 = [(AFSCFileInterface *)self path];
  v4 = v5;
  sub_10000C9C0(v3, [v5 fileSystemRepresentation]);
}

- (BOOL)setCurrentOffset:(int64_t)a3 error:(id *)a4
{
  v7 = [(AFSCFileInterface *)self expectedResumptionOffset];
  v8 = [(AFSCFileInterface *)self isResumedStream];
  if (v7 == a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v9 == 1)
  {
    v10 = sub_10000126C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v15 = v7;
      v16 = 2048;
      v17 = a3;
      v18 = 2112;
      v19 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AAFSC stream expected file to resume at offset %lld but StreamingZip believes it should resume at offset %lld : %@", buf, 0x20u);
    }

    v12 = sub_1000015F4("[AFSCFileInterface setCurrentOffset:error:]", 293, @"SZExtractorErrorDomain", 1, 0, 0, @"AAFSC stream expected file to resume at offset %lld but StreamingZip believes it should resume at offset %lld", v11, v7);
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }
  }

  else
  {
    [(AFSCFileInterface *)self setCurrentOffset:a3];
  }

  return v9 ^ 1;
}

- (BOOL)closeOutputFDWithError:(id *)a3
{
  v5 = [(AFSCFileInterface *)self aaStream];
  if (!v5)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v6 = v5;
  [(AFSCFileInterface *)self setAaStream:0];
  v19 = 0;
  v7 = sub_10000C364(v6, &v19);
  v8 = v19;
  v9 = v8;
  if (v7)
  {
    v10 = v8;
LABEL_5:
    v11 = [(AFSCFileInterface *)self outputFD];
    if ((v11 & 0x80000000) == 0)
    {
      close(v11);
      [(AFSCFileInterface *)self setOutputFD:0xFFFFFFFFLL];
    }

    v12 = 1;
    goto LABEL_13;
  }

  v13 = sub_10000126C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v18 = [(AFSCFileInterface *)self path];
    *buf = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v9;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to close AAFSC stream for %@ : %@", buf, 0x16u);
  }

  v14 = [(AFSCFileInterface *)self path];
  v10 = sub_1000015F4("[AFSCFileInterface closeOutputFDWithError:]", 264, @"SZExtractorErrorDomain", 1, v9, 0, @"Failed to close AAFSC stream for %@", v15, v14);

  if (a3)
  {
    v16 = v10;
    v12 = 0;
    *a3 = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (BOOL)writeBuffer:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v9 = [(AFSCFileInterface *)self aaStream];
  if (v9)
  {
    v10 = v9;
    AAThreadErrorContextEnter();
    *__error() = 0;
    v11 = AAByteStreamWrite(v10, a3, a4);
    v12 = *__error();
    v13 = AAThreadErrorContextLeave();
    if (v11 < 0)
    {
      v19 = v13;
      if (v12)
      {
        v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
      }

      else
      {
        v20 = 0;
      }

      v24 = sub_10000126C();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v38 = v11;
        v39 = 2112;
        v40 = v20;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "AAByteStreamWrite failed, returning %zd : %@", buf, 0x16u);
      }

      v26 = sub_1000015F4("_StreamWrite", 73, @"SZAppleArchiveError", v19, v20, 0, @"AAByteStreamWrite failed, returning %zd", v25, v11);
      v27 = v26;

      v28 = v26;
      v17 = [(AFSCFileInterface *)self path];
      v29 = sub_10000126C();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v38 = v17;
        v39 = 2112;
        v40 = v28;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "AAAFSC stream failed to write data to output file at %@ : %@", buf, 0x16u);
      }

      v45 = NSFilePathErrorKey;
      v46 = v17;
      v30 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v14 = sub_1000015F4("[AFSCFileInterface writeBuffer:length:error:]", 231, @"SZExtractorErrorDomain", 1, v28, v30, @"AAAFSC stream failed to write data to output file at %@", v31, v17);
    }

    else
    {
      if (v11 == a4)
      {
        [(AFSCFileInterface *)self setCurrentOffset:[(AFSCFileInterface *)self currentOffset]+ a4];
        v14 = 0;
        v15 = 1;
        goto LABEL_22;
      }

      v17 = [(AFSCFileInterface *)self path];
      v21 = sub_10000126C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v38 = v11;
        v39 = 2048;
        v40 = a4;
        v41 = 2112;
        v42 = v17;
        v43 = 2112;
        v44 = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "AAAFSC stream wrote incomplete data; wrote %zd, expected %zu, for file %@ : %@", buf, 0x2Au);
      }

      v35 = NSFilePathErrorKey;
      v36 = v17;
      v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v14 = sub_1000015F4("[AFSCFileInterface writeBuffer:length:error:]", 235, @"SZExtractorErrorDomain", 1, 0, v22, @"AAAFSC stream wrote incomplete data wrote %zd, expected %zu, for file %@", v23, v11);;
    }
  }

  else
  {
    v16 = sub_10000126C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v34 = [(AFSCFileInterface *)self path];
      *buf = 138412546;
      v38 = v34;
      v39 = 2112;
      v40 = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to write to %@ : %@", buf, 0x16u);
    }

    v17 = [(AFSCFileInterface *)self path];
    v14 = sub_1000015F4("[AFSCFileInterface writeBuffer:length:error:]", 224, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to write to %@", v18, v17);
  }

  if (a5)
  {
    v32 = v14;
    v15 = 0;
    *a5 = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_22:

  return v15;
}

- (void)dealloc
{
  [(AFSCFileInterface *)self closeOutputFDWithError:0];
  v3.receiver = self;
  v3.super_class = AFSCFileInterface;
  [(AFSCFileInterface *)&v3 dealloc];
}

- (AFSCFileInterface)initWithFilePath:(id)a3 expectedSize:(int64_t)a4 resumptionState:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = AFSCFileInterface;
  v10 = [(AFSCFileInterface *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    path = v10->_path;
    v10->_path = v11;

    v10->_fileSize = a4;
    v10->_outputFD = -1;
    objc_storeStrong(&v10->_resumptionState, a5);
    v10->_isResumedStream = v9 != 0;
    v10->_currentOffset = 0;
    v10->_expectedResumptionOffset = 0;
  }

  return v10;
}

@end