@interface AFSCFileInterface
- (AFSCFileInterface)initWithFilePath:(id)path expectedSize:(int64_t)size resumptionState:(id)state;
- (BOOL)closeOutputFDWithError:(id *)error;
- (BOOL)finalizeFileWithAccessTime:(timeval)time modTime:(timeval)modTime mode:(unsigned __int16)mode error:(id *)error;
- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error;
- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error;
- (id)suspendWithError:(id *)error;
- (void)configureFileAndSetOwnership:(BOOL)ownership toUID:(unsigned int)d GID:(unsigned int)iD;
- (void)dealloc;
- (void)setIncompleteExtractionAttribute;
@end

@implementation AFSCFileInterface

- (id)suspendWithError:(id *)error
{
  path = [(AFSCFileInterface *)self path];
  if (![(AFSCFileInterface *)self aaStream])
  {
    v13 = sub_100001194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = path;
      *&v41[8] = 2112;
      *&v41[10] = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to suspend %@ : %@", buf, 0x16u);
    }

    v15 = sub_10000151C("[AFSCFileInterface suspendWithError:]", 352, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to suspend %@", v14, path);
    goto LABEL_12;
  }

  v39 = 0;
  v38 = 0;
  v6 = [[MemoryBufferStream alloc] initWithError:&v38];
  v7 = v38;
  if (!v6)
  {
    v16 = sub_100001194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = path;
      *&v41[8] = 2112;
      *&v41[10] = v7;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create MemoryBufferStream while suspending %@ : %@", buf, 0x16u);
    }

    v15 = sub_10000151C("[AFSCFileInterface suspendWithError:]", 359, @"SZExtractorErrorDomain", 1, v7, 0, @"Failed to create MemoryBufferStream while suspending %@", v17, path);

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

    v21 = sub_100001194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v41 = v8;
      *&v41[4] = 2112;
      *&v41[6] = v12;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "AAByteStreamCloseWithState failed, returning %d : %@", buf, 0x12u);
    }

    v23 = sub_10000151C("_StreamCloseWithState", 102, @"SZAppleArchiveError", v11, v12, 0, @"AAByteStreamCloseWithState failed, returning %d", v22, v8);
    v24 = v23;

    v25 = v23;
    v26 = sub_100001194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = path;
      *&v41[8] = 2112;
      *&v41[10] = v25;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to suspend AAAFSC stream for %@ : %@", buf, 0x16u);
    }

    v15 = sub_10000151C("[AFSCFileInterface suspendWithError:]", 365, @"SZExtractorErrorDomain", 1, v25, 0, @"Failed to suspend AAAFSC stream for %@", v27, path);

    goto LABEL_27;
  }

  v18 = v39;
  if (v18 != [(AFSCFileInterface *)self currentOffset])
  {
    v28 = sub_100001194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v35 = v39;
      currentOffset = [(AFSCFileInterface *)self currentOffset];
      *buf = 134218754;
      *v41 = v35;
      *&v41[8] = 2048;
      *&v41[10] = currentOffset;
      v42 = 2112;
      v43 = path;
      v44 = 2112;
      v45 = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Mismatched suspend offset from AAByteStreamCloseWithState: got %lld, but we wrote %lld for %@ : %@", buf, 0x2Au);
    }

    v29 = v39;
    [(AFSCFileInterface *)self currentOffset];
    v15 = sub_10000151C("[AFSCFileInterface suspendWithError:]", 370, @"SZExtractorErrorDomain", 1, 0, 0, @"Mismatched suspend offset from AAByteStreamCloseWithState: got %lld, but we wrote %lld for %@", v30, v29);

LABEL_27:
    v19 = 0;
    if (!error)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v37 = v7;
  v19 = [(MemoryBufferStream *)v6 closeAndReturnBufferWithError:&v37];
  v15 = v37;

  v20 = sub_100001194();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v19 length];
    *buf = 134218242;
    *v41 = v34;
    *&v41[8] = 2112;
    *&v41[10] = path;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Got %lu bytes of suspend data from AA for %@", buf, 0x16u);
  }

  if (error)
  {
LABEL_28:
    if (!v19)
    {
      v31 = v15;
      *error = v15;
    }
  }

LABEL_30:
  v32 = v19;

  return v19;
}

