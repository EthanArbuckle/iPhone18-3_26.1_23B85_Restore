@interface RTDataSerializer
+ (id)stringFromDateWithFormat;
- (BOOL)archiveSavedDataToPath:(id)path error:(id *)error;
- (BOOL)fileExceedsSizeLimit:(id)limit;
- (BOOL)pruneWithError:(id *)error;
- (BOOL)purgeWithError:(id *)error;
- (BOOL)saveData:(id)data error:(id *)error;
- (NSOutputStream)outputStream;
- (RTDataSerializer)initWithContainerPath:(id)path outputPrefix:(id)prefix;
- (id)encodeVarint32WithValue:(unsigned int)value;
- (id)mostRecentOutputPath;
- (id)newOutputPath;
- (id)sentinelAndVersionPrefix;
- (unsigned)adler32ChecksumWithData:(id)data;
- (void)closeOutputStream;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation RTDataSerializer

- (RTDataSerializer)initWithContainerPath:(id)path outputPrefix:(id)prefix
{
  pathCopy = path;
  prefixCopy = prefix;
  v12.receiver = self;
  v12.super_class = RTDataSerializer;
  v9 = [(RTDataSerializer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerPath, path);
    objc_storeStrong(&v10->_outputPrefix, prefix);
  }

  return v10;
}

- (id)sentinelAndVersionPrefix
{
  v5 = 1;
  v4 = 32126;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:3];

  return v2;
}

- (BOOL)fileExceedsSizeLimit:(id)limit
{
  v3 = MEMORY[0x277CCAA00];
  limitCopy = limit;
  defaultManager = [v3 defaultManager];
  v8 = 0;
  v6 = [defaultManager attributesOfItemAtPath:limitCopy error:&v8];

  LOBYTE(limitCopy) = [v6 fileSize] >> 20 > 0xE;
  return limitCopy;
}

- (NSOutputStream)outputStream
{
  v40 = *MEMORY[0x277D85DE8];
  outputStream = self->_outputStream;
  if (outputStream)
  {
    goto LABEL_21;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  mostRecentOutputPath = [(RTDataSerializer *)self mostRecentOutputPath];
  if (!mostRecentOutputPath)
  {
    goto LABEL_5;
  }

  newOutputPath = mostRecentOutputPath;
  if ([(RTDataSerializer *)self fileExceedsSizeLimit:mostRecentOutputPath])
  {

LABEL_5:
    newOutputPath = [(RTDataSerializer *)self newOutputPath];
  }

  if (([defaultManager fileExistsAtPath:newOutputPath] & 1) == 0)
  {
    containerPath = [(RTDataSerializer *)self containerPath];
    v9 = [defaultManager fileExistsAtPath:containerPath];

    if ((v9 & 1) == 0)
    {
      containerPath2 = [(RTDataSerializer *)self containerPath];
      v29 = 0;
      v11 = [defaultManager createDirectoryAtPath:containerPath2 withIntermediateDirectories:1 attributes:0 error:&v29];
      v12 = v29;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v25 = NSStringFromSelector(a2);
          containerPath3 = [(RTDataSerializer *)self containerPath];
          v27 = containerPath3;
          v28 = @"NO";
          *buf = 138413058;
          v33 = v25;
          v34 = 2112;
          if (v11)
          {
            v28 = @"YES";
          }

          v35 = containerPath3;
          v36 = 2112;
          v37 = v28;
          v38 = 2112;
          v39 = v12;
          _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, createDirectoryAtPath, %@, success, %@, error, %@", buf, 0x2Au);
        }
      }
    }

    v30 = *MEMORY[0x277CCA1B0];
    v31 = *MEMORY[0x277CCA1A0];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [defaultManager2 createFileAtPath:newOutputPath contents:0 attributes:v14];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v23 = NSStringFromSelector(a2);
        v24 = @"NO";
        *buf = 138412802;
        v33 = v23;
        v34 = 2112;
        if (v16)
        {
          v24 = @"YES";
        }

        v35 = newOutputPath;
        v36 = 2112;
        v37 = v24;
        _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@, createFileAtPath, %@, success, %@", buf, 0x20u);
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v22 = NSStringFromSelector(a2);
      *buf = 138412546;
      v33 = v22;
      v34 = 2112;
      v35 = newOutputPath;
      _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%@, outputPath, %@", buf, 0x16u);
    }
  }

  v19 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:newOutputPath append:1];
  v20 = self->_outputStream;
  self->_outputStream = v19;

  [(NSOutputStream *)self->_outputStream setDelegate:self];
  [(NSOutputStream *)self->_outputStream open];

  outputStream = self->_outputStream;
LABEL_21:

  return outputStream;
}

- (id)newOutputPath
{
  v3 = MEMORY[0x277CCACA8];
  outputPrefix = self->_outputPrefix;
  stringFromDateWithFormat = [objc_opt_class() stringFromDateWithFormat];
  v6 = [v3 stringWithFormat:@"%@-%@.bin", outputPrefix, stringFromDateWithFormat];

  v7 = [(NSString *)self->_containerPath stringByAppendingPathComponent:v6];

  return v7;
}

- (id)mostRecentOutputPath
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__114;
  v21 = __Block_byref_object_dispose__114;
  v22 = 0;
  containerPath = self->_containerPath;
  v16 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:containerPath error:&v16];
  v6 = v16;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__114;
  v14[4] = __Block_byref_object_dispose__114;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__RTDataSerializer_mostRecentOutputPath__block_invoke;
  v10[3] = &unk_2788CE640;
  v10[4] = self;
  v7 = defaultManager;
  v11 = v7;
  v12 = v14;
  v13 = &v17;
  [v5 enumerateObjectsUsingBlock:v10];
  v8 = v18[5];

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

void __40__RTDataSerializer_mostRecentOutputPath__block_invoke(void *a1, uint64_t a2)
{
  v3 = [*(a1[4] + 8) stringByAppendingPathComponent:a2];
  v4 = a1[5];
  v10 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v10];
  v6 = v10;
  v7 = [v5 objectForKey:*MEMORY[0x277CCA150]];
  v8 = [v7 laterDate:*(*(a1[6] + 8) + 40)];
  v9 = [v8 isEqualToDate:v7];

  if (v9)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    objc_storeStrong((*(a1[7] + 8) + 40), v3);
  }
}

- (id)encodeVarint32WithValue:(unsigned int)value
{
  data = [MEMORY[0x277CBEB28] data];
  if (value < 0x80)
  {
    LOBYTE(v5) = value;
  }

  else
  {
    do
    {
      v9 = value | 0x80;
      [data appendBytes:&v9 length:1];
      v5 = value >> 7;
      v6 = value >> 14;
      value >>= 7;
    }

    while (v6);
  }

  v8 = v5;
  [data appendBytes:&v8 length:1];

  return data;
}

- (unsigned)adler32ChecksumWithData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];
  if (v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *bytes++;
      v7 = (v7 + v8) % 0xFFF1;
      v6 = (v7 + v6) % 0xFFF1;
      --v5;
    }

    while (v5);
    v9 = v7 | (v6 << 16);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)pruneWithError:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:self->_containerPath])
  {
    containerPath = self->_containerPath;
    v40 = 0;
    v7 = [defaultManager contentsOfDirectoryAtPath:containerPath error:&v40];
    v8 = v40;
    if (v8)
    {
      [v4 addObject:v8];
    }

    v22 = objc_opt_new();
    v23 = objc_opt_new();
    if (v7)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __35__RTDataSerializer_pruneWithError___block_invoke;
      v36[3] = &unk_2788CE668;
      v36[4] = self;
      v9 = defaultManager;
      v37 = v9;
      v10 = v4;
      v38 = v10;
      v11 = v23;
      v39 = v11;
      [v7 enumerateObjectsUsingBlock:v36];
      v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
      v43[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
      v14 = [v11 sortedArrayUsingDescriptors:v13];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v42 = 0;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __35__RTDataSerializer_pruneWithError___block_invoke_2;
      v30[3] = &unk_2788CA778;
      v32 = buf;
      v33 = v34;
      v15 = v22;
      v31 = v15;
      [v14 enumerateObjectsWithOptions:2 usingBlock:v30];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __35__RTDataSerializer_pruneWithError___block_invoke_3;
      v26[3] = &unk_2788CE690;
      v26[4] = self;
      v29 = a2;
      v27 = v9;
      v28 = v10;
      [v15 enumerateObjectsUsingBlock:v26];

      _Block_object_dispose(v34, 8);
      _Block_object_dispose(buf, 8);
    }

    if (error)
    {
      v21 = 1;
      v16 = _RTSafeArray();
      *error = _RTMultiErrorCreate();
    }

    v17 = [v4 count] == 0;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = 1;
      goto LABEL_15;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = NSStringFromSelector(a2);
      v20 = self->_containerPath;
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, containerPath, %@, does not exist; noop", buf, 0x16u);
    }

    v17 = 1;
  }

LABEL_15:
  return v17;
}

void __35__RTDataSerializer_pruneWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v3 = [*(*(a1 + 32) + 8) stringByAppendingPathComponent:a2];
  v4 = *(a1 + 40);
  v11 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v11];
  v6 = v11;
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
  }

  v7 = *(a1 + 56);
  v13[0] = v3;
  v12[0] = @"filePath";
  v12[1] = @"creationDate";
  v8 = [v5 fileCreationDate];
  v13[1] = v8;
  v12[2] = @"fileSize";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "fileSize")}];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v7 addObject:v10];
}