- (BOOL)finalizeFileWithAccessTime:(timeval)time modTime:(timeval)modTime mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  v8 = *&modTime.tv_usec;
  tv_sec = modTime.tv_sec;
  v10 = *&time.tv_usec;
  v11 = time.tv_sec;
  path = [(AFSCFileInterface *)self path];
  aaStream = [(AFSCFileInterface *)self aaStream];
  if (!aaStream)
  {
    v19 = sub_100001194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = path;
      v29 = 2112;
      v30 = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to finalize %@ : %@", buf, 0x16u);
    }

    v17 = sub_10000151C("[AFSCFileInterface finalizeFileWithAccessTime:modTime:mode:error:]", 321, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to finalize %@", v20, path);
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v15 = aaStream;
  [(AFSCFileInterface *)self setAaStream:0];
  v26 = 0;
  v16 = sub_10000C28C(v15, &v26);
  v17 = v26;
  if (!v16)
  {
    v22 = sub_100001194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = path;
      v29 = 2112;
      v30 = v17;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to close AAAFSC stream for %@ : %@", buf, 0x16u);
    }

    v24 = sub_10000151C("[AFSCFileInterface finalizeFileWithAccessTime:modTime:mode:error:]", 328, @"SZExtractorErrorDomain", 1, v17, 0, @"Failed to close AAAFSC stream for %@", v23, path);

    v17 = v24;
    if (!error)
    {
LABEL_11:
      v18 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v21 = v17;
    v18 = 0;
    *error = v17;
    goto LABEL_12;
  }

  sub_10000C408(-[AFSCFileInterface outputFD](self, "outputFD"), [path fileSystemRepresentation], v11, v10, tv_sec, v8, modeCopy);
  v18 = 1;
LABEL_12:

  return v18;
}

- (void)configureFileAndSetOwnership:(BOOL)ownership toUID:(unsigned int)d GID:(unsigned int)iD
{
  ownershipCopy = ownership;
  outputFD = [(AFSCFileInterface *)self outputFD];
  path = [(AFSCFileInterface *)self path];
  v10 = path;
  sub_10000C628(outputFD, [path fileSystemRepresentation], -[AFSCFileInterface fileSize](self, "fileSize"), ownershipCopy, d, iD);
}

- (void)setIncompleteExtractionAttribute
{
  outputFD = [(AFSCFileInterface *)self outputFD];
  path = [(AFSCFileInterface *)self path];
  v4 = path;
  sub_10000C8E8(outputFD, [path fileSystemRepresentation]);
}

- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error
{
  expectedResumptionOffset = [(AFSCFileInterface *)self expectedResumptionOffset];
  isResumedStream = [(AFSCFileInterface *)self isResumedStream];
  if (expectedResumptionOffset == offset)
  {
    v9 = 0;
  }

  else
  {
    v9 = isResumedStream;
  }

  if (v9 == 1)
  {
    v10 = sub_100001194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v15 = expectedResumptionOffset;
      v16 = 2048;
      offsetCopy = offset;
      v18 = 2112;
      v19 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AAFSC stream expected file to resume at offset %lld but StreamingZip believes it should resume at offset %lld : %@", buf, 0x20u);
    }

    v12 = sub_10000151C("[AFSCFileInterface setCurrentOffset:error:]", 293, @"SZExtractorErrorDomain", 1, 0, 0, @"AAFSC stream expected file to resume at offset %lld but StreamingZip believes it should resume at offset %lld", v11, expectedResumptionOffset);
    if (error)
    {
      v12 = v12;
      *error = v12;
    }
  }

  else
  {
    [(AFSCFileInterface *)self setCurrentOffset:offset];
  }

  return v9 ^ 1;
}