void __35__RTDataSerializer_pruneWithError___block_invoke_2(void *a1, void *a2, unint64_t a3)
{
  v12 = a2;
  v5 = [v12 objectForKeyedSubscript:@"fileSize"];
  *(*(a1[5] + 8) + 24) += [v5 unsignedLongLongValue];

  if (a3 > 0x13 || (*(*(a1[6] + 8) + 24) & 1) != 0 || *(*(a1[5] + 8) + 24) >> 22 > 0x4AuLL || ([MEMORY[0x277CBEAA8] date], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKeyedSubscript:", @"creationDate"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", v7), v9 = v8, v7, v6, v9 > 259200.0))
  {
    v10 = a1[4];
    v11 = [v12 objectForKeyedSubscript:@"filePath"];
    [v10 addObject:v11];
  }
}

void __35__RTDataSerializer_pruneWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, %@, %@", buf, 0x20u);
    }
  }

  v5 = *(a1 + 40);
  v10 = 0;
  [v5 removeItemAtPath:v3 error:&v10];
  v6 = v10;
  if (v6)
  {
    [*(a1 + 48) addObject:v6];
  }
}

- (BOOL)purgeWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:self->_containerPath])
  {
    containerPath = self->_containerPath;
    v25 = 0;
    v9 = [defaultManager contentsOfDirectoryAtPath:containerPath error:&v25];
    v10 = v25;
    if (v10)
    {
      [v6 addObject:v10];
    }

    if (v9)
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __35__RTDataSerializer_purgeWithError___block_invoke;
      v20 = &unk_2788CE6B8;
      selfCopy = self;
      v24 = a2;
      v22 = defaultManager;
      v23 = v6;
      [v9 enumerateObjectsUsingBlock:&v17];
    }

    if (error)
    {
      v16 = 1;
      v11 = _RTSafeArray();
      *error = _RTMultiErrorCreate();
    }

    v12 = [v6 count] == 0;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = 1;
      goto LABEL_15;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = NSStringFromSelector(a2);
      v15 = self->_containerPath;
      *buf = 138412546;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, containerPath, %@, does not exist; noop", buf, 0x16u);
    }

    v12 = 1;
  }

LABEL_15:
  return v12;
}

void __35__RTDataSerializer_purgeWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [*(*(a1 + 32) + 8) stringByAppendingPathComponent:a2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPurge);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, %@, %@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) fileExistsAtPath:v3])
  {
    v5 = *(a1 + 40);
    v11 = 0;
    [v5 removeItemAtPath:v3 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = v6;
      [*(a1 + 48) addObject:v6];
    }
  }
}

- (BOOL)saveData:(id)data error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  outputStream = [(RTDataSerializer *)self outputStream];

  if (outputStream)
  {
    v20 = 0;
    v8 = [objc_opt_class() convertData:dataCopy error:&v20];
    v9 = v20;
    v10 = v9 == 0;
    if (v9)
    {
      if (error)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277D01448];
        v21 = *MEMORY[0x277CCA450];
        v22 = @"pcProtobufWriter data convert failed";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [v11 errorWithDomain:v12 code:5 userInfo:v13];
      }
    }

    else
    {
      outputStream2 = [(RTDataSerializer *)self outputStream];
      [outputStream2 write:objc_msgSend(v8 maxLength:{"bytes"), objc_msgSend(v8, "length")}];

      mostRecentOutputPath = [(RTDataSerializer *)self mostRecentOutputPath];
      v18 = [(RTDataSerializer *)self fileExceedsSizeLimit:mostRecentOutputPath];

      if (v18)
      {
        [(RTDataSerializer *)self closeOutputStream];
      }
    }
  }

  else
  {
    if (!error)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Output stream is nil";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v14 errorWithDomain:v15 code:5 userInfo:v9];
    *error = v10 = 0;
  }

LABEL_11:
  return v10;
}

+ (id)stringFromDateWithFormat
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"YYYY-MM-dd-HHmmss-SS"];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 stringFromDate:date];

  return v4;
}

- (BOOL)archiveSavedDataToPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (pathCopy)
  {
    v7 = MEMORY[0x277CCACA8];
    outputPrefix = self->_outputPrefix;
    stringFromDateWithFormat = [objc_opt_class() stringFromDateWithFormat];
    v10 = [v7 stringWithFormat:@"%@-%@.tar.gz", outputPrefix, stringFromDateWithFormat];

    v11 = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
    v12 = [v11 URLByAppendingPathComponent:v10];

    v13 = [[RTArchiver alloc] initWithOutputURL:v12 compress:1];
    v14 = MEMORY[0x277CBEBC0];
    containerPath = [(RTDataSerializer *)self containerPath];
    v16 = [v14 URLWithString:containerPath];
    [(RTArchiver *)v13 addDirectoryToArchive:v16];

    [(RTArchiver *)v13 closeArchive];
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: path", buf, 2u);
    }

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"path");
    }
  }

  return pathCopy != 0;
}

- (void)closeOutputStream
{
  outputStream = [(RTDataSerializer *)self outputStream];
  [outputStream close];

  [(RTDataSerializer *)self setOutputStream:0];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v15 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = streamCopy;
      v13 = 2048;
      eventCopy = event;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, stream, %@, eventCode, %lu", &v9, 0x20u);
    }
  }
}

@end