- (BOOL)closeOutputFDWithError:(id *)error
{
  aaStream = [(AFSCFileInterface *)self aaStream];
  if (!aaStream)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v6 = aaStream;
  [(AFSCFileInterface *)self setAaStream:0];
  v19 = 0;
  v7 = sub_10000C28C(v6, &v19);
  v8 = v19;
  v9 = v8;
  if (v7)
  {
    v10 = v8;
LABEL_5:
    outputFD = [(AFSCFileInterface *)self outputFD];
    if ((outputFD & 0x80000000) == 0)
    {
      close(outputFD);
      [(AFSCFileInterface *)self setOutputFD:0xFFFFFFFFLL];
    }

    v12 = 1;
    goto LABEL_13;
  }

  v13 = sub_100001194();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    path = [(AFSCFileInterface *)self path];
    *buf = 138412546;
    v21 = path;
    v22 = 2112;
    v23 = v9;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to close AAFSC stream for %@ : %@", buf, 0x16u);
  }

  path2 = [(AFSCFileInterface *)self path];
  v10 = sub_10000151C("[AFSCFileInterface closeOutputFDWithError:]", 264, @"SZExtractorErrorDomain", 1, v9, 0, @"Failed to close AAFSC stream for %@", v15, path2);

  if (error)
  {
    v16 = v10;
    v12 = 0;
    *error = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error
{
  aaStream = [(AFSCFileInterface *)self aaStream];
  if (aaStream)
  {
    v10 = aaStream;
    AAThreadErrorContextEnter();
    *__error() = 0;
    v11 = AAByteStreamWrite(v10, buffer, length);
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

      v24 = sub_100001194();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v38 = v11;
        v39 = 2112;
        lengthCopy = v20;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "AAByteStreamWrite failed, returning %zd : %@", buf, 0x16u);
      }

      v26 = sub_10000151C("_StreamWrite", 73, @"SZAppleArchiveError", v19, v20, 0, @"AAByteStreamWrite failed, returning %zd", v25, v11);
      v27 = v26;

      v28 = v26;
      path = [(AFSCFileInterface *)self path];
      v29 = sub_100001194();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v38 = path;
        v39 = 2112;
        lengthCopy = v28;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "AAAFSC stream failed to write data to output file at %@ : %@", buf, 0x16u);
      }

      v45 = NSFilePathErrorKey;
      v46 = path;
      v30 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v14 = sub_10000151C("[AFSCFileInterface writeBuffer:length:error:]", 231, @"SZExtractorErrorDomain", 1, v28, v30, @"AAAFSC stream failed to write data to output file at %@", v31, path);
    }

    else
    {
      if (v11 == length)
      {
        [(AFSCFileInterface *)self setCurrentOffset:[(AFSCFileInterface *)self currentOffset]+ length];
        v14 = 0;
        v15 = 1;
        goto LABEL_22;
      }

      path = [(AFSCFileInterface *)self path];
      v21 = sub_100001194();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v38 = v11;
        v39 = 2048;
        lengthCopy = length;
        v41 = 2112;
        v42 = path;
        v43 = 2112;
        v44 = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "AAAFSC stream wrote incomplete data; wrote %zd, expected %zu, for file %@ : %@", buf, 0x2Au);
      }

      v35 = NSFilePathErrorKey;
      v36 = path;
      v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v14 = sub_10000151C("[AFSCFileInterface writeBuffer:length:error:]", 235, @"SZExtractorErrorDomain", 1, 0, v22, @"AAAFSC stream wrote incomplete data wrote %zd, expected %zu, for file %@", v23, v11);;
    }
  }

  else
  {
    v16 = sub_100001194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      path2 = [(AFSCFileInterface *)self path];
      *buf = 138412546;
      v38 = path2;
      v39 = 2112;
      lengthCopy = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to write to %@ : %@", buf, 0x16u);
    }

    path = [(AFSCFileInterface *)self path];
    v14 = sub_10000151C("[AFSCFileInterface writeBuffer:length:error:]", 224, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to write to %@", v18, path);
  }

  if (error)
  {
    v32 = v14;
    v15 = 0;
    *error = v14;
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

- (AFSCFileInterface)initWithFilePath:(id)path expectedSize:(int64_t)size resumptionState:(id)state
{
  pathCopy = path;
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = AFSCFileInterface;
  v10 = [(AFSCFileInterface *)&v14 init];
  if (v10)
  {
    v11 = [pathCopy copy];
    path = v10->_path;
    v10->_path = v11;

    v10->_fileSize = size;
    v10->_outputFD = -1;
    objc_storeStrong(&v10->_resumptionState, state);
    v10->_isResumedStream = stateCopy != 0;
    v10->_currentOffset = 0;
    v10->_expectedResumptionOffset = 0;
  }

  return v10;
}

@